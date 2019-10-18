
import SwiftUI

struct SwiftUIFonts: View {

    var body: some View {
        ForEach(Font.Design.allCases,
                id: \.self,
                content: DesignSection.init)
    }
}

extension SwiftUIFonts {

    fileprivate struct DesignSection: View {

        let design: Font.Design

        private func cell(for style: Font.TextStyle) -> some View {
            Text(style.description)
                .font(.system(style, design: design))
        }

        private var header: some View {
            Text(design.description)
                .font(.system(.headline, design: design))
        }

        var body: some View {
            Section(header: header) {
                ForEach(Font.TextStyle.allCases, id: \.description, content: cell)
            }
        }
    }
}

struct SwiftUIFonts_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIFonts()
    }
}
