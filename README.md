Note: This project is no longer maintained.


[![Version](https://img.shields.io/cocoapods/v/AMRefresher.svg?style=flat)](https://cocoapods.org/pods/AMRefresher)
[![License](https://img.shields.io/cocoapods/l/AMRefresher.svg?style=flat)](https://cocoapods.org/pods/AMRefresher)
[![Platform](https://img.shields.io/cocoapods/p/AMRefresher.svg?style=flat)](https://cocoapods.org/pods/AMRefresher)


# AMRefresher-Fork
Super easy way to use "Pull To Refresh" and "Infinite Scrolling" with 1 line of code

<img src="https://raw.githubusercontent.com/arturdev/AMRefresher/master/demo.gif">

## Installation

AMRefresher-Fork is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```Swift
pod 'AMRefresher-Fork'
```

Or

Copy the AMRefresher-Fork folder to your project.

## Usage

Adding PullToRefresh and InfiniteScrolling to any <b>UIScrollView</b> is pretty easy: 

```Swift
override func viewDidLoad() {
    super.viewDidLoad()

    //Adding Pull To Refresh
    tableView.am.addPullToRefresh { [unowned self] in
        //Do your heavy job.
        //modify your datasource
        //...
        self.tableView.reloadData() //or insert cells at top of tableView
        self.tableView.am.pullToRefreshView?.stopRefreshing()
    }
 
    //Adding Infinite Scrolling
    tableView.am.addInfiniteScrolling { [unowned self] in
        //Do your heavy job.
        //append to your datasource
        //...
        self.tableView.reloadData() //or insert cells at bottom of tableView
        self.tableView.am.infiniteScrollingView?.stopRefreshing()
    }
}
```

If you’d like to programmatically trigger the refresh (for instance in viewDidAppear:), you can do so with:
```Swift
tableView.am.pullToRefreshView?.trigger()
```

## IMPORTANT NOTE

If you want to change the contentInset of the ScrollView, do that **BEFORE** adding pullToRefresh or infiniteScrolling.

## Customization

Both `AMPullToRefreshView` and `AMInfiniteScrollingView` have public method 
```Swift
public func setCustomView(_ view: UIView, for state: AM.State)
```
So you can call this method and pass any UIView you want to show for each state.

## License

AMRefresher-Fork is available under the MIT license. See the LICENSE file for more info.

