
enum Framework {
    case swiftUI
    case uiKit
}

extension Framework: CaseIterable {}

extension Framework: Identifiable {
    var id: Self { self }
}

extension Framework: CustomStringConvertible {

    var description: String {
        switch self {
        case .swiftUI: return "SwiftUI Font"
        case .uiKit: return "UIFont"
        }
    }
}
