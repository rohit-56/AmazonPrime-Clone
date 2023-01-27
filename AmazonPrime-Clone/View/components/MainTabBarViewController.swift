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
        
        
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)
        
        tabBar.tintColor = .label
        
    }
    


}
