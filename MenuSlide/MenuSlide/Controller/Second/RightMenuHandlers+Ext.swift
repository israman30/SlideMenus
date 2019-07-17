//
//  RightMenuHandlers+Ext.swift
//  MenuSlide
//
//  Created by Israel Manzo on 7/17/19.
//  Copyright © 2019 Israel Manzo. All rights reserved.
//

import UIKit

extension SecondController {
    
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
