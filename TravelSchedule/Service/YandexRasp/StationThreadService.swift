//
//  ThreadService.swift
//  TravelSchedule
//
//  Created by Сергей Махленко on 10.03.2024.
//

typealias StationThreadsResponse = Components.Schemas.StationThreadsResponse

protocol StationThreadServiceProtocol {
    func getThread(uid: String) async throws -> StationThreadsResponse
}

final class StationThreadService: StationThreadServiceProtocol {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    func getThread(uid: String) async throws -> StationThreadsResponse {
        let response = try await client.getThread(query: .init(
            uid: uid
        ))
        
        return try response.ok.body.json
    }
}
