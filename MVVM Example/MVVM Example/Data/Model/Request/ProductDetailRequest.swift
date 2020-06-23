//
//  ProductDetailRequest.swift
//  MVVM Example
//
//  Created by Viet Anh Dang on 6/22/20.
//  Copyright © 2020 Cadory. All rights reserved.
//

import Foundation

struct ProductDetailRequest {

    var channel: String?

    var terminal: String?

    func getParams() -> String {
        var part = [String]()
        if let channel = channel {
            part.append("channel=\(channel)")
        }
        if let terminal = terminal {
            part.append("terminal=\(terminal)")
        }
        let finalQuery = part.joined(separator: "&")
        return finalQuery
    }

}
