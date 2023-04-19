//
//  SwiftUIView.swift
//  
//
//  Created by 김상진 on 2023/04/20.
//

import Lottie
import SwiftUI

public struct LottieView: UIViewRepresentable {
    var filepath: String
    var loopMode: LottieLoopMode
    
    var animationView = LottieAnimationView()
    
    public init(filepath: String, loopMode: LottieLoopMode) {
        self.filepath = filepath
        self.loopMode = loopMode
    }
    
    public func makeUIView(context _: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView(frame: .zero)
        
        animationView.animation = LottieAnimation.filepath(filepath)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
        ])
        
        return view
    }
    
    public func updateUIView(_ uiView: UIView, context _: UIViewRepresentableContext<LottieView>) {
        
    }
    
}

//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        SwiftUIView()
//    }
//}
