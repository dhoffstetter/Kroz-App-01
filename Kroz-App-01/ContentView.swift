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
  var x = Map.currentId
  
  var body: some View {
    Text("\(x)")
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
