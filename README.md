# MHTableView

[![CI Status](http://img.shields.io/travis/MohammedAlimoor/MHTableView.svg?style=flat)](https://travis-ci.org/MohammedAlimoor/MHTableView)
[![Version](https://img.shields.io/cocoapods/v/MHTableView.svg?style=flat)](http://cocoapods.org/pods/MHTableView)
[![License](https://img.shields.io/cocoapods/l/MHTableView.svg?style=flat)](http://cocoapods.org/pods/MHTableView)
[![Platform](https://img.shields.io/cocoapods/p/MHTableView.svg?style=flat)](http://cocoapods.org/pods/MHTableView)


Easier way to Control empty States UITableView ,UICollectionview

![](https://raw.githubusercontent.com/MohammedAlimoor/MHTableView/master/Screen%20Shot/Screen%20Shot%202018-03-12%20at%2012.59.12%20PM.png) ![](https://raw.githubusercontent.com/MohammedAlimoor/MHTableView/master/Screen%20Shot/Screen%20Shot%202018-03-12%20at%2012.59.19%20PM.png)![](https://raw.githubusercontent.com/MohammedAlimoor/MHTableView/master/Screen%20Shot/Screen%20Shot%202018-03-12%20at%2012.59.28%20PM.png)![](https://raw.githubusercontent.com/MohammedAlimoor/MHTableView/master/Screen%20Shot/Screen%20Shot%202018-03-12%20at%2012.59.34%20PM.png)

## Requirements
- Swift 4.0
- iOS 8.0 or later

## Features
- Extension :) for UITableView , UICollectionview
- support custom view
- Please wait or  IndicatorView
-and more :)


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

MHTableView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MHTableView'
```

## Usage
### Only Text
```swift
 tableview.showEmpty(text: "Sorry there is no data")
```

###  Text & button with callback
```swift
tableview.showEmpty(text: "Connection Error", buttonText: "Try") {
    // callback here
}
```

###  Text & button & image with callback
```swift
tableview.showEmpty(text: "Connection Error", buttonText: "Try", image: #imageLiteral(resourceName: "error.png")) {
// callback here
}
```
###  Please wait or  IndicatorView
```swift
tableview.showEmptyIndicatorView(text: "Loading", showText: true)

```

###  custom view
```swift
 let  rec =  CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height)
       let view = View(frame: rec) // your   custom view
tableview.showEmpty(emptyview: view)
```
## Author

MohammedAlimoor, ameral.java@gmail.com

## License

MHTableView is available under the MIT license. See the LICENSE file for more info.
