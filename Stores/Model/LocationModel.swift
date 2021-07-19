//
//  LocationModel.swift
//  Stores
//
//  Created by Matúš Dalloš on 04.07.2021.
//

import Foundation
import MapKit
import struct CoreLocation.CLLocationCoordinate2D


struct Poi: Codable, Identifiable {
    var id: String
    var name: String?
    var phone: String?
    var email: String?
    var image: String?
    var location: PoiLocation
    var address: PoiAddress?
    var openingHours: PoiOpeningHours?
    var services: [PoiServiceObj]?
    var status: PoiStatus
    var type: PoiType?
    
}
struct PoiLocation: Codable {
    var latitude: Double
    var longitude: Double
}

struct PoiAddress: Codable {
    var street: String?
    var city: String?
    var zip: String?
    var country: String?
    
    var short: String {
        return [street, city].compactMap { $0 }.joined(separator: ", ")
    }
    var full: String {
        return [street, zip, city, country].compactMap { $0 }.joined(separator: ", ")
    }
}

struct PoiOpeningHoursHours: Codable {
    var start: String?
    var end: String?
}

struct PoiOpeningHoursDay: Codable {
    var hours: [PoiOpeningHoursHours]
}

struct PoiOpeningHoursDays: Codable {
    var MONDAY: PoiOpeningHoursDay?
    var TUESDAY: PoiOpeningHoursDay?
    var WEDNESDAY: PoiOpeningHoursDay?
    var THURSDAY: PoiOpeningHoursDay?
    var FRIDAY: PoiOpeningHoursDay?
    var SATURDAY: PoiOpeningHoursDay?
    var SUNDAY: PoiOpeningHoursDay?
}

struct PoiOpeningHours: Codable {
    var days: PoiOpeningHoursDays?
}

enum PoiServiceTypeCode: String, Codable {
    case WIFI, TOILET, ATM, CARD_PAYMENT, CAFE
}

struct PoiServiceObj: Codable {
    var serviceTypeCode: PoiServiceTypeCode?
}

enum PoiStatus: String, Codable {
    case ACTIVE, DISABLED
}

enum PoiType: String, Codable {
    case STANDARD, POPUP, PREMIUM
}

extension CLLocationCoordinate2D {
    init?(poiLocation: PoiLocation?) {
        guard let latitude = poiLocation?.latitude,
            let longitude = poiLocation?.longitude
            else { return nil }
        self.init()
        self.latitude = latitude
        self.longitude = longitude
    }
}


