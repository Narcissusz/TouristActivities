//
//  UserDataSource.swift
//  TouristActivities
//
//  Created by Wiwat Thaphon on 2023-06-15.
//

import Foundation

class UserDataSource : ObservableObject{
    @Published var userList : [User] = [
        User(userID: "1", email: "wiwat@gmail.com", password: "1234", isLogin: false, favorite: []),
        User(userID: "2", email: "mahin@gmail.com", password: "9999", isLogin: false, favorite: [])
    ]
    
    //singleton instance
    private static var shared : UserDataSource?
    
    static func getInstance() -> UserDataSource{
        if (shared == nil){
            shared = UserDataSource()
        }
        return shared!
    }
}

