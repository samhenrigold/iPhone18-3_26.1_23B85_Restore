@interface MFComposeSubjectViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (MFComposeSubjectViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setNotifyOptionSelected:(BOOL)selected;
@end

@implementation MFComposeSubjectViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFComposeSubjectView" hasInstanceMethod:@"setNotifyOptionSelected:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"MFComposeSubjectView" hasInstanceVariable:@"_notifyButton" withType:"MFConfirmationButton"];
  [validationsCopy validateClass:@"MFComposeSubjectView" hasInstanceVariable:@"_textView" withType:"UITextView"];
  [validationsCopy validateClass:@"MFComposeSubjectView" isKindOfClass:@"CNComposeHeaderView"];
  [validationsCopy validateClass:@"CNComposeHeaderView" hasInstanceMethod:@"labelView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = MFComposeSubjectViewAccessibility;
  [(MFComposeSubjectViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(MFComposeSubjectViewAccessibility *)self safeValueForKey:@"_textView"];
  [v3 setAccessibilityIdentifier:@"subjectField"];

  v4 = [(MFComposeSubjectViewAccessibility *)self safeValueForKey:@"_notifyButton"];
  v5 = accessibilityLocalizedString(@"notifyme.label");
  [v4 setAccessibilityLabel:v5];

  v6 = [(MFComposeSubjectViewAccessibility *)self safeValueForKey:@"labelView"];
  [v6 setIsAccessibilityElement:0];
}

- (MFComposeSubjectViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = MFComposeSubjectViewAccessibility;
  v3 = [(MFComposeSubjectViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(MFComposeSubjectViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)setNotifyOptionSelected:(BOOL)selected
{
  selectedCopy = selected;
  v8.receiver = self;
  v8.super_class = MFComposeSubjectViewAccessibility;
  [(MFComposeSubjectViewAccessibility *)&v8 setNotifyOptionSelected:?];
  v5 = *MEMORY[0x29EDC7F70];
  if (selectedCopy)
  {
    v6 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(MFComposeSubjectViewAccessibility *)self safeValueForKey:@"_notifyButton"];
  [v7 setAccessibilityTraits:v6 | v5];
}

@end