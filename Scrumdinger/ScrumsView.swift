//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Vince Zipparro on 10/21/21.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrumModel]
    
    var body: some View {
        List{
            ForEach(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)){
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
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ScrumsView(scrums: DailyScrumModel.data)
        }
    }
}
