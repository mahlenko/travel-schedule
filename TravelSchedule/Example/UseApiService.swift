//
//  UseApiService.swift
//  TravelSchedule
//
//  Created by Сергей Махленко on 07.03.2024.
//

import Foundation
import OpenAPIURLSession

func stations() {
    let client = Client(
        serverURL: try! Servers.server1(),
        transport: URLSessionTransport()
    )
    
    let service = NearestStationsService(
        client: client,
        apikey: "488dad75-2cd2-48cd-bcfc-bcc626a00619" // for test
    )
    
    Task {
        let stations = try await service.getNearestStations(lat: 59.864177, lng: 30.319163, distance: 50)
        print(stations)
    }
}
