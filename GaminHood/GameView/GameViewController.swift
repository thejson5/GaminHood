//
//  GameViewController.swift
//  GaminHood
//
//  Created by Jose Fumanal Quintana on 2/12/20.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var gameImage: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var gameLogo: UIImageView!
    @IBOutlet weak var gameScore: UIImageView!
    @IBOutlet weak var completeGameButton: UIButton!
    @IBOutlet weak var wishlistButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var publisher: UILabel!
    @IBOutlet weak var developer: UILabel!
    @IBOutlet weak var playersNumber: UILabel!
    @IBOutlet weak var gameCategory: UILabel!
    @IBOutlet weak var gameSummary: UILabel!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
    }
    
    private func configureViews() {
        gameImage.configure()
        gameScore.configure()
        
    }
}
