//
//  MenuLauncher.swift
//  MenuSlide
//
//  Created by Israel Manzo on 7/17/19.
//  Copyright © 2019 Israel Manzo. All rights reserved.
//

import UIKit

class MenuLauncher {
    
    let darkView = UIView()
    
    let menuView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        return view
    }()
    
    func showBottomMenu(){
        if let window = UIApplication.shared.keyWindow {
            darkView.backgroundColor = UIColor(white: 0, alpha: 0.5)
            darkView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleDismissMenu)))
            
            window.addSubViews(darkView, menuView)
            setMenuViewItems(view: menuView)
            
            let y = window.frame.height - 250
            menuView.frame = CGRect(x: 0, y: window.frame.height, width: window.frame.width, height: 300)
            darkView.frame = window.frame
            darkView.alpha = 0
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
                self.darkView.alpha = 1
                self.menuView.frame = CGRect(
                    x: 0,
                    y: y,
                    width: self.menuView.frame.width,
                    height: self.menuView.frame.height
                )
            }, completion: nil)
        }
    }
    
    func setMenuViewItems(view: UIView){
        
        let cardSet = UIView()
        cardSet.backgroundColor = .gray
        cardSet.layer.cornerRadius = 4
        
        let settingIcon = UIImageView(image: #imageLiteral(resourceName: "settings"))
        let codeIcon = UIImageView(image: #imageLiteral(resourceName: "code"))
        let putIcon = UIImageView(image: #imageLiteral(resourceName: "put"))
        
        let stackView = UIStackView(arrangedSubviews: [settingIcon, codeIcon, putIcon])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 5
        
        view.addSubViews(cardSet, stackView)
        
        cardSet.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, padding: .init(top: 15, left: 40, bottom: 0, right: 40), size: .init(width: 0, height: 7))
        
        stackView.centerInSuperview(size: .init(width: 48, height: 150), constantX: 0, constantY: -40)
    }
    
    @objc fileprivate func handleDismissMenu(){
        UIView.animate(withDuration: 0.5) {
            self.darkView.alpha = 0
            
            if let window = UIApplication.shared.keyWindow {
                self.menuView.frame = CGRect(
                    x: 0,
                    y: window.frame.height,
                    width: self.menuView.frame.width,
                    height: self.menuView.frame.height
                )
            }
        }
    }
}
