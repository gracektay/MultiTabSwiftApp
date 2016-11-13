//
//  ViewController.swift
//  RandomNumberGenerator
//
//  Created by Grace Tay on 11/13/16.
//  Copyright © 2016 GKTayDesigns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var resultString: String = "Result: "
    var convertedNumber: String = ""
    
    //Button click activates number generator
    @IBAction func generateButton(_ sender: AnyObject) {
        convertedNumber = String(arc4random() % 10)
        resultsLabel.text = resultString + convertedNumber
    }
    
    
    // IBOutlets
    @IBOutlet var lowerBoundTextField: UITextField!
    @IBOutlet var upperBoundTextField: UITextField!
    @IBOutlet var resultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

