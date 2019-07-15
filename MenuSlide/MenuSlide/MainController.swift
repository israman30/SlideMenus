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

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(nameLabel)
        nameLabel.centerInSuperview(size: .init(width: view.frame.width, height: 40))
    }


}

