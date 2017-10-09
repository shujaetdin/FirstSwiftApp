//
//  ViewController.swift
//  FirstSwiftApp
//
//  Created by Din, Shujaet on 10/6/17.
//  Copyright © 2017 Din, Shujaet. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var firstButton :UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func firstMethod(_ sender: UIButton)
    {
   if (firstButton.backgroundColor == .orange)
   {
    firstButton.backgroundColor = .black
   }
        else
   {
    firstButton.backgroundColor = .orange
   }
    view.backgroundColor = createRandomColor()
    }
    
    private func createRandomColor() -> UIColor
    {
        let newColor :UIColor
        let redAmount = CGFloat (Double(arc4random_uniform(256))/255.00)
        let greenAmount = CGFloat (Double(arc4random_uniform(256))/255.00)
        let blueAmount = CGFloat (Double(arc4random_uniform(256))/255.00)
        newColor = UIColor(red: redAmount, green: greenAmount, blue: blueAmount, alpha:
            CGFloat(1.0))
        
        return newColor
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

