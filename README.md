# SSLoadingView

## Overview

SSLoadingView is a simple loading view for iOS. It can be placed in a view of any size, and adds a large activity indicator centred in a transluscent background that fills the entire view it was added to.

### Features

 - Fills the frame of its superview 
 - Activity indicator is centred in the view (vertically & horizontally)
 - Transluscent background
 - Fades in/out when added/removed from a view

## Demo

 ![Screenshots](https://raw.github.com/stephsharp/SSLoadingView/master/ssloadingview_screenshots.png)

## Requirements

### Frameworks
Add **QuartzCore.framework** to your project:  
Project > Target > Build Phases > Link Binary With Libraries > + > QuartzCore.framework

### ARC
SSLoadingView uses Automatic Reference Counting (ARC).

## Example

### Show Loading View

```objc
self.loadingView = [SSLoadingView loadingViewInView:self.loadingViewContainer];
```

### Remove Loading View

```objc
[self.loadingView removeView];
```

## Acknowledgements

With thanks to:

 - [All Purpose Loading View for iOS](http://www.sitepoint.com/all-purpose-loading-view-for-ios/)
 - [Showing a "Loading..." message over the iPhone keyboard](http://www.cocoawithlove.com/2009/04/showing-message-over-iphone-keyboard.html)
