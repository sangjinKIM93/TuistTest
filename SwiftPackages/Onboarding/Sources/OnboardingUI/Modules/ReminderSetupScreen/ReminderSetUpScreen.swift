//
//  ReminderSetupScreen.swift
//  
//
//  Created by 김상진 on 2023/04/20.
//

import SwiftUI

struct ReminderSetUpScreen: View {
    @StateObject private var screenModel: ReminderSetUpScreenModel
    
    public init(screenModel: ReminderSetUpScreenModel = ReminderSetUpScreenModel()) {
        _screenModel = StateObject(wrappedValue: screenModel)
    }
    
    var body: some View {
        switch screenModel.viewState {
        case .initial:
            ReminderSetUpInitialView(screenModel: screenModel)
        case .pushNotificationAllowed:
            PushNotificationAllowedView(screenModel: screenModel)
        case .pushNotificationRejected:
            PushNotificationAllowedView(screenModel: screenModel)
        }
    }
}

struct ReminderSetUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        ReminderSetUpScreen()
    }
}
