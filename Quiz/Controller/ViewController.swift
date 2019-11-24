//
//  ViewController.swift
//  Quiz
//
//  Created by Mohammed Drame on 11/23/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // variable
    var scoreCount = 0
    var correctAnswer: Int?
    var correctBool = "NOTHING"
    
    // IBOutlets
    @IBOutlet weak var sideBarCollection: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet var true_false_outlet: [UIButton]!
    @IBOutlet weak var scoreLabelOutlet: UILabel!
    
    

    // colors in lower case so i can use for both uicolor names .text property
    let randomColor = ["red", "yellow", "blue", "black", "orange", "skyblue", "pink", "green", "purple", "white"]
    
    let textColorDict : [String: UIColor] = ["red": .red, "yellow": .yellow]
    let picked = Int.random(in: 0...9)
    let randomBg = Int.random(in: 0...1)
    
    
    // UIFunctions ( In-order to not occupy viewDidLoad func )
    
    func uiButtonsDesigned() {
        
        // sidde button designs
        sideBarCollection.layer.borderWidth = 3.0
        sideBarCollection.layer.borderColor = #colorLiteral(red: 1, green: 0.2256877422, blue: 0.0854042545, alpha: 1)
        sideBarCollection.layer.cornerRadius = 10.0
        
    }
    
    
    func assigningTittle() {
        
        scoreLabelOutlet.text = "Score: \(scoreCount)"
        resultLabel.text = randomColor[picked]
        let counter = 0
        for (key, value) in textColorDict {
            if counter == 0 {
                resultLabel.textColor = value
                if resultLabel.text! == key {
                    //test
                    print(" \(key) and \(resultLabel.text!) the same ")
                    correctAnswer = 0
                  
                } else {
                    // test
                    print(" \(key) and \(resultLabel.text!) not the same  ")
                    correctAnswer = 1
                  
                }
                break
            }
        }
        
        
    }
    
    
//    func checking(correct answer: Int, sender uibutton: Int) ->Bool {
//        if answer == uibutton {
//            return true
//        } else {
//            return false
//        }
//    }
//

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        uiButtonsDesigned()
        assigningTittle()
       
        
        
    }
    
    
    // function
    
    // checking to see which button was pressed only it .text propertie
    
    
    
    // IBActions
    @IBAction func sideBarAction(_ sender: UIButton) {
        
        
    }
    
    
    
    @IBAction func action(_ sender: UIButton) {
        
        assigningTittle()
        
        if correctAnswer == sender.tag {
            scoreCount += 1
            correctBool = "True"
            assigningTittle()
        } else {
            scoreCount -= 1
            correctBool = "False"
            assigningTittle()
        }
    
        print(correctBool)
    
    }
    
    
    
    


}

