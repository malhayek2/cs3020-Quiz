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
    let answer : [String] = [
        "19",
        "Monday",
        "blue"
    ]
    // controller stuff below
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showNextQuestion(_ sender: UIButton) {
        self.questionLabel.text = "What Color is the sky?"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
    }
}

