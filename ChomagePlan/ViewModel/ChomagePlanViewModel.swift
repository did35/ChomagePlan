//
//  ChomagePlanViewModel.swift
//  ChomagePlan
//
//  Created by Didier Delhaisse on 08/06/2025.
//

import Foundation

@Observable
class ChomagePlanViewModel {
    private let data = ChomageData()
    
    var totalChomeurs: Int {
        25_404 + 43_349 + 45_183 + 40_122
    }
    
    var governmentSteps: [String] {
        data.governmentSteps
    }
    
    var smarterSteps: [String] {
        data.smarterSteps
    }
}
