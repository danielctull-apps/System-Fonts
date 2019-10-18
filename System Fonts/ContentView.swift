
import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView {
            List {
                TextStyleSection(design: .default)
                TextStyleSection(design: .monospaced)
                TextStyleSection(design: .rounded)
                TextStyleSection(design: .serif)
            }
            .navigationBarTitle("System Fonts", displayMode: .inline)
        }
    }
}

extension UIFontDescriptor.SystemDesign: CustomStringConvertible {

    public var description: String {
        switch self {
        case .default: return "default"
        case .rounded: return "rounded"
        case .serif: return "serif"
        case .monospaced: return "monospaced"
        default: fatalError()
        }
    }
}

struct TextStyleSection: View {

    let design: UIFontDescriptor.SystemDesign

    var body: some View {
        Section(header: Text(design.description).font(.preferredFont(forTextStyle: .headline, design: design))) {
            Group {
                Text("largeTitle").font(.preferredFont(forTextStyle: .largeTitle, design: design))
                Text("title1").font(.preferredFont(forTextStyle: .title1, design: design))
                Text("title2").font(.preferredFont(forTextStyle: .title2, design: design))
                Text("title3").font(.preferredFont(forTextStyle: .title3, design: design))
                Text("headline").font(.preferredFont(forTextStyle: .headline, design: design))
            }
            Group {
                Text("subheadline").font(.preferredFont(forTextStyle: .subheadline, design: design))
                Text("body").font(.preferredFont(forTextStyle: .body, design: design))
                Text("callout").font(.preferredFont(forTextStyle: .callout, design: design))
                Text("footnote").font(.preferredFont(forTextStyle: .footnote, design: design))
                Text("caption1").font(.preferredFont(forTextStyle: .caption1, design: design))
                Text("caption2").font(.preferredFont(forTextStyle: .caption2, design: design))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
