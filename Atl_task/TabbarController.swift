//
//  TabbarController.swift
//  Atl_task
//
//  Created by Kamal Abdullayev on 12.01.25.
//
//  TabbarController.swift
//  Atl_task
//
//  Created by Kamal Abdullayev on 12.01.25.
//

import UIKit

enum Tabs : Int {
    case home
    case calendar
    case search
    case chat
}

final class TabbarController: UITabBarController {
    init() {
            super.init(nibName: nil, bundle: nil)
            configure()
        }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
    }
    required init?(coder: NSCoder) {
        fatalError(
            "init(coder:) has not been implemented"
        )
        }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        
    let homeController = UIViewController()
    let calendarController = UIViewController()
    let searchController = UIViewController()
    let chatController = UIViewController()
        
        
    let homeNavigation = UINavigationController(rootViewController: homeController)
    let calendarNavigation = UINavigationController(rootViewController: calendarController)
    let searchNavigation = UINavigationController(rootViewController: searchController)
    let chatNavigation = UINavigationController(rootViewController: chatController)
        
        
        homeController.tabBarItem = UITabBarItem(
            title: Resources.Strings.Tabbar.home,
            image: Resources.Images.Tabbar.home,
            tag: Tabs.home.rawValue
        )
        
        calendarController.tabBarItem = UITabBarItem(
                title: Resources.Strings.Tabbar.calendar,
                image: Resources.Images.Tabbar.calendar,
                tag: Tabs.calendar.rawValue
        )
                
        searchController.tabBarItem = UITabBarItem(
                title: Resources.Strings.Tabbar.search,
                image: Resources.Images.Tabbar.search,
                tag: Tabs.search.rawValue
        )
                
        chatController.tabBarItem = UITabBarItem(
                title: Resources.Strings.Tabbar.chat,
                image: Resources.Images.Tabbar.chat,
                tag: Tabs.chat.rawValue
        )
        
        setViewControllers([homeNavigation,calendarNavigation,searchNavigation,chatNavigation], animated: false)
        
    

        
    }
    
    
}
