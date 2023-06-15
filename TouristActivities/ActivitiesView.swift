//
//  ActivitiesView.swift
//  TouristActivities
//
//  Created by Wiwat Thaphon on 2023-06-12.
//

import SwiftUI

struct ActivitiesView: View {
    @StateObject private var dataSource : ActivitiesDataSource = ActivitiesDataSource()
    
    var body: some View {        
        List{
            ForEach(self.dataSource.actovotiesList){curactivity in
                NavigationLink{
                    ActivityDetailsView(activity: curactivity)
                }label: {
                    CustomActivitiesListView(activities: curactivity)
                }//Navigation Link
                .navigationTitle("Things to do in Toronto")
//                .navigationBarTitleDisplayMode(.inline)
            }//ForEach
            .onDelete {
                // boilerplate code from documentation
                indexSet in
                self.dataSource.actovotiesList.remove(atOffsets: indexSet)
            }
        }//List
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
