import XCTest
import SwiftUI
@testable import RROnboardingKit

final class RROnboardingKitTests: XCTestCase {
    func testExample() {
        var body: some View {
            ScrollView {
                RROnboardingKit.TitleView(isIntroductionView: true, title: "New App")
                RROnboardingKit.InformationDetailView(header: "New feature", description: "This is going to be an exciting feature", imageName: "plus.circle.fill")
            }
        }
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
