//
//  SearchService.swift
//  TravelSchedule
//
//  Created by Сергей Махленко on 10.03.2024.
//

typealias SearchResponse = Components.Schemas.SearchResponse

protocol SearchServiceProtocol {
    func getSearch(from: String, to: String) async throws -> SearchResponse
}

final class SearchService: SearchServiceProtocol {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    func getSearch(from: String, to: String) async throws -> SearchResponse {
        let response = try await client.getSearch(query: .init(
            from: from,
            to: to
        ))
        
        return try response.ok.body.json
    }
}
