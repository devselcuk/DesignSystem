//
//  File.swift
//  
//
//  Created by SELCUK YILDIZ on 14.09.24.
//

import SwiftUI

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

public struct GrayBorderedButtonStyle: ButtonStyle {
    
    public init(){}
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: .infinity)
            .bold()
            .background(content: {
                Color(.clear)
            })
            .overlay(
                Capsule().stroke(Color(.border), lineWidth: 2)
            )
            .clipShape(Capsule())
            .opacity(configuration.isPressed ? 0.2 : 1)
            .labelStyle(CenteredLabelStyle(spacing: 16))
            .font(DSFont.ctaButton.font)
    }
}
