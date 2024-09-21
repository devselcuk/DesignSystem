//
//  UnderlinedButtonStyle.swift
//  DesignSystem
//
//  Created by SELCUK YILDIZ on 21.09.24.
//
import SwiftUI

public struct UnderlinedButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.footnote)
            .foregroundStyle(.blue)
            .underline()
    }
}
