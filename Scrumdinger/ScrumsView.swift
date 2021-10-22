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
            ForEach(scrums, id: \.title) { scrum in
                CardView(scrum: scrum)
                    .listRowBackground(scrum.color)
           }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrumModel.data)
    }
}
