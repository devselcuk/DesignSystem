//
//  File.swift
//  DesignSystem
//
//  Created by SELCUK YILDIZ on 20.09.24.
//

import SwiftUI

public struct BlackFilledRoundedButtonStyle: ButtonStyle {
    
    public init(){}
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: .infinity)
            .bold()
            .background(content: {
                Color(.ctaBackground)
            })
            .foregroundStyle(Color(.ctaForeground))
            .clipShape(Capsule())
            .opacity(configuration.isPressed ? 0.2 : 1)
            .labelStyle(CenteredLabelStyle(spacing: 16))
    }
}
