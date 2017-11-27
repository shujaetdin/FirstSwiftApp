//
//  AbstractionController.swift
//  FirstSwiftApp
//
//  Created by Din, Shujaet on 11/27/17.
//  Copyright © 2017 Din, Shujaet. All rights reserved.
//

import UIKit

 public class AbstractionController: UIPageViewController, UIageViewControllerDataSource
{
    //MARK: Array of subviews
    private (set) lazy var orderedAbastractionViews : [UIViewController] =
    {
       return [
        self.newAbstractionViewController(abstractionLevel: "Block"),
        self.newAbstractionViewController(abstractionLevel: "Java"),
        self.newAbstractionViewController(abtsractionLevel: "ByteCode"),
        self.newAbstractionViewController)abstractionLevel: "AndGate"),
        ]
    }()
    
    //Helper method to retrieve the correct ViewController
    pvate func newAbstractionViewController(abstractionLevel : String) -> UIViewController
    {
        return UIStroyboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\
        (abstractionLevel)ViewController")
    }

    override public func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        
        if let firstViewController = orderAbstractionViews.first
        {
            setViewController([firstViewController],
                              direction: .forward,
                              animated: true,
                              completion: nil)
        }
    }
    
    //MARK:- Required Protocol methods for UIPageViewControllerDataSource
    public func pageViewController(_ pageiewController: UIPageViewController, viewControllerBefore
        viewController: UIViewController) -> UIViewController) -> UIViewController?
    {
    guard let ViewControllerIndex = orderedAbstractionViews.index(of: viewController)
    else
    {
    return nil
    }
    
    let previousIndex = viewControllerndex - 1
    
    guardpreviousIndex >= 0
    else
    {
    return orderedAbstractionViews.last
    }
    guard orderedAbstractionViews.count > previousIndex
    else
    {
    return nil
    }
    return orderedAbstractionViews[previousIndex]
    }
   
    
    public func pageViewControlle(_pagViewController: UIPageViewController: UIPageViewController, viewControllerAfter
        viewController; UIViewController) -> UIViewController?
    {
        gurad let viewControllerIndex = orderedAbstractionViews.index(od: viewController)
        else
        {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex >= 0
        else
        {
            return nil
        }
        
        guard nextIndex < orderededAbstractionViews.count
        else
        {
            return orderedAbstractionViews.count
        }
        
        public func presentationIndex(for pageViewController: UIPageController) -> Int
        {
            return orderedAbstractionViews.count
        }
        
        public func presentationIndex(for pageViewCotroller: UIPageViewController) -> Int
        {
            guard let firstViewController = viewControllers?.first, let firstViewControllerIndex =
                orderedAbstractionViews.index(of: firstViewController)
            else
            {
                return 0
            }
        
        return firstViewControllerIndex
        }
    }
        
        
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

}
