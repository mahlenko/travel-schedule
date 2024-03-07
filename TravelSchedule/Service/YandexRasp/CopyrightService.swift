//
//  Copyright.swift
//  TravelSchedule
//
//  Created by Сергей Махленко on 07.03.2024.
//

import OpenAPIRuntime
import OpenAPIURLSession

// typealias Copyright = Components.Schemas.StationRoute

/**
 Копирайт Яндекс Расписаний
 
 Запрос позволяет получить данные о Яндекс Расписаниях: URL сервиса, баннер в различных цветовых представлениях и уведомительный текст. 
 Все эти данные следует разместить ниже или выше места, в котором расположена информация о расписаниях, в следующем порядке:

 - Баннер.
 - Уведомительный текст.
 - URL Яндекс Расписаний.
 
 @see https://yandex.ru/dev/rasp/doc/ru/reference/query-copyright
 */
protocol CopyrightServiceProtocol {
    func getCopyright() async throws -> Copyright
}

final class CopyrightService: CopyrightServiceProtocol {
    private let client: Client
    private let apikey: String
    
    init(client: Client, apikey: String) {
        self.client = client
        self.apikey = apikey
    }
    
    func getCopyright() async throws -> Copyright {
//        let response = try await client.getCopyright()
//        return try response.ok.body.json
    }
}
