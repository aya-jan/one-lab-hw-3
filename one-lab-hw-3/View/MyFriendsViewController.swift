//
//  MyFriendsViewController.swift
//  one-lab-hw-3
//
//  Created by aya on 22.04.2022.
//
import UIKit

class MyFriendsViewController: UIViewController{
    
    private let collectionView: UICollectionView = {
        let collectionView = UICollectionView (frame: .zero, collectionViewLayout: UICollectionViewLayout())
        let viewLayout = UICollectionViewFlowLayout()
        collectionView.setCollectionViewLayout(viewLayout, animated: true)
        viewLayout.scrollDirection = .vertical
        viewLayout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        collectionView.backgroundColor = UIColor(named: "GrayBackgroundColor")
        return collectionView
    }()
    
    private let addFriendBarItem: UIBarButtonItem = {
        let barItem = UIBarButtonItem()
        barItem.title = "add"
      //  barItem.setBackButtonBackgroundImage(UIImage.init(systemName: "pin.2.fill"), for: .normal, barMetrics: UIBarMetrics.default)
        return barItem
    }()
    
  /*  private let addFriendBarItem: UIBarButtonItem = {
        let barItem = UIBarButtonItem()
      //  barItem.setBackButtonBackgroundImage(UIImage.init(systemName: "pin.2.fill"), for: .normal, barMetrics: UIBarMetrics.default)
        return barItem
    }()*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "GrayBackgroundColor")
        title = "My Friends"
        collectionView.register(MyFriendsCollectionViewCell.self, forCellWithReuseIdentifier: "MyFriendsCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        
        addFriendBarItem.target = self
        addFriendBarItem.action = #selector(tapOnButton)
        self.navigationItem.setLeftBarButton(addFriendBarItem, animated: true)
        layoutSubviews()
    }
    
    func layoutSubviews(){
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints {
            $0.right.left.equalToSuperview()
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            $0.bottom.equalTo(view.safeAreaLayoutGuide)
        }
       // view.addSubview(addFriendBarItem)
    }
    
    @objc func tapOnButton(){
        let addFriendsVC = AddFriendsViewController()
        navigationController?.pushViewController(addFriendsVC, animated: false)
    }
}

extension MyFriendsViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        }
}

extension MyFriendsViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyFriendsCell", for: indexPath) as! MyFriendsCollectionViewCell
        cell.configure(with: Storage.shared.Friends[indexPath.row])
        cell.contentView.layer.cornerRadius = 15
        return  cell
    }
    
   func collectionView(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Storage.shared.Friends.count
    }
}

extension MyFriendsViewController: UICollectionViewDelegateFlowLayout{
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          let width = (UIScreen.main.bounds.size.width - 3 * 10) / 2
          let height = (UIScreen.main.bounds.size.width - 3 * 10) / 2
          return CGSize(width: width, height: height)
      }
}
