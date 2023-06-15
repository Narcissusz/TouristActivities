//
//  TouristActivitiesApp.swift
//  TouristActivities
//
//  Created by Wiwat Thaphon on 2023-06-12.
//

import SwiftUI

@main
struct TouristActivitiesApp: App {
    
    var userDS : UserDataSource = UserDataSource.getInstance()
    
    var body: some Scene {
        WindowGroup {
            LoginView().environmentObject(userDS)
            
//            if let userID = UserDefaults.standard.string(forKey: "KEY_LOGIN"){
//                MainListView()
//            }else{
//                LoginView().environmentObject(userDS)
//            }
            
        }
    }
}
