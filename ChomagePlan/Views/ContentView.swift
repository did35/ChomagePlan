//
//  ContentView.swift
//  ChomagePlan
//
//  Created by Didier Delhaisse on 08/06/2025.
//
/*
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

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
