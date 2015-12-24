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
    
    var Questions = [Question]()
    
    var QNumber = Int()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Questions = [Question(Question: "when Juses born?", Answers: ["Chrismas","Easten day", "Fuhuo jie", "Qingming jie"], Answer: 0)]
        
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
        
            for i in 0..<Buttons.count{
                Buttons[i].setTitle(Questions[QNumber].Answers[i], forState: UIControlState.Normal)
            }
            
            Questions.removeAtIndex(QNumber)
            
        }
        else{
            
            NSLog("Done!")
            
        }
        
    }

}

