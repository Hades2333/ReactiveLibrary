//
//  EndPoint.swift
//  RICK+MVI+Combine
//
//  Created by user on 21.01.2022.
//

import Foundation

public protocol EndPointProtocol {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders { get }
}
