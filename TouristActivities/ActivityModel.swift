//
//  ActivityModel.swift
//  TouristActivities
//
//  Created by Mahin Pathan on 2023-06-14.
//

import Foundation

class Activity : Identifiable {
    var title:String
    var description:String
    var rating:Int
    var host:String
    var images:[ActivityImage]
    var price:Double
    var contactInfo:String
    
    init(title: String, description: String, rating: Int, host: String, price: Double, images:[ActivityImage], contactInfo: String) {
        self.title = title
        self.description = description
        self.rating = rating
        self.host = host
        self.price = price
        self.contactInfo = contactInfo
        self.images = images
    }
  
}
 
