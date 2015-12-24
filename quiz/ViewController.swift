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
    
    //let us try one more time
    
    //this is a good example for the game
    
   // @IBOutlet weak var QLabel: UILabel!
    
    @IBOutlet var Buttons: [UIButton]!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var QtextView: UITextView!
    
    var Questions = [Question]()
    
    var QNumber = Int()
    
    var AnswerNumber = Int()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
        
        Questions = [Question(Question: "when Juses born?", Answers: ["Chrismas","Thanks giving", "Easten day", "Remember day"], Answer: 0),
            
            Question(Question: "when Juses dead?", Answers: ["Chrismas","Thanks giving", "Easten day", "Remember day"], Answer: 2),
            
            Question(Question: "when Juses start to preach?", Answers: ["33","20", "30", "40"], Answer: 2),
            
            Question(Question: "how many students Juses have?", Answers: ["9","10", "11", "12"], Answer: 3),
            
            Question(Question: "who is Juses mother?", Answers: ["Christina","Bob", "Marrie", "Joan"], Answer: 2),
            
            Question(Question: "where did Juses born?", Answers: ["Jelusalum","Jialili", "Youda", "Boliheng"], Answer: 3),
            
            Question(Question: "Whose wife turn into pillar of SALT?", Answers: ["Juses","Abraham", "Soloman", "Lot"], Answer: 3),
            
            Question(Question: "Why God ask Abraham to kill Isaac?", Answers: ["For fun","It is a test", "show Abraham's believe", "God need blood"], Answer: 1),
            
            Question(Question: "How many books are in the Bible?", Answers: ["63","64", "65", "66"], Answer: 3),
            
            Question(Question: "What was the name of the shepherd boy who became the second king in Israel?", Answers: ["David","Samuer", "Peter", "John"], Answer: 0),
            
            Question(Question: "How many brothers did Joseph have?", Answers: ["9","10", "11", "12"], Answer: 2),
            
            Question(Question: "Who were the parents of Cain and Abel?", Answers: ["Joseph and Marrie","Adam and Eve", "Abraham and Yijie", "Isaac and Libaijia"], Answer: 1),
            
            Question(Question: "Noah sent out 2 different kinds of birds from the Ark. What were they?", Answers: ["Raven and Dove","eagle and Dove", "eagle and Raven", "no bird"], Answer: 0),
            
            Question(Question: "After the flood, what sign did God give that He would not destroy the earth with a flood again?", Answers: ["sun","moon", "cloud", "Rainbow"], Answer: 3),
            
            Question(Question: "Who did Boaz marry?", Answers: ["Ruth","Marrie", "Joan", "libaijia"], Answer: 0),
            
            Question(Question: "Abraham traveled with his nephew. What was his nephew’s name?", Answers: ["Lot","David", "John", "Peter"], Answer: 0),
            
            Question(Question: "What was the name of Joseph’s baby brother?", Answers: ["Juses","Livid", "David", "Benjamin"], Answer: 3),
            
            Question(Question: "Who found baby Moses in the river?", Answers: ["Moses' sister","Pharaoh’s daughter", "Juese's sister", "Marrie's daughter"], Answer: 1),
            
            Question(Question: "What was the name of the mountain where Moses was given the 10 Commandments?", Answers: ["Mt. Sinai","Mt. Rockey", "Mt. Lawranse", "Mt. Helie"], Answer: 0),
            
            Question(Question: "What did King Solomon ask God to give him?", Answers: ["money","victory", "long live life", "Wisdom"], Answer: 3),
            
            Question(Question: "What river was Jesus baptized in?", Answers: ["Simon Fasher River","St lawrence River", "Jordan River", "Jilun River"], Answer: 2),
            
            Question(Question: "What was the first miracle of Jesus recorded in the Bible?", Answers: ["Heal the blind people","Turn the water to blood", "ask the ghost get off", "Turning the water into wine."], Answer: 3),
            
            Question(Question: "What kind of work did Zacchaeus do?", Answers: ["Tax collector","Finisher man", "Doctor", "Homeless"], Answer: 0)
          
        
        ]
        
       // let array = ["Frodo", "sam", "wise", "gamgee"]
       // let randomIndex = Int(arc4random_uniform(UInt32(Questions.count)))
        
        //print(Questions[randomIndex])
        
        
        PickQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    func PickQuestion(){
        
        if Questions.count > 0 {
            
            let randomIndex = Int(arc4random_uniform(UInt32(Questions.count)))
            
            //QNumber = 0
            
           // QLabel.text = Questions[QNumber].Question
            
            QtextView.text = Questions[randomIndex].Question
            
            //print(QtextView.text)
            print(Questions[randomIndex])
            
            AnswerNumber = Questions[randomIndex].Answer
        
            for i in 0..<Buttons.count{
                
                Buttons[i].setTitle(Questions[randomIndex].Answers[i], forState: UIControlState.Normal)
                
            }
            
           // Questions.removeAtIndex(QNumber)
            
            
            
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

