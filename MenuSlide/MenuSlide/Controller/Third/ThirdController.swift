//
//  ThirdController.swift
//  MenuSlide
//
//  Created by Israel Manzo on 7/17/19.
//  Copyright © 2019 Israel Manzo. All rights reserved.
//

import UIKit

class ThirdController: UIViewController {
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Bottom Slide Menu"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 35)
        label.textColor = .darkGray
        return label
    }()
    
    let authorLabel: UILabel = {
        let label = UILabel()
        label.text = "by: @israman30"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = .gray
        return label
    }()
    
    lazy var menuLauncher = MenuLauncher()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMenuButtons()
        setThirdView()
    }
    
    @objc func handleOpenBottomMenu(){
        menuLauncher.showBottomMenu()
    }
    
}



