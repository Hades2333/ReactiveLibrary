//
//  NetworkClient.swift
//  RICK+MVI+Combine
//
//  Created by user on 24.01.2022.
//

import Foundation
import Combine

public protocol NetworkClientProtocol {
    /// allows you to get json and decode it into the desired model
    func fetchModel<M>(_ endpoint: EndPointProtocol) -> AnyPublisher<M, Error> where M: Decodable
}

final public class NetworkClient: NetworkClientProtocol, CombineAPI {
    
    let session: URLSession
    
    public init(configuration: URLSessionConfiguration = .default) {
        self.session = URLSession(configuration: configuration)
    }
    
    
    public func fetchModel<M>(_ endpoint: EndPointProtocol) -> AnyPublisher<M, Error> where M: Decodable {
        execute(NetworkRouter().configureURLRequest(with: endpoint), decodingType: M.self, retries: 2)
    }
}
