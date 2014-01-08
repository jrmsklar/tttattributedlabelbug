TTTAttributedLabel Bug
=====================

Quick small repository for a bug found in `TTTAttributedLabel` made to visually display the issue.

`TTTAttributedLabel` does not update its font when `setFont:` is called. Its font only gets updated when `setText:` is called.

This repository provides a visual and interactive example of this.

Clone this repository, do a `pod install` to install all of the dependencies (see [CocoaPods](http://cocoapods.org/) for more information), and build and run the app.
