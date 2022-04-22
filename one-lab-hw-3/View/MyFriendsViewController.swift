//
//  MyFriendsViewController.swift
//  one-lab-hw-3
//
//  Created by aya on 22.04.2022.
//
import UIKit

class MyFriendsViewController: UIViewController{
    
    private let collectionView: UICollectionView = {
        let collecctioneView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout.init())
        return collecctioneView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "GrayBackgroundColor")
        title = "My Friends"
        view.addSubview(collectionView)
        collectionView.dataSource = self
        collectionView.delegate = self
       
        collectionView.register(MyFriendsCollectionViewCell.self, forCellWithReuseIdentifier: "myFriendsCell")
       
    }
}

extension MyFriendsViewController: UICollectionViewDelegate{
    
}

extension MyFriendsViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Storage.shared.Friends.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myFriendsCell", for: indexPath) as! MyFriendsCollectionViewCell
        cell.configure(with: Storage.shared.Friends[indexPath.row])
        return  cell
    }
}

