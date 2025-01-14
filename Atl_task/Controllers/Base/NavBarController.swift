//
//  NavBarController.swift
//  Atl_task
//
//  Created by Kamal Abdullayev on 12.01.25.
//
import UIKit

final class NavBarController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure () {
        
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.titleGray,
            .font: Resources.Fonts.helveticaRegular(width: 17) ]
        
        navigationBar.addBottomBorder(widht: Resources.Colors.separator, height: 1)
        
    }
}
