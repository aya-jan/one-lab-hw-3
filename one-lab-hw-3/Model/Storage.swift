//
//  Storage.swift
//  one-lab-hw-3
//
//  Created by aya on 22.04.2022.
//

import Foundation

class Storage {
    static let shared = Storage ()
    
    let Friends = [
        FriendModel(username: "SavannahTucker", name: "Savannah", surname:"Tucker" , status: .online, job: "Retail Supervisior", addedToFriendssList: false, profileImage: "savannah", numOfFriends: "1298"),
        FriendModel(username: "KathMur96", name: "Kathryn", surname:"Murphy" , status: .online, job: "Photographer", addedToFriendssList: true, profileImage: "kathryn", numOfFriends: "12.3K"),
        FriendModel(username: "Darrell Stewart", name: "Darrell", surname:"Stewart" , status: .offline, job: "UI/UX Designer", addedToFriendssList: false, profileImage: "darrell", numOfFriends: "489"),
        FriendModel(username: "Jenny01", name: "Jenny", surname:"Wilson" , status: .offline, job: "Model, Actress", addedToFriendssList: false, profileImage: "jenny", numOfFriends: "18"),
        FriendModel(username: "Courtneyey", name: "Courtney", surname:"Henry" , status: .busy, job: "Taxi Driver", addedToFriendssList: false, profileImage: "courtney", numOfFriends: "15.6K"),
        FriendModel(username: "Jimmy", name: "Jim", surname:"Warren" , status: .offline, job: "Company CEO", addedToFriendssList: false, profileImage: "jim", numOfFriends: "4.5K"),
        FriendModel(username: "Tim Wilkins", name: "Tim", surname:"Wilkins" , status: .busy, job: "Mobile Developer", addedToFriendssList: true, profileImage: "tim", numOfFriends: "467"),
        FriendModel(username: "FyoN-22", name: "Fyona", surname:"Gallagher" , status: .online, job: "Babysitter", addedToFriendssList: false, profileImage: "fyona", numOfFriends: "18")
        ]
}
