//
//  SwiftUIView.swift
//  
//
//  Created by 김상진 on 2023/04/20.
//

import SwiftUI

struct PushNotificationAllowedView: View {
    @StateObject private var screenModel: ReminderSetUpScreenModel
    
    public init(screenModel: ReminderSetUpScreenModel = ReminderSetUpScreenModel()) {
        _screenModel = StateObject(wrappedValue: screenModel)
    }
    
    var body: some View {
        Text("PushNotificationAllowedView - TODO")
    }
}

struct PushNotificationAllowedView_Previews: PreviewProvider {
    static var previews: some View {
        PushNotificationAllowedView()
    }
}
