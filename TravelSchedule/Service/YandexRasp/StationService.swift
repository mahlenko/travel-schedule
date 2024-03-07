//
//  OnStationService.swift
//  TravelSchedule
//
//  Created by Сергей Махленко on 07.03.2024.
//

import OpenAPIRuntime
import OpenAPIURLSession

 typealias Station = Components.Schemas.Station

/**
 Расписание рейсов по станции
 
 Запрос позволяет получить список рейсов, отправляющихся от указанной станции и информацию по каждому рейсу.
 
 @see https://yandex.ru/dev/rasp/doc/ru/reference/schedule-on-station
 */
protocol StationServiceProtocol {
    func getStation(station: String) async throws -> Station
}

final class StationService: StationServiceProtocol {
    private let client: Client
    private let apikey: String

    init(client: Client, apikey: String) {
        self.client = client
        self.apikey = apikey
    }
    
    func getStation(station: String) async throws -> Station {
//        let response = try await client.getStation(query: .init(
//            apikey: apikey,
//            station: station
//        ))
//        
//        return try response.ok.body.json
    }
}
