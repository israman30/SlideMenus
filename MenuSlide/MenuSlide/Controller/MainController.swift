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
        
        setRightMenuView()
    }
    
    @objc func handleRightMenu(){
        print("right button")
        
        if let window = UIApplication.shared.keyWindow {
            containerWindow.backgroundColor = UIColor(white: 0, alpha: 0.7)
            
            containerWindow.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapDimissMenu)))
            
            window.addSubview(containerWindow)
            containerWindow.frame = window.frame
            containerWindow.alpha = 0
            
            UIView.animate(withDuration: 0.5) {
                self.containerWindow.alpha = 1
            }
        }
    }
    
    @objc func handleTapDimissMenu(){
        UIView.animate(withDuration: 0.5) {
            self.containerWindow.alpha = 0
        }
    }
    
    var rightAnchorConstrain: NSLayoutConstraint?
    
    func setRightMenuView() {
        
        let rightMenuView = UIView()
        
        rightMenuView.backgroundColor = .red
        view.addSubview(rightMenuView)
        rightMenuView.anchor(top: view.topAnchor, left: nil, bottom: view.bottomAnchor, right: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 120, height: 0))
        
        rightMenuView.translatesAutoresizingMaskIntoConstraints = false
        rightAnchorConstrain = rightMenuView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 120)
        rightAnchorConstrain?.isActive = true
        
        let settingIcon = UIImageView(image: #imageLiteral(resourceName: "settings"))
        let putIcon = UIImageView(image: #imageLiteral(resourceName: "put"))
        let codeIcon = UIImageView(image: #imageLiteral(resourceName: "code"))
        
        let stackView = UIStackView(arrangedSubviews: [settingIcon, putIcon, codeIcon])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 40
        
        rightMenuView.addSubview(stackView)
        stackView.centerInSuperview(size: .init(width: 50, height: 220), constantX: 0, constantY: 0)
    }

}


