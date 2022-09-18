//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Emmanuel Robinson on 17/07/2022.
//

import Foundation
import SwiftUI

struct ScrumView: View {
    
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        List {
            ForEach($scrums) {
                $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                CardView(scrum: scrum)
                }.listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
            Button(action: {}) {
                Image(systemName: "plus")
            }
            .accessibilityLabel("New scrum")
        }
    }
}

struct ScrumView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumView(scrums: .constant(DailyScrum.sampleData))
        }
            
    }
}
