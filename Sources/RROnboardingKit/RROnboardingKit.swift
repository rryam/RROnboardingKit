import SwiftUI

public struct RROnboardingKit {
    public struct TitleView: View {
        var isIntroductionView: Bool
        var title: String
        var textSize: CGFloat = 30

        /// The title view of the onboarding screen.
        /// - Parameters:
        ///
        ///   - isIntroductionView: State if it is an introduction view or an update view.
        ///   - title: The title of your application. For example, if the name of your app is "Gradient Game", it'll show "WELCOME TO GRADIENT GAME"
        ///   - textSize: The size of the text of the title. The default is 30, which dynamically changes according to the system font size.
        public init(isIntroductionView: Bool, title: String, textSize: CGFloat = 30) {
            self.isIntroductionView = isIntroductionView
            self.title = title
            self.textSize = textSize
        }

        public var body: some View {
            VStack {
                Text(isIntroductionView ? "WELCOME TO" : "WHAT'S NEW IN")
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .modifier(ScaledFont(size: textSize))

                Text(title.uppercased())
                    .fontWeight(.black)
                    .modifier(ScaledFont(size: textSize))
            }
            .accessibilityElement(children: .combine)
            .accessibility(addTraits: .isHeader)
            .padding(.horizontal)
        }
    }

    public struct InformationDetailView: View {
        var header: String
        var description: String
        var imageName: String

        /// The row view which contains a feature with the description and a SF Symbol icon.
        /// - Parameters:
        ///   - header: The header title of the feature.
        ///   - description: The description of the feature.
        ///   - imageName: The SF Symbol associated with the feature.
        public init(header: String, description: String, imageName: String) {
            self.header = header
            self.description = description
            self.imageName = imageName
        }

        public var body: some View {
            HStack(alignment: .center) {
                Image(systemName: imageName)
                    .font(.system(size: 30))
                    .accessibility(hidden: true)
                    .padding(.trailing, 10)

                VStack(alignment: .leading) {
                    Text(header)
                        .fontWeight(.bold)
                        .font(.body)
                        .foregroundColor(.primary)
                        .accessibility(addTraits: .isHeader)

                    Text(description)
                        .foregroundColor(.secondary)
                        .font(.body)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                }
                .accessibilityElement(children: .combine)
            }
            .padding()
        }
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
