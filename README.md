# SSLoadingView

## Description
A simple loading view for iOS.

## Screenshots
 ![Screenshots](https://raw.github.com/stephsharp/SSLoadingView/master/ssloadingview_screenshots.png)

## Requirements
Add **QuartzCore.framework** to your project:  
Project > Target > Build Phases > Link Binary With Libraries > + > QuartzCore.framework

## Example
Show loading view:  
<code>self.loadingView = [SSLoadingView loadingViewInView:self.loadingViewContainer];</code>

Remove loading view:  
<code>[self.loadingView removeView];</code>