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
}
