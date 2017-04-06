//
//  Test1View.swift
//  SwiftTest
//
//  Created by 120v on 2017/4/6.
//  Copyright © 2017年 120v. All rights reserved.
//

import UIKit

 /**
 *带参数:
 *  声明一个闭包别名，闭包含字符串类型的两个参数，无返回值(使用“（）”或者“Void”都一样)
 */
typealias testBlock1 = (String,Int)->Void //也可以写成:typealias testBlock = (String,Int)->()

/**
 *不带参数:
 *
 */
typealias testBlock2 = () -> () //也可以写成:typealias testBlock = (String,Int)->Void

private let  KLMargin:CGFloat  = 10
private let  KLLabelHeight:CGFloat  = 30

class Test1View: UIView {
    
    // 不带参数
    var block2:testBlock2?
    
    //带参数
    var block1:testBlock1?

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.orange
        let lable: UILabel = UILabel(frame: CGRect.init(x: KLMargin, y: KLMargin, width: UIScreen.main.bounds.width - (22 * KLMargin), height: KLLabelHeight))
        lable.text = "我丫就是一label"
        lable.textAlignment = NSTextAlignment.center
        lable.backgroundColor = UIColor.lightGray
        self.addSubview(lable)
        
        
        let button:UIButton = UIButton.init(type:UIButtonType.custom)
        button.frame = CGRect.init(x:KLMargin, y:lable.frame.maxY + KLMargin, width: UIScreen.main.bounds.width - (22 * KLMargin), height:KLLabelHeight)
        button.backgroundColor = UIColor.lightText
        button.setTitle("俺是个按钮啊", for: .normal)
        button.addTarget(self, action: #selector(buttonCllick(_:)), for: .touchUpInside)
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        self.addSubview(button)
       
    }
    
    // 按钮点击事件的调用
    func buttonCllick(_ button: UIButton){
        if block2 != nil {
            block2!()
        }
        
        if block1 != nil{
            block1!("123",1)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
        
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
    }
}
