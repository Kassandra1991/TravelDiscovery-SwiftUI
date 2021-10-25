//
//  TrendingCreatorsView.swift
//  TravelDiscovery
//
//  Created by MacBook Pro on 12/6/20.
//

import SwiftUI

struct TrendingCreatorsView: View {
    
    let creators: [Creators] = [
        .init(name: "Amy Adams", imageName: "amy"),
        .init(name: "Billy Childs", imageName: "billy"),
        .init(name: "Sam Smith", imageName: "sam")
    
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Trending Creators")
                    .font(.system(size: 14, weight: .semibold))
                Spacer()
                Text("See all")
                    .font(.system(size: 12, weight: .semibold))
            }.padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal) {
                HStack(alignment: .top, spacing: 12.0) {
                    ForEach(creators, id: \.self) { creator in
                        VStack(spacing: 4) {
                            Image(creator.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                                .cornerRadius(30)
                            Text(creator.name)
                                .font(.system(size: 12, weight: .semibold))
                                .multilineTextAlignment(.center)
                        }
                        .frame(width: 60)
                        .shadow(color: .gray
                                , radius: 4, x: 0.0, y: 2)
                        .padding(.bottom)
                        
                    }
                }.padding(.horizontal)
                
            }
            
        }
    }
}


struct TrendingCreatorsView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingCreatorsView()
        DiscoverView()
    }
}
