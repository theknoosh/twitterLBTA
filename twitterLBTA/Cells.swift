//
//  Cells.swift
//  twitterLBTA
//
//  Created by Darrell Payne on 1/7/17.
//  Copyright © 2017 Darrell Payne. All rights reserved.
//

import LBTAComponents

class UserHeader: DatasourceCell {
    override func setupViews() {
        super.setupViews()
        backgroundColor = .blue
    }
}

class UserFooter: DatasourceCell{
    override func setupViews() {
        super.setupViews()
        backgroundColor = .red
    }
}

class UserCell: DatasourceCell {
    
    override var datasourceItem: Any?{
        didSet{
            nameLabel.text = datasourceItem as? String
        }
    }
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        return imageView
    }()
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = .white
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(addressLabel)
        addSubview(bioTextView)
        addSubview(followButton)
        
        profileImageView.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        nameLabel.anchor(topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        addressLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: 6, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        bioTextView.anchor(addressLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 6, leftConstant: 0, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 0)
        followButton.anchor(nameLabel.topAnchor, left: nameLabel.rightAnchor, bottom: nil, right: self.rightAnchor, topConstant: 0, leftConstant: 6, bottomConstant: 0, rightConstant: 12, widthConstant: 120, heightConstant: 34)
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "TEST test test"
        label.backgroundColor = .green
        return label
    }()
    
    let addressLabel: UILabel = {
        let label = UILabel()
        label.text = "@something"
        label.backgroundColor = .purple
        label.textColor = .white
        return label
    }()
    
    let bioTextView: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .yellow
        return textView
    }()
    
    let followButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .cyan
        return button
    }()
}
