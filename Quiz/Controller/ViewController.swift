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
    var scoreCount : Int?
    
    // IBOutlets
    @IBOutlet weak var sideBarCollection: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet var true_false_outlet: [UIButton]!
    @IBOutlet weak var scoreLabelOutlet: UILabel!
    
    
    var dict: [Int: UIColor] = [0: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), 1: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)]
    // colors in lower case so i can use for both uicolor names .text property
    var randomColor = ["red", "yellow", "blue", "black", "orange", "skyblue", "pink", "green", "purple", "white"]

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
        
        scoreLabelOutlet.text = "\(scoreCount ?? 100)"
        resultLabel.text = randomColor[picked]
        resultLabel.textColor = dict[randomBg]
        
    }
    

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
        
        
        
      
        
        if sender.tag == 0 {
            
        } else if sender.tag == 1 {
            
        }
        
        
    }
    
    
    
    


}

