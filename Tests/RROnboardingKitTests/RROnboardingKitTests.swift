import XCTest
import SwiftUI
@testable import RROnboardingKit

final class RROnboardingKitTests: XCTestCase {
    func testExample() {
        var body: some View {
            RROnboardingKit.IntroductionView(title: "Gradient Game", accentColor: Color(.systemIndigo))
        }
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
