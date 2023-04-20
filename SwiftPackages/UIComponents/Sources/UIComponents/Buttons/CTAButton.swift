//
//  SwiftUIView.swift
//  
//
//  Created by 김상진 on 2023/04/20.
//

import SwiftUI

public struct CTAButton: View {
    let label: String
    let action: () -> Void
    
    public init(label: String, action: @escaping () -> Void) {
        self.label = label
        self.action = action
    }
    
    public var body: some View {
        Button("\(label)") {
            action()
        }
        .buttonStyle(DefaultButtonAnimation())
    }
}

struct CTAButton_Previews: PreviewProvider {
    static var previews: some View {
        CTAButton(label: "test", action: {
            print("cta button clicked")
        })
    }
}
