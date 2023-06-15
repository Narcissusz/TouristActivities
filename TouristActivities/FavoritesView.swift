//
//  FavoritesView.swift
//  TouristActivities
//
//  Created by Mahin Pathan on 2023-06-14.
//

import SwiftUI

struct FavoritesView: View {
    
    @EnvironmentObject var dataSource : ActivitiesDataSource
    
    var body: some View {
    
        NavigationView{
            if self.dataSource.favoritesList.isEmpty {
            Text("No favorites found.")
                .font(.headline)
                .foregroundColor(.secondary)
        } else {
            List {
                ForEach(self.dataSource.favoritesList) { activity in
                    NavigationLink{
                        ActivityDetailsView(activity: activity)
                    }label: {
                        CustomActivitiesListView(activities: activity)
                    }//Navigation Link
                    .navigationTitle("Favorites List")
                    .navigationBarItems(trailing: Button(action: {
                        removeAllFavorites()
                    }) {
                        Image(systemName: "trash")
                            .foregroundColor(.red)
                            .font(.title)
                    })
                }
                .onDelete(perform: removeFavorites)
            }
        }
    }
        .onAppear {
//            favorites = UserDefaultsHelper.shared.favorites
        }
    }
    
    private func removeFavorites(at offsets: IndexSet) {
        dataSource.removeFavorite(offsets:offsets)
    }
    
    private func removeAllFavorites() {
        dataSource.removeAllFavorites()
    }
}


struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
