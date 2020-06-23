//
//  ClientAPI.swift
//  MVVM Example
//
//  Created by Viet Anh Dang on 6/22/20.
//  Copyright © 2020 Cadory. All rights reserved.
//

import Foundation
import Alamofire

enum ClientApi {
    
    case search(params: String)

    case getDetailProduct(productSku: String, params: String)
}

extension ClientApi: TargetType {

    /// The target's base `URL`.
    var baseURL: String {
        return BASE_URL
    }
    
    /// The path to be appended to `baseURL` to form the full `URL`.
    var path: String {
        switch self {
        case .search(let params):
            return "search/?".appending(params)
        case .getDetailProduct(let productSku, let params):
            return "products/\(productSku)?".appending(params)
        }
    }
    
    /// The HTTP method used in the request.
    var method: HTTPMethod {
        switch self {
        case .search:
            return .get
        case .getDetailProduct:
            return .get
        }
    }
    
    /// The type of HTTP task to be performed.
    var task: Task {
        return .request
    }

}
