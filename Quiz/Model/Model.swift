//
//  Model.swift
//  Quiz
//
//  Created by Mohammed Drame on 11/23/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import Foundation
import UIKit

class Api {
    
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
    var counter = 5 // counter will decrease by 1 ever time the sixtySecondTimer function runs
       
    
    
    
    func assigningTittle(label: UILabel) {
        
        randomColor.shuffle() // shuffle array
        let title = randomColor[0] // shuffle array and give the first element
        let shuffledTextColor = textColorDict.shuffled()
       
        
        let gameStage  = 0
        
        for (key, value) in shuffledTextColor {
            // doresn't need gameStage constent at all ( Debugging ).
            if gameStage == 0 {
                label.text = title
                label.textColor = value
            }
            if key == title { // if dictionary key and lable is or is not the same then correct answer keep satge
                correctAnswer = 0
            } else {
                correctAnswer = 1
            }
        }
    } // assigningTittle ends here
    
    
    
    func showSideBar(view: UIView) {
        
        UIView.animate(withDuration: 0.5) {
            view.transform = CGAffineTransform(translationX: +200, y: 0)
        }
    }
    
    func dissSideBar(view: UIView) {
        UIView.animate(withDuration: 0.5) {
    view.transform = CGAffineTransform(translationX: -205, y: 0)
                      }
    }
    
    
    func updateUI(score: Int, correctBool: String, scoreLabel: String) {
        
        
    }
    
    // Progress Hud function
    
    func checkProgresseEngine(view uiImageView: UIImageView, correct correctImage: UIImage, wrong wrongImage: UIImage, isOn stage: Bool ) {
        // Write a tinary operatior that will show desire backgoround colr base on your choice
        // Addimation
//
        UIView.animate(withDuration: 0.2, animations: { // run animation
            uiImageView.alpha = 9.0 // when animation starts make sure alpha is up up 🥰
            uiImageView.image = stage ? correctImage : wrongImage // set image base on stage
        }) { (completed) in // run code below after first animation is completted
            if completed {
                UIView.animate(withDuration: 0.2) { // run another animation
                    uiImageView.alpha = 0.0 // but this time set the opacity to 0.
                }
            }
        }
        
            
      
    
    
    
    
}


}
    
    
    
    
