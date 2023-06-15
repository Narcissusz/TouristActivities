//
//  UserModel.swift
//  TouristActivities
//
//  Created by Wiwat Thaphon on 2023-06-15.
//

import Foundation

class User : Identifiable {
    var userID:String
    var email:String
    var password:String
    var isLogin:Bool
    
    init(userID: String, email: String, password: String, isLogin: Bool) {
        self.userID = userID
        self.email = email
        self.password = password
        self.isLogin = isLogin
    }
}
