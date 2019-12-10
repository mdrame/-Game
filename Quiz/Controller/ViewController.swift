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
    
    
    // Class Instances
    var api = Api()
    var sideBarButton = SideBarButton()
    

    // IBOutlets
    @IBOutlet weak var sideBarCollection: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet var true_false_outlet: [UIButton]!
    @IBOutlet weak var scoreLabelOutlet: UILabel!
    
    @IBOutlet weak var sideBarView: UIView!
    
    @IBOutlet var tapGesture: UITapGestureRecognizer!
    
    
    @IBOutlet var countDownLabel: UILabel!
    
    // HudOutlet
    @IBOutlet weak var hudOutlet: UIImageView!
    
   
    
    
   
// Timer engie ends here.
    
    

    

   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        sideBarButton.uiButtonsDesigned(view: sideBarCollection)
        // Assiging labling  when view loads
        api.assigningTittle(label: resultLabel)
        
        
         // start timer engine when view loads
        self.sixtySecondTImer()
 
    
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        // when view loads side bar button start from the side.
//        api.dissSideBar(view: sideBarView)
//        
//    }
    
    

    // IBActions
    @IBAction func sideBarAction(_ sender: UIButton) {
        
        // pause game when button is hit
        timer.invalidate()
        
        
        // show side bar when pressed and hide it!
        api.showSideBar(view: sideBarView)
        sideBarCollection.isHidden =  true
        }
    
    

        
    
    
    
    
    
    // True and False button
    @IBAction func action(_ sender: UIButton) {
        

        timer.invalidate() // stop time when ever buttons arre press
        api.counter = 5 // reset timer to 5 so timer can restart
        sixtySecondTImer() // fire timmer engine
        
        
        // write better optimazation for this section of code
        // Checking if text and button are on the same page basically.
        if sender.tag == 0 && api.correctAnswer! == 0 { // if true
           // progressHud
            
            api.scoreCount += 1
            api.correctBool = "Correct"
            api.checkProgresseEngine(view: hudOutlet, correct: #imageLiteral(resourceName: "check-mark"), wrong: #imageLiteral(resourceName: "wrong (2).png"), isOn: true)
            scoreLabelOutlet.text = "Score: \(api.scoreCount)"
            api.assigningTittle(label: resultLabel)
        } else if sender.tag == 1 && api.correctAnswer! == 1 { // if true
            
            api.scoreCount += 1
            api.correctBool = "Correct"
            api.checkProgresseEngine(view: hudOutlet, correct: #imageLiteral(resourceName: "check-mark"), wrong: #imageLiteral(resourceName: "wrong (2).png")
            , isOn: true)
            scoreLabelOutlet.text = "Score: \(api.scoreCount)"
            api.assigningTittle(label: resultLabel)
        } else if sender.tag == 0 && api.correctAnswer! == 1 { // if false
           
            api.scoreCount -= 1
            api.correctBool = "Wrong"
            api.checkProgresseEngine(view: hudOutlet, correct: #imageLiteral(resourceName: "check-mark"), wrong: #imageLiteral(resourceName: "wrong (2)"), isOn: false)
            scoreLabelOutlet.text = " Score: \(api.scoreCount)"
            api.assigningTittle(label: resultLabel)
        } else if sender.tag == 1 && api.correctAnswer! == 0 { // if false
            api.scoreCount -= 1
            api.correctBool = "Wrong"
            api.checkProgresseEngine(view: hudOutlet, correct: #imageLiteral(resourceName: "check-mark.png"), wrong: #imageLiteral(resourceName: "wrong (2)"), isOn: false)
            scoreLabelOutlet.text = " Score: \(api.scoreCount)"
            api.assigningTittle(label: resultLabel)
        } else {                                    // default
            api.correctBool = "Nothing Bro"
            scoreLabelOutlet.text = "Score: \(api.scoreCount)"
            api.assigningTittle(label: resultLabel)
        }
        
        // Test
        print(api.correctBool)
    
    }
    
    
    @IBAction func tapGestureTaped(_ sender: UITapGestureRecognizer) {
        // start timer again
        self.sixtySecondTImer()
        // dissmiss and hide  side button when pressed
        api.dissSideBar(view: sideBarView)
        sideBarCollection.isHidden = false
        
        
    }
    

    @IBAction func reset(_ sender: UIButton) {
        
        // Reset Entire Game
        
        api.dissSideBar(view: sideBarView)
        sideBarCollection.isHidden = false

        api.scoreCount = 0
        api.correctBool = "NOTHING"
        api.counter = 5
        scoreLabelOutlet.text = "Score: \(api.scoreCount)"
        self.sixtySecondTImer()
        api.assigningTittle(label: resultLabel)
        
        print("Test")
        
        
    }
    
    
    
    
    
       // Timer Func Engine ( ⚙️ )
       
       var timer = Timer() // timmer instance
       
       func sixtySecondTImer() {
              timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(counting), userInfo: nil, repeats: true)
          }
       
       // Function Selector function
          
          @objc func counting() {
           if api.counter >= 0 {
               countDownLabel.text = "Counter: \(self.api.counter)"
                  api.counter -= 1
              } else {
                  // create a ULAlertControl tellING the user that the game is over and enabling them to push restart
                  // refuse to do this inits seperate func because I wont need it anymore don't worry.
                  timer.invalidate()
                  let alert = UIAlertController(title: "Game Over", message: "Start ?", preferredStyle: .alert) // programmatic AlertCntr. Do they even have a UI type.
                  let restartGame = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                      // Reset every UI view item to origin stage.
                   self.api.scoreCount = 0
                   self.scoreLabelOutlet.text = "Score: \(self.api.scoreCount)"
                   self.api.counter = 5
                   self.api.assigningTittle(label: self.resultLabel)
                   self.sixtySecondTImer() // if alert button is press run the timmer function
                  }
                  alert.addAction(restartGame)
                  self.present(alert, animated: true, completion: nil)
                  
              }
          }
       
    
    
    
    
    
    
    
 
    
    
    
    


}

