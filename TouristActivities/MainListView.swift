//
//  MainListView.swift
//  TouristActivities
//
//  Created by Wiwat Thaphon on 2023-06-15.
//

import SwiftUI

struct MainListView: View {
    
    var reservationDataSource : ActivitiesDataSource = ActivitiesDataSource.getInstance()
    
    var body: some View {
        TabView {
                    ActivitiesView()
                        .environmentObject(reservationDataSource)
                        .tabItem {
                            Label("Activities", systemImage: "list.dash")
                        }
                    FavoritesView()
                        .environmentObject(reservationDataSource)
                        .tabItem {
                            Label("Favorite", systemImage: "list.dash")
                        }
                }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
    }
}
