
import CoreText
import SwiftUI
import UIKit

extension Font {

    static func preferredFont(
        forTextStyle style: UIFont.TextStyle,
        design: UIFontDescriptor.SystemDesign = .default
    ) -> Font {

        let descriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: style)
        let designed = descriptor.withDesign(design) ?? descriptor
        let ctDescriptor = CTFontDescriptorCreateWithAttributes(designed.fontAttributes as CFDictionary)
        let ctFont = CTFontCreateWithFontDescriptor(ctDescriptor, descriptor.pointSize, nil)
        return Font(ctFont)
    }
}
