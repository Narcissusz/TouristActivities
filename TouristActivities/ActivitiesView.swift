//
//  ActivitiesView.swift
//  TouristActivities
//
//  Created by Wiwat Thaphon on 2023-06-12.
//

import SwiftUI

struct ActivitiesView: View {
    
    @State private var linkSelection : Int? = nil
    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: ActivityDetailsView(), tag : 1, selection: self.$linkSelection){}
                
                Text("Hello, world!")
                Spacer()
            }
            .padding()
//            .navigationTitle("Things to do in Toronto")
            
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
