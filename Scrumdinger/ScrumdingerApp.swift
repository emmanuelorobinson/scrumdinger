//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Emmanuel Robinson on 16/07/2022.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumView(scrums: $scrums)
            }
        }
    }
}
