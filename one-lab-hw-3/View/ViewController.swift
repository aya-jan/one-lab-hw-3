//
//  ViewController.swift
//  one-lab-hw-3
//
//  Created by aya on 22.04.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let welcomeButton: UIButton = {
        let button = UIButton(frame: CGRect(x:0, y:0, width: 200, height: 52))
        button.setTitle("Welcome to one-lab-3! tap to start", for: .normal)
        button.backgroundColor = .purple
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(welcomeButton)
        layoutSubviews()
        welcomeButton.addTarget(self, action: #selector(tapOnButton), for: UIControl.Event.touchUpInside)
    }
    
     func layoutSubviews() {
        super.viewDidLayoutSubviews()
        welcomeButton.snp.makeConstraints{
            $0.center.equalToSuperview()
        }
    }
    
    @objc func tapOnButton(){
        print("touched")
        let tabBarVC = UITabBarController()
        tabBarVC.tabBar.backgroundColor = .gray
        
        let tabBarViewControllers = [
             UINavigationController(rootViewController: MyFeedViewController()),
             UINavigationController(rootViewController: MyFriendsViewController()),
              UINavigationController(rootViewController: MyPinsViewController()),
             UINavigationController(rootViewController: MyProfileViewController())
        ]
        
        tabBarViewControllers[0].title = "My Feed"
        tabBarViewControllers[1].title = "My Friends"
        tabBarViewControllers[2].title = "My Pins"
        tabBarViewControllers[3].title = "My Profile"
  
        tabBarVC.setViewControllers(tabBarViewControllers, animated: false)
        
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        
        let images = ["text.below.photo.rtl", "person.2.fill", "pin.fill", "person.circle"]
        
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
    }
}

