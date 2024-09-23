//
//  UnderlinedTextFieldStyle.swift
//  DesignSystem
//
//  Created by SELCUK YILDIZ on 23.09.24.
//
import SwiftUI

struct UnderlinedTextFieldStyle: TextFieldStyle {
    var lineColor: UIColor = .label
    var lineWidth: CGFloat = 1
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        VStack(alignment: .leading) {
            configuration // This is the actual TextField
                .padding(.bottom, 5)
            
            Rectangle() // The underline
                .frame(height: lineWidth)
                .foregroundColor(Color(uiColor: lineColor))
        }
    }
}
