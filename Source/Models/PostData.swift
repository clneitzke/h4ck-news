//
//  PostData.swift
//  H4ck News
//
//  Created by Cleber Neitzke on 18/05/20.
//  Copyright © 2020 Cleber Neitzke. All rights reserved.
//

import Foundation

struct Results : Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
}
