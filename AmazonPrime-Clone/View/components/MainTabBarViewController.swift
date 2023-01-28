//
//  MainTabBarViewController.swift
//  AmazonPrime-Clone
//
//  Created by Rohit Sharma on 27/01/23.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: SearchViewController())
        let vc3 = UINavigationController(rootViewController: DownloadsViewController())
        let vc4 = UINavigationController(rootViewController: StoreViewController())
        
        vc1.title = "Home"
        vc2.title = "Store"
        vc3.title = "Search"
        vc4.title = "Downloads"
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "bag")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down")
        
        
        
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)
        
        tabBar.tintColor = .black
        
        
    }
    


}
