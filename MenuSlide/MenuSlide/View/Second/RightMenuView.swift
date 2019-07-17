//
//  RightMenuView.swift
//  MenuSlide
//
//  Created by Israel Manzo on 7/16/19.
//  Copyright © 2019 Israel Manzo. All rights reserved.
//

import UIKit

extension SecondController {
    
    func setRightMenuView() {
        
        let rightMenuView = UIView()
        rightMenuView.backgroundColor = .white
        
        let closeButton = UIButton(type: .system)
        closeButton.setTitle("close", for: .normal)
        closeButton.setTitleColor(.white, for: .normal)
        closeButton.backgroundColor = .black
        closeButton.layer.cornerRadius = 2
        closeButton.addTarget(self, action: #selector(handleCloseRightMenu), for: .touchUpInside)
        
        view.addSubview(rightMenuView)
        
        rightMenuView.anchor(top: view.topAnchor, left: nil, bottom: view.bottomAnchor, right: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 120, height: view.frame.height))
        rightMenuView.translatesAutoresizingMaskIntoConstraints = false
        
        rightAnchorConstraint = rightMenuView.leftAnchor.constraint(equalTo: view.rightAnchor, constant: 0)
        rightAnchorConstraint?.isActive = true
        
        let settingIcon = UIImageView(image: #imageLiteral(resourceName: "settings"))
        let codeIcon = UIImageView(image: #imageLiteral(resourceName: "code"))
        let putIcon = UIImageView(image: #imageLiteral(resourceName: "put"))
        
        let stackView = UIStackView(arrangedSubviews: [settingIcon, codeIcon, putIcon])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        rightMenuView.addSubViews(closeButton,stackView)
        
        closeButton.anchor(top: rightMenuView.topAnchor, left: rightMenuView.leftAnchor, bottom: nil, right: rightMenuView.rightAnchor, padding: .init(top: 60, left: 15, bottom: 0, right: 15), size: .init(width: 50, height: 20))
        
        
        stackView.centerInSuperview(size: .init(width: 45, height: 150), constantX: 0, constantY: 0)
    }
}

