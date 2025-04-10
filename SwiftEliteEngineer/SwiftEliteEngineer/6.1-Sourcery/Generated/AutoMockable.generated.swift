// Generated using Sourcery 2.2.5 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// swiftlint:disable line_length
// swiftlint:disable variable_name

import Foundation
#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
#elseif os(OSX)
import AppKit
#endif

























public class WeatherServiceMock: WeatherService {

    public init() {}



    //MARK: - getWeatherData

    public var getWeatherDataStringCallsCount = 0
    public var getWeatherDataStringCalled: Bool {
        return getWeatherDataStringCallsCount > 0
    }
    public var getWeatherDataStringReturnValue: String!
    public var getWeatherDataStringClosure: (() -> String)?

    public func getWeatherData() -> String {
        getWeatherDataStringCallsCount += 1
        if let getWeatherDataStringClosure = getWeatherDataStringClosure {
            return getWeatherDataStringClosure()
        } else {
            return getWeatherDataStringReturnValue
        }
    }


}
