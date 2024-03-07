//
//  NearestSettlement.swift
//  TravelSchedule
//
//  Created by Сергей Махленко on 07.03.2024.
//


import OpenAPIRuntime
import OpenAPIURLSession

// typealias StationRoute = Components.Schemas.StationRoute

/**
 Расписание рейсов по станции
 
 Запрос позволяет получить список рейсов, отправляющихся от указанной станции и информацию по каждому рейсу.
 
 @see https://yandex.ru/dev/rasp/doc/ru/reference/schedule-on-station
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
}
