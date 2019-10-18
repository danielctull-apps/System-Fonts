
import UIKit

extension UIFontDescriptor.SystemDesign: CustomStringConvertible {

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

extension UIFontDescriptor.SystemDesign: CaseIterable {

    public static var allCases: [UIFontDescriptor.SystemDesign] {
        [
            .default,
            .monospaced,
            .rounded,
            .serif
        ]
    }
}
