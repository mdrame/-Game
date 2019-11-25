//
//  ViewController.swift
//  Quiz
//
//  Created by Mohammed Drame on 11/23/19.
//  Copyright © 2019 Mo Drame. All rights reserved.

// TODO: Add timmer in app
//

import UIKit

class ViewController: UIViewController {
    

   
    // Global variables, list, dict etc
    // colors in lower case so i can use for both uicolor names .text property
    var randomColor: [String] = ["red", "yellow", "blue", "black", "orange", "skyblue", "pink", "green", "purple", "white"]

    var textColorDict : [String: UIColor] = ["red": .red,
                                             "yellow": .yellow,
                                             "blue": .blue,
                                             "pink": .gray,
                                             "purple":.purple,
                                             "ornage": .orange,
                                             "skyblue": .green,
                                             "black": .black ]
    
    
    var scoreCount = 0 // keep track of how many answer user got right and wrong
    var correctAnswer: Int? // keeps track of textColor and .text stage ( 0 / 1 )
    var correctBool = "NOTHING" // keeping track of correctAnswer and sender.tags = 0/1
   
    
    
    
    // IBOutlets
    @IBOutlet weak var sideBarCollection: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet var true_false_outlet: [UIButton]!
    @IBOutlet weak var scoreLabelOutlet: UILabel!
    
    
    // UIFunctions ( In-order to not occupy viewDidLoad func )
    
    func uiButtonsDesigned() {
        
        // sidde button designs
        sideBarCollection.layer.borderWidth = 3.0
        sideBarCollection.layer.borderColor = #colorLiteral(red: 1, green: 0.2256877422, blue: 0.0854042545, alpha: 1)
        sideBarCollection.layer.cornerRadius = 10.0
        
    }
    
    
    @IBOutlet var countDownLabel: UILabel!

  
    /*  assigningTittle set UIOutlet properties and keep stage of textColr and .text product */
    
    func assigningTittle() {
        
        randomColor.shuffle() // shuffle array
         let title = randomColor[0] // shuffle array and give the firest element
        let shuffledTextColor = textColorDict.shuffled()
       
        
        let gameStage  = 0
        
        for (key, value) in shuffledTextColor {
            
            if gameStage == 0 {
                resultLabel.text = title
                resultLabel.textColor = value
            }
            if key == title { // if dictionary key and lable is or is not the same then correct answer keep satge
                correctAnswer = 0
            } else {
                correctAnswer = 1
            }
        }
        
    
      
    
    } // assigningTittle ends here
    

    
       var count = 10

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        uiButtonsDesigned()
        
        assigningTittle()
       
    
        
    }
    

    
    // IBActions
    @IBAction func sideBarAction(_ sender: UIButton) {
        
        // if button pressed slide UIView from the side
    }
    
    
    // True and False button
    @IBAction func action(_ sender: UIButton) {
        
        if sender.tag == 0 && correctAnswer! == 0 { // if true
            scoreCount += 1
            correctBool = "Correct"
            scoreLabelOutlet.text = "\(scoreCount)"
            assigningTittle()
        } else if sender.tag == 1 && correctAnswer! == 1 { // if true
            scoreCount += 1
            correctBool = "Correct"
            scoreLabelOutlet.text = "\(scoreCount)"
            assigningTittle()
        } else if sender.tag == 0 && correctAnswer! == 1 { // if false
            scoreCount -= 1
            correctBool = "Wrong"
            scoreLabelOutlet.text = "\(scoreCount)"
            assigningTittle()
        } else if sender.tag == 1 && correctAnswer! == 0 { // if false
            scoreCount -= 1
            correctBool = "Wrong"
            scoreLabelOutlet.text = "\(scoreCount)"
            assigningTittle()
        } else {                                    // default
            correctBool = "Nothing Bro"
            scoreLabelOutlet.text = "\(scoreCount)"
            assigningTittle()
        }
    
        print(correctBool)
    
    }
    
    
    
    
 
    
    
    
    


}

