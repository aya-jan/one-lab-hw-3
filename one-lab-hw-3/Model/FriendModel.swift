//
//  FriendModel.swift
//  one-lab-hw-3
//
//  Created by aya on 22.04.2022.
//

import Foundation

struct FriendModel {
    let username: String
    let name: String
    let surname: String
    var status: UserStatusModel
    let job: String
    var addedToFriendsList: Bool
    let profileImage : String
    let numOfFriends: String
    
    init (username: String,
          name: String,
          surname:String,
          status: UserStatusModel,
          job: String,
          addedToFriendssList: Bool,
          profileImage: String,
          numOfFriends: String ){
        self.username = username
        self.name = name
        self.surname = surname
        self.status = status
        self.job = job
        self.addedToFriendsList = addedToFriendssList
        self.profileImage = profileImage
        self.numOfFriends = numOfFriends
    }
    
    mutating func changeAddedToFriendList (){
      addedToFriendsList = !addedToFriendsList
    }
}

