//
//  UIView + ext.swift
//  Atl_task
//
//  Created by Kamal Abdullayev on 13.01.25.
//

import UIKit

extension UIView {
    
    func addBottomBorder(widht color: UIColor, height: CGFloat){
    
        let separator = UIView()
        separator.backgroundColor = color
        separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame = CGRect(x: 0, y: self.frame.height - height, width: self.frame.width, height: height)
        
        addSubview(separator)
    
    }
    
    func makeSystem(_ button: UIButton){
        button.addTarget(self, action: #selector(handleIn), for: [
            .touchDown, .touchUpInside
            ])
        
        button.addTarget(self, action: #selector(handleOut), for: [
            .touchDragOutside,
            .touchDragExit,
            .touchUpOutside,
            .touchCancel,
            .touchUpInside
            ])
        }
    
    @objc func handleIn(){
        
        UIView.animate(withDuration: 0.15) {
            self.alpha = 0.55
        }
    }
    @objc func handleOut(){
        
        UIView.animate(withDuration: 0.15) {
            self.alpha = 1
        }
    }
}
