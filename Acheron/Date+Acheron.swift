//
//  Date+Acheron.swift
//  Acheron
//
//  Created by Joe Charlier on 4/7/19.
//  Copyright © 2019 Aepryus Software. All rights reserved.
//

import Foundation

public extension Date {
	static var formatters: [String:DateFormatter] = [:]
	
	func format(_ template: String) -> String {
		var formatter = Date.formatters[template]
		if formatter == nil {
			formatter = DateFormatter()
			formatter!.dateFormat = template
			Date.formatters[template] = formatter
		}
		return formatter!.string(from: self)
	}
}
