//
//  SwiftUIView.swift
//  
//
//  Created by 김상진 on 2023/04/20.
//

import SwiftUI
import UIComponents

struct ReminderSetUpInitialView: View {
    @StateObject private var screenModel: ReminderSetUpScreenModel
    
    public init(screenModel: ReminderSetUpScreenModel = ReminderSetUpScreenModel()) {
        _screenModel = StateObject(wrappedValue: screenModel)
    }
    
    var body: some View {
        VStack {
            Text("Initial view = todo!").padding()
            
            CTAButton(label: "알림 신청", action: {
                screenModel.perform(action: .requestPushAuthorization)
            })
            
            Button("다음에 볼게요", action: {
                screenModel.perform(action: .skip)
            })
        }
        
    }
}

struct ReminderSetUpInitialView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderSetUpInitialView()
    }
}
