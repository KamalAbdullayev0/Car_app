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
    }
    
    enum Strings {
        enum Tabbar{
            static var home = "Home"
            static var calendar = "Calendar"
            static var search = "Search"
            static var chat = "Chat"
        }
        
    }
    enum Images {
            enum Tabbar{
                static var home = UIImage(named: "Home")
                static var calendar = UIImage(named: "Calendar")
                static var search = UIImage(named: "Search")
                static var chat = UIImage(named: "Chat")
            }
        }
    
}
