//
//  InternetDetailViewController.swift
//  FirstSwiftApp
//
//  Created by Din, Shujaet on 11/29/17.
//  Copyright © 2017 Din, Shujaet. All rights reserved.
//

import UIKit
import Webkit

public class InternetDetailViewController : UIViewController
{
    //MARK: GUI Controls
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webViewer: WKWeView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
}

private func setup()-> Void
{
    }
}

