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
        TabView {
            NavigationView {
                HomePage().navigationBarTitle("Instagram")
                .navigationBarItems(leading:
                    Button(action: {
                        
                    }, label: {
                        Image("cam").resizable().frame(width: 35, height: 35)
                    }), trailing:
                    HStack {
                        Button(action: {
                            
                        }, label: {
                            Image("IGTV").resizable().frame(width: 35, height: 35)
                        })
                        Button(action: {
                            
                        }, label: {
                            Image("send").resizable().frame(width: 35, height: 35)
                        })
                    }
                )
                
            }.tabItem {
                Image("Home")
            }
            
            Text("Find").tabItem {
                Image("find")
            }
            Text("add").tabItem {
                Image("plus")
            }
            Text("likes").tabItem {
                Image("heart")
            }
            Text("bio").tabItem {
                Image("person")
            }
        }
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
                ForEach(0..<5) { i in
                    Feeds()
                }
            }
        }
    }
}

struct Feeds: View {
    var body: some View {
        VStack {
            HStack {
                Image("1").resizable().frame(width: 30, height: 30).clipShape(Circle())
                Text("User").fontWeight(.light)
                Spacer()
                Button(action: {
                    
                }) {
                    Image("menu").resizable().frame(width: 25, height: 25).foregroundColor(.white)
                }
            }
            
            Image("p1").resizable().frame(height: 300).padding([.top, .bottom], 8)
            
            HStack {
                Image("comment").resizable().frame(width: 32, height: 32)
                Image("send").resizable().frame(width: 32, height: 32)
                Spacer()
                Image("saved").resizable().frame(width: 32, height: 32)
            }.padding(8)
        }
    }
}
