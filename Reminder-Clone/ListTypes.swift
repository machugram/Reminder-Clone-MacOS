//
//  ListTypes.swift
//  Reminder-Clone
//
//  Created by Rexford Machu on 11/16/21.
//

import SwiftUI

struct ListTypes: View {
     var image : String = "calendar"
     var title : String = "Today"
     var number : String = "4"
    var body: some View {
        HStack(alignment: .top){
            VStack(alignment: .leading){
                Image(systemName: image)
                Text(title)
                    .clipped(antialiased: false)
            }
            
            Text(number)
        }
        .padding(20)
        .cornerRadius(30)
        .background(Color.secondary)
    }
}

//struct ListTypes_Previews: PreviewProvider {
//    static var previews: some View {
//        ListTypes()
//    }
//}
