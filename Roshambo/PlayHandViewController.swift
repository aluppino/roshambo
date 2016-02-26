//
//  ViewController.swift
//  Roshambo
//
//  Created by Luppino, Angelo on 2/26/16.
//  Copyright © 2016 Angelo Luppino. All rights reserved.
//

import UIKit

class PlayHandViewController: UIViewController {

    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rockButton.tag = 1
        paperButton.tag = 2
        scissorsButton.tag = 3
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let button = sender as! UIButton
        let myHand = button.tag
        let randomHand = 1 + arc4random() % 3
        
        var message = ""
        var image: UIImage
        
        switch(myHand, randomHand) {
        case (1, 1):
            message = "It's a tie!"
            image = UIImage(named: "itsATie")!
        case (1, 2):
            message = "Paper covers Rock! You lose!"
            image = UIImage(named: "paperCoversRock")!
        case (1, 3):
            message = "Rock crushes Scissors! You win!"
            image = UIImage(named: "rockCrushesScissors")!
        case (2, 1):
            message = "Paper civers Rock! You win!"
            image = UIImage(named: "paperCoversRock")!
        case (2, 2):
            message = "It's a tie!"
            image = UIImage(named: "itsATie")!
        case (2, 3):
            message = "Scissors cut Paper! You lose!"
            image = UIImage(named: "scissorsCutPaper")!
        case (3, 1):
            message = "Rock crushes Scissors! You lose!"
            image = UIImage(named: "rockCrushesScissors")!
        case (3, 2):
            message = "Scissors cut Paper! You win!"
            image = UIImage(named: "scissorsCutPaper")!
        case (3, 3):
            message = "It's a tie!"
            image = UIImage(named: "itsATie")!
        default:
            message = "It's a tie!"
            image = UIImage(named: "itsATie")!
        }
        
        let resultsController = segue.destinationViewController as! ResultsViewController
        resultsController.message = message
        resultsController.image = image
        
    }

}

