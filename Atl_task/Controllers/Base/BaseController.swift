//
//  BaseController.swift
//  Atl_task
//
//  Created by Kamal Abdullayev on 12.01.25.
//
import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
}

@objc extension BaseController {
    func addViews() {
    }
    
    func layoutViews() {

    }
    
    func configure() {
        view.backgroundColor = Resources.Colors.background
    }
    
    func navBarLeftButtonHandler() {
        print("Left button pressed")
    }
    
    func navBarRightButtonHandler() {
        print("Right button pressed")
    }
}

extension BaseController {
    func addnavBarButton(at position: NavBarPosition, title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colors.active, for: .normal)
        button.setTitleColor(Resources.Colors.inactive, for: .disabled)
        button.titleLabel?.font = Resources.Fonts.helveticaRegular(width: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
            print("Left button added:", navigationItem.leftBarButtonItem != nil)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
            print("Right button added:", navigationItem.rightBarButtonItem != nil)
        }
    }
}
