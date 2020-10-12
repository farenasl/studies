//
//  PostData.swift
//  H4X0R news
//
//  Created by BCI MacBook Pro on 11-10-20.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let points: Int
    let url: String?
    let objectID: String
}
