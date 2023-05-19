//
//  APICaller.swift
//  Stocks
//
//  Created by ihan carlos on 12/04/23.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    
    private struct Constants {
        static let apiKey = ""
        static let sandboxApiKey = ""
        static let baseUrl = ""
    }
    
    private init() {
        
    }
    
    private enum Endpoint: String {
        case search
    }
    
    private enum APIerror:Error {
        case noDataReturned
        case invalidUrl
    }
    
    private func url(for endpoint: Endpoint, queryParams:[String:String] = [:])-> URL? {
        return nil
    }
    
    private func request<T: Codable> (url: URL?, expecting: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        guard let url = url else {
            
            completion(.failure(APIerror.invalidUrl))
            return
        }
        let task = URLSession.shared.dataTask(with: url){ data, _, error in
            guard let data = data, error == nil else {
                if let error = error{
                    completion(.failure(error))
                } else {
                    completion(.failure(APIerror.noDataReturned))
                }
                return
            }
            do {
                let result = try JSONDecoder().decode(expecting, from: data)
                completion(.success(result))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
