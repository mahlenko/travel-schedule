//
//  ContentView.swift
//  TravelSchedule
//
//  Created by Сергей Махленко on 07.03.2024.
//

import SwiftUI

struct ContentView: View {
    private let services = YandexRaspService()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .task {
            do {
                //print(try await services.search().getSearch(from: "c239", to: "c213"))
                //print(try await services.schedule().getSchedule(station_code: "s9600216"))
                //print(try await services.thread().getThread(uid: "176YE_7_2"))
                //print(try await services.nearestStations().getNearestStations(lat: 59.939095, lng: 30.315868, distance: 20))
                //print(try await services.nearestSettlement().getNearestSettlement(lat: 59.939095, lng: 30.315868))
                //print(try await services.carrier().getCarrier(carrier_code: "8565"))
                //print(try await services.copyright().getCopyright())
                //print(try await services.stationsList().getStationsGuide().countries?.count)
            } catch let DecodingError.dataCorrupted(context) {
                print(context)
            } catch let DecodingError.keyNotFound(key, context) {
                print("Key '\(key)' not found:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch let DecodingError.valueNotFound(value, context) {
                print("Value '\(value)' not found:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch let DecodingError.typeMismatch(type, context)  {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                print("❌ ERROR: \(error.localizedDescription)")
            }
        }
    }
}

//#Preview {
//    ContentView()
//}
