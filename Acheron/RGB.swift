//
//  RGB.swift
//  Acheron
//
//  Created by Joe Charlier on 3/8/19.
//  Copyright © 2019 Aepryus Software. All rights reserved.
//

import UIKit

public struct RGB {
	let r: Float
	let g: Float
	let b: Float
	let a: Float
	public let uiColor: UIColor
	
	private init (r: Float, g: Float, b: Float, a: Float, uiColor: UIColor) {
		self.r = r
		self.g = g
		self.b = b
		self.a = a
		self.uiColor = uiColor
	}
	public init (r: Float, g: Float, b: Float, a: Float) {
		let uiColor = UIColor(red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(a))
		self.init(r: r, g: g, b: b, a: a, uiColor: uiColor)
	}
	public init (r: Float, g: Float, b: Float) {
		self.init(r: r, g: g, b: b, a: 1)
	}
	public init (r: Int, g: Int, b: Int) {
		self.init(r: Float(r)/255.0, g: Float(g)/255.0, b: Float(b)/255.0)
	}
	public init (uiColor: UIColor) {
		var color = uiColor
		if color == UIColor.white			{color = UIColor(red: 6/6, green: 6/6, blue: 6/6, alpha: 1)}
		else if color == UIColor.lightGray	{color = UIColor(red: 4/6, green: 4/6, blue: 4/6, alpha: 1)}
		else if color == UIColor.gray		{color = UIColor(red: 3/6, green: 3/6, blue: 3/6, alpha: 1)}
		else if color == UIColor.darkGray	{color = UIColor(red: 2/6, green: 2/6, blue: 2/6, alpha: 1)}
		else if color == UIColor.black		{color = UIColor(red: 0/6, green: 0/6, blue: 0/6, alpha: 1)}
		
		let c = color.cgColor.components!
		self.init(r: Float(c[0]), g: Float(c[1]), b: Float(c[2]), a: Float(c[3]), uiColor: color)
	}
	
	public static func + (p: RGB, q: RGB) -> RGB {
		return RGB(r: p.r+q.r, g: p.g+q.g, b: p.b+q.b, a: p.a+q.a)
	}
	public static func - (p: RGB, q: RGB) -> RGB {
		return RGB(r: p.r-q.r, g: p.g-q.g, b: p.b-q.b, a: p.a-q.a)
	}
	public static func * (p: RGB, q: Float) -> RGB {
		return RGB(r: p.r*q, g: p.g*q, b: p.b*q, a: p.a*q)
	}
	
	public func blend (rgb: RGB, percent: Float) -> RGB {
		return self + (rgb - self) * percent
	}
	public func tint(_ percent: Float) -> RGB {
		return blend(rgb: RGB.white, percent: percent)
	}
	public func tone(_ percent: Float) -> RGB {
		return blend(rgb: RGB.grey, percent: percent)
	}
	public func shade(_ percent: Float) -> RGB {
		return blend(rgb: RGB.black, percent: percent)
	}
	
	public var cgColor: CGColor {
		return uiColor.cgColor
	}
	
	// Static ==========================================================================================
	public static var black = RGB(r: 0, g: 0, b: 0, a: 1)
	public static var white = RGB(r: 1, g: 1, b: 1, a: 1)
	public static var grey = RGB(r: 0.5, g: 0.5, b: 0.5, a: 1)
	
	public static func tint (color: UIColor, percent: Float) -> UIColor {
		return RGB(uiColor: color).blend(rgb: white, percent: percent).uiColor
	}
	public static func tone (color: UIColor, percent: Float) -> UIColor {
		return RGB(uiColor: color).blend(rgb: grey, percent: percent).uiColor
	}
	public static func shade (color: UIColor, percent: Float) -> UIColor {
		return RGB(uiColor: color).blend(rgb: black, percent: percent).uiColor
	}
}
