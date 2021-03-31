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
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var questionNumber = 0
    var correctAnswer = 0
    
    let quiz = [
        Question(q: "Am I dope?", a: true),
        Question(q: "Are you dope?", a: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelText.text = quiz[questionNumber].text
        progressBar.progress = Float(questionNumber) / Float(quiz.count)
    }

    @IBAction func buttonHandler(_ sender: UIButton) {
        
        if sender.currentTitle == "True" && quiz[questionNumber].answer {
            correctAnswer += 1
            sender.backgroundColor = UIColor.green
        } else if sender.currentTitle == "False" && !quiz[questionNumber].answer {
            correctAnswer += 1
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
            progressBar.progress = Float(questionNumber) / Float(quiz.count)
            labelText.text = quiz[questionNumber].text
        } else {
            progressBar.progress = 1
            labelText.text = "\(String((Float(correctAnswer) / Float(quiz.count) * 100)))%"
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(resetButtonColor), userInfo: nil, repeats: false)
        
              
        
    }
    
    @objc func resetButtonColor() {
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
    
}

