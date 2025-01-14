//
//  ProgressController.swift
//  Atl_task
//
//  Created by Kamal Abdullayev on 13.01.25.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Progress"
        
        addnavBarButton(at: .left, title: "Export")
        addnavBarButton(at: .right, title: "Details")

    }
}
