
import SwiftUI

struct Customized: View {

    @State private var size = CGFloat(16)
    @State private var weight = Font.Weight.regular
    @State private var design = Font.Design.default

    var body: some View {

        NavigationView {

            VStack(alignment: .center) {

                Text("\(Int(size))pt \(design.description) \(weight.description)")
                    .multilineTextAlignment(.center)
                    .font(.system(size: size, weight: weight, design: design))
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity,
                           alignment: .center)
                    .padding(.horizontal)

                Slider(value: $size, in: 1...100)
                    .padding(.horizontal)

                SegmentedControl(selection: $design)
                    .padding()

                Picker(selection: $weight, label: EmptyView()) {
                    ForEach(Font.Weight.allCases, id: \.description) {
                        Text($0.description)
                            .fontWeight($0)
                            .tag($0)
                    }
                }
                .pickerStyle(WheelPickerStyle())
            }
            .navigationBarTitle("Customized", displayMode: .inline)
        }
    }
}

struct Customized_Previews: PreviewProvider {
    static var previews: some View {
        Customized()
    }
}
