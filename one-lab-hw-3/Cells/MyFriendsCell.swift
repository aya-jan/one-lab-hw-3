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
        imageView.layer.cornerRadius = imageView.frame.size.width/2
        return imageView
    }()
    
    private let statusLabel: UILabel = {
        let label = UILabel()
        label.layer.cornerRadius = label.frame.size.width/2
        label.backgroundColor = .green
        return label
    }()
    
    private let fullNameLabel: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(16)
        return label
    }()
    
    private let jobLabel: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(12)
        return label
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        super.backgroundColor = .white
        
        addSubview(friendImage)
        friendImage.snp.makeConstraints{
            $0.top.equalToSuperview()
            $0.centerX.equalToSuperview()
            $0.size.equalTo(150)
        }
        
        addSubview(fullNameLabel)
        fullNameLabel.snp.makeConstraints{
            $0.top.equalTo(friendImage.snp.bottom).offset(-5)
            $0.centerX.equalToSuperview()
        }
        
       /* addSubview(statusLabel)
        statusLabel.snp.makeConstraints{
            $0.top.equalTo(friendImage.snp.bottom).offset(-5)
            $0.trailing.equalTo(fullNameLabel.snp.leading).offset(-10)
            $0.size.equalTo(20)
        }*/
        
        addSubview(jobLabel)
        jobLabel.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(fullNameLabel).offset(20)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with friendModel: FriendModel){
        friendImage.image = UIImage(named: friendModel.profileImage)
        fullNameLabel.text = friendModel.name + " " + friendModel.surname
        jobLabel.text = friendModel.job
    }
}
