@interface MTATableViewControllerAccessibility
- (void)_numberOfItemsDidChangeAnimated:(BOOL)animated;
@end

@implementation MTATableViewControllerAccessibility

- (void)_numberOfItemsDidChangeAnimated:(BOOL)animated
{
  v7.receiver = self;
  v7.super_class = MTATableViewControllerAccessibility;
  [(MTATableViewControllerAccessibility *)&v7 _numberOfItemsDidChangeAnimated:animated];
  v4 = [(MTATableViewControllerAccessibility *)self safeValueForKey:@"_noItemsView"];
  if (v4)
  {
    v5 = [(MTATableViewControllerAccessibility *)self safeValueForKey:@"tableView"];
    accessibilityLabel = [v4 accessibilityLabel];
    if ([accessibilityLabel length])
    {
      [v4 setIsAccessibilityElement:0];
      [v5 setAccessibilityLabel:accessibilityLabel];
    }
  }
}

@end