@interface SFDialogControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (int64_t)_presentDialog:(id)dialog forWebProcessID:(int)d withAdditionalAnimations:(id)animations;
- (void)_dismissDialogWithAdditionalAnimations:(id)animations;
@end

@implementation SFDialogControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFDialogController" hasInstanceMethod:@"_presentDialog:forWebProcessID:withAdditionalAnimations:" withFullSignature:{"q", "@", "i", "@?", 0}];
  [validationsCopy validateClass:@"SFDialogController" hasInstanceMethod:@"_dismissDialogWithAdditionalAnimations:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"SFDialogController" hasInstanceVariable:@"_dialogView" withType:"SFDialogView"];
  [validationsCopy validateClass:@"SFDialogView" hasInstanceVariable:@"_contentView" withType:"SFDialogContentView"];
  [validationsCopy validateClass:@"SFDialogContentView" hasInstanceVariable:@"_messageTextView" withType:"SFDialogTextView"];
  [validationsCopy validateClass:@"SFDialogTextView" hasInstanceVariable:@"_textView" withType:"UITextView"];
}

- (int64_t)_presentDialog:(id)dialog forWebProcessID:(int)d withAdditionalAnimations:(id)animations
{
  v14.receiver = self;
  v14.super_class = SFDialogControllerAccessibility;
  v6 = [(SFDialogControllerAccessibility *)&v14 _presentDialog:dialog forWebProcessID:*&d withAdditionalAnimations:animations];
  if (!v6)
  {
    v7 = [(SFDialogControllerAccessibility *)self safeValueForKey:@"_dialogView"];
    [v7 setAccessibilityViewIsModal:1];

    v8 = [(SFDialogControllerAccessibility *)self safeValueForKey:@"_dialogView"];
    v9 = [v8 safeValueForKey:@"_contentView"];
    v10 = [v9 safeValueForKey:@"_messageTextView"];
    v11 = [v10 safeValueForKey:@"_textView"];
    accessibilityValue = [v11 accessibilityValue];

    UIAccessibilityPostNotification(0x3EEu, accessibilityValue);
  }

  return v6;
}

- (void)_dismissDialogWithAdditionalAnimations:(id)animations
{
  v5.receiver = self;
  v5.super_class = SFDialogControllerAccessibility;
  [(SFDialogControllerAccessibility *)&v5 _dismissDialogWithAdditionalAnimations:animations];
  v4 = [(SFDialogControllerAccessibility *)self safeValueForKey:@"_dialogView"];
  [v4 setAccessibilityViewIsModal:0];

  AXPerformBlockOnMainThreadAfterDelay();
}

@end