//
//  ViewController.swift
//  Apple Pie
//
//  Created by Raleigh Felton on 11/7/17.
//  Copyright © 2017 Raleigh Felton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    var listOfWords = ["mango", "tango", "beer", "design", "swift" ]
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        
    }
    
    var currentGame: Game!
    
    func newRound() {
        let newWord = listOfWords.removeLast()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
        updateUI()
    }
    
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    

    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

