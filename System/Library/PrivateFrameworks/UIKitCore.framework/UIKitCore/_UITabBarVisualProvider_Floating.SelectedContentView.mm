@interface _UITabBarVisualProvider_Floating.SelectedContentView
- (_TtCC5UIKit32_UITabBarVisualProvider_FloatingP33_3C6E5A7AE2316B749C88F887559DAAB619SelectedContentView)initWithCoder:(id)coder;
- (_TtCC5UIKit32_UITabBarVisualProvider_FloatingP33_3C6E5A7AE2316B749C88F887559DAAB619SelectedContentView)initWithFrame:(CGRect)frame;
@end

@implementation _UITabBarVisualProvider_Floating.SelectedContentView

- (_TtCC5UIKit32_UITabBarVisualProvider_FloatingP33_3C6E5A7AE2316B749C88F887559DAAB619SelectedContentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  type metadata accessor for _UITabBarVisualProvider_Floating.SelectedContentView();
  v10.receiver = self;
  v10.super_class = v8;
  return [(UIView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtCC5UIKit32_UITabBarVisualProvider_FloatingP33_3C6E5A7AE2316B749C88F887559DAAB619SelectedContentView)initWithCoder:(id)coder
{
  type metadata accessor for _UITabBarVisualProvider_Floating.SelectedContentView();
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