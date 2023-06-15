//
//  ImageModel.swift
//  TouristActivities
//
//  Created by Mahin Pathan on 2023-06-14.
//

import Foundation

class ActivityImage : Identifiable {
    var id : Int
    var title : String
    var imageName : String
    
    init(id: Int, title: String, imageName: String) {
        self.id = id
        self.title = title
        self.imageName = imageName
    }
}

