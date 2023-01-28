//
//  SearchViewController.swift
//  AmazonPrime-Clone
//
//  Created by Rohit Sharma on 27/01/23.
//

import UIKit

class SearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.titleView =  NavigationView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 40))
    }
    

}
