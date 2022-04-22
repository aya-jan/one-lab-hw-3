//
//  MyFriendsCell.swift
//  one-lab-hw-3
//
//  Created by aya on 22.04.2022.
//
import UIKit

class MyFriendsCollectionViewCell : UICollectionViewCell{
    
    private let identifier = "MyFriendsCell"
    
    private let friendImage: UIImageView =  {
        let imageView = UIImageView()
        imageView.layer.borderWidth = 0
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = imageView.frame.size.width/2
        return imageView
    }()
    
    private let statusLabel: UILabel = {
        let label = UILabel()
        label.layer.cornerRadius = label.frame.width/2
        return label
    }()
    
    private let fullNameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let jobLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        addSubview(jobLabel)
        //jobLabel.text = "job"
       addSubview(friendImage)
        friendImage.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            
        }
        
      //  addSubview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with friendModel: FriendModel){
        friendImage.image = UIImage(named: friendModel.profileImage)
    }
}
