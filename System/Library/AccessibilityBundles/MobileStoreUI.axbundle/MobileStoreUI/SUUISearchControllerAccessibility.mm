@interface SUUISearchControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_setSuffix:(id)suffix;
- (void)setActive:(BOOL)active;
@end

@implementation SUUISearchControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUISearchController" hasInstanceMethod:@"_setSuffix:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SUUISearchController" hasInstanceMethod:@"setActive:" withFullSignature:{"v", "B", 0}];
}

- (void)setActive:(BOOL)active
{
  v9.receiver = self;
  v9.super_class = SUUISearchControllerAccessibility;
  [(SUUISearchControllerAccessibility *)&v9 setActive:active];
  v4 = [(SUUISearchControllerAccessibility *)self safeValueForKey:@"searchBar"];
  v5 = [v4 safeValueForKey:@"searchField"];

  [v5 setAccessibilityValue:0];
  v6 = [v5 safeValueForKey:@"_clearButton"];
  [v6 setAccessibilityLabel:0];

  v7 = [v5 safeValueForKey:@"_clearButton"];
  [v7 setAccessibilityHint:0];

  v8 = [v5 safeValueForKey:@"_clearButton"];
  [v8 setAccessibilityIdentifier:@"ClearText"];
}

- (void)_setSuffix:(id)suffix
{
  v13.receiver = self;
  v13.super_class = SUUISearchControllerAccessibility;
  suffixCopy = suffix;
  [(SUUISearchControllerAccessibility *)&v13 _setSuffix:suffixCopy];
  v5 = [(SUUISearchControllerAccessibility *)self safeValueForKey:@"searchBar", v13.receiver, v13.super_class];
  v6 = [v5 safeValueForKey:@"searchField"];

  v7 = [suffixCopy length];
  if (v7)
  {
    v8 = [v6 safeValueForKey:@"_clearButton"];
    v9 = accessibilityLocalizedString(@"clear.search.results.button");
    [v8 setAccessibilityLabel:v9];

    v10 = [v6 safeValueForKey:@"_clearButton"];
    v11 = accessibilityLocalizedString(@"clear.search.results.hint");
    [v10 setAccessibilityHint:v11];
  }

  v12 = [v6 safeValueForKey:@"_clearButton"];
  [v12 setAccessibilityIdentifier:@"ClearText"];
}

@end