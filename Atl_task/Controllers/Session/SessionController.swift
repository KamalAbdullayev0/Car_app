//
//  SessionController.swift
//  Atl_task
//
//  Created by Kamal Abdullayev on 13.01.25.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Session"
//        navigationController?.tabBarItem.title = Resources.Strings.Tabbar.search
        addnavBarButton(at: .left, title: "Pause")
        addnavBarButton(at: .right, title: "Finish")
    }
    
}
