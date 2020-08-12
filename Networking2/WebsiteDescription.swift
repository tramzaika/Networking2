//
//  WebsiteDescription.swift
//  Networking2
//
//  Created by 1234 on 09.08.2020.
//  Copyright © 2020 Lisa. All rights reserved.
//

import Foundation

struct WebsiteDescription: Decodable {
    let websiteDescription: String
    let websiteName: String
    let courses: [Course]
}
