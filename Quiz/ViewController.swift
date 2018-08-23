//
//  ViewController.swift
//  Quiz
//
//  Created by Mohanad Alhayek on 8/21/18.
//  Copyright © 2018 Mohanad Alhayek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // model stuff below
    let questions : [String] = [
    "What is 9 + 10 ?",
    "What comes after Sunday?",
    "What comes after Red Green ...?"
    
    ]
    /* typing a variblaes without a type
     * inferTyping when we dont say its a string type
    */
    let answers = [
        "19",
        "Monday",
        "blue"
    ]
    var currentQuestionIndex : Int = 0
    // controller stuff below
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let question : String = self.questions[self.currentQuestionIndex]
        self.questionLabel.text = question
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showNextQuestion(_ sender: UIButton) {
//        self.questionLabel.text = "What Color is the sky?"
        self.currentQuestionIndex += 1
        if(self.currentQuestionIndex == self.questions.count){
            self.currentQuestionIndex = 0
        }
        let question : String = self.questions[self.currentQuestionIndex]
        self.questionLabel.text = question
        self.answerLabel.text = "????"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer = self.answers[self.currentQuestionIndex]
        self.answerLabel.text = answer
        
    }
}

