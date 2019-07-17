//
//  ThirdView.swift
//  MenuSlide
//
//  Created by Israel Manzo on 7/17/19.
//  Copyright © 2019 Israel Manzo. All rights reserved.
//

import UIKit

extension ThirdController {
    
    func setThirdView() {
        view.backgroundColor = .white
        view.addSubViews(nameLabel, authorLabel)
        nameLabel.centerInSuperview(
            size: .init(width: view.frame.width, height: 40),
            constantY: -100
        )
        
        authorLabel.centerInSuperview(
            size: .init(width: view.frame.width, height: 30),
            constantY: 200
        )
    }
    
    func setMenuButtons() {
        
        let leftMenuButton = UIButton(type: .system)
        leftMenuButton.setImage(#imageLiteral(resourceName: "left"), for: .normal)
        
        let rightMenuButton = UIButton(type: .system)
        rightMenuButton.setImage(#imageLiteral(resourceName: "right"), for: .normal)
        rightMenuButton.addTarget(self, action: #selector(handleOpenBottomMenu), for: .touchUpInside)
        
        view.addSubViews(leftMenuButton, rightMenuButton)
        
        leftMenuButton.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            left: view.leftAnchor,
            bottom: nil,
            right: nil,
            padding: .init(top: 10, left: 15, bottom: 0, right: 0),
            size: .init(width: 30, height: 30)
        )
        
        rightMenuButton.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            left: nil,
            bottom: nil,
            right: view.rightAnchor,
            padding: .init(top: 10, left: 0, bottom: 0, right: 15),
            size: .init(width: 20, height: 30)
        )
    }
    
}



