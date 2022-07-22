//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Andrew Shon on 7/20/22.
//

import SwiftUI

struct LandmarkList: View {

    @EnvironmentObject var modelData: ModelData
    
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter {
            landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink { // the target
                        LandmarkDetail(landmark: landmark)
                    } label: { // what displays initially
                        LandmarkRow(landmark: landmark)
                    }
                }
         
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {

        LandmarkList()
            .previewDevice("iPhone 12 mini").previewDisplayName("iphone 12 mini")
            .environmentObject(ModelData())
        
    }
}
