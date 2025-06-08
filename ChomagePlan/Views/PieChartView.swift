//
//  PieChartView.swift
//  ChomagePlan
//
//  Created by Didier Delhaisse on 08/06/2025.
//
/*
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

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
