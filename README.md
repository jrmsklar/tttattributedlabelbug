TTTAttributedLabel Bug
=====================

Quick small repo for a bug found in `TTTAttributedLabel` made to visually display the bug.

`TTTAttributedLabel` does not updates its font when `setFont:` is called on it. Its font only gets updated when `setText:` is called.

This repository provides a visual and interactive example of this.

Clone this repository, do a `pod install` to install all of the dependencies (see [CocoaPods](http://cocoapods.org/) for more information), and build and run the app.
