//
//  APIError.swift
//  RICK+MVI+Combine
//
//  Created by user on 24.01.2022.
//

import Foundation

enum NetworkError: Error {
    case requestFailed
    case jsonConversionFailure
    case invalidData
    case responseUnsuccessful
    case jsonParsingFailure
    case missingURL
    case encodingFailed
    
    var localizedDescription: String {
        switch self {
        case .requestFailed: return "Request Failed"
        case .invalidData: return "Invalid Data"
        case .responseUnsuccessful: return "Response Unsuccessful"
        case .jsonParsingFailure: return "JSON Parsing Failure"
        case .jsonConversionFailure: return "JSON Conversion Failure"
        case .missingURL: return "missing URL"
        case .encodingFailed: return "encoding failed"
        }
    }
}
