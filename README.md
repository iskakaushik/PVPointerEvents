PVPointerEvents
===============

This is a proof-of-concept for handling pointer events when platform views are involved in the Flutter macOS embedding. We limit ourselves to handling `mouseDown` and `mouseUp` pointer events only, other events can be handled in a similar way. Click on each color/view to see what happens!

![](https://i.imgur.com/nxWze6h.png)

RootView (Black Color)
----------------------

This view is the main view (in black color), that hosts the other sub views. This is equivalent to the main FlutterView on macOS, which will be a parent view for all the subviews. This is already wired to send all the pointer events to the framework on Flutter embedding for macOS.

We override the `hitTest` method to return this view as the hit target in the cases where the hit event corresponds to a `PointerForwardingView` view. Like so:

```
- (NSView *)hitTest:(NSPoint)aPoint {

  NSView* hitView = [super hitTest:aPoint];

  if ([hitView isKindOfClass:PointerForwardingView.class]) {

    return self;

  }

  return hitView;

}
```

PointerConsumingView (Blue Color)
---------------------------------

This view consumes all the events as the hit test will rightly return this as the hit target.

PointerForwardingView (Green Color)
-----------------------------------

This view will never be the hit target as the parent view consumes the hit events. Once the framework receives events corresponding to this view, it will then use the gesture recognizers on the events and we can then forward the events to this view.
