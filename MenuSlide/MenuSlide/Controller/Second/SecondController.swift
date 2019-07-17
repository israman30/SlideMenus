//
//  SecondController.swift
//  MenuSlide
//
//  Created by Israel Manzo on 7/16/19.
//  Copyright © 2019 Israel Manzo. All rights reserved.
//

import UIKit

class SecondController: UIViewController {
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Ritgh Slide Menu"
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
    var rightAnchorConstraint: NSLayoutConstraint?
    
    // MARK: - Conatainer view cover the parent view using alpha when menu view opens
    let containerWindow = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSecondContainerView()
        setSecondView()
        setMenuButtons()
        setRightMenuView()
    }
    
    func setSecondContainerView() {
        view.addSubview(containerWindow)
        containerWindow.frame = view.frame
        handleTapCloseMenuMainView(view: containerWindow)
    }
    
    func handleTapCloseMenuMainView(view: UIView){
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleCloseRightMenu)))
    }
    
    func setSecondView() {
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
    
    @objc func handleOpenRightMenu(){
        rightAnchorConstraint?.constant = -120
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
            self.view.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        }
    }
    
    @objc func handleCloseRightMenu(){
        rightAnchorConstraint?.constant = 0
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
            self.view.backgroundColor = UIColor(white: 1, alpha: 1)
        }
    }
    
    
}

