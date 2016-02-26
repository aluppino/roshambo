//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by Luppino, Angelo on 2/26/16.
//  Copyright © 2016 Angelo Luppino. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var message: String?
    var image: UIImage?

    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        
        if let message = self.message {
            messageLabel.text = message
        }

        if let image = self.image {
            resultImage.image = image
        }
        
    }
    
    @IBAction func playAgain(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
