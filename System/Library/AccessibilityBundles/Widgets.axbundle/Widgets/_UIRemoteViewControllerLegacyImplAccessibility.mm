@interface _UIRemoteViewControllerLegacyImplAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_wantsKeyboardEnvironmentEventDeferringForFocusOnScreen:(id)screen;
@end

@implementation _UIRemoteViewControllerLegacyImplAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_WGWidgetRemoteViewController" isKindOfClass:@"_UIRemoteViewController"];
  [validationsCopy validateClass:@"_UIRemoteViewControllerLegacyImpl" hasInstanceMethod:@"_wantsKeyboardEnvironmentEventDeferringForFocusOnScreen:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"_UIRemoteViewControllerLegacyImpl" conformsToProtocol:@"_UIRemoteViewControllerImpl"];
  [validationsCopy validateProtocol:@"_UIRemoteViewControllerImpl" hasRequiredInstanceMethod:@"_owningRemoteViewController"];
}

- (BOOL)_wantsKeyboardEnvironmentEventDeferringForFocusOnScreen:(id)screen
{
  screenCopy = screen;
  v5 = [(_UIRemoteViewControllerLegacyImplAccessibility *)self safeValueForKey:@"_owningRemoteViewController"];
  MEMORY[0x29ED42A50](@"_WGWidgetRemoteViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass & 1) != 0 && (v13 = 0, objc_opt_class(), __UIAccessibilityCastAsClass(), v7 = objc_claimAutoreleasedReturnValue(), [v7 view], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "_accessibilityIsFKARunningForFocusItem"), v8, v7, (v9))
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _UIRemoteViewControllerLegacyImplAccessibility;
    v10 = [(_UIRemoteViewControllerLegacyImplAccessibility *)&v12 _wantsKeyboardEnvironmentEventDeferringForFocusOnScreen:screenCopy];
  }

  return v10;
}

@end