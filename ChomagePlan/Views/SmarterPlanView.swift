//
//  SmarterPlanView.swift
//  ChomagePlan
//
//  Created by Didier Delhaisse on 08/06/2025.
//

import SwiftUI

struct SmarterPlanView: View {
    let vm: ChomagePlanViewModel
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                List(vm.smarterSteps, id: \.self) { step in
                    Text(step)
                }
                .listStyle(.plain)
                
                PieChartView(chomeurs: [
                    ("Diagnostic", 10),
                    ("Formations", 25),
                    ("Coaching", 20),
                    ("Incitations", 30),
                    ("Maintien droits", 15)
                ])
                .frame(height: 300)
            }
            .navigationTitle("Solution IA Proposée")
            .navigationBarTitleDisplayMode(.inline)
            .padding()
        }
    }
}

#Preview {
    SmarterPlanView(vm: ChomagePlanViewModel())
}
