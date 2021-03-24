//
//  ContentView.swift
//  H4ck News
//
//  Created by Cleber Neitzke on 18/05/20.
//  Copyright © 2020 Cleber Neitzke. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts, rowContent: { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }
            })
            .navigationBarTitle("H4ck News")
        }
        .onAppear {
            self.networkManager.fecthData()
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

