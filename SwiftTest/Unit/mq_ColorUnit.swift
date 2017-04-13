//
//  mq_ColorUnit.swift
//  SwiftTest
//
//  Created by 120v on 2017/4/11.
//  Copyright © 2017年 120v. All rights reserved.
//

import UIKit

class mq_ColorUnit: NSObject {
    
    // MARK: - 主红颜色
    class func mq_mainRedColor() -> UIColor {
        return mq_ColorUnit.mq_hexColor(hexColorString: "#df443b")
    }
    
    // MARK: - 亮灰色
    class func mq_lightGrayColor() -> UIColor {
        return UIColor.lightGray
    }
    
    // MARK: - 浅黑色文字颜色
    class func mq_grayTitleColor() -> UIColor {
        return UIColor.gray
    }
    
    // MARK: - 控制器视图背景颜色
    class func mq_viewControllerBackgroundColor() -> UIColor {
        return UIColor.groupTableViewBackground
    }
    
    
    // MARK: - RGBA颜色
    class func mq_rgbaColor(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
        return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }
    
    // MARK: - RGB颜色
    class func mq_rgbColor(r:CGFloat, g:CGFloat, b:CGFloat) -> UIColor {
        return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1.0)
    }
    
    // MARK: - 随机颜色
    class func mq_randomColor() -> UIColor {
        return self.mq_rgbColor(r: CGFloat(arc4random_uniform(256)), g: CGFloat(arc4random_uniform(256)), b: CGFloat(arc4random_uniform(256)))
    }
    
    class func mq_hexColor(hexColorString:String) -> UIColor {
        
        var color = UIColor.red
        var cStr : String = hexColorString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if cStr.hasPrefix("#") {
            // 返回传入下标之后的下标
            let index = cStr.index(after: cStr.startIndex)
            cStr = cStr.substring(from: index)
        }
        if cStr.characters.count != 6 {
            return UIColor.black
        }
        
        let rRange = cStr.startIndex ..< cStr.index(cStr.startIndex, offsetBy: 2)
        let rStr = cStr.substring(with: rRange)
        
        let gRange = cStr.index(cStr.startIndex, offsetBy: 2) ..< cStr.index(cStr.startIndex, offsetBy: 4)
        let gStr = cStr.substring(with: gRange)
        
        // 返回传入下标偏移后的下标（偏移量可正可负可为 0）
        let bIndex = cStr.index(cStr.endIndex, offsetBy: -2)
        let bStr = cStr.substring(from: bIndex)
        
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
        Scanner(string: rStr).scanHexInt32(&r)
        Scanner(string: gStr).scanHexInt32(&g)
        Scanner(string: bStr).scanHexInt32(&b)
        
        color = UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
        
        return color
    }
}
