@interface _GKBubbleFlowPseudoModalViewControllerAccessibility
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _GKBubbleFlowPseudoModalViewControllerAccessibility

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = _GKBubbleFlowPseudoModalViewControllerAccessibility;
  [(_GKBubbleFlowPseudoModalViewControllerAccessibility *)&v5 viewWillAppear:appear];
  v4 = [(_GKBubbleFlowPseudoModalViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v4 setAccessibilityViewIsModal:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = _GKBubbleFlowPseudoModalViewControllerAccessibility;
  [(_GKBubbleFlowPseudoModalViewControllerAccessibility *)&v5 viewWillDisappear:disappear];
  v4 = [(_GKBubbleFlowPseudoModalViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v4 setAccessibilityViewIsModal:0];
}

@end