//
//  ViewController.swift
//  SimpleQuiz
//
//  Created by Sharon Devasia on 19/06/16.
//  Copyright © 2016 Sharon Devasia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    //setting up  the model here, basically an array to hold to questions and an integer to keep count//
    
    let questions: [String] = ["What is the capitol of England", "What is 4 + 5", "When is Christmas??"]
    
    let answers: [String] = ["Capitol E ", "9", "TWENTY FIFTH DECEMBER"]
    
    var currentQuestionIndex: Int = 0
    
    
    
    
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        
        answerLabel.text = "???"
        
    }
    
    @IBAction func showAnswer(sender: AnyObject) {
        
        let answer = answers[currentQuestionIndex]
        answerLabel.text = answer
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    
}

 