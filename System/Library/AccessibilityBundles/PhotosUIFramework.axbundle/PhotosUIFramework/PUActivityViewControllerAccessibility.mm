@interface PUActivityViewControllerAccessibility
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PUActivityViewControllerAccessibility

- (void)viewDidAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = PUActivityViewControllerAccessibility;
  [(PUActivityViewControllerAccessibility *)&v11 viewDidAppear:appear];
  if (AXDeviceIsTallPhoneIdiom())
  {
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    view = [v4 view];
    window = [view window];
    windowScene = [window windowScene];
    v8 = [windowScene interfaceOrientation] - 5;

    if (v8 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = [(PUActivityViewControllerAccessibility *)self safeValueForKey:@"view"];
      [v9 setAccessibilityViewIsModal:0];
    }
  }

  v10 = [(PUActivityViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v10 setAccessibilityIdentifier:@"ActivityListView"];
}

@end