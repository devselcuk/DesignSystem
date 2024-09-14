//
//  File.swift
//  
//
//  Created by SELCUK YILDIZ on 14.09.24.
//

import SwiftUI

struct CenteredLabelStyle: LabelStyle {
    var spacing: CGFloat

    func makeBody(configuration: Configuration) -> some View {
        HStack(spacing: spacing) {
            configuration.icon
            configuration.title
        }
    }
}
