//
//  Location.swift
//  Kroz-App-01
//
//  Created by Diane Hoffstetter on 12/17/19.
//  Copyright © 2019 Dumb Blonde Software. All rights reserved.
//

import Foundation

class Location {
  
  let id: Int = 0
  let name: String
  let descriptionShort: String
  let descriptionLong: String
  var wasVisited: Bool = false
  var compass: Compass
  
  init(name: String, descriptionShort: String, descriptionLong: String){
    self.name = name
    self.descriptionShort = descriptionShort
    self.descriptionLong = descriptionLong
    self.compass = Compass()
  }
  
  func updateDestinationIdInCompass(for direction: Direction, newDestinationId: Int?) {
    compass.updateDestinationId(for: direction, newDestinationId: newDestinationId)
  }
  
  func setAllDestinationIdsInCompass(north: Int?, south: Int?, east: Int?, west: Int?, up: Int?, down: Int?, teleport: Int?) {
    compass.setAllDestinationId(north: north, south: south, east: east, west: west, up: up, down: down, teleport: teleport)
  }
  
  func diplayAllDestinationIdsInCompass(){
    compass.displayAllDestinationIds()
  }
}
