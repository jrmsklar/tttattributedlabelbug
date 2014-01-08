TTTAttributedLabel Bug
=====================

Quick small repo for a bug found in `TTTAttributedLabel`.

`TTTAttributedLabel` does not updates its font when `setFont:` is called on it. Its font only gets updated when `setText:` is called.

This repository provides a visual and interactive example of this.
