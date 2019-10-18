
import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            SystemFonts().tabItem { Text("System Fonts") }
            Customized().tabItem { Text("Customized") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
