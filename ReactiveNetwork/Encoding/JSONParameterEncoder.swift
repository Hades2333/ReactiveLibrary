//
//  JSONParameterEncoder.swift
//  RICK+MVI+Combine
//
//  Created by user on 21.01.2022.
//

import Foundation

public struct JSONParameterEncoder: ParameterEncoder {
    /// integrate parameters in URL
    public static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
        do {
            let jsonAsData = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            urlRequest.httpBody = jsonAsData
            if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
                urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            }
        } catch {
            throw NetworkError.encodingFailed
        }
    }
}
