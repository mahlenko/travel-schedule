//
//  StationsListService.swift
//  TravelSchedule
//
//  Created by Сергей Махленко on 07.03.2024.
//

import OpenAPIRuntime
import OpenAPIURLSession

// typealias StationList = Components.Schemas.StationRoute

/**
 Список всех доступных станций
 
 Ресурс содержит полный список станций, информацию о которых предоставляют Яндекс Расписания.
 Список структурирован географически: ответ содержит список стран со вложенными списками регионов и населенных пунктов, в которых находятся станции.

 Размер возвращаемого JSON-документа — около 40 МБ.
 
 @see https://yandex.ru/dev/rasp/doc/ru/reference/stations-list
 */
protocol StationListServiceProtocol {
    func getStationsList() async throws -> StationList
}

final class StationsListService: StationListServiceProtocol {
    private let client: Client
    private let apikey: String
    
    init(client: Client, apikey: String) {
        self.client = client
        self.apikey = apikey
    }
    
    func getStationsList() async throws -> StationsList {
//        let response = try await client.getStationList()
//        return try response.ok.body.json
    }
}
