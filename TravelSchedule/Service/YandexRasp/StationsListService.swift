//
//  StationsListService.swift
//  TravelSchedule
//
//  Created by Сергей Махленко on 10.03.2024.
//

import Foundation

typealias StationsResponse = Components.Schemas.StationsResponse

protocol StationsListServiceProtocol {
    func getStationsList() async throws -> StationsResponse
}

final class StationsListService: StationsListServiceProtocol {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    func getStationsList() async throws -> StationsResponse {
        let response = try await client.getStationsList()

        return try response.ok.body.json
    }
}
