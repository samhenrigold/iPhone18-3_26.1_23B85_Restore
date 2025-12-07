@interface RKEntityInteractionAccessibilityWrapperAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)didFire;
@end

@implementation RKEntityInteractionAccessibilityWrapperAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"RealityFoundation.RKEntityInteractionAccessibilityWrapper" hasInstanceMethod:@"didFire" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"RealityFoundation.RKEntityInteractionAccessibilityWrapper" hasInstanceMethod:@"accessibilityDescription" withFullSignature:{"@", 0}];
}

- (void)didFire
{
  v4.receiver = self;
  v4.super_class = RKEntityInteractionAccessibilityWrapperAccessibility;
  [(RKEntityInteractionAccessibilityWrapperAccessibility *)&v4 didFire];
  v3 = [(RKEntityInteractionAccessibilityWrapperAccessibility *)self safeStringForKey:@"accessibilityDescription"];
  [v3 _accessibilityEnumerateDelayedDescriptionsWithBlock:&__block_literal_global_0];
}

void __63__RKEntityInteractionAccessibilityWrapperAccessibility_didFire__block_invoke(double a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v3 = v4;
  AXPerformBlockOnMainThreadAfterDelay();
}

uint64_t __63__RKEntityInteractionAccessibilityWrapperAccessibility_didFire__block_invoke_2(uint64_t a1)
{
  UIAccessibilitySpeakOrQueueIfNeeded();

  return AXPerformBlockOnMainThreadAfterDelay();
}

@end