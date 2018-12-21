# ComposableStyling

ComposableStyling provides sets of functions for styling views and composable operators.

## Composable operator

`<>` operator composes same signature functions.

```Swift
precedencegroup SingleTypeComposition {
    associativity: left
}

infix operator<>: SingleTypeComposition

public func <> <A: AnyObject>(f: @escaping (A) -> Void, g: @escaping (A) -> Void) -> (A) -> Void {
    return { a in
        f(a)
        g(a)
    }
}
```
## Installation

```
pod 'ComposableStyling'
```

## Usage

### 1. Create styling function by composing styling functions you want to apply.

e.g. In case that we want to,
* set background color red
* set boarder color blue and 10 to width

We can create styling function by composing 2 functions.
```Swift
let style = styleViewBackgroundColor(.red) <>
            styleViewBorder(color: .blue, width: 10)
```
2. Apply styling function to view.

```Swift
let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
style(view)
```


## Comaparison

ComposableStyling helps us understand what design applied.

### Before
```Swift
let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
view.backgroundColor = .red
view.layer.cornerRadius = 30
view.layer.masksToBounds = true
view.layer.borderWidth = 10
view.layer.borderColor = .blue
```

### After
```Swift
let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))

let style = styleViewBackgroundColor(.red) <>
            styleViewCornerRadius(30) <>
            styleViewBorder(color: .blue, width: 10)

style(view)
```
