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
    var favorite:[Activity]
    
    init(userID: String, email: String, password: String, isLogin: Bool, favorite:[Activity]) {
        self.userID = userID
        self.email = email
        self.password = password
        self.isLogin = isLogin
        self.favorite = favorite
    }
}
