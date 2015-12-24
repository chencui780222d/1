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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

