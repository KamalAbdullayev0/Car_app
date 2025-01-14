//
//  Resources.swift
//  Atl_task
//
//  Created by Kamal Abdullayev on 12.01.25.
//

import UIKit

enum Resources {
    
    enum Colors {
        static let active = UIColor(hexString: "#3498DB")
        static let inactive = UIColor(hexString: "#BDC3C7")
        static let background = UIColor(hexString: "#F9F9F9")
        static let separator = UIColor(hexString: "#E0E0E0")
        static let titleGray = UIColor(hexString: "#545C77")
        static let secondary = UIColor(hexString: "#F0F3FF")
    }
    
    enum Strings {
        enum Tabbar{
            static var home = "Home"
            static var calendar = "Calendar"
            static var search = "Search"
            static var chat = "Chat"
        }
        
        enum Overview {
            static var allWorkoutsButtonTitle = "All workouts"
        }
    
        
    }
    enum Images {
            enum Tabbar{
                static var home = UIImage(named: "Home")
                static var calendar = UIImage(named: "Calendar")
                static var search = UIImage(named: "Search")
                static var chat = UIImage(named: "Chat")
            }
        
            enum Common {
                static var downArrow = UIImage(named: "down_arrow")
            }
        }
    
    enum Fonts {
        static func helveticaRegular(width size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
            
             
        }
     
//        static var title = UIFont.systemFont(ofSize: 16, weight: .semibold)
//        static var subtitle = UIFont.systemFont(ofSize: 14, weight: .regular)
    }
    
}
