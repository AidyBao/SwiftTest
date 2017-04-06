//
//  TestDelegateView.swift
//  SwiftTest
//
//  Created by 120v on 2017/4/6.
//  Copyright © 2017年 120v. All rights reserved.
//

import UIKit

protocol TestDelegateViewDelegate {
    
    func btnAction(sender:UIButton) -> Void
}

class TestDelegateView: UIView {
    
    var delegate:TestDelegateViewDelegate?
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        self.addSubview(testButton)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    
    }
    
    func testButtonAction(_ sender:UIButton) -> Void {
        if delegate != nil {
            self.delegate?.btnAction(sender: sender)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.removeFromSuperview()
    }
    
    
    lazy var testButton: UIButton = {
        let testButton = UIButton.init()
        testButton.frame = CGRect.init(x: 100, y: 100, width: 200, height: 50)
        testButton.backgroundColor = UIColor.orange
        testButton.setTitle("测试Delegate", for: .normal)
        testButton.addTarget(self, action: #selector(testButtonAction(_ :)), for: .touchUpInside)
        return testButton
    }()
}
