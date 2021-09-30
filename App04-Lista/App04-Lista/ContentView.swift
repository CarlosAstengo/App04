//
//  ContentView.swift
//  App04-Lista
//
//  Created by Carlos Astengo Macias on 30/09/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchText: String = ""
    @State var searchText2: String = ""
    
    @State var selectedTab = 0
    @State var color1Principal = Color(red: 203 / 255, green: 67 / 255, blue: 53 / 255)
    @State var color1Secundario = Color(red: 176 / 255, green: 58 / 255, blue: 46 / 255)
    @State var color2Principal = Color(red: 46 / 255, green: 134 / 255, blue: 193 / 255)
    @State var color2Secundario = Color(red: 40 / 255, green: 116 / 255, blue: 166 / 255)
    @State var color3Principal = Color(red: 23 / 255, green: 165 / 255, blue: 137 / 255)
    @State var color3Secundario = Color(red: 20 / 255, green: 143 / 255, blue: 119 / 255)
    
    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationView{
                List{
                    TextField("Search Game Title", text: $searchText)
                        .font(.title2)
                        .foregroundColor(.black)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Section(
                        header:Text("Best Selling Games 2020")
                            .font(.title2)
                            .foregroundColor(.black)) {
                                ForEach(Game.G2020.filter{
                                    searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                                })
                                { g in
                                    Text("\(g.score)    \(g.name)")
                                        .foregroundColor(g.score > 90 ? .white : .black)
                                        .listRowBackground(g.score > 90 ? color1Secundario : color1Principal)
                                }
                            }
                    Section(
                        header:Text("Best Selling Games 2019")
                            .font(.title2)
                            .foregroundColor(.black)) {
                                ForEach(Game.G2019.filter{
                                    searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                                })
                                { g in
                                    Text("\(g.score)    \(g.name)")
                                        .foregroundColor(g.score > 90 ? .white : .black)
                                        .listRowBackground(g.score > 90 ? color2Secundario : color2Principal)
                                }
                            }
                    Section(
                        header:Text("Best Selling Games 2018")
                            .font(.title2)
                            .foregroundColor(.black)) {
                                ForEach(Game.G2018.filter{
                                    searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                                })
                                { g in
                                    Text("\(g.score)    \(g.name)")
                                        .foregroundColor(g.score > 90 ? .white : .black)
                                        .listRowBackground(g.score > 90 ? color3Secundario : color3Principal)
                                }
                            }
                }
                .accentColor(.black)
                .listStyle(SidebarListStyle())
                
                .navigationBarTitle("Games", displayMode: .inline)
                .navigationBarColor(UIColor(.black),UIColor(.white))
                .toolbar(content: {
                    ToolbarItem(placement: .principal) {
                        Text("Triple A Games")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                })
            }
            .onTapGesture {
                self.selectedTab = 1
            }
            .tabItem{
                Image(systemName: "building")
                Text("AAA")
            }
            
            NavigationView{
                List{
                    TextField("Search Game Title", text: $searchText2)
                        .font(.title2)
                        .foregroundColor(.black)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Section(
                        header:Text("Best Indie Games 2020")
                            .font(.title2)
                            .foregroundColor(.black)) {
                                ForEach(Game.I2020.filter{
                                    searchText2.isEmpty || $0.name.localizedStandardContains(searchText2)
                                })
                                { g in
                                    Text("\(g.score)    \(g.name)")
                                        .foregroundColor(g.score > 90 ? .white : .black)
                                        .listRowBackground(g.score > 90 ? color1Secundario : color1Principal)
                                }
                            }
                    Section(
                        header:Text("Best Indie Games 2019")
                            .font(.title2)
                            .foregroundColor(.black)) {
                                ForEach(Game.I2019.filter{
                                    searchText2.isEmpty || $0.name.localizedStandardContains(searchText2)
                                })
                                { g in
                                    Text("\(g.score)    \(g.name)")
                                        .foregroundColor(g.score > 90 ? .white : .black)
                                        .listRowBackground(g.score > 90 ? color2Secundario : color2Principal)
                                }
                            }
                    Section(
                        header:Text("Best Indie Games 2018")
                            .font(.title2)
                            .foregroundColor(.black)) {
                                ForEach(Game.I2018.filter{
                                    searchText2.isEmpty || $0.name.localizedStandardContains(searchText2)
                                })
                                { g in
                                    Text("\(g.score)    \(g.name)")
                                        .foregroundColor(g.score > 90 ? .white : .black)
                                        .listRowBackground(g.score > 90 ? color3Secundario : color3Principal)
                                }
                            }
                }
                .accentColor(.black)
                .listStyle(SidebarListStyle())
                
                .navigationBarTitle("Games", displayMode: .inline)
                .navigationBarColor(UIColor(.black),UIColor(.white))
                .toolbar(content: {
                    ToolbarItem(placement: .principal) {
                        Text("Indie Games")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                })

            }
            .onTapGesture {
                self.selectedTab = 1
            }
            .tabItem{
                Image(systemName: "house")
                Text("Indie")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
