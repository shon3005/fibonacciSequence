//
//  FibonacciSequence.swift
//  FibonacciApp
//
//  Created by Shaun Chua on 24/5/15.
//  Copyright (c) 2015 Shaun Chua. All rights reserved.
//

class FibonacciSequence {
    
    let includesZero: Bool
    let values: [UInt64]
    
    init(maxNumber: UInt64, includesZero: Bool) {
        self.includesZero = includesZero
        
        if maxNumber == 0 && includesZero == false {
            values = []
        }
        else if maxNumber == 0 {
            values = [0]
        }
        else {
            var sequence:[UInt64] = [0,1,1]
            var nextNumber:UInt64 = 2
            while nextNumber <= maxNumber {
                sequence.append(nextNumber)
                let lastNumber = sequence.last!
                let secondToLastNumber = sequence[sequence.count-2]
                let (sum, didOverflow) = UInt64.addWithOverflow(lastNumber, secondToLastNumber)
                if didOverflow == true {
                    println("Overflow! The next number is too large!")
                    break
                }
                nextNumber = sum
            }
            if includesZero == false {
                sequence.removeAtIndex(0)
            }
            values = sequence
        }
    }
    
    init(numberOfItemsInSequence: UInt64, includesZero: Bool) {
        self.includesZero = includesZero
        
        if numberOfItemsInSequence == 0 {
            values = []
        }
        else if numberOfItemsInSequence == 1 {
            if includesZero == true {
                values = [0]
            }
            else {
                values = [1]
            }
        }
        else {
            var sequence: [UInt64]
            if includesZero == true {
                sequence = [0,1]
            }
            else {
                sequence = [1,1]
            }
            for var i = 2; i < Int(numberOfItemsInSequence); i++ {
                let lastNumber = sequence.last!
                let secondToLastNumber = sequence[sequence.count-2]
                let (sum, didOverflow) = UInt64.addWithOverflow(lastNumber, secondToLastNumber)
                if didOverflow == true {
                    println("Overflow! The next number is too large!")
                    break
                }
                let nextNumber = sum
                sequence.append(nextNumber)
            }
            values = sequence
        }
    }
}