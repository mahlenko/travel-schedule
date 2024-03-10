//
//  CarrierService.swift
//  TravelSchedule
//
//  Created by Сергей Махленко on 10.03.2024.
//

typealias CarrierResponse = Components.Schemas.CarriersResponse

protocol CarrierServiceProtocol {
    func getCarrier(carrier_code: String) async throws -> CarrierResponse
}

final class CarrierService: CarrierServiceProtocol {
    private let client: Client

    init(client: Client) {
        self.client = client
    }

    func getCarrier(carrier_code: String) async throws -> CarrierResponse {
        let response = try await client.getCarrier(query: .init(
            code: carrier_code
        ))

        return try response.ok.body.json
    }
}
