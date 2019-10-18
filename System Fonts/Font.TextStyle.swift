
import SwiftUI

extension Font.TextStyle: CustomStringConvertible {

    public var description: String {
        switch self {
        case .largeTitle: return "largeTitle"
        case .title: return "title"
        case .headline: return "headline"
        case .subheadline: return "subheadline"
        case .body: return "body"
        case .callout: return "callout"
        case .footnote: return "footnote"
        case .caption: return "caption"
        @unknown default: return "unknown"
        }
    }
}

extension Font.TextStyle: Identifiable {
    public var id: String { description }
}
