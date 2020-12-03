//
//  SearchGameController.swift
//  GaminHood
//
//  Created by Jose Fumanal Quintana on 25/11/20.
//

import UIKit

class SearchGameController: UIViewController{
    
    @IBOutlet weak var tableViewGames: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "ghBackground")!)
        configureTable()
    }
    
    func configureTable() {
        tableViewGames.dataSource = self
        tableViewGames.delegate = self
    }
    
}

var viewModel = SearchGameViewModel()

extension SearchGameController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let games = viewModel.games {
            return games.count
        }
        return 0
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
