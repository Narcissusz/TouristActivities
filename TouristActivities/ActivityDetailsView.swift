//
//  ActivityDetailsView.swift
//  TouristActivities
//
//  Created by Wiwat Thaphon on 2023-06-12.
//

import SwiftUI

struct ActivityDetailsView: View {
    
    @State private var isFavorite = false

    let activity:Activity
    
    var maximumRating = 5
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.orange.opacity(2)
    
    
    var body: some View {
        
        ScrollView{
            VStack(alignment:.center, spacing: 20){
                Text(activity.title)
                    .font(.largeTitle)
                    .fontDesign(.serif)
                    .bold()
                
                HStack{
                    Text("Price:")
                        .font(.title3)
                        .bold()
                    Text("\(String(format: "$%.2f", activity.price))/person")
                        .font(.body)
                        .foregroundColor(.black)
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 16) {
                        ForEach(activity.images, id: \.id) { activityImage in
                            
                            VStack(spacing: 8) {
                                Image(activityImage.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 180)
                                    .clipped()
                                    .cornerRadius(8)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 8)
                                            .stroke(Color(white: 0.4))
                                    )
                                    .shadow(radius: 3)
                                Text(activityImage.title)
                                    .font(.system(size: 16, weight: .semibold))
                                    .multilineTextAlignment(.center)
                                    .border(.purple.opacity(0.5))
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
                
                VStack(alignment: .leading){
                    
                    Text("What you'll do:")
                        .bold(true).italic()

                    Text(activity.description)
                        .font(.body)
                        .italic()
                    Spacer(minLength: 40)
                    
                    HStack{
                        
                        ForEach(1..<maximumRating + 1, id: \.self) { number in
                            image(for: number)
                                .foregroundColor(number > activity.rating ? offColor : onColor)
                            }
                    }
                    Spacer(minLength: 40)
                    
                    HStack{
                        Text("Hosted by:")
                            .font(.body)
                            .bold()
                        Text(activity.host)
                            .font(.body)
                            .foregroundColor(.black)
                        Spacer()
                    }
                    
                    HStack{
                        Text("Contact:")
                            .font(.body)
                            .bold()
                        
                        Link(destination: makePhoneCallURL()) {
                            Text(activity.contactInfo)
                                .foregroundColor(.blue)
                    }
                        
                        
                        
//                        Button(action: {
//                                            dialPhoneNumber(activity.contactInfo)
//                                        }) {
//                                            Text(activity.contactInfo)
//                                                .font(.headline)
//                                                .foregroundColor(.purple)
//                                        }
//
                        
                        
//                        Text(activity.contactInfo)
//                            .onTapGesture {
//
//                            }
//                            .font(.body)
//                            .foregroundColor(.black)
                        Spacer()
                    }
                    
                    
                }
                HStack{
                    Button(action: {
                        isFavorite.toggle()
                        
//                        TODO Add and remove to Favorite
                    })
                    {
            Image(systemName: isFavorite ? "heart.fill" : "heart")
                            .foregroundColor(isFavorite ? .red : .gray)
                                .font(.system(size: 24))
                        Text(isFavorite ? "FAVOURITED!" :"FAVOURITE" )
                            .foregroundColor(.purple.opacity(2))
                            .bold()
                            .padding(9)
                            .font(.headline)
                    }
                    .buttonStyle(.bordered)
                    .background(.white.opacity(2))

                    Button(action: {
                        
                    })
                    {
                    Text("⇧  SHARE")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.purple.opacity(2))
                        .cornerRadius(8)
                    }
                }
            }
            .padding()
        }
    }
    
    private func makePhoneCallURL() -> URL {
        var phoneNumberWithoutSpaces = activity.contactInfo.filter { $0.isNumber }
           let urlString = "tel://\(phoneNumberWithoutSpaces)"
           return URL(string: urlString)!
       }
    
    
//    private func dialPhoneNumber(_ phoneNumber: String) {
//            guard let dialURL = URL(string: "tel:\(phoneNumber)") else { return }
//            UIApplication.shared.open(dialURL, options: [:], completionHandler: nil)
//        }
        
    func image(for number: Int) -> Image {
        if number > activity.rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
    
}

struct ActivityDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let images = [ActivityImage(id: 0, title: "CN Tower", imageName: "cn1"),
                      ActivityImage(id: 1, title: "CN Tower at top", imageName: "cn2"),
                      ActivityImage(id: 2, title: "CN Tower at night", imageName: "cn3"),
                      ActivityImage(id: 3, title: "CN Tower edge walk", imageName: "cn4")]
        let activityModel = Activity(title: "ActivtiyName", description: "The CN Tower is a 553.3 m-high concrete communications and observation tower in Toronto, Ontario, Canada. Completed in 1976, it is located in downtown Toronto, built on the former Railway Lands. Its name CN referred to Canadian National, the railway company that built the tower", rating: 4, host: "Lucas Black", price: 89.45, images: images, contactInfo:"111-222-3333")
        
        ActivityDetailsView(activity: activityModel)
    }
}
