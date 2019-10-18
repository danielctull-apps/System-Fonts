
import SwiftUI

extension Font.Weight: Identifiable {
    public var id: String { description }
}

extension Font.Weight: CaseIterable {

    public static var allCases: [Font.Weight] {
        [
            .ultraLight,
            .thin,
            .light,
            .regular,
            .medium,
            .semibold,
            .bold,
            .heavy,
            .black
        ]
    }
}

extension Font.Weight: CustomStringConvertible {

    public var description: String {
        switch self {
        case .ultraLight: return "ultraLight"
        case .thin: return "thin"
        case .light: return "light"
        case .regular: return "regular"
        case .medium: return "medium"
        case .semibold: return "semibold"
        case .bold: return "bold"
        case .heavy: return "heavy"
        case .black: return "black"
        default: fatalError()
        }
    }
}
