//
//  SearchGameController.swift
//  GaminHood
//
//  Created by Jose Fumanal Quintana on 25/11/20.
//

import UIKit

class SearchGameController: UIViewController{
    
    @IBOutlet weak var tableViewGames: UITableView!
    
    var games: [String] = ["The last of us", "god of war", "fifa21", "spyro"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "darkBg-straight")!)
        configureTable()
    }
    
    func configureTable() {
        tableViewGames.dataSource = self
        tableViewGames.delegate = self
    }
    
}

extension SearchGameController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SearchGameViewCell", for: indexPath as IndexPath) as? SearchGameViewCell else {
            return UITableViewCell()
            
        }
        
//        cell.configureCell(gamePhoto: "", game: "", date: "", like: <#T##UIButton#>, logo: "")
        
        
        return cell
    }
    
    
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
//    }
}
