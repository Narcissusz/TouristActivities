//
//  ActivitiesView.swift
//  TouristActivities
//
//  Created by Wiwat Thaphon on 2023-06-12.
//

import SwiftUI

struct ActivitiesView: View {
//    @StateObject private var dataSource : ActivitiesDataSource = ActivitiesDataSource()
    @EnvironmentObject var dataSource : ActivitiesDataSource
    
    var body: some View {
        NavigationView{
            VStack(){
                Text("Things to do in Toronto")
                    .font(.system(size: 26, weight: .bold, design: .default))
                List{
                    ForEach(self.dataSource.activitiesList){curactivity in
                        NavigationLink{
                            ActivityDetailsView(activity: curactivity)
                        }label: {
                            CustomActivitiesListView(activities: curactivity)
                        }//Navigation Link
                    }//ForEach
                    .onDelete {
                        // boilerplate code from documentation
                        indexSet in
                        self.dataSource.activitiesList.remove(atOffsets: indexSet)
                    }
                }//List
                .listStyle(PlainListStyle())
            }//VStack
        }
        
        VStack(){
            Text("Things to do in Toronto")
                .font(.system(size: 26, weight: .bold, design: .default))
            List{
                ForEach(self.dataSource.activitiesList){curactivity in
                    NavigationLink{
                        ActivityDetailsView(activity: curactivity).environmentObject(dataSource)
                    }label: {
                        CustomActivitiesListView(activities: curactivity)
                    }//Navigation Link
                }//ForEach
                .onDelete {
                    // boilerplate code from documentation
                    indexSet in
                    self.dataSource.activitiesList.remove(atOffsets: indexSet)
                }
            }//List
            .listStyle(PlainListStyle())
        }//ZStack
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
