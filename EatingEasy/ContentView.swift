//
//  ContentView.swift
//  EatingEasy
//
//  Created by Tomas Varon on 8/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("Welcome!").padding(.bottom)
                NavigationLink(destination:  UserView()){
                    Text("Start")
                }
            }.navigationBarTitle(Text("Eating Out Made Easy"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
