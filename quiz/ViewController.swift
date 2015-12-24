//
//  ViewController.swift
//  quiz
//
//  Created by darkman on 2015-12-23.
//  Copyright © 2015 darkman. All rights reserved.
//

import UIKit

struct Question{
    var Question : String!
    var Answers : [String]!
    var Answer : Int!
    
}

class ViewController: UIViewController {
    
    //this is a good example for the game
    
    @IBOutlet weak var QLabel: UILabel!
    
    @IBOutlet var Buttons: [UIButton]!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    
    var Questions = [Question]()
    
    var QNumber = Int()
    
    var AnswerNumber = Int()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Questions = [Question(Question: "when Juses born?", Answers: ["Chrismas","Easten day", "Fuhuo jie", "Qingming jie"], Answer: 0),
                     Question(Question: "when Juses dead?", Answers: ["Chrismas","Easten day", "Fuhuo jie", "Qingming jie"], Answer: 2),
                     Question(Question: "when Juses start to chuanjiao?", Answers: ["33","20", "30", "40"], Answer: 2),
                     Question(Question: "how many students Juses have?", Answers: ["9","10", "11", "12"], Answer: 3),
                     Question(Question: "who is Juses mother?", Answers: ["Christina","Bob", "Marrie", "Joan"], Answer: 2),
                     Question(Question: "where did Juses born?", Answers: ["Jelusalum","Jialili", "Youda", "Boliheng"], Answer: 3),
        
        ]
        
        PickQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //this is for the test too 
    
    //this is for the github.
    
    func PickQuestion(){
        
        if Questions.count > 0 {
            
            QNumber = 0
            QLabel.text = Questions[QNumber].Question
            
            AnswerNumber = Questions[QNumber].Answer
        
            for i in 0..<Buttons.count{
                Buttons[i].setTitle(Questions[QNumber].Answers[i], forState: UIControlState.Normal)
            }
            
            Questions.removeAtIndex(QNumber)
            
            
            
        }
        else{
            
            
            NSLog("Done!")
            
        }
        
    }
    
    @IBAction func Btn1(sender: AnyObject) {
        
        if AnswerNumber == 0{
            
            PickQuestion()
            
            answerLabel.text = ("Right answer!")
            
        }
        else{
            
            answerLabel.text = ("Wrong answer!Try again.")
            //NSLog("Wrong!")
            
        }
        
        
    }
    
    @IBAction func Btn2(sender: AnyObject) {
        
        if AnswerNumber == 1{
            
            PickQuestion()
            answerLabel.text = ("Right answer!")
        }
        else{
        
            answerLabel.text = ("Wrong answer!Try again.")
            
           // NSLog("Wrong!")
            
        }
    }
    
    @IBAction func Btn3(sender: AnyObject) {
        
        if AnswerNumber == 2{
            
            PickQuestion()
            
            answerLabel.text = ("Right answer!")
        }
        else{
            
            
            answerLabel.text = ("Wrong answer!Try again.")
            //NSLog("Wrong!")
            
        }
    }
    
    @IBAction func Btn4(sender: AnyObject) {
        
        if AnswerNumber == 3{
            
            PickQuestion()
            
            answerLabel.text = ("Right answer!")
        }
        else{
            
            answerLabel.text = ("Wrong answer!Try again.")
            //NSLog("Wrong!")
            
        }
    }
    
    
    

}

