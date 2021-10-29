//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Vince Zipparro on 10/29/21.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrumModel
    
    var body: some View {
        List{
            Section(header: Text("Meeting Info")){
                Label("Start Meeting", systemImage: "timer")
                    .accessibilityLabel(Text("Start"))
                    .font(.headline)
                    .foregroundColor(.accentColor)
            }
            HStack{
                Label("Length", systemImage: "clock")
                    .accessibilityLabel(Text("Meeting Length"))
                Spacer()
                Text("\(scrum.lengthInMinutes) minutes")
            }
            HStack{
                Label("Color", systemImage: "paintpalette")
                Spacer()
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(scrum.color)
            }
            .accessibilityElement(children: .ignore)
        }
        .listStyle(InsetListStyle())
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView(scrum: DailyScrumModel.data[0])
        }
    }
}
