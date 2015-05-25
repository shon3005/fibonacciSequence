//
//  ViewController.swift
//  FibonacciApp
//
//  Created by Shaun Chua on 24/5/15.
//  Copyright (c) 2015 Shaun Chua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)
    
    @IBOutlet var textView:UITextView?
    
    @IBOutlet var includesZeroSwitch:UISwitch?
    
    @IBOutlet var includesZeroLabel:UILabel?
    
    @IBOutlet var numberOfItemsLabel:UILabel?
    
    @IBOutlet var numberOfItemsSlider:UISlider?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.updateFibonacciSequence()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func updateFibonacciSequence() {
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: UInt(numberOfItemsSlider.value), includesZero: includesZeroSwitch.on))
    
        textView.text = fibonacciSequence.values.description
        
        if includesZeroSwitch.on {
            includesZeroLabel.text = "Yes"
        }
        else {
            includesZeroLabel.text = "No"
        }
    }
    

}





