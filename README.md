# Acheron

Acheron is a collection of utilties for developing iOS apps.

* Total Lines: 2707


## Loom ORM

A lightweight threadsafe no SQL ORM.

* Dependencies: Odds and Ends
* Classes: Anchor, Basket, Domain, Persist, Loom, SQLitePersist
* Lines: 1221


## AepLayout

A collection of lightweight extensions and convenience methods for laying out iOS screens programatically.  It is particularly useful in making multiple screen sizes look the same.

* Classes: AEViewController
* Extensions: CALayer, UIView, UIViewController
* Lines: 266


## Pen

An object and set of extensions to ease using text within iOS.

* Classes: Pen
* Extensions: NSMutableAttributedString, NSString, UIButton, UILabel
* Lines: 71


## RGB

A set of tools for working with color.

* Classes: RGB
* Extensions: UIColor
* Lines: 91


## Expandable Table View

Classes and delegates for creating expandable table views.

* Dependencies: AepLayout
* Classes: ExpandableCell, ExpandableTableView
* Lines: 191

## Node View

A view making the display of tabular data easy.

* Dependencies: AepLayout
* Classes: AETableView, Node, NodeCell, NodeColumn, NodeData, NodeHeader, NodeView
* Lines: 316

## AepImage

Extensions for handling server image loading.

* Extensions: UIImage, UIImageView
* Lines: 66

## Pebbles

Asynchronous control flow.

* Classes: Pebble, Pond
* Lines: 94

## Odds and Ends

* Classes: AETimer, SafeMap, SafeSet, WeakSet, XMLtoAttributes, TripWire
* Extensions: Array, CGPoint, Collection, Comparable, Date, Dictionary, String, UIControl
* Lines: 391

Usage:
```
    let button: UIButton = UIButton()
    button.addAction {
        print("Hello, Acheron")
    }
```
