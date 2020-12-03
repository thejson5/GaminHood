//
//  SearchGameController.swift
//  GaminHood
//
//  Created by Jose Fumanal Quintana on 25/11/20.
//

import UIKit

class SearchGameController: UIViewController{
    
    @IBOutlet weak var tableViewGames: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var gaminhoodPacks: Packs = []
    var viewModel = SearchGameViewModel()

    private func searchGame() {
        if let games = viewModel.games {
            for game in games {
                if searchBar.text == game.name {
                    SearchGameViewCell().nameGame.text = game.name
                    SearchGameViewCell().gameImage.image = UIImage(named: game.coverImage.first ?? "No image")
                }
            }
        }
    }
    
    private func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json") {
                return try String(contentsOfFile: bundlePath).data(using: .utf8)
            }
            return nil
        } catch {
            print(error)
            return nil
        }
    }
    
    private func loadData() {
        guard let jsonData = readLocalFile(forName: "sampleData") else {
            return
        }
        
        do {
            let packs = try JSONDecoder().decode(Packs.self, from: jsonData)
            print(packs)
            gaminhoodPacks.append(contentsOf: packs)
        } catch {
            print(error)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "ghBackground")!)
        configureTable()
    }
    
    func configureTable() {
        tableViewGames.dataSource = self
        tableViewGames.delegate = self
    }
    
}

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
