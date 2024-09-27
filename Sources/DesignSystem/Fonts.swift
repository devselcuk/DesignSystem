//
//  Fonts.swift
//  DesignSystem
//
//  Created by SELCUK YILDIZ on 27.09.24.
//

import UIKit
import SwiftUI
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
    case button
    case ctaButton
    case largeTitle
    case text
    case title
    case callout

    public var font: Font {
        switch self {
        case .ctaButton:
            Font.custom(FontName.poppinsBold.rawValue, size: 16, relativeTo: .body)
        case .largeTitle:
            Font.custom(FontName.poppinsBold.rawValue, size: 26, relativeTo: .title3)
        case .button:
            Font.custom(FontName.poppinsBold.rawValue, size: 14, relativeTo: .body)
        case .text:
            Font.custom(FontName.poppinsRegular.rawValue, size: 17, relativeTo: .body)
        case .title:
            Font.custom(FontName.poppinsBold.rawValue, size: 17, relativeTo: .headline)
        case .callout:
            Font.custom(FontName.poppinsRegular.rawValue, size: 12, relativeTo: .callout)
        }
    }
}


enum FontName: String, CaseIterable {
    case poppinsBlack = "Poppins-Black"
    case poppinsMedium = "Poppins-Medium"
    case poppinsRegular = "Poppins-Regular"
    case poppinsSemiBold = "Poppins-SemiBold"
    case poppinsThin = "Poppins-Thin"
    case poppinsExtraLight = "Poppins-ExtraLight"
    case poppinsLight = "Poppins-Light"
    case poppinsBold = "Poppins-Bold"
    case poppinsExtraBold = "Poppins-ExtraBold"
}
