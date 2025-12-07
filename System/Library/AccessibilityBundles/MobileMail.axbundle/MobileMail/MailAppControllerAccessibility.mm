@interface MailAppControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityFirstElementForFocus;
- (id)_accessibilityFirstElementForReadFromTop;
- (id)_accessibilitySplitViewControllerScannerGroupElements;
- (id)_axAccessibilityGroupForKey:(id)key fromSplitController:(id)controller;
- (id)_axVisibleViewController;
@end

@implementation MailAppControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MailAppController" hasInstanceMethod:@"masterNavigationController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MailNavigationController" isKindOfClass:@"UINavigationController"];
  [validationsCopy validateClass:@"UINavigationController" hasInstanceMethod:@"visibleViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationViewController"];
  [validationsCopy validateClass:@"MessageListViewController" hasInstanceMethod:@"conversationViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MailAppController" hasInstanceMethod:@"mostRecentMainScene" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MailMainScene" hasInstanceMethod:@"splitViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MailSplitViewController" hasInstanceMethod:@"mailboxPickerNavController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MailSplitViewController" hasInstanceMethod:@"messageListNavController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MailSplitViewController" hasInstanceMethod:@"messageDetailNavController" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySplitViewControllerScannerGroupElements
{
  objc_opt_class();
  v3 = [(MailAppControllerAccessibility *)self safeValueForKey:@"mostRecentMainScene"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [v4 safeValueForKey:@"splitViewController"];
  v6 = __UIAccessibilityCastAsClass();

  if (!AXDeviceIsPad() || [v6 displayMode] == 1 || objc_msgSend(v6, "displayMode") == 3 || !objc_msgSend(v6, "displayMode"))
  {
    v11 = 0;
  }

  else
  {
    v7 = objc_opt_new();
    if ([v6 displayMode] == 4 || objc_msgSend(v6, "displayMode") == 5 || objc_msgSend(v6, "displayMode") == 6)
    {
      v8 = [(MailAppControllerAccessibility *)self _axAccessibilityGroupForKey:@"mailboxPickerNavController" fromSplitController:v6];
      [v7 axSafelyAddObject:v8];
    }

    v9 = [(MailAppControllerAccessibility *)self _axAccessibilityGroupForKey:@"messageListNavController" fromSplitController:v6];
    [v7 axSafelyAddObject:v9];

    if ([v6 displayMode] == 4 || objc_msgSend(v6, "displayMode") == 2)
    {
      v10 = [(MailAppControllerAccessibility *)self _axAccessibilityGroupForKey:@"messageDetailNavController" fromSplitController:v6];
      [v7 axSafelyAddObject:v10];
    }

    if ([v7 count])
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)_axAccessibilityGroupForKey:(id)key fromSplitController:(id)controller
{
  v14[4] = *MEMORY[0x29EDCA608];
  keyCopy = key;
  controllerCopy = controller;
  objc_opt_class();
  v7 = [controllerCopy safeValueForKey:keyCopy];
  v8 = __UIAccessibilityCastAsClass();

  v9 = [v8 safeUIViewForKey:@"view"];
  v10 = objc_opt_new();
  [v9 _accessibilityProcessScannerGroupElementPieces:v10];
  if ([v10 count])
  {
    v13[0] = @"GroupElements";
    v13[1] = @"GroupTraits";
    v14[0] = v10;
    v14[1] = &unk_2A221BD30;
    v13[2] = @"GroupScanBehaviorTraits";
    v13[3] = @"GroupIdentifier";
    v14[2] = &unk_2A221BD48;
    v14[3] = keyCopy;
    v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_axVisibleViewController
{
  objc_opt_class();
  v3 = [(MailAppControllerAccessibility *)self safeValueForKey:@"masterNavigationController"];
  v4 = __UIAccessibilityCastAsClass();

  if (AXDeviceIsPad() && ([v4 visibleViewController], v5 = objc_claimAutoreleasedReturnValue(), NSClassFromString(&cfstr_Messagelistvie_0.isa), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0))
  {
    visibleViewController = [v4 visibleViewController];
    v7VisibleViewController = [visibleViewController safeValueForKey:@"conversationViewController"];
  }

  else
  {
    visibleViewController = [v4 navigationController];
    v7VisibleViewController = [visibleViewController visibleViewController];
  }

  v9 = v7VisibleViewController;

  return v9;
}

- (id)_accessibilityFirstElementForReadFromTop
{
  defaultVoiceOverOptions = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  v4 = [(MailAppControllerAccessibility *)self _accessibilityFirstElementForFocusWithOptions:defaultVoiceOverOptions];

  return v4;
}

- (id)_accessibilityFirstElementForFocus
{
  _axVisibleViewController = [(MailAppControllerAccessibility *)self _axVisibleViewController];
  NSClassFromString(&cfstr_Conversationvi_0.isa);
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v11 = 0, objc_opt_class(), __UIAccessibilityCastAsClass(), v4 = objc_claimAutoreleasedReturnValue(), [v4 view], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "_accessibilityViewIsVisibleIgnoringAXOverrides:stoppingBeforeContainer:", 0, 0), v5, v4, v6))
  {
    _accessibilityFirstElementForFocus = [_axVisibleViewController _accessibilityFirstElementForFocus];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MailAppControllerAccessibility;
    _accessibilityFirstElementForFocus = [(MailAppControllerAccessibility *)&v10 _accessibilityFirstElementForFocus];
  }

  v8 = _accessibilityFirstElementForFocus;

  return v8;
}

@end