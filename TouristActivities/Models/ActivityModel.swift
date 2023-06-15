//
//  ActivityModel.swift
//  TouristActivities
//
//  Created by Mahin Pathan on 2023-06-14.
//

import Foundation

class Activity : Identifiable {
    var id:String
    var title:String
    var description:String
    var rating:Int
    var host:String
    var images:[ActivityImage]
    var price:Double
    var contactInfo:String
    
    init(id:String,title: String, description: String, rating: Int, host: String, price: Double, images:[ActivityImage], contactInfo: String) {
        self.id = id
        self.title = title
        self.description = description
        self.rating = rating
        self.host = host
        self.price = price
        self.contactInfo = contactInfo
        self.images = images
    }
    
    func formattedPrice()->String{
        return "\(String(format: "$%.2f", self.price))/person"
    }
    
    func isFavorite()->Bool{
        return ActivitiesDataSource.getInstance().isFavorite(activity: self)
    }
}

