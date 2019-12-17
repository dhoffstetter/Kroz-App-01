//
//  ContentView.swift
//  Kroz-App-01
//
//  Created by Diane Hoffstetter on 12/17/19.
//  Copyright © 2019 Dumb Blonde Software. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  var krozMap = Map()
  @State var roomId = Map.currentId
  
  let buttonPadding: CGFloat = 5
  let midnightBlue = Color(red: 0.0 / 255.0, green: 51.0 / 255.0 , blue: 102.0 / 255.0)
  
  struct ButtonStyle : ViewModifier {
    func body(content: Content) -> some View {
      return content
        .foregroundColor(Color.green)
        .font(Font.custom("Arial Rounded MT Bold", size: 20))
    }
  }
    
  var body: some View {
    VStack{
      Text("Current Id:\(roomId)")
      Button(action: {
        print("Up Button Pressed.")
        //self.roomId += 1
      }) {
        Text("Up").foregroundColor(Color.red).modifier(ButtonStyle())
      }.padding(.all, buttonPadding)
      Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
        Text("North").modifier(ButtonStyle())
      }.padding(.all, buttonPadding)
      HStack{
        Button(action: {
          if let id = self.getDestinationIdforRoomIdAndDestination(roomId: self.roomId, direction: Direction.west){
            self.roomId = id
          }
        }) {
          Text("West").modifier(ButtonStyle())
        }.padding(.all, buttonPadding)
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
          Text("Teleport").modifier(ButtonStyle())
        }.padding(.all, buttonPadding)
        Button(action: {
          if let id = self.getDestinationIdforRoomIdAndDestination(roomId: self.roomId, direction: Direction.east){
            self.roomId = id
          }
        }) {
          Text("East").modifier(ButtonStyle())
        }.padding(.all, buttonPadding)
      }
      Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
        Text("South").modifier(ButtonStyle())
      }.padding(.all, buttonPadding)
      Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
        Text("Down").modifier(ButtonStyle())
      }.padding(.all, buttonPadding)

    }
  }
  
  func getDestinationIdforRoomIdAndDestination(roomId: Int, direction: Direction) -> Int? {
    return self.krozMap.getRoomIdForCurrentId(roomId: roomId, direction: direction)
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
