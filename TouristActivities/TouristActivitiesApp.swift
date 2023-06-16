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
            if let userRemember = UserDefaults.standard.string(forKey: "USER_REMEMBER"){
                if userRemember == "true"{
//                    let userID = UserDefaults.standard.string(forKey: "USER_ID_LOGIN")
                    MainListView()
                }else{
                    LoginView().environmentObject(userDS)
                }
                
            }else{
                LoginView().environmentObject(userDS)
            }
            
        }
    }
}
