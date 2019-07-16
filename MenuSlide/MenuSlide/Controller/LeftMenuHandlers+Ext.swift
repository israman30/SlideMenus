//
//  LeftMenuHandlers+Ext.swift
//  MenuSlide
//
//  Created by Israel Manzo on 7/15/19.
//  Copyright © 2019 Israel Manzo. All rights reserved.
//

import UIKit

extension MainController {
    
    func setContainerView() {
        view.addSubview(containerWindow)
        containerWindow.frame = view.frame
        handleTapCloseMenuMainView(view: containerWindow)
    }
    
    // MARK: Left Menu Block
    @objc func handleLeftMenu(){
        leftAnchorConstraint?.constant = -5
        
        UIView.animate(withDuration: 0.5, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
            self.view.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        }, completion: nil)
    }
    
    @objc func handleCloseLeftMenu(){
        leftAnchorConstraint?.constant = -300
        
        UIView.animate(withDuration: 0.4) {
            self.view.layoutIfNeeded()
            self.view.backgroundColor = UIColor(white: 1, alpha: 1)
        }
    }
    
    @objc func handleTapCloseLeftMenu(){
        handleCloseLeftMenu()
    }
    
    func handleTapCloseMenuMainView(view: UIView){
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapCloseLeftMenu)))
    }
    
}
