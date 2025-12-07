@interface UIViewController_UITraitCollection
- (id)view;
@end

@implementation UIViewController_UITraitCollection

- (id)view
{
  tmlParent = [self tmlParent];
  view = [tmlParent view];

  return view;
}

@end