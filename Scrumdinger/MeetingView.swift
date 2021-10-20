//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Vince Zipparro on 10/20/21.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            ProgressView(value: 5, total: 15)
        }
    }
    
    
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
