//
//  PopularDestinationsView.swift
//  TravelDiscovery
//
//  Created by MacBook Pro on 12/6/20.
//

import SwiftUI

struct PopularDestinationsView: View {
    
    let destinations: [Destination] = [
        .init(city: "Paris", country: "France", imageName: "eiffel_tower"),
        .init(city: "Tokyo", country: "Japan", imageName: "japan"),
        .init(city: "New York", country: "USA", imageName: "new_york")
    
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Popular destinations")
                    .font(.system(size: 14, weight: .semibold))
                Spacer()
                Text("See all")
                    .font(.system(size: 12, weight: .semibold))
            }.padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal) {
                HStack(spacing: 8.0) {
                    ForEach(destinations, id: \.self) { destination in
                        VStack(spacing: 4) {
                            VStack(alignment: .leading, spacing: 0) {
                                
                                Image(destination.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 125, height: 125)
                                    .cornerRadius(5)
                                    .padding(.horizontal, 6)
                                    .padding(.vertical, 6)
                               
                                
                                Spacer()
                                
                                Text(destination.city)
                                    .font(.system(size: 12, weight: .semibold))
                                    .padding(.horizontal, 12)
                                Text(destination.country)
                                    .font(.system(size: 12, weight: .semibold))
                                    .padding(.horizontal, 12)
                                    .padding(.bottom, 8)
                                    .foregroundColor(.gray)
                            }
                            .asTile()
                            .padding(.bottom)
                        }
                        
                    }
                }.padding(.horizontal)
                
            }
            
        }
    }
}


struct PopularDestinationsView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
        PopularDestinationsView()
        
    }
}
