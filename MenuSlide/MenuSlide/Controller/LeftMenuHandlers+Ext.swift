//
//  LeftMenuHandlers+Ext.swift
//  MenuSlide
//
//  Created by Israel Manzo on 7/15/19.
//  Copyright © 2019 Israel Manzo. All rights reserved.
//

import UIKit

/*
 MARK: - Extension contains method to open left menu view with animation
 */

extension MainController {
    
    // MARK: - Container view that covers parent view when left menu is opened
    func setContainerView() {
        view.addSubview(containerWindow)
        containerWindow.frame = view.frame
        handleTapCloseMenuMainView(view: containerWindow)
    }
    
    // MARK: - This function opens the left menu view using the anchor reference with animation.
    @objc func handleLeftMenu(){
        leftAnchorConstraint?.constant = -5
        
        UIView.animate(withDuration: 0.5, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
            self.view.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        }, completion: nil)
    }
    
    /* MARK: - Close menu function is called when user tap on the button close that is located on left menu view.
      - The constant value changes and animate the menu view when opens.
     */
    @objc func handleCloseLeftMenu(){
        leftAnchorConstraint?.constant = -300
        
        UIView.animate(withDuration: 0.4) {
            self.view.layoutIfNeeded()
            self.view.backgroundColor = UIColor(white: 1, alpha: 1)
        }
    }
    
    // MARK: - Close menu view when user taps on the container "dark" view outside of the menu view. Calls previous closing method.
    @objc func handleTapCloseLeftMenu(){
        handleCloseLeftMenu()
    }
    
    // MARK: - This function takes the container view for window and add a gesture when user taps the view.
    func handleTapCloseMenuMainView(view: UIView){
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapCloseLeftMenu)))
    }
    
}
