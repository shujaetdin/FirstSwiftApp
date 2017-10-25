//
//  ThirdViewController.swift
//  FirstSwiftApp
//
//  Created by Din, Shujaet on 10/16/17.
//  Copyright © 2017 Din, Shujaet. All rights reserved.
//

import UIKit
import AVFoundadtion

public class MediaPageController : UIViewContoller
{
    private var soundPlayer : AVAudioPLayer?
    private var imageCounter: Int = 0
    private lazy var color : ColorTools = ColorTools()
    
    @IBOutlet weak var imageFrame: UImageView!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var sound: UIButton!
    @IBOutlet weak var soundSlider: UISlider!
    
    @IBAction func changePicture() -> Void
    {
        switchImage()
    }
    
    private func stchImage() -> Void
    {
        if (imageCounter > 4)
        {
            imageCounter = 0
        }
        
        if (imageCounter == 0)
        {
            imageFrame.image = UImage(named: "Sean")
        }
    else if (imageCounter == 1)
        {
    }
    
    
    
    
    super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */



private func loadAudioFile() -> void






