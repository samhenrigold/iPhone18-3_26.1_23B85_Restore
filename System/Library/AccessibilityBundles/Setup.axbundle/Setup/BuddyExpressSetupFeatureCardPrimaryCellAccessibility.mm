@interface BuddyExpressSetupFeatureCardPrimaryCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (int64_t)_accessibilityExpandedStatus;
- (void)setExpanded:(BOOL)expanded;
@end

@implementation BuddyExpressSetupFeatureCardPrimaryCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BuddyExpressSetupFeatureCardPrimaryCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyExpressSetupFeatureCardPrimaryCell" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyExpressSetupFeatureCardPrimaryCell" hasInstanceMethod:@"setExpanded:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"BuddyExpressSetupFeatureCardPrimaryCell" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
}

- (int64_t)_accessibilityExpandedStatus
{
  if ([(BuddyExpressSetupFeatureCardPrimaryCellAccessibility *)self safeBoolForKey:@"isExpanded"])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)setExpanded:(BOOL)expanded
{
  v3.receiver = self;
  v3.super_class = BuddyExpressSetupFeatureCardPrimaryCellAccessibility;
  [(BuddyExpressSetupFeatureCardPrimaryCellAccessibility *)&v3 setExpanded:expanded];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end