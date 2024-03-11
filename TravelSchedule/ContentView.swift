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

                // мне не удалось заставить работать [stationsList], тот, что ~40мб:
                //
                // - мне кажется, контент возвращается в stream, а сессия ловит 200 код и завершает работу
                //   таким образом, я не получаю полный документ, а останавливаюсь только на 1 части.
                //   из-за чего JSON не валидный. Как реализовать и дождаться получения всего контента,
                //   мне сложно пока разобраться самостоятельно.
                //
                //   В чате студентов, вроде бы всем приходит полный ответ от сервера, у них чаще проблема распарсить
                //   или вывести в консоль результат. У меня приходит "сломаный кусок" ответа.
                //   Запрос через curl или postman приходит, но проверить целостность не могу, в postman ответ размером 4.75Мб
                //   что не является полным, если верить документации.

                //print(try await services.stationsList().getStationsList())
            } catch {
                print("❌ ERROR: \(error.localizedDescription)")
            }
        }
    }
}

//#Preview {
//    ContentView()
//}
