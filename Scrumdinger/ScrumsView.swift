//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Vince Zipparro on 10/21/21.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrumModel]
    
    var body: some View {
        List{
            ForEach(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: binding(for: scrum))){
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.color)
           }
        }
        .navigationTitle("Daily Scrums")
        .navigationBarItems(trailing: Button(action: {}){
          Image(systemName: "plus")
        })
    }
    
    private func binding(for scrum: DailyScrumModel) -> Binding<DailyScrumModel>{
        guard let scrumIndex = scrums.firstIndex(where: {$0.id == scrum.id}) else{
            fatalError("Cannot find scrum in array")
        }
        
        return $scrums[scrumIndex]
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ScrumsView(scrums: .constant(DailyScrumModel.data))
        }
    }
}
