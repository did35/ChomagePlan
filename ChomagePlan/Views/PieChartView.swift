//
//  PieChartView.swift
//  ChomagePlan
//
//  Created by Didier Delhaisse on 08/06/2025.
//

import SwiftUI
import Charts

struct PieChartView: View {
    let chomeurs: [(String, Int)]
    
    var body: some View {
        Chart(chomeurs, id: \.0) { (label, value) in
            SectorMark(
                angle: .value("Nombre", value),
                innerRadius: .ratio(0.5)
            )
            .foregroundStyle(by: .value("Label", label))
            .annotation(position: .overlay) {
                Text(label)
                    .font(.caption2.bold())
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    PieChartView(chomeurs: [("Chomeurs", 40_122), ("Demandeurs", 12_122)])
}
