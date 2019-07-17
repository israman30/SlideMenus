//
//  LeftMenuView.swift
//  MenuSlide
//
//  Created by Israel Manzo on 7/15/19.
//  Copyright © 2019 Israel Manzo. All rights reserved.
//

import UIKit
/*
 - This extension set the left menu view.
 - Constains default layout and action button to close the menu view.
 - Contains a reference left anchor to open and close the menu view.
 */

extension MainController {
    
    func setLeftMenuView() {
        let leftMenuView = UIView()
        leftMenuView.backgroundColor = .white
        
        let closeButton = UIButton(type: .system)
        closeButton.setImage(#imageLiteral(resourceName: "icons8-multiply-100"), for: .normal)
        closeButton.setTitleColor(.black, for: .normal)
        closeButton.addTarget(self, action: #selector(handleCloseLeftMenu), for: .touchUpInside)
        
        let nameLabel: UILabel = {
            let label = UILabel()
            label.text = "John Doe"
            label.textAlignment = .center
            label.font = UIFont.boldSystemFont(ofSize: 30)
            label.textColor = .black
            return label
        }()
        
        view.addSubview(leftMenuView)
        
        leftMenuView.anchor(top: view.topAnchor, left: nil, bottom: view.bottomAnchor, right: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 320, height: view.frame.height))
        leftMenuView.translatesAutoresizingMaskIntoConstraints = false
        
        leftAnchorConstraint = leftMenuView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: -300)
        leftAnchorConstraint?.isActive = true
        
        let profilePhoto = UIImageView(image: #imageLiteral(resourceName: "icons8-name-100"))
        
        leftMenuView.addSubViews(profilePhoto, nameLabel, closeButton)
        
        closeButton.anchor(top: leftMenuView.topAnchor, left: nil, bottom: nil, right: leftMenuView.rightAnchor, padding: .init(top: 40, left: 0, bottom: 0, right: 15), size: .init(width: 30, height: 30))
        
        profilePhoto.centerInSuperview(size: .init(width: 120, height: 120), constantX: 0, constantY: -220)
        
        nameLabel.anchor(top: profilePhoto.bottomAnchor, left: leftMenuView.leftAnchor, bottom: nil, right: leftMenuView.rightAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 30))
        
    }
}

