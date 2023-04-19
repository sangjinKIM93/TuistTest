//
//  File.swift
//  
//
//  Created by 김상진 on 2023/04/20.
//

import Foundation

public final class WelcomScreenModel: ObservableObject {
    public init() {}
    
    var animationFilePath: String {
        guard let filePath = Bundle.module.path(forResource: "todo", ofType: "json") else {
            preconditionFailure("Can't find LottieFile")
        }
        return filePath
    }
}
