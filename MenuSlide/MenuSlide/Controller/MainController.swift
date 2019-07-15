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
    
    @objc func handleRightMenu(){
        print("right button")
    }
    
    @objc func handleLeftMenu(){
        leftAnchorConstraint?.constant = 0
        
        UIView.animate(withDuration: 0.4) {
            self.view.layoutIfNeeded()
            self.view.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        }
    }
    
    @objc func handleCloseLeftMenu(){
        leftAnchorConstraint?.constant = -300
        
        UIView.animate(withDuration: 0.4) {
            self.view.layoutIfNeeded()
            self.view.backgroundColor = UIColor(white: 1, alpha: 1)
        }
    }
    
    @objc func handleSwipeLeftMenu(gesture: UISwipeGestureRecognizer){
        if gesture.direction == .right {
            print(123)
        } else if gesture.direction == .right{
            print(345)
        }
        
    }
    
    var leftAnchorConstraint: NSLayoutConstraint?
    
    func setLeftMenuView() {
        let leftMenuView = UIView()
        leftMenuView.backgroundColor = .white
        leftMenuView.isUserInteractionEnabled = true
        leftMenuView.addGestureRecognizer(UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeLeftMenu)))
        
        let closeButton = UIButton(type: .system)
        closeButton.setTitle("X", for: .normal)
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
        
        leftMenuView.anchor(top: view.topAnchor, left: nil, bottom: view.bottomAnchor, right: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: view.frame.height))
        leftMenuView.translatesAutoresizingMaskIntoConstraints = false
        
        leftAnchorConstraint = leftMenuView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: -300)
        leftAnchorConstraint?.isActive = true
        
        
        let profilePhoto = UIImageView(image: #imageLiteral(resourceName: "icons8-name-100"))
        
        leftMenuView.addSubViews(profilePhoto, nameLabel, closeButton)
        
        closeButton.anchor(top: leftMenuView.topAnchor, left: nil, bottom: nil, right: leftMenuView.rightAnchor, padding: .init(top: 40, left: 0, bottom: 0, right: 15), size: .init(width: 40, height: 40))
        
        profilePhoto.centerInSuperview(size: .init(width: 120, height: 120), constantX: 0, constantY: -220)
        
        nameLabel.anchor(top: profilePhoto.bottomAnchor, left: leftMenuView.leftAnchor, bottom: nil, right: leftMenuView.rightAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 30))
        
    }
    

}

