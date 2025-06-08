//
//  ChomageData.swift
//  ChomagePlan
//
//  Created by Didier Delhaisse on 08/06/2025.
//
/*
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

import Foundation

struct ChomageData {
    let governmentSteps: [String] = [
        "1er janvier 2026: 25.404 exclus (chômage depuis 20+ ans)",
        "1er mars 2026: 43.349 exclus (chômage >8 ans)",
        "1er avril 2026: 45.183 exclus (chômage <8 ans)",
        "1er juillet 2026: 40.122 exclus (allocations d'insertion)"
    ]
    
    let smarterSteps: [String] = [
        "✅ Diagnostic individualisé (ancienneté, âge, santé, motivation)",
        "✅ Formations courtes et sur-mesure dans les secteurs en tension (60.000 places disponibles, coût moyen: 3.000 € / personne)",
        "✅ Coaching personnalisé et accompagnement intensif (10.280 coachs mobilisés, 1 coach pour 15 demandeurs)",
        "✅ Incitations à l'embauche (exonérations fiscales sur 2 ans, prime de 5.000 € / embauche)",
        "✅ Maintien des allocations mais conditionnées à l'insertion (revenu minimum garanti: 1.200 €/mois durant la formation)"
    ]
}
