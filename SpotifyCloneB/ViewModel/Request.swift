//
//  Request.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 7/05/22.
//

import Foundation

class Request {
    
    let token  = "BQCr0LKh7G_ewoX66i2_aOfyzeAFrQLQRFpX9iCdD-43ibeDln6TLM1XZA73BxP83MaZGYdfGra8gnJcRizJtT8baBJ2boGWD7jxkAja7x1zf2U79As2lmouyVClnfT6_IUjCXsWCy527NDETkiP2whZ5xCEwDGQJz6wbMP6pzFkiE4ApNLolw"
    
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
