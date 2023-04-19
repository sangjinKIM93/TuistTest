//
//  SwiftUIView.swift
//  
//
//  Created by 김상진 on 2023/04/19.
//

import SwiftUI
import UIComponents

public struct WelcomeScreen: View {
    
    @State private var triggerNavigation: Bool = false
    @StateObject private var screenModel: WelcomScreenModel
    
    public init(screenModel: WelcomScreenModel = WelcomScreenModel()) {
        _screenModel = StateObject(wrappedValue: screenModel)
    }
    
    public var body: some View {
        VStack {
            Text("Tuist 테스트 해보자")
                .fontWeight(.medium)
                .font(.largeTitle)
                .padding(.top)
            
            Text("Tuist 정복하기.Tuist 정복하기.Tuist 정복하기.Tuist 정복하기.Tuist 정복하기.Tuist 정복하기.Tuist 정복하기.Tuist 정복하기.")
                .padding()
                
            Text("아직 익숙하지 않을 뿐이다. 하면 할 수 있다.")
                .padding()
            
            LottieView(filepath: screenModel.animationFilePath, loopMode: .loop)
            
            Spacer()
            
            Button("다음") {
                triggerNavigation.toggle()
            }
        }
        .navigationDestination(isPresented: $triggerNavigation) {
            Text("다음 화면")
        }
    }
    
}

#if DEBUG
struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            WelcomeScreen()
        }
    }
}

#endif
