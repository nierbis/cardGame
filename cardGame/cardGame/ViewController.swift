//
//  ViewController.swift
//  cardGame
//
//  Created by Arturas Zube on 15/9/19.
//  Copyright © 2019 Arturas Zube. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cardImageIndex1 : Int = 0
    var cardImageIndex2 : Int = 0
    var score : Int = 1
    
     let cardArray = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13", "card14" ]

    @IBOutlet weak var cardImage1: UIImageView!
    @IBOutlet weak var cardImage2: UIImageView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      scoreLabel.text = "0"
            
    }

    @IBAction func dealCards(_ sender: Any) {
        flipcards()
        calculating()
       
    }
   
    
    @IBAction func resetCount(_ sender: Any) {
        score = 0
        scoreLabel.text = "\(score)"
        cardImage1.image = UIImage(named: "back")
        cardImage2.image = UIImage(named: "back")
    }
    
    func calculating() {
        scoreLabel.text = "\(score)"
        score = score + 1
    }
    
//    func restartCount() {
//       score =  0
//       scoreLabel.text = "\(score)"
//
//    }
    
    
    func flipcards() {
        cardImageIndex1 = Int(arc4random_uniform(13))
        cardImageIndex2 = Int(arc4random_uniform(13))
        
        
        cardImage1.image = UIImage(named: cardArray[cardImageIndex1])
        cardImage2.image = UIImage(named: cardArray[cardImageIndex2])
    }
    
}

