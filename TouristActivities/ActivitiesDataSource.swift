//
//  ActivitiesDataSource.swift
//  TouristActivities
//
//  Created by Wiwat Thaphon on 2023-06-15.
//

import Foundation

class ActivitiesDataSource : ObservableObject{
    
    @Published var activitiesList : [Activity] = [
        
        Activity(
            title: "Goat Yoga and Wine Tasting",
            description: "Upon arrival , check in at the yoga tent and get your all access stamp. Our session begins with 30 minutes of gentle yoga, designed to be appropriate for all fitness levels. While we move through our yoga poses, the goats will explore and play on and around us, often cuddling up to guests and sometimes even falling asleep. The yoga session is followed by 30 minutes of goat cuddles, photos and relaxation. To complete the experience, head over to the retail store for your tasting experience Other things to note. Warning: The experience of Zen and peace may lead to life altering change. We provide mats. The yoga area is sheltered from rain and direct sunlight.",
            rating: 4,
            host: "Melina",
            price: 65.00,
            images: [ActivityImage(id: 1, title: "Goat Yoga", imageName: "goat-yoga1"),
                     ActivityImage(id: 2, title: "Goat Yoga", imageName: "goat-yoga2"),
                     ActivityImage(id: 3, title: "Goat Yoga", imageName: "goat-yoga3"),
                     ActivityImage(id: 4, title: "Goat Yoga", imageName: "goat-yoga4"),
                     ActivityImage(id: 5, title: "Goat Yoga", imageName: "goat-yoga5")],
            contactInfo: "(123) 456-7890"),
        Activity(
            title: "Sunset Canoe Tour",
            description: "After meet and greet at the Centre Island, we will go over the tour safety rules. Your guide will do some of the paddling technique demonstration on land and guests are free to ask any questions. Before getting into the canoe, we would put on our life jackets. Your guide will be assisting with getting in the canoe. As we canoe around the islands, your guide will be telling about the islands and its history, as well as the history of the unique historical Voyageur Canoe replica that we are using on our tours. Our first destination is the Bird Sanctuary. The next point of interest is the Toronto Harbour and the stunning views of the city skyline. It's time to get out your cameras and take those million dollar pictures and selfies. As we proceed paddling through the islands lagoons and around some small islands, we can indulge into watching the gorgeous sunset skies. Our program ends after the sunset, as we arrive back to the Centre Island. Your guide will assist you to disembark from the canoe. After getting off the canoe, it will be time to say good bye. We hope to see you again.No previous experience is required. There is a guide in the canoe with you at all times. There are public washrooms and restaurants in the park. You will need to take the ferry to the islands. This canoe experience is an ideal team building and corporate event activity.",
            rating: 4,
            host: "Alexander",
            price: 65.00,
            images: [ActivityImage(id: 1, title: "Sunset Canoe Tour", imageName: "canoe-tour1"),
                     ActivityImage(id: 2, title: "Sunset Canoe Tour", imageName: "canoe-tour2"),
                     ActivityImage(id: 3, title: "Sunset Canoe Tour", imageName: "canoe-tour3"),
                     ActivityImage(id: 4, title: "Sunset Canoe Tour", imageName: "canoe-tour4"),
                     ActivityImage(id: 5, title: "Sunset Canoe Tour", imageName: "canoe-tour5")],
            contactInfo: "(123) 456-7890"),
        Activity(
            title: "Toronto Downtown Photography Tour",
            description: "You will have the chance to see iconic places such as Union Station, CN Tower and Toronto Sign while I'm taking amazing pictures of you. I will take photos for you to elevate your Instagram, blog or other social media accounts. This experience is perfect for couples and single travellers. Turn back home with the best holiday pictures.",
            rating: 4,
            host: "Bruno",
            price: 89.00,
            images: [ActivityImage(id: 1, title: "Photography Tour", imageName: "photo-tour1"),
                     ActivityImage(id: 2, title: "Photography Tour", imageName: "photo-tour2"),
                     ActivityImage(id: 3, title: "Photography Tour", imageName: "photo-tour3"),
                     ActivityImage(id: 4, title: "Photography Tour", imageName: "photo-tour4"),
                     ActivityImage(id: 5, title: "Photography Tour", imageName: "photo-tour5")],
            contactInfo: "(123) 456-7890"),
        Activity(
            title: "Toronto's Underground Donut Tour",
            description: "Join us on a donut adventure through the most interesting parts of downtown Toronto, Kensington Market and Chinatown! Our tour begins at Cops Doughnuts right in the heart of the Fashion District. You’ll love their hot, fresh and tiny doughnuts as well as their super cute aesthetic. From here, we’ll make our way over to Queen street and our next doughnut shop, Bloomer’s. Along Queen street, you’ll find numerous shops and restaurants that you’ll want to add to your itinerary for later that day or the next time you’re in Toronto. After a quick bit of history around Bloomer’s and the surrounding neighborhood, we’ll sample some delicious donuts made fresh daily and then make our way through Alexandra Park, on our way to Kensington Market. You may or may not know that Kensington Market is one of the prime destinations for visitors to Toronto and we’d make sure to include it on our tour. We have two stops lined up for Kensington Market. We want to tell you what they are, but we also don’t want to ruin the surprise.",
            rating: 5,
            host: "Jeff",
            price: 62.00,
            images: [ActivityImage(id: 1, title: "Donut Tour", imageName: "donut-tour1"),
                     ActivityImage(id: 2, title: "Donut Tour", imageName: "donut-tour2"),
                     ActivityImage(id: 3, title: "Donut Tour", imageName: "donut-tour3"),
                     ActivityImage(id: 4, title: "Donut Tour", imageName: "donut-tour4"),
                     ActivityImage(id: 5, title: "Donut Tour", imageName: "donut-tour5")],
            contactInfo: "(123) 456-7890"),
        Activity(
            title: "Intro to Pottery wheel",
            description: "With guided, professional instruction, you'll have a fun and creative time making an item out of clay on a pottery wheel. I will show you how to work with the clay, get it ready for the wheel, center it, and eventually start shaping. Usually students can make either a small bowl, plate, mug or vase on their first try. You will get up to 30 minutes of time on the wheel which is plenty to create one item, and then you can add accents to your piece i.e. handle and you'll get to handbuild for the remainder of the time (add accents to your piece). You can take the pottery home with you the same day you make them, or—if you'd like—I can fire your work, glaze it, and ship it to you for a small fee. I also offer other experiences: canvas painting, glass fusing, hand building with clay, mosaics, glow in the dark painting, pottery painting, silkscreening. ***Drop me a note if you'd like alternate time for your appointment.****",
            rating: 4,
            host: "Kelsey",
            price: 25.00,
            images: [ActivityImage(id: 1, title: "Pottery wheel", imageName: "pottery-wheel1"),
                     ActivityImage(id: 2, title: "Pottery wheel", imageName: "pottery-wheel2"),
                     ActivityImage(id: 3, title: "Pottery wheel", imageName: "pottery-wheel3"),
                     ActivityImage(id: 4, title: "Pottery wheel", imageName: "pottery-wheel4"),
                     ActivityImage(id: 5, title: "Pottery wheel", imageName: "pottery-wheel5")],
            contactInfo: "(123) 456-7890")
    ]
    
    
    @Published var favoritesList:[Activity] = []
    //singleton instance
    private static var shared : ActivitiesDataSource?
    
    static func getInstance() -> ActivitiesDataSource{
        if (shared == nil){
            shared = ActivitiesDataSource()
        }
        return shared!
    }
    
    func getLoggedInUserId() -> String{
        return UserDefaults.standard.string(forKey: "USER_ID_LOGIN") ?? "0"
    }
    
    func getLoggedInUserFavoriteKey()->String{
        return "\(self.getLoggedInUserId())_FAVORITES"
    }
    
    func addFavorite(activity:Activity){
        var activities = self.getUserFavoritesActivityIds()
        activities.append(activity.id.uuidString)
        UserDefaults.standard.set(activities, forKey: self.getLoggedInUserFavoriteKey())
        self.setFavoritesList()
    }
    
    func getUserFavoritesActivityIds() -> [String]{
        let favoriteActivities = UserDefaults.standard.array(forKey: self.getLoggedInUserFavoriteKey()) as? [String] ?? []
        return favoriteActivities
    }
    
    func removeFavorite(offsets: IndexSet){
        var activities = self.getUserFavoritesActivityIds()
        activities.remove(atOffsets: offsets)
        UserDefaults.standard.set(activities, forKey: self.getLoggedInUserFavoriteKey())
        self.setFavoritesList()
    }
    
    func removeAllFavorites(){
        let activities:[String] = []
        UserDefaults.standard.set(activities, forKey: self.getLoggedInUserFavoriteKey())
        self.setFavoritesList()
    }
    
    func getUserFavorites() -> [Activity]{
        var activities:[Activity] = []
        let activitiyIds = self.getUserFavoritesActivityIds()
        for index in 0...activitiesList.count-1 {
            if activitiyIds.contains(activitiesList[index].id.uuidString ){
                activities.append(activitiesList[index])
            }
        }
        return activities
    }
    
    func setFavoritesList(){
        self.favoritesList = self.getUserFavorites()
    }
}


