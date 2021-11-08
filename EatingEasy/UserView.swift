//
//  UserView.swift
//  EatingEasy
//
//  Created by Tomas Varon on 8/6/21.
//

import SwiftUI

public class User: ObservableObject {
    private var name: String
    private var restaurants: [String]
    private var fastFood: [String]
    private var fancy: [String]
    
    init(_ name: String,_ restaurants: [String],_ fastFood: [String],_ fancy:[String] ){
        self.name = name
        self.restaurants = restaurants
        self.fastFood = fastFood
        self.fancy = fancy
    }
    
}

struct UserView: View {
    @State private var selection: String? = nil
    var tomasRestaurants: [String] = ["Popeyes", "PDQ", ]
    
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                NavigationLink(destination: Category(user: "Everyone"), tag: "everyone", selection: $selection){
                    EmptyView()
                }
                NavigationLink(destination: Category(user: "Tomas"), tag: "tomas", selection: $selection){
                    EmptyView()
                }
                NavigationLink(destination: Category(user: "Olga"), tag: "olga", selection: $selection){
                    EmptyView()
                }
                NavigationLink(destination: Category(user: "Juan"), tag: "juan", selection: $selection){
                    EmptyView()
                }
                NavigationLink(destination: Category(user: "Sofia"), tag: "sofia", selection: $selection){
                    EmptyView()
                }
                Button("Everyone"){
                    self.selection = "everyone"
                }
                Button("Tomas"){
                    self.selection = "tomas"
                }
                Button("Juan"){
                    self.selection = "juan"
                }
                Button("Olga"){
                    self.selection = "olga"
                }
                Button("Sofia"){
                    self.selection = "sofia"
                }
            }.navigationBarTitle(Text("Choose User"))
        }
       
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
