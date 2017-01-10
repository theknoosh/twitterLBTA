//
//  HomeDataSourceController.swift
//  twitterLBTA
//
//  Created by Darrell Payne on 1/5/17.
//  Copyright © 2017 Darrell Payne. All rights reserved.
//

import LBTAComponents

class HomeDataSourceController: DatasourceController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeDataSource = HomeDataSource()
        self.datasource = homeDataSource

    }
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 125)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)

    }

 }
