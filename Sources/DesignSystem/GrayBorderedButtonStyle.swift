//
//  File.swift
//  
//
//  Created by SELCUK YILDIZ on 14.09.24.
//

import SwiftUI

public struct GrayBorderedButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: .infinity)
            .bold()
            .background(content: {
                Color(.ctaBackground)
            })
            .overlay(
                Capsule().stroke(Color.gray, lineWidth: 1)
            )
            .clipShape(Capsule())
            .opacity(configuration.isPressed ? 0.2 : 1)
            .labelStyle(CenteredLabelStyle(spacing: 16))
    }
}
