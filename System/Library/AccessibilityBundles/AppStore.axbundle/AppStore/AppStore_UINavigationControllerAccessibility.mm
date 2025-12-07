@interface AppStore_UINavigationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGSize)_navigationBarSizeForViewController:(id)controller proposedHeight:(double)height allowRubberBandStretch:(BOOL)stretch;
@end

@implementation AppStore_UINavigationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UINavigationController" hasInstanceMethod:@"_navigationBarSizeForViewController:proposedHeight:allowRubberBandStretch:" withFullSignature:{"{CGSize=dd}", "@", "d", "B", 0}];
  [validationsCopy validateClass:@"UINavigationController" hasInstanceMethod:@"_heightRangeOfTopViews" withFullSignature:{"{?=ddd}", 0}];
}

- (CGSize)_navigationBarSizeForViewController:(id)controller proposedHeight:(double)height allowRubberBandStretch:(BOOL)stretch
{
  stretchCopy = stretch;
  controllerCopy = controller;
  if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning())
  {
    goto LABEL_9;
  }

  objc_opt_class();
  v11 = [(AppStore_UINavigationControllerAccessibility *)self safeValueForKey:@"_heightRangeOfTopViews"];
  v12 = __UIAccessibilityCastAsClass();

  v35 = 0;
  v36 = &v35;
  v37 = 0x3810000000;
  v38 = &unk_29BB5D23E;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  if (!v12)
  {
    goto LABEL_8;
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v24 = MEMORY[0x29EDCA5F8];
  v25 = 3221225472;
  v26 = __122__AppStore_UINavigationControllerAccessibility__navigationBarSizeForViewController_proposedHeight_allowRubberBandStretch___block_invoke;
  v27 = &unk_29F29F238;
  v13 = v12;
  v28 = v13;
  v29 = &v35;
  v30 = &v31;
  AXPerformSafeBlock();
  v14 = *(v32 + 24);
  if (v14 == 1)
  {
    v15 = v36[6];
    v23.receiver = self;
    v23.super_class = AppStore_UINavigationControllerAccessibility;
    [(AppStore_UINavigationControllerAccessibility *)&v23 _navigationBarSizeForViewController:controllerCopy proposedHeight:stretchCopy allowRubberBandStretch:v15];
    v5 = v16;
    v6 = v17;
  }

  _Block_object_dispose(&v31, 8);
  if ((v14 & 1) == 0)
  {
LABEL_8:
    _Block_object_dispose(&v35, 8);

LABEL_9:
    v22.receiver = self;
    v22.super_class = AppStore_UINavigationControllerAccessibility;
    [(AppStore_UINavigationControllerAccessibility *)&v22 _navigationBarSizeForViewController:controllerCopy proposedHeight:stretchCopy allowRubberBandStretch:height];
    v5 = v18;
    v6 = v19;
    goto LABEL_10;
  }

  _Block_object_dispose(&v35, 8);

LABEL_10:
  v20 = v5;
  v21 = v6;
  result.height = v21;
  result.width = v20;
  return result;
}

@end