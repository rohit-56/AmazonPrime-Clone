//
//  HomeViewController.swift
//  AmazonPrime-Clone
//
//  Created by Rohit Sharma on 27/01/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    let titleOfEachSections = ["Prime - Amazon Original Series","Prime - Upcoming","Prime - Trending Movies","Prime - Trending Shows","Prime - Thriller Movies","Prime - Comedy Movies","Prime - Horror Movies"]
    
    private var tableView : UITableView = {
       var tableView = UITableView()
        tableView.register(TitleTableViewCell.self, forCellReuseIdentifier: TitleTableViewCell.identifier)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        
        navigationItem.titleView =  NavigationView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 40))
        
        tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 250))
        
        
        APICaller.shared.getTrendingMovies(){ results in
            switch(results){
            case .success(let movies):
                print(movies)
            case .failure(let error):
                print(error.localizedDescription)
            }
            
            
        }
       
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    

}
extension HomeViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier, for: indexPath) as? TitleTableViewCell else { return UITableViewCell()}
        cell.backgroundColor = .lightGray
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        titleOfEachSections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        titleOfEachSections[section]
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        20
    }
    
}
