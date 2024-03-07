//
//  CarrierService.swift
//  TravelSchedule
//
//  Created by Сергей Махленко on 07.03.2024.
//

import OpenAPIRuntime
import OpenAPIURLSession

// typealias Carrier = Components.Schemas.StationRoute

/**
 Информация о перевозчике
 
 Запрос позволяет получить информацию о перевозчике по указанному коду перевозчика.

 Коды перевозчиков можно получить в публичных справочниках кодов, а также в ответах на запросы: 
  - Расписание рейсов между станциями,
  - Расписание рейсов по станции,
  - Список станций следования.
 
 @see https://yandex.ru/dev/rasp/doc/ru/reference/query-carrier
 */
protocol CarrierServiceProtocol {
    func getCarrier(code: String) async throws -> Carrier
}

final class CarrierService: CarrierServiceProtocol {
    private let client: Client
    private let apikey: String
    
    init(client: Client, apikey: String) {
        self.client = client
        self.apikey = apikey
    }
    
    func getCarrier(code: String) async throws -> Carrier {
//        let response = try await client.getCarrier(query: .init(
//            apikey: apikey,
//            lat: lat,
//            lng: lng
//        ))
//
//        return try response.ok.body.json
    }
}
