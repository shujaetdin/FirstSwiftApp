//
//  fillable.swift
//  FirstSwiftApp
//
//  Created by Din, Shujaet on 11/20/17.
//  Copyright © 2017 Din, Shujaet. All rights reserved.
//

import UIKit
public class Jug : Fillable
{
    private var jugColor :UIColor
    //MARK: Fillable Datma member
    public var jugState: Bool
    
    public init()
    {
        self.jugColor = UIColor
        self.pourState = false
    }
    //MARK:- Pourable methods
    public func pour() -> Void
    {
        print("Pour me")
        pourState = true
    }

public func ispourable() -> Bool
{
    if(pourState)
    {
        print("poured")
    }
else
    {
        print("splash")
    }
return pourState
}
}

