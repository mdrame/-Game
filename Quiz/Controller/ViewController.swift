//
//  ViewController.swift
//  Quiz
//
//  Created by Mohammed Drame on 11/23/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOutlets
    @IBOutlet weak var sidBarOutlet: UIButton!
    @IBOutlet var colorbuttonOutlet: [UIButton]!
    @IBOutlet weak var score: UILabel!
    
    
    
    
    // Variables

    
    // UIFunctions ( In-order to not occupy viewDidLoad func )
    
    func uiButtonsDesigned() {
        
        sidBarOutlet.layer.borderWidth = 0.0
        
    
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    // function
    
    // checking to see which button was pressed only it .text propertie
    
    
    
    // IBActions
    @IBAction func sideBarAction(_ sender: UIButton) {
        
        
    }
    
    
    
    
    


}

