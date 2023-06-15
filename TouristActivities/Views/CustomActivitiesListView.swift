//
//  CustomActivitiesListView.swift
//  TouristActivities
//
//  Created by Wiwat Thaphon on 2023-06-15.
//

import SwiftUI

struct CustomActivitiesListView : View{
    var activities : Activity
    var body: some View{
        HStack{
            Image(activities.images[0].imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 45)
                .clipped()
            Spacer()
            VStack(alignment: .leading, spacing:10){
                Text(activities.title)
                    .font(.system(size: 16, weight: .bold, design: .default))
                Text("Price: \(activities.price, specifier: "%.2f") / Person")
                    .foregroundColor(Color.red)
                    .font(.system(size: 14, weight: .medium, design: .default))
            }
            Spacer()
        }//HStack
    }//body
}//CustomeListTileView
