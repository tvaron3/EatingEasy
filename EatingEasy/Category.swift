//
//  Category.swift
//  EatingEasy
//
//  Created by Tomas Varon on 8/6/21.
//

import SwiftUI

struct Category: View {
    var user: String
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Category")
                    .font(.title).padding(.top, -200)
                NavigationLink(destination: RandomRestaurant()){
                    Text("Fast Food")
                }.padding(.bottom, 30)
                NavigationLink(destination: RandomRestaurant()){
                    Text("Restaurant")
                }.padding(.bottom, 30)
                NavigationLink(destination: RandomRestaurant()){
                    Text("Fancy")
                }.padding(.bottom, 30)
            }
    }.navigationBarBackButtonHidden(true)
}


struct Category_Previews: PreviewProvider{
    static var previews: some View {
        Category(user: "Tomas")
    }
}
}

