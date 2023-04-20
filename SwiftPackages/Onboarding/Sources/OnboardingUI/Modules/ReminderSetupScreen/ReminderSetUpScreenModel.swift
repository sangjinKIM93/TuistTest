//
//  File.swift
//  
//
//  Created by 김상진 on 2023/04/20.
//

import Foundation

public final class ReminderSetUpScreenModel: ObservableObject {
    @Published var viewState: ReminderSetUpState = .initial
}

public extension ReminderSetUpScreenModel {
    func perform(action: ReminderSetUpAction) {
        switch action {
        case .requestPushAuthorization:
            print("TODO: Request Push Authorization")
        case .skip:
            print("TODO: Skip!")
        }
    }
}
