//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Vince Zipparro on 10/20/21.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrumModel.data
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
