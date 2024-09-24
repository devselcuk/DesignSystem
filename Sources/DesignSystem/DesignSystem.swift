// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

#Preview(body: {
    VStack {
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
