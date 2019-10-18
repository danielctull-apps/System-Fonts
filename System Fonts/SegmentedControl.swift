
import SwiftUI

struct SegmentedControl<Option>: View
where
Option: Hashable,
Option: Identifiable,
Option: CustomStringConvertible,
Option: CaseIterable,
Option.AllCases: RandomAccessCollection {

    let selection: Binding<Option>

    var body: some View {
        Picker(selection: selection, label: EmptyView()) {
            ForEach(Option.allCases) { option in
                Text(option.description).tag(option)
            }
        }.pickerStyle(SegmentedPickerStyle())
    }
}

struct SegmentedControl_Previews: PreviewProvider {

    enum Option: Identifiable, CaseIterable, CustomStringConvertible {
        case one
        case two

        var id: Self { self }

        var description: String {
            switch self {
            case .one: return "one"
            case .two: return "two"
            }
        }
    }

    static var previews: some View {
        SegmentedControl(selection: .constant(Option.one))
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
