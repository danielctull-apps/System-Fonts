
import SwiftUI

struct UIKitFonts: View {

    var body: some View {
        ForEach(UIFontDescriptor.SystemDesign.allCases,
                id: \.self,
                content: DesignSection.init)
    }
}

extension UIKitFonts {

    fileprivate struct DesignSection: View {

        let design: UIFontDescriptor.SystemDesign

        private func cell(for style: UIFont.TextStyle) -> some View {
            Text(style.description)
                .font(.preferredFont(forTextStyle: style, design: design))
        }

        private var header: some View {
            Text(design.description)
                .font(.preferredFont(forTextStyle: .headline, design: design))
        }

        var body: some View {
            Section(header: header) {
                ForEach(UIFont.TextStyle.allCases, id: \.description, content: cell)
            }
        }
    }
}

struct UIKitFonts_Previews: PreviewProvider {
    static var previews: some View {
        UIKitFonts()
    }
}
