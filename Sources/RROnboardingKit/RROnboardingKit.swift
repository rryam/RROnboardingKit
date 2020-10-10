import SwiftUI

public struct RROnboardingKit {
    public struct IntroductionView: View {
        var title: String
        var accentColor: Color

        public init (title: String, accentColor: Color) {
            self.title = title
            self.accentColor = accentColor
        }

        public var body: some View {
            ScrollView {
                TitleView(title: title, accentColor: accentColor)
            }
        }
    }

    public struct TitleView: View {
        var title: String
        var accentColor: Color

        public var body: some View {
            VStack {
                Text("WELCOME TO")
                    .customTitleText(size: 30)

                Text(title.uppercased())
                    .customTitleText(size: 30)
                    .foregroundColor(accentColor)
            }
            .accessibility(addTraits: .isHeader)
            .padding(.horizontal)
        }
    }
}

extension Text {
    func customTitleText(size: CGFloat) -> some View {
        self
            .fontWeight(.black)
            .modifier(ScaledFont(size: size))
    }
}

struct ScaledFont: ViewModifier {
    @Environment(\.sizeCategory) var sizeCategory
    var size: CGFloat

    func body(content: Content) -> some View {
        let scaledSize = UIFontMetrics.default.scaledValue(for: size)
        return content.font(.system(size: scaledSize))
    }
}
