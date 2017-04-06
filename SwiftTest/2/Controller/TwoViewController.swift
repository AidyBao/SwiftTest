//
//  TwoViewController.swift
//  SwiftTest
//
//  Created by 120v on 2017/4/1.
//  Copyright © 2017年 120v. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.purple;
        
        self.addButtons()
    }
    
    func addButtons() {
        
        let butW:CGFloat = UIScreen.main.bounds.size.width/3.0
        let butH:CGFloat = butW
        
        for i in 0..<2 {
            for j in 0..<3 {
                let index:NSInteger = i*3 + j
                let frame:CGRect = CGRect.init(x: (butW + 1)*CGFloat(j), y: butH*CGFloat(i)+1*CGFloat(i+1) + 64, width: butW, height: butH)
                let itemBtn:UIButton = UIButton.init(type: .custom)
                itemBtn.frame = frame
                itemBtn.addTarget(self, action: #selector(itemBtnAction(_:)), for: .touchUpInside)
                itemBtn.tag = index
                itemBtn.backgroundColor = UIColor.init(colorLiteralRed: Float(CGFloat(arc4random_uniform(255))/CGFloat(255.0)), green: Float(CGFloat(arc4random_uniform(255))/CGFloat(255.0)), blue: Float(CGFloat(arc4random_uniform(255))/CGFloat(255.0)), alpha: 1.0)
                self.view.addSubview(itemBtn)
            }
        }
    }
    
    
    func itemBtnAction(_ sender:UIButton){
        switch sender.tag {
        case 0:
            
            let test1View:Test1View = Test1View.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height))
            test1View.backgroundColor = UIColor.lightGray
            UIApplication.shared.keyWindow?.rootViewController?.view.addSubview(test1View)
            
            test1View.didClicked = {
                NSLog("test")
            }
            
            test1View.block = {(name,age) in
                
                NSLog("%@ -- %d", name,age)
                
            }
            
            
            break
        case 1:
            break
        case 2:
            break
        case 3:
            break
        case 4:
            break
        case 5:
            break
        default:
            break
        }
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
