//
//  Search.swift
//  TravelSchedule
//
//  Created by Сергей Махленко on 07.03.2024.
//

import OpenAPIRuntime
import OpenAPIURLSession

// typealias BetweenPoint = Components.Schemas.Stations

/**
 Расписание рейсов между станциями
 
 Запрос позволяет получить список рейсов, следующих от указанной станции отправления
 к указанной станции прибытия и информацию по каждому рейсу.
 
 @see https://yandex.ru/dev/rasp/doc/ru/reference/schedule-point-point
 */
protocol PointToPointServiceProtocol {
  func getSearch(from: String, to: String) async throws -> NearestStations
}

final class PointToPointService: PointToPointServiceProtocol {
//    func getSearch(from: String, to: String) async throws -> NearestStations {
//        let response = try await client.getPointToPoint(query: .init(
//            apikey: apikey,
//            from: from,
//            to: to
//        ))
//        return try response.ok.body.json
//    }
}
