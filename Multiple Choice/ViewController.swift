//
//  ViewController.swift
//  Multiple Choice
//
//  Created by Landon Follows on 2019-12-03.
//  Copyright © 2019 Landon Follows. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
        // MARK: Labels
    
    @IBOutlet weak var Questions: UITextField!
    
    @IBOutlet weak var Student: UITextField!
    
    @IBOutlet weak var theAnswers: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
        // MARK: Methods
    
    @IBAction func check(_ sender: Any) {
        
        // MARK: Guard
        
        guard let QuestionsAsString = Questions.text, QuestionsAsString != "" else {
            
            result.text = "please enter an integer value greater than 0 "
            
            return
        }
        guard let Student = Student.text, Student != "" else {
            
            result.text = "Make Sure you input the exact \(QuestionsAsString) student answers"
            
            return
        }
        
        guard let theAnswers = theAnswers.text, theAnswers != "" else {
            
            result.text = "Make Sure you input the exact \(QuestionsAsString) answers for the answer key"
            
            return
            
        }
        
        var offset = 0
        
        //make variable for charcters
        
        var score = 0
        
        //Find out the score value
        
        for _ in theAnswers {
            
            //get the answers from the student answers
            
            let indexStudent = Student.index(Student.startIndex, offsetBy: offset)
            
            let Student = Student[indexStudent]
            
            //Get Correct answers
            
            let indextheAnswers = theAnswers.index(theAnswers.startIndex, offsetBy: offset)
            
            let theAnswers = theAnswers[indextheAnswers]
            
            if Student == theAnswers {
                
                score += 1
                
            }
            
            offset += 1
            
            result.text = "The Student Got \(score) question(s) correctly!"
            
        }
    }
}

