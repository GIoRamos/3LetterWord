//
//  ViewController.swift
//  3LetterWord
//
//  Created by GIOVANNI GARCIA on 11/28/18.
//  Copyright © 2018 GIOVANNI GARCIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentLetterLabel: UILabel!
    
    @IBOutlet var wordLetterLabels: [UILabel]!
    
    var letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X" , "Y", "Z"]
    var counter = 0
    var currentLetter = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func onTap(_ sender: UIPanGestureRecognizer) {
        let selectedPoint = sender.location(in: view)
        for label in wordLetterLabels {
            if label.frame.contains(selectedPoint){
                label.text = "\(currentLetter)"
            }
            counter += 1
            if counter == 26 {
                counter = 0
            }
            getAndSetCurrentLetter()
    }
   
      

}
    func getAndSetCurrentLetter() {
        currentLetter = letters[counter]
        currentLetterLabel.text = currentLetter
    }
}
