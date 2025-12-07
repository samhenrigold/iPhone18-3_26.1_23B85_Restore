@interface _UISplitViewControllerAdaptiveColumnView.DimmingView
- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983511DimmingView)initWithCoder:(id)coder;
- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983511DimmingView)initWithFrame:(CGRect)frame;
@end

@implementation _UISplitViewControllerAdaptiveColumnView.DimmingView

- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983511DimmingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _s11DimmingViewCMa();
  v14.receiver = self;
  v14.super_class = v8;
  height = [(UIView *)&v14 initWithFrame:x, y, width, height];
  v10 = objc_opt_self();
  v11 = height;
  _dimmingViewColor = [v10 _dimmingViewColor];
  [(UIView *)v11 setBackgroundColor:_dimmingViewColor];

  return v11;
}

- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983511DimmingView)initWithCoder:(id)coder
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

@end