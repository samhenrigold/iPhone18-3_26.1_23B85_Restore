@interface MobileMail_UISwipeHandlerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_swipeRecognizerEnded:(id)ended wasCancelled:(BOOL)cancelled;
@end

@implementation MobileMail_UISwipeHandlerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_UISwipeHandler" hasInstanceMethod:@"_swipeRecognizerEnded: wasCancelled:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"_UISwipeHandler" hasInstanceMethod:@"swipeController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UISwipeActionController" hasInstanceMethod:@"swipeActionHost" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UISwipeActionController" hasInstanceMethod:@"swipedIndexPath" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"_accessibilityClearChildren" withFullSignature:{"v", 0}];
}

- (void)_swipeRecognizerEnded:(id)ended wasCancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  endedCopy = ended;
  v7 = [(MobileMail_UISwipeHandlerAccessibility *)self safeValueForKey:@"swipeController"];
  v8 = [v7 safeValueForKey:@"swipeActionHost"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 safeValueForKey:@"swipedIndexPath"];
    if (v9)
    {
      v14 = 0;
      v10 = [v8 cellForRowAtIndexPath:v9];
      v11 = __UIAccessibilitySafeClass();

      v12 = [v11 safeValueForKey:@"_accessibilityClearChildren"];
    }
  }

  v13.receiver = self;
  v13.super_class = MobileMail_UISwipeHandlerAccessibility;
  [(MobileMail_UISwipeHandlerAccessibility *)&v13 _swipeRecognizerEnded:endedCopy wasCancelled:cancelledCopy];
}

@end