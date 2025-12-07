@interface WFCompactPlatterPresentationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)presentationTransitionDidEnd:(BOOL)end;
@end

@implementation WFCompactPlatterPresentationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WFCompactPlatterPresentationController" hasInstanceVariable:@"_containerView" withType:"UIView"];
  [validationsCopy validateClass:@"WFCompactPlatterView"];
  [validationsCopy validateClass:@"WFCompactPlatterView" hasInstanceMethod:@"primaryLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFCompactPlatterPresentationController" hasInstanceMethod:@"presentationTransitionDidEnd:" withFullSignature:{"v", "B", 0}];
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  v5 = [(WFCompactPlatterPresentationControllerAccessibility *)self safeValueForKey:@"containerView"];
  v6 = [v5 _accessibilityFindSubviewDescendant:&__block_literal_global_0];

  v7 = [v6 safeValueForKey:@"primaryLabel"];
  v10 = MEMORY[0x29EDCA5F8];
  v11 = 3221225472;
  v12 = __84__WFCompactPlatterPresentationControllerAccessibility_presentationTransitionDidEnd___block_invoke_2;
  v13 = &unk_29F323240;
  v14 = v7;
  v8 = v7;
  AXPerformBlockOnMainThreadAfterDelay();
  v9.receiver = self;
  v9.super_class = WFCompactPlatterPresentationControllerAccessibility;
  [(WFCompactPlatterPresentationControllerAccessibility *)&v9 presentationTransitionDidEnd:endCopy];
}

uint64_t __84__WFCompactPlatterPresentationControllerAccessibility_presentationTransitionDidEnd___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Wfcompactplatt_2.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end