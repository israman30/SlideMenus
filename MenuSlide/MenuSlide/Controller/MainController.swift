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

    override func viewDidLoad() {
        super.viewDidLoad()
        setMainView()
        setMenuButtons()
        setLeftMenuView()
    }
    
    @objc func handleLeftMenu(){
        print("Left button")
    }
    
    @objc func handleRightMenu(){
        print("right button")
    }
    
    func setLeftMenuView() {
        let leftMenuView = UIView()
        leftMenuView.backgroundColor = .gray
        
        let nameLabel: UILabel = {
            let label = UILabel()
            label.text = "John Doe"
            label.textAlignment = .center
            label.font = UIFont.boldSystemFont(ofSize: 30)
            label.textColor = .black
            return label
        }()
        
        view.addSubview(leftMenuView)
        
        leftMenuView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: view.frame.height))
        
        
        let profilePhoto = UIImageView(image: #imageLiteral(resourceName: "icons8-name-100"))
        
        leftMenuView.addSubViews(profilePhoto, nameLabel)
        
        profilePhoto.centerInSuperview(size: .init(width: 120, height: 120), constantX: 0, constantY: -220)
        
        nameLabel.anchor(top: profilePhoto.bottomAnchor, left: leftMenuView.leftAnchor, bottom: nil, right: leftMenuView.rightAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 30))
        
    }

}

