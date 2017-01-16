//
//  HomeDataSource.swift
//  twitterLBTA
//
//  Created by Darrell Payne on 1/7/17.
//  Copyright © 2017 Darrell Payne. All rights reserved.
//

import LBTAComponents

class HomeDataSource: Datasource {
    
    let users: [User] = {
        let brianUser = User(name: "Darrell Payne", userName: "@darrellpayne", bioText: "Even more biotext",profileImage: #imageLiteral(resourceName: "Darrell_profile"))
        let rayUser = User(name: "Ray Wenderlick", userName:" @raywenderlick", bioText: "Ray Wenderlick is an iPhone developer and tweets on topics related to iPhone, software, and gaming.",profileImage: #imageLiteral(resourceName: "rwenderlich"))
        let darrellUser = User(name: "Steven Payne", userName:" @stevenpayne", bioText: "Ray Wenderlick is an iPhone developer and tweets on topics related to iPhone, software, and gaming. Ray Wenderlick is an iPhone developer and tweets on topics related to iPhone, software, and gaming. Ray Wenderlick is an iPhone developer and tweets on topics related to iPhone, software, and gaming. Ray Wenderlick is an iPhone developer.",profileImage: #imageLiteral(resourceName: "rwenderlich"))
        
        return [brianUser, rayUser, darrellUser]
    }()
    
//    let words = ["Darrell Payne","Steven Payne","Stephanie Payne","Leslie Hedlund"]
    
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
        return users.count
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
}
