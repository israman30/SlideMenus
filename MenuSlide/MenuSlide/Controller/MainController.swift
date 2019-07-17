//
//  ViewController.swift
//  MenuSlide
//
//  Created by Israel Manzo on 7/15/19.
//  Copyright © 2019 Israel Manzo. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Slide Menu App"
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
    
    // MARK: - Left anchor reference the left constraint to be animated for menu view
    var leftAnchorConstraint: NSLayoutConstraint?
    
    // MARK: - Conatainer view cover the parent view using alpha when menu view opens
    let containerWindow = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setContainerView()
        setMainView()
        setMenuButtons()
        setLeftMenuView()
    }
}


