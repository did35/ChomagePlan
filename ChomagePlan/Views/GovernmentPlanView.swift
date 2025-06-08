//
//  GovernmentPlanView.swift
//  ChomagePlan
//
//  Created by Didier Delhaisse on 08/06/2025.
//

import SwiftUI

struct GovernmentPlanView: View {
    let vm: ChomagePlanViewModel
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                List(vm.governmentSteps, id: \.self) { step in
                    Text(step)
                }
                .listStyle(.plain)
                
                Text("Nombre total de chômeurs concernés: \(vm.totalChomeurs)")
                    .padding()
                    .background(.ultraThinMaterial)
                    .clipShape(.rect(cornerRadius: 8))
                    .shadow(radius: 2)
                
                PieChartView(chomeurs: [
                    (">20 ans", 25_404),
                    (">8 ans", 43_349),
                    ("<8 ans", 45_183),
                    ("Allocations", 40_122)
                ])
                .frame(height: 300)
                .navigationTitle("Plan Gouvernemental")
                .navigationBarTitleDisplayMode(.inline)
                .padding()
            }
            .padding()
        }
    }
}

#Preview {
    GovernmentPlanView(vm: ChomagePlanViewModel())
}
