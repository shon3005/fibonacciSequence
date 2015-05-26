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
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var includesZeroSwitch: UISwitch!
    
    @IBOutlet weak var includesZeroLabel: UILabel!

    @IBOutlet weak var numberOfItemsSlider: UISlider!
    
    @IBOutlet weak var numberOfItemsLabel: UILabel!
    
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
        
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: UInt64(numberOfItemsSlider.value), includesZero: includesZeroSwitch.on)
    
        textView.text = fibonacciSequence.values.description
        
        includesZeroLabel.text = includesZeroSwitch.on ? "Yes":"No"
        
        numberOfItemsLabel.text = String(Int(numberOfItemsSlider.value))
        
        if includesZeroSwitch.on {
            numberOfItemsSlider.maximumValue = 94
        }
        else {
            numberOfItemsSlider.maximumValue = 93
        }
    }
}





