//
//  ViewController.swift
//  War
//
//  Created by Eisa Bouhamad on 11/10/14.
//  Copyright (c) 2014 BCompany Est. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstCardImage: UIImageView!
    @IBOutlet var secondCardImage: UIImageView!
    @IBOutlet var platAroundButton: UIButton!
    
    @IBOutlet var playerScore: UILabel!
    @IBOutlet var EnemyScore: UILabel!
    
    var cardNamedArray = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func playRoundTapped(sender: UIButton) {
        
        
        // randomize first number
        let firstRandomNumber = Int(arc4random_uniform(13))
        
        
        // set the random number to the first string
        let firstRandomString = self.cardNamedArray[firstRandomNumber]
        
        
        // randomize second number
        let secondRandomNumber = Int(arc4random_uniform(13))
        
        // set the random number to second string
        let secondRandomString:String = self.cardNamedArray[secondRandomNumber]
        
        
        // convert the first card image to the first random string
        self.firstCardImage.image = UIImage (named: firstRandomString)
        
        // convert the second card image to the second random string
        self.secondCardImage.image = UIImage (named: secondRandomString)
        
        
        
        if firstRandomNumber > secondRandomNumber {
            
            playerScoreTotal += 1
            
            self.playerScore.text = String(playerScoreTotal)
            
        }
        else if firstRandomNumber < secondRandomNumber {
            
            enemyScoreTotal += 1
            
            self.EnemyScore.text = String(enemyScoreTotal)
            
        }
        else { }
        
        

        
    }
    
}

            
        

        

        

    

