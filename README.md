# CJExtensionColor-swift
CJExtensionColor is an extension of UIColor for swift,Including the development of the commonly used color processing, there are four kinds of extension: RGB, hex string into color, random color and gradient.Hope to be able to communicate with everybody together learning, make progress together.
- QQ group：262480034


### Usage

##### RGB
```
let rgbView = UIView(frame: CGRect(x: 0, y: 150, width: 200, height: 50))
rgbView.backgroundColor = UIColor(r: 247, g: 198, b: 68)
self.view.addSubview(rgbView)
```

##### Hex Color
```
let hexView = UIView(frame: CGRect(x: 0, y: 250, width: 200, height: 50))
hexView.backgroundColor = UIColor(hex: "#0881f1")
self.view.addSubview(hexView)
```

##### Random Color
```
let randomView = UIView(frame: CGRect(x: 0, y: 350, width: 200, height: 50))
randomView.backgroundColor = UIColor.randomColor()
self.view.addSubview(randomView)
```

##### gradient Color
```
fifthView.backgroundColor = UIColor(r: startRGB.0 + gradientRGB.0 * CGFloat((gradientSlider.value)), g: startRGB.1 + gradientRGB.1 * CGFloat((gradientSlider.value)), b: startRGB.2 + gradientRGB.2 * CGFloat((gradientSlider.value)))
```
