
import SwiftUI

struct SystemFonts: View {

    @State var framework = Framework.swiftUI
    
    var body: some View {
        NavigationView {
            List {

                SegmentedControl(selection: $framework)
                    .padding(.vertical)

                if framework == .swiftUI {
                    SwiftUIFonts()
                } else if framework == .uiKit {
                    UIKitFonts()
                }
            }
            .navigationBarTitle("System Fonts", displayMode: .inline)
        }
    }
}

struct SystemFonts_Previews: PreviewProvider {
    static var previews: some View {
        SystemFonts()
    }
}
