// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

#Preview(body: {
    VStack {
        Text("See what's available")
            .font(DSFont.largeTitle.font)
        Button {
        } label: {
            Label(
                title: { Text("Continue with Apple") },
                icon: { Image(.appleLogo) }
            )
        }
        .buttonStyle(GrayBorderedButtonStyle())
        .padding()
        
        Button {
        } label: {
            Label(
                title: { Text("Continue with Google") },
                icon: { Image(.googleLogo) }
            )
        }
        .buttonStyle(GrayBorderedButtonStyle())
        .padding()
        
        Button {
        }label: {
            Label(
                title: { Text("Continue with Microsoft") },
                icon: { }
            )
        }
        .buttonStyle(BlackFilledRoundedButtonStyle())
        .padding()
    }
})


import UIKit
import CoreGraphics
import CoreText
public enum FontError: Swift.Error {
   case failedToRegisterFont
}

func registerFont(named name: String) throws {
   guard let asset = NSDataAsset(name: "Fonts/\(name)", bundle: Bundle.module),
      let provider = CGDataProvider(data: asset.data as NSData),
      let font = CGFont(provider),
      CTFontManagerRegisterGraphicsFont(font, nil) else {
    throw FontError.failedToRegisterFont
   }
}

public func registerAllFonts() {
    for fontName in FontName.allCases {
        try? registerFont(named: fontName.rawValue)
    }
}

public enum DSFont {
    case ctaButton
    case largeTitle

    public var font: Font {
        switch self {
        case .ctaButton:
            Font.custom(FontName.poppinsSemiBold.rawValue, size: 16, relativeTo: .body)
        case .largeTitle:
            Font.custom(FontName.poppinsBold.rawValue, size: 32, relativeTo: .title3)
        }
    }
}
