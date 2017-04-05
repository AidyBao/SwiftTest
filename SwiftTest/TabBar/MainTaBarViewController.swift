//
//  MainTaBarViewController.swift
//  SwiftTest
//
//  Created by 120v on 2017/4/1.
//  Copyright © 2017年 120v. All rights reserved.
//

import UIKit

class MainTaBarViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        //
        let homeController = OneViewController()
        homeController.tabBarItem = self.addTabBarItems(tile: "首页", normalImageName: "底部导航-首页默认", selectedImageName: "底部导航-首页选中")
        let oneNav = MainNavViewController.init(rootViewController: homeController)
        self.addChildViewController(oneNav)
        
        //
        let twoController = TwoViewController()
        twoController.tabBarItem = self.addTabBarItems(tile: "库存", normalImageName: "底部导航-库存默认", selectedImageName: "底部导航-库存选中")
        let twoNav = MainNavViewController.init(rootViewController: twoController)
        self.addChildViewController(twoNav)
        
        //
        let threeController = ThreeViewController()
        threeController.tabBarItem = self.addTabBarItems(tile: "统计", normalImageName: "底部导航-统计默认", selectedImageName: "底部导航-统计选中")
        let threeNav = MainNavViewController.init(rootViewController: threeController)
        self.addChildViewController(threeNav)
        
        //
        let fourController = FourViewController()
        fourController.tabBarItem = self.addTabBarItems(tile: "我的", normalImageName: "底部导航-我的默认", selectedImageName: "底部导航-我的选中")
        let fourNav = MainNavViewController.init(rootViewController: fourController)
        self.addChildViewController(fourNav)
        
        self.delegate = self
        
        
    }
    
    
    func addTabBarItems(tile:String, normalImageName:String, selectedImageName: String) -> UITabBarItem {
        var normalImage = UIImage.init(named: normalImageName)
        normalImage = normalImage?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        var selectedImage = UIImage.init(named: selectedImageName)
        selectedImage = selectedImage?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        let tabBarItem = UITabBarItem.init(title: tile, image: normalImage, selectedImage: selectedImage)
        tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.black], for: UIControlState.normal)
        tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.red], for: UIControlState.selected)
        
        return tabBarItem
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    



}
