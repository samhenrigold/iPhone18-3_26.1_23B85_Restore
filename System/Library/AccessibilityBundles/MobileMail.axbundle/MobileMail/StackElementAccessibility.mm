@interface StackElementAccessibility
- (id)itemViewCreateIfNeeded:(BOOL)needed;
@end

@implementation StackElementAccessibility

- (id)itemViewCreateIfNeeded:(BOOL)needed
{
  v11.receiver = self;
  v11.super_class = StackElementAccessibility;
  v4 = [(StackElementAccessibility *)&v11 itemViewCreateIfNeeded:needed];
  v5 = accessibilityLocalizedString(@"message.to.be.moved.label");
  v6 = [(StackElementAccessibility *)self safeValueForKey:@"item"];
  NSClassFromString(&cfstr_Mfmailmessage.isa);
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 safeValueForKeyPath:@"subject.subjectWithoutPrefix"];
  }

  else
  {
    v7 = 0;
  }

  v8 = __UIAXStringForVariables();
  [v4 setAccessibilityLabel:{v8, v7, @"__AXStringForVariablesSentinel"}];

  v9 = accessibilityLocalizedString(@"message.to.be.moved.hint");
  [v4 setAccessibilityHint:v9];

  [v4 setIsAccessibilityElement:1];

  return v4;
}

@end