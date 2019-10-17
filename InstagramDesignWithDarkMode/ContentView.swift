//
//  ContentView.swift
//  InstagramDesignWithDarkMode
//
//  Created by ramil on 17.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomePage: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<4) { i in
                            VStack {
                                Image("\(i)")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .overlay(Circle().stroke(lineWidth: 3).fill(Color.red))
                                    .padding(6)
                                
                                    Text("User")
                            }
                        }
                    }
                }
            }
        }
    }
}
