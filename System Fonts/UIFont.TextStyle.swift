
import UIKit

extension UIFont.TextStyle: Identifiable {
    public var id: String { description }
}

extension UIFont.TextStyle: CustomStringConvertible {

    public var description: String {
        switch self {
        case .largeTitle: return "largeTitle"
        case .title1: return "title1"
        case .title2: return "title2"
        case .title3: return "title3"
        case .headline: return "headline"
        case .subheadline: return "subheadline"
        case .body: return "body"
        case .callout: return "callout"
        case .footnote: return "footnote"
        case .caption1: return "caption1"
        case .caption2: return "caption2"
        default: fatalError()
        }
    }
}

extension UIFont.TextStyle: CaseIterable {

    public static var allCases: [UIFont.TextStyle] {
        [
            .largeTitle,
            .title1,
            .title2,
            .title3,
            .headline,
            .subheadline,
            .body,
            .callout,
            .footnote,
            .caption1,
            .caption2
        ]
    }
}
