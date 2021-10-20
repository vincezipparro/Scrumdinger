//
//  CardView.swift
//  Scrumdinger
//
//  Created by Vince Zipparro on 10/20/21.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrumModel

    var body: some View {
        VStack(alignment: .leading){
            Text(scrum.title)
                .font(.headline)
            
            Spacer()
            
            HStack{
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                
                Spacer()
                
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .padding(.trailing, 20)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.color.accessibleFontColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrumModel.data[0]
    
    static var previews: some View {
        CardView(scrum:scrum)
            .background(scrum.color)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
