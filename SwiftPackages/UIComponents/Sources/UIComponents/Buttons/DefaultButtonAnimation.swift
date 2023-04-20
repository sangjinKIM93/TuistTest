//
//  File.swift
//  
//
//  Created by 김상진 on 2023/04/20.
//

import SwiftUI

public struct DefaultButtonAnimation: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: 325, height: 52, alignment: .center)
            .background(.orange)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 4.0))
            .scaleEffect(configuration.isPressed ? 1.1 : 1)
            .animation(.easeOut(duration: 0.1), value: configuration.isPressed)
    }
}
