//
//  ViewController.swift
//  RandomNumberGenerator
//
//  Created by Grace Tay on 11/13/16.
//  Copyright © 2016 GKTayDesigns. All rights reserved.
//

import UIKit

//Hide keyboard functionality
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}

class ViewController: UIViewController {
    var resultString: String = "Result: "
    var convertedNumber: String = ""
    var lowerBound: Int = 0
    var upperBound: Int = 0
    
    //Button click activates number generator
    @IBAction func generateButton(_ sender: AnyObject) {
        lowerBound = Int(lowerBoundTextField.text!)!
        upperBound = Int(upperBoundTextField.text!)!
        
        //Determine the random number and convert to string
        let difference: Int = upperBound - lowerBound
        let i = arc4random_uniform(UInt32(difference)) + UInt32(lowerBound)
        convertedNumber = String(i)
        
        //Output to user
        resultsLabel.text = resultString + convertedNumber
    }
    
    
    // IBOutlets
    @IBOutlet var lowerBoundTextField: UITextField!
    @IBOutlet var upperBoundTextField: UITextField!
    @IBOutlet var resultsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Activate hide keyboard
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view, typically from a nib.        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

