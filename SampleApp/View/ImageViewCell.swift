//
//  ImageViewCell.swift
//  AlbumFeed
//
//  Created by Saba Toosi on 8/31/20.
//  Copyright © 2020 Saba Shaarbaftoosi. All rights reserved.
//

import UIKit

class ImageViewCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: View Setup
    
    func setUpViews() {
        // Add subviews
        self.contentView.addSubview(albumCoverImageView)
        containerView.addSubview(albumNameLabel)
        self.contentView.addSubview(containerView)
        
        // Setting Constraints
        albumCoverImageView.centerYAnchor.constraint(equalTo:self.contentView.centerYAnchor).isActive = true
        albumCoverImageView.leadingAnchor.constraint(equalTo:self.contentView.leadingAnchor, constant:10).isActive = true
        albumCoverImageView.widthAnchor.constraint(equalToConstant:70).isActive = true
        albumCoverImageView.heightAnchor.constraint(equalToConstant:70).isActive = true
        
        containerView.centerYAnchor.constraint(equalTo:self.contentView.centerYAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo:self.albumCoverImageView.trailingAnchor, constant:10).isActive = true
        containerView.trailingAnchor.constraint(equalTo:self.contentView.trailingAnchor,constant:-10).isActive = true
        containerView.heightAnchor.constraint(equalToConstant:40).isActive = true
        
        albumNameLabel.topAnchor.constraint(equalTo:self.containerView.topAnchor).isActive = true
        albumNameLabel.leadingAnchor.constraint(equalTo:self.containerView.leadingAnchor).isActive = true
        albumNameLabel.trailingAnchor.constraint(equalTo:self.containerView.trailingAnchor).isActive = true
    }
    
    // MARK: Properties
    let albumCoverImageView:UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        return image
    }()
    
    let albumNameLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor =  .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "test"
        return label
    }()
    
    let containerView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        return view
    }()
    
}
