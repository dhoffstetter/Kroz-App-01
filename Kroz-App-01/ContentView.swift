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
  @State var roomId = 11
  @State var numberOfRoomsVisited = 1
  
  let buttonPadding: CGFloat = 5
  let midnightBlue = Color(red: 0.0 / 255.0, green: 51.0 / 255.0 , blue: 102.0 / 255.0)
  
  struct ButtonStyle : ViewModifier {
    func body(content: Content) -> some View {
      return content
        .foregroundColor(Color.white)
        .font(Font.custom("Arial Rounded MT Bold", size: 20))
    }
  }
    
  var body: some View {
    ZStack{
      Color.black
        .edgesIgnoringSafeArea(.all)
      VStack{
        Text("Current Id:\(roomId)").foregroundColor(Color.white)
        Text("Number Of Rooms Visited:\(numberOfRoomsVisited)").foregroundColor(Color.white)
        // Up Button
        Button(action: {
          if let id = self.getDestinationIdforRoomIdAndDestination(roomId: self.roomId, direction: Direction.up){
            self.processButton(id: id)
          }
        }) {
          Text("Up").modifier(ButtonStyle())
        }.padding(.all, buttonPadding).background(Image("Button"))
        
        //North Button
        Button(action: {
          if let id = self.getDestinationIdforRoomIdAndDestination(roomId: self.roomId, direction: Direction.north){
            self.processButton(id: id)
          }
        }) {
          Text("North").modifier(ButtonStyle())
        }.padding(.all, buttonPadding).background(Image("Button"))
        
        HStack{
          
          // West Button
          Button(action: {
            if let id = self.getDestinationIdforRoomIdAndDestination(roomId: self.roomId, direction: Direction.west){
              self.processButton(id: id)
            }
          }) {
            Text("West").modifier(ButtonStyle())
          }.padding(.all, buttonPadding).background(Image("Button"))
          
          // Teleport Button
          Button(action: {
            if let id = self.getDestinationIdforRoomIdAndDestination(roomId: self.roomId, direction: Direction.teleport){
              self.processButton(id: id)
            }
          }) {
            Text("Teleport").modifier(ButtonStyle())
          }.padding(.all, buttonPadding).background(Image("Button"))
          
          // East Button
          Button(action: {
            if let id = self.getDestinationIdforRoomIdAndDestination(roomId: self.roomId, direction: Direction.east){
              self.processButton(id: id)
            }
          }) {
            Text("East").modifier(ButtonStyle())
          }.padding(.all, buttonPadding).background(Image("Button"))
        }
        
        // South Button
        Button(action: {
          if let id = self.getDestinationIdforRoomIdAndDestination(roomId: self.roomId, direction: Direction.south){
            self.processButton(id: id)
          }
        }) {
          Text("South").modifier(ButtonStyle())
        }.padding(.all, buttonPadding).background(Image("Button"))
        
        // Down Button
        Button(action: {
          if let id = self.getDestinationIdforRoomIdAndDestination(roomId: self.roomId, direction: Direction.down){
            self.processButton(id: id)
          }
        }) {
          Text("Down").modifier(ButtonStyle())
        }.padding(.all, buttonPadding).background(Image("Button"))
      }
    }
  }
  
  func getDestinationIdforRoomIdAndDestination(roomId: Int, direction: Direction) -> Int? {
    return self.krozMap.getRoomIdForCurrentId(roomId: roomId, direction: direction)
  }
  
  func setCurrentRoomIdAsVisited(roomId: Int) {
    self.krozMap.map[roomId]?.wasVisited = true
  }
  
  func processButton(id: Int) {
    self.roomId = id
    self.setCurrentRoomIdAsVisited(roomId: id)
    self.krozMap.currentRoomId = id
    self.numberOfRoomsVisited = self.krozMap.numberOfRoomsVisited()
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
