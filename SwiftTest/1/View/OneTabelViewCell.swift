//
//  OneTabelViewCell.swift
//  SwiftTest
//
//  Created by 120v on 2017/4/5.
//  Copyright © 2017年 120v. All rights reserved.
//

import UIKit

let oneCellId:String = "OneTabelViewCell"


class OneTabelViewCell: UITableViewCell,UICollectionViewDataSource,UICollectionViewDelegate {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.addSubview(self.collectionView)
    }
    
    override func layoutSubviews() {
        self.collectionView.frame.size.height = self.frame.size.height
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6;
    }
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: homeCollectionCellId, for: indexPath) as! HomeCollectionCell
        
        cell.backgroundColor = UIColor.init(colorLiteralRed: Float(CGFloat(arc4random_uniform(255))/CGFloat(255.0)), green: Float(CGFloat(arc4random_uniform(255))/CGFloat(255.0)), blue: Float(CGFloat(arc4random_uniform(255))/CGFloat(255.0)), alpha: 1.0)
        
        return cell
        
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    lazy var collectionView: UICollectionView = {
        
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        layout.itemSize = CGSize.init(width: 100, height: 100)
        layout.scrollDirection = UICollectionViewScrollDirection.horizontal
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        
        let collectionView = UICollectionView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: self.frame.size.height), collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(HomeCollectionCell.classForCoder(), forCellWithReuseIdentifier: homeCollectionCellId)
        
        return collectionView
    }()
}
