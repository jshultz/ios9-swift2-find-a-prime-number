//
//  ViewController.swift
//  FindAPrimeNumber
//
//  Created by Jason Shultz on 9/18/15.
//  Copyright © 2015 HashRocket. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var txtInput: UITextField!
    
    @IBAction func btnSubmit(sender: AnyObject) {
        
        if (txtInput.text != nil) {
            
            let number:Int = Int(txtInput.text!)!
            
            if isPrime(number) {
                lblResult.text = "\(number) a prime number"
            } else {
                lblResult.text = "\(number) not a prime number"
            }
            
        }
        
    }
    
    func isOdd(number: Int) -> Bool {
        if number % 2 == 1 {
            return true
        } else {
            return false
        }
    }
    
    func divides(a: Int, b: Int) -> Bool {
        return a % b == 0
    }
    
    func countDivisors(number: Int) -> Int {
        var cnt = 0
        for i in 1...number {
            if divides(number, b: i) {
                ++cnt
            }
        }
        return cnt
    }
    
    func isPrime(number: Int) -> Bool {
        return countDivisors(number) == 2
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

