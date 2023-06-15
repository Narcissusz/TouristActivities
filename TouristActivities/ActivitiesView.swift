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
    
    var userDS : UserDataSource = UserDataSource.getInstance()
    
    var body: some View {
        NavigationView{
            VStack(){
//                Text("Things to do in Toronto")
//                    .font(.system(size: 26, weight: .bold, design: .default))
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
                .navigationTitle("Things to do in Toronto")
            }//VStack
            .toolbar {
                // 1
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Logout") {
                        UserDefaults.standard.removeObject(forKey: "USER_REMEMBER")
                        UserDefaults.standard.removeObject(forKey: "USER_ID_LOGIN")
                        let window = UIApplication
                                    .shared
                                    .connectedScenes
                                    .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                                    .first { $0.isKeyWindow }
                        window?.rootViewController = UIHostingController(rootView: LoginView().environmentObject(userDS))
                        window?.makeKeyAndVisible()
                    }
                }
            }
        }
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
