@interface SFScreenTimeOverlayViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axShouldHideWebView;
- (id)showBlockingViewControllerForURL:(id)l withPolicy:(int64_t)policy animated:(BOOL)animated;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axHideWebView:(BOOL)view;
- (void)hideBlockingViewControllerWithCompletionHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SFScreenTimeOverlayViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFScreenTimeOverlayViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SFScreenTimeOverlayViewController" hasInstanceMethod:@"showBlockingViewControllerForURL:withPolicy:animated:" withFullSignature:{"@", "q", "B", 0}];
  [validationsCopy validateClass:@"SFScreenTimeOverlayViewController" hasInstanceMethod:@"hideBlockingViewControllerWithCompletionHandler:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"SFScreenTimeOverlayViewController" hasInstanceVariable:@"_blockingViewController" withType:"STBlockingViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SFScreenTimeOverlayViewControllerAccessibility;
  [(SFScreenTimeOverlayViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SFScreenTimeOverlayViewControllerAccessibility *)self _axHideWebView:[(SFScreenTimeOverlayViewControllerAccessibility *)self _axShouldHideWebView]];
}

- (BOOL)_axShouldHideWebView
{
  objc_opt_class();
  v3 = [(SFScreenTimeOverlayViewControllerAccessibility *)self safeValueForKey:@"_blockingViewController"];
  v4 = __UIAccessibilityCastAsClass();

  view = [v4 view];
  window = [view window];
  LOBYTE(v3) = window != 0;

  return v3;
}

- (void)_axHideWebView:(BOOL)view
{
  viewCopy = view;
  v19 = *MEMORY[0x29EDCA608];
  v17 = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  view = [v4 view];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  superview = [view superview];
  subviews = [superview subviews];

  v8 = [subviews countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(subviews);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 _accessibilityHasDescendantOfType:MEMORY[0x29C2E0540](@"WKWebView")] && objc_msgSend(v12, "accessibilityElementsHidden") != viewCopy)
        {
          [v12 setAccessibilityElementsHidden:viewCopy];
          AXPerformBlockOnMainThreadAfterDelay();
        }
      }

      v9 = [subviews countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SFScreenTimeOverlayViewControllerAccessibility;
  [(SFScreenTimeOverlayViewControllerAccessibility *)&v4 viewDidAppear:appear];
  [(SFScreenTimeOverlayViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SFScreenTimeOverlayViewControllerAccessibility;
  [(SFScreenTimeOverlayViewControllerAccessibility *)&v4 viewWillDisappear:disappear];
  [(SFScreenTimeOverlayViewControllerAccessibility *)self _axHideWebView:0];
}

- (id)showBlockingViewControllerForURL:(id)l withPolicy:(int64_t)policy animated:(BOOL)animated
{
  v8.receiver = self;
  v8.super_class = SFScreenTimeOverlayViewControllerAccessibility;
  v6 = [(SFScreenTimeOverlayViewControllerAccessibility *)&v8 showBlockingViewControllerForURL:l withPolicy:policy animated:animated];
  [(SFScreenTimeOverlayViewControllerAccessibility *)self _axHideWebView:1];

  return v6;
}

- (void)hideBlockingViewControllerWithCompletionHandler:(id)handler
{
  v4.receiver = self;
  v4.super_class = SFScreenTimeOverlayViewControllerAccessibility;
  [(SFScreenTimeOverlayViewControllerAccessibility *)&v4 hideBlockingViewControllerWithCompletionHandler:handler];
  [(SFScreenTimeOverlayViewControllerAccessibility *)self _axHideWebView:0];
}

@end