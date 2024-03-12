//
//  LogRequestMiddleware.swift
//  TravelSchedule
//
//  Created by Сергей Махленко on 10.03.2024.
//

import OpenAPIRuntime
import OpenAPIURLSession
import HTTPTypes
import struct Foundation.URL

struct LogRequestMiddleware: ClientMiddleware {
    func intercept(
        _ request: HTTPRequest,
        body: HTTPBody?,
        baseURL: URL,
        operationID: String,
        next: (HTTPRequest, HTTPBody?, URL) async throws -> (HTTPResponse, HTTPBody?)
    ) async throws -> (HTTPResponse, HTTPBody?) {
        print("🟢 (\(request.method)): \(baseURL)\(request.path!)")
        request.headerFields.forEach { field in
            print("\(field.name): \(field.value)")
        }

        return try await next(request, body, baseURL)
    }
}
