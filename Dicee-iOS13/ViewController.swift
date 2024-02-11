//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDice: Int = 0
    var rightDice: Int = 0
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPress(_ sender: UIButton) {
        
        let dices = [UIImage(imageLiteralResourceName: "DiceOne"),
                     UIImage(imageLiteralResourceName: "DiceTwo"),
                     UIImage(imageLiteralResourceName: "DiceThree"),
                     UIImage(imageLiteralResourceName: "DiceFour"),
                     UIImage(imageLiteralResourceName: "DiceFive"),
                     UIImage(imageLiteralResourceName: "DiceSix")
                    ]
        
        leftDice = Int.random(in: 0...5)
        rightDice = Int.random(in: 0...5)
        
        score = leftDice + rightDice + 2
        
        diceImageView1.image = dices[leftDice]
        diceImageView2.image = dices[rightDice]
        
        print(score)
    }
    
}

