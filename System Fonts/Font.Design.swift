
import SwiftUI

extension Font.Design: CustomStringConvertible {

    public var description: String {
        switch self {
        case .default: return "default"
        case .monospaced: return "monospaced"
        case .rounded: return "rounded"
        case .serif: return "serif"
        default: fatalError()
        }
    }
}

extension Font.Design: CaseIterable {

    public static var allCases: [Font.Design] {
        [
            .default,
            .monospaced,
            .rounded,
            .serif
        ]
    }
}
