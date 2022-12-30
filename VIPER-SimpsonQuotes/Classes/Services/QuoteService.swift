//
//  QuoteService.swift
//  VIPER-SimpsonQuotes
//
//  Created by MuhammadQodir on 15/12/20.

import ObjectMapper

class QuoteService {
    
    static let shared = { QuoteService() }()
    
    func getQuotes(count: Int, success: @escaping (Int, [Quote]) -> (), failure: @escaping (Int) -> ()) {
        
        let urlString = self.configureApiCall(Endpoints.QUOTES, "count", "\(count)")
        
        APIClient.shared.getArray(urlString: urlString, success: { (code, arrayOfQuotes) in
            success(code, arrayOfQuotes)
            
        }) { (code) in
            failure(code)
        }
    }
    
    func configureApiCall(_ baseURL: String, _ parameter: String, _ value: String) -> String {
        return baseURL + "?" + parameter + "=" + value
    }
}
