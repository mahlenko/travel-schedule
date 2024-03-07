//
//  OnStationService.swift
//  TravelSchedule
//
//  Created by Сергей Махленко on 07.03.2024.
//

import OpenAPIRuntime
import OpenAPIURLSession

typealias NearestStations = Components.Schemas.Stations

/**
 Список ближайших станций
 
 Запрос позволяет получить список станций, находящихся в указанном радиусе от указанной точки.
 Максимальное количество возвращаемых станций — 50.
 
 @see https://yandex.ru/dev/rasp/doc/ru/reference/query-nearest-station
 */
protocol OnStationServiceProtocol {
  func getOnStation(lat: Double, lng: Double, distance: Int) async throws -> NearestStations
}

final class NearestStationsService: OnStationServiceProtocol {}
