//
//  StationRouteService.swift
//  TravelSchedule
//
//  Created by Сергей Махленко on 07.03.2024.
//

import OpenAPIRuntime
import OpenAPIURLSession

// typealias StationRoute = Components.Schemas.StationRoute

/**
 Список станций следования
 
 Запрос позволяет получить список станций следования нитки по указанному идентификатору нитки, 
 информацию о каждой нитке и о промежуточных станциях нитки.
 
 Идентификатор нитки можно получить в ответах на запросы:
  - Расписание рейсов между станциями,
  - Расписание рейсов по станции.
 
 @see https://yandex.ru/dev/rasp/doc/ru/reference/list-stations-route
 */
protocol StationRouteProtocol {
    func getThread(uid: String) async throws -> StationRoute
}

final class StationRouteService: StationRouteProtocol {
    private let client: Client
    private let apikey: String

    init(client: Client, apikey: String) {
        self.client = client
        self.apikey = apikey
    }
    
    func getThread(uid: String) async throws -> StationRoute {
//        let response = try await client.getThread(query: .init(
//            apikey: apikey,
//            uid: uid
//        ))
//
//        return try response.ok.body.json
    }
}
