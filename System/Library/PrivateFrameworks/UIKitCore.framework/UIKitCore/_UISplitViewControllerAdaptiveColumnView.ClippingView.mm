@interface _UISplitViewControllerAdaptiveColumnView.ClippingView
- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983512ClippingView)initWithCoder:(id)coder;
- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983512ClippingView)initWithFrame:(CGRect)frame;
@end

@implementation _UISplitViewControllerAdaptiveColumnView.ClippingView

- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983512ClippingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _s12ClippingViewCMa();
  v10.receiver = self;
  v10.super_class = v8;
  return [(UIView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983512ClippingView)initWithCoder:(id)coder
{
  _s12ClippingViewCMa();
  v9.receiver = self;
  v9.super_class = v5;
  coderCopy = coder;
  v7 = [(UIView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end