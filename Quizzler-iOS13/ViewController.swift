//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var questionNumber = 0
    
    let quiz = [
        Question(text: "Am I dope?", answer: true),
        Question(text: "Are you dope?", answer: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelText.text = quiz[questionNumber].text
    }

    @IBAction func buttonHandler(_ sender: UIButton) {
        
    }
    
    
    
}

