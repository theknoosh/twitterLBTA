//
//  HomeDataSource.swift
//  twitterLBTA
//
//  Created by Darrell Payne on 1/7/17.
//  Copyright © 2017 Darrell Payne. All rights reserved.
//

import LBTAComponents

class HomeDataSource: Datasource {
    let words = ["One","Two","Three","Four"]
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return words.count
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return words[indexPath.item]
    }
}
