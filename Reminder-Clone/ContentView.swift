//
//  ContentView.swift
//  Reminder-Clone
//
//  Created by Rexford Machu on 11/16/21.
//

import SwiftUI

struct ContentView: View {
    var columns : [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    var body: some View {
        NavigationView{
            VStack(alignment:.leading){
                LazyVGrid(columns:columns,spacing: 5){
                    ListTypes(image: "calendar", title: "Today", number: "4")
                        .cornerRadius(15)
                    ListTypes(image: "calendar", title: "Scheduled", number: "4")                        .cornerRadius(15)
                    ListTypes(image: "calendar", title: "All            ", number: "13").cornerRadius(15)
                    ListTypes(image: "calendar", title: "Flagged   ", number: "5")
                        .cornerRadius(15)
                }

                    DisclosureGroup("My Lists"){
//                        List{
                        VStack(alignment: .leading){
                            Label("Reminders", systemImage: "list.bullet")
                            Label("Groceries List", systemImage: "list.bullet")
                            Label("To Do List", systemImage: "list.bullet")
                            Label("Reminders", systemImage: "list.bullet")
                        }
                        .padding(.leading,10)
                        .padding(.trailing,150)

                        //}
                    }
            }
            .frame(minWidth: 250)
            .padding(.bottom,150)
            .padding()

            VStack(alignment: .leading){
                Text("Groceries")
                    .bold()
                    .font(.title)
                    .padding(.top)
                    .foregroundColor(.blue)
                Label("Oats",systemImage: "circle")
                Label("Milk",systemImage: "circle")
                Label("Fish",systemImage: "circle")
                Label("Bread",systemImage: "circle")
                Label("Salt",systemImage: "circle")
                Label("Sugar",systemImage: "circle")
                Label("Honey",systemImage: "circle")

            }
            .padding(.trailing,200)
            .padding(.bottom,250)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
