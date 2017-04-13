//
//  OneViewController.swift
//  SwiftTest
//
//  Created by 120v on 2017/4/1.
//  Copyright © 2017年 120v. All rights reserved.
//

import UIKit

class OneViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "one"
        self.view.backgroundColor = UIColor.lightGray
        
        self.view.addSubview(self.tableView)
        
        self.test()
        
    }
    
    //MARK:- Test Color
    func test() -> () {
        
        self.view.backgroundColor = mq_ColorUnit.mq_lightGrayColor()
        print(mq_ColorUnit.mq_mainRedColor())
    }
    
    
    //MARK:- UITableViewDelegate && UITableViewDataSoure
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50
    }
    
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        
//        
//    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: oneCellId, for: indexPath) as! OneTabelViewCell
        
        cell.backgroundColor = UIColor.red
        
        
        
        return cell
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    lazy var tableView: UITableView = {
    
        let tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib.init(nibName:oneCellId , bundle: nil), forCellReuseIdentifier: oneCellId)
        
        return tableView
    }()


}
