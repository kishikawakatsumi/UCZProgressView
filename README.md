# UCZProgressView
[![CI Status](http://img.shields.io/travis/kishikawakatsumi/UCZProgressView.svg?style=flat)](https://travis-ci.org/kishikawakatsumi/UCZProgressView)
[![Coverage Status](https://img.shields.io/coveralls/kishikawakatsumi/UCZProgressView.svg?style=flat)](https://coveralls.io/r/kishikawakatsumi/UCZProgressView?branch=master)
[![Version](https://img.shields.io/cocoapods/v/UCZProgressView.svg?style=flat)](http://cocoadocs.org/docsets/UCZProgressView)
[![License](https://img.shields.io/cocoapods/l/UCZProgressView.svg?style=flat)](http://cocoadocs.org/docsets/UCZProgressView)
[![Platform](https://img.shields.io/cocoapods/p/UCZProgressView.svg?style=flat)](http://cocoadocs.org/docsets/UCZProgressView)

UCZProgressView is a circular progress indicator with cool animations for image loading.

This progress view is inspired by [Michaël Villar's motion effect 08-Photo Loading](http://www.michaelvillar.com/motion).

- Customizable indicator (line width, radius, and color)
- Display a label with the current progress.
- Customizable progress text label (color, size and font)
- Customizable background view (blur style)
- Fully support interface builder (`IB_DESIGNABLE` and `IBInspectable`)
- Fully support `UI_APPEARANCE_SELECTOR`

<img src="https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Screenshots/movie1.gif" width="320px" />&nbsp;
<img src="https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Screenshots/movie2.gif" width="320px" />&nbsp;
<img src="https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Screenshots/movie3.gif" width="320px" />&nbsp;
<img src="https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Screenshots/movie4.gif" width="320px" />&nbsp;

## Usage

```objc
self.progressView = [[UCZProgressView alloc] initWithFrame:self.view.bounds];
self.progressView.translatesAutoresizingMaskIntoConstraints = NO;
[self.view addSubview:self.progressView];

NSDictionary *views = NSDictionaryOfVariableBindings(_progressView);
[self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[_progressView]-0-|" options:0 metrics:nil views:views]];
[self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[_progressView]-0-|" options:0 metrics:nil views:views]];
```

### Show indeterminate state (default value is `YES`)

```objc
self.progressView.indeterminate = YES;
```

<img src="https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Screenshots/indeterminate.gif" width="100px" />

### Show progress

```objc
self.progressView.progress = 0.7;
```

<img src="https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Screenshots/progress.png" width="100px" />

### Show indicator text label

```objc
self.progressView.showsText = YES;
```

<img src="https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Screenshots/showsText.png" width="100px" />

### Indicator and indicator text color

```objc
self.progressView.showsText = YES;
self.progressView.tintColor = [UIColor blueColor];
```

<img src="https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Screenshots/tintColor.png" width="100px" />

### Text color

```objc
self.progressView.showsText = YES;
self.progressView.tintColor = [UIColor blueColor];
self.progressView.textColor = [UIColor redColor];
```

<img src="https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Screenshots/textColor.png" width="100px" />

### Radius

```objc
self.progressView.radius = 40.0;
```

<img src="https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Screenshots/radius.png" width="100px" />

### Line width

```objc
self.progressView.lineWidth = 6.0;
```

<img src="https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Screenshots/lineWidth.png" width="100px" />

### Blur background view

```objc
self.progressView.blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];
```

<img src="https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Screenshots/blur.png" width="100px" />

## Requirements

iOS 5 or later

## Installation

UCZProgressView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

`pod 'UCZProgressView'`

## Author

kishikawa katsumi, kishikawakatsumi@mac.com

## License

UCZProgressView is available under the MIT license. See the LICENSE file for more info.
