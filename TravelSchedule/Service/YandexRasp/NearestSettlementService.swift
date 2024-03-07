//
//  NearestSettlement.swift
//  TravelSchedule
//
//  Created by Сергей Махленко on 07.03.2024.
//


import OpenAPIRuntime
import OpenAPIURLSession

// typealias NearestSettlement = Components.Schemas.StationRoute

/**
 Ближайший город
 
 Запрос позволяет получить информацию о ближайшем к указанной точке городе.
 Точка определяется географическими координатами (широтой и долготой) согласно WGS84.
 Поиск можно ограничить определенным радиусом (по умолчанию — 10 километров, но не больше 50).
 
 @see https://yandex.ru/dev/rasp/doc/ru/reference/nearest-settlement
 */
protocol NearestSettlementServiceProtocol {
    func getNearestSettlement(lat: Double, lng: Double) async throws -> NearestSettlement
}

final class NearestSettlementService: NearestSettlementServiceProtocol {
    private let client: Client
    private let apikey: String
    
    init(client: Client, apikey: String) {
        self.client = client
        self.apikey = apikey
    }
    
    func getNearestSettlement(lat: Double, lng: Double) async throws -> NearestSettlement {
//        let response = try await client.getNearestSettlement(query: .init(
//            apikey: apikey,
//            lat: lat,
//            lng: lng
//        ))
//
//        return try response.ok.body.json
    }
}
