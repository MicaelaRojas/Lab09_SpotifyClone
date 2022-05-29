//
//  Request.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 7/05/22.
//

import Foundation

class Request {
    
    let token = "BQAjY3FyWuTrNEWohCHnyP6V0qL_Iyd2eq3lKkEm233EzPNv5bgveHpfEFsI_E-5c7EgfrxR6cNG9cixkGt5uLNvmvnntaAHbO2XaHylTqgkq4fh9P0rHyh5r-Ojb2h3WmMliBOVO97bXhVk1d4KM8iiPAp9lAzGRhosHKAmdWqk173NWlYKYQ"
    
    let BASE_URL = "https://api.spotify.com/v1/"
    
    func getDataFromAPI(url: String) async -> Data? {
        do {
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(url)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
        } catch {
            return nil
        }
    }
    
}
