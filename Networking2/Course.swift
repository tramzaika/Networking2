//
//  Course.swift
//  Networking2
//
//  Created by 1234 on 09.08.2020.
//  Copyright © 2020 Lisa. All rights reserved.
//

import Foundation

struct Course: Decodable {
    
    let id: Int
    let name: String
    let link:String
    let imageUrl: String?
    let number_of_lessons: Int?
    let number_of_tests: Int?
}
