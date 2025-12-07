@interface SBRootSceneWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SBRootSceneWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBRootSceneWindow" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"hasOpenFolder" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIconController"];
  [validationsCopy validateClass:@"SBIconController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconController" hasInstanceMethod:@"iconManager" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SBRootSceneWindowAccessibility;
  [(SBRootSceneWindowAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBRootSceneWindowAccessibility *)self safeArrayForKey:@"subviews"];
  firstObject = [v3 firstObject];
  [firstObject _setAccessibilityElementsHiddenBlock:&__block_literal_global_11];
}

uint64_t __76__SBRootSceneWindowAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = AXSBHIconManagerFromSharedIconController(a1, a2);
  v4 = [v3 safeBoolForKey:@"isEditing"];
  v6 = v4;
  if (v4)
  {
    v2 = +[AXSpringBoardGlue sharedInstance];
    v4 = [v2 _axIsAppLibraryOrTodayViewPresent];
    if (v4)
    {
      v7 = 1;
LABEL_5:

      goto LABEL_6;
    }
  }

  v8 = AXSBHIconManagerFromSharedIconController(v4, v5);
  v7 = [v8 safeBoolForKey:@"hasOpenFolder"];

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v7;
}

@end