//
//  ContentView.swift
//  ChomagePlan
//
//  Created by Didier Delhaisse on 08/06/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var vm = ChomagePlanViewModel()
    
    var body: some View {
        TabView {
            GovernmentPlanView(vm: vm)
                .tabItem {
                    Label("Gouvernement", systemImage: "exclamationmark.triangle.fill")
                }
            
            SmarterPlanView(vm: vm)
                .tabItem {
                    Label("Solution IA", systemImage: "lightbulb.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
