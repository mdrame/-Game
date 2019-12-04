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
    
    
    
    
   
    
    
  

  
    /*  assigningTittle set UIOutlet properties and keep stage of textColr and .text product */
    
    
    

    

   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sideBarButton.uiButtonsDesigned(view: sideBarCollection)
        
        api.assigningTittle(label: resultLabel)
        // when view loads side bar button start from the side.
        api.dissSideBar(view: sideBarView)
        
         // reset timer ever time viewdIDlOAD
        api.sixtySecondTImer(view: resultLabel)
 
    }
    
    

    // IBActions
    @IBAction func sideBarAction(_ sender: UIButton) {
        
        api.showSideBar(view: sideBarView)
        sideBarCollection.isHidden =  true
        }
        
    
    
    
    
    
    // True and False button
    @IBAction func action(_ sender: UIButton) {
        

        api.timer.invalidate() // stop time when ever buttons arre press
        api.counter = 5 // reset timer to 5 so timer can restart
        api.sixtySecondTImer(view: resultLabel)
        
        if sender.tag == 0 && api.correctAnswer! == 0 { // if true
            api.scoreCount += 1
            api.correctBool = "Correct"
            scoreLabelOutlet.text = "\(api.scoreCount)"
            api.assigningTittle(label: resultLabel)
        } else if sender.tag == 1 && api.correctAnswer! == 1 { // if true
            api.scoreCount += 1
            api.correctBool = "Correct"
            scoreLabelOutlet.text = "\(api.scoreCount)"
            api.assigningTittle(label: resultLabel)
        } else if sender.tag == 0 && api.correctAnswer! == 1 { // if false
            api.scoreCount -= 1
            api.correctBool = "Wrong"
            scoreLabelOutlet.text = "\(api.scoreCount)"
            api.assigningTittle(label: resultLabel)
        } else if sender.tag == 1 && api.correctAnswer! == 0 { // if false
            api.scoreCount -= 1
            api.correctBool = "Wrong"
            scoreLabelOutlet.text = "\(api.scoreCount)"
            api.assigningTittle(label: resultLabel)
        } else {                                    // default
            api.correctBool = "Nothing Bro"
            scoreLabelOutlet.text = "\(api.scoreCount)"
            api.assigningTittle(label: resultLabel)
        }
    
        print(api.correctBool)
    
    }
    
    
    @IBAction func tapGestureTaped(_ sender: UITapGestureRecognizer) {
        
        api.dissSideBar(view: sideBarView)
        sideBarCollection.isHidden = false
        
        
    }
    
    
    
    
 
    
    
    
    


}

