//
//  NewsAppAPIClient.swift
//  Model
//
//  Created by Vaibhav Parmar on 18/04/20.
//  Copyright © 2020 Nickelfox. All rights reserved.
//

import Foundation
import FoxAPIKit

class NewsAppNonHeaderAPIClient: APIClient<AuthHeaders, ErrorResponse> {
    
    static let shared = NewsAppNonHeaderAPIClient()
    
    override init() {
        super.init()
        #if DEBUG
        enableLogs = true
        #else
        enableLogs = false
        #endif
    }
    
    override func authenticationHeaders(response: HTTPURLResponse) -> AuthHeaders? {
        return nil
    }
    
}

class NewsAppAPIClient: APIClient<AuthHeaders, ErrorResponse> {
    
    static let shared = NewsAppAPIClient()
    
    override init() {
        super.init()
        #if DEBUG
        enableLogs = true
        #else
        enableLogs = false
        #endif
    }
    
    override func authenticationHeaders(response: HTTPURLResponse) -> AuthHeaders? {
        return self.authHeaders
    }
    
}
