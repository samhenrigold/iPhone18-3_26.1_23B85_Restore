@interface BTSFitTestControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)focusHeader;
- (void)focusPlayButton;
- (void)inEarStatusChanged:(id)changed;
- (void)sealValueChanged:(id)changed;
- (void)startFitTest;
- (void)updateFocus;
- (void)viewWillAppear;
@end

@implementation BTSFitTestControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [validationsCopy validateClass:"@" hasInstanceMethod:0 withFullSignature:?];
  [validationsCopy validateClass:"@" hasInstanceMethod:0 withFullSignature:?];
  [validationsCopy validateClass:? hasInstanceVariable:? withType:?];
  [validationsCopy validateClass:? hasInstanceVariable:? withType:?];
  [validationsCopy validateClass:? hasInstanceVariable:? withType:?];
  [validationsCopy validateClass:? isKindOfClass:?];
  [validationsCopy validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [validationsCopy validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [validationsCopy validateClass:? isKindOfClass:?];
  [validationsCopy validateClass:? hasInstanceVariable:? withType:?];
  [validationsCopy validateClass:? hasInstanceVariable:? withType:?];
  [validationsCopy validateClass:? hasInstanceVariable:? withType:?];
  [validationsCopy validateClass:? isKindOfClass:?];
  [validationsCopy validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [validationsCopy validateClass:? hasInstanceVariable:? withType:?];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v19.receiver = self;
  v19.super_class = BTSFitTestControllerAccessibility;
  [(BTSFitTestControllerAccessibility *)&v19 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  objc_opt_class();
  v3 = [(BTSFitTestControllerAccessibility *)self safeValueForKey:?];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(BTSFitTestControllerAccessibility *)self safeValueForKey:?];
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v7 = [(BTSFitTestControllerAccessibility *)self safeValueForKey:?];
  v8 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v9 = [(BTSFitTestControllerAccessibility *)self safeValueForKey:?];
  v10 = __UIAccessibilityCastAsClass();

  v17 = 0;
  objc_opt_class();
  v11 = [v10 safeValueForKey:?];
  v12 = __UIAccessibilityCastAsClass();

  v15[1] = MEMORY[0x29EDCA5F8];
  v15[2] = 3221225472;
  v15[3] = __79__BTSFitTestControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v15[4] = &unk_29F2C2048;
  objc_copyWeak(&v16, &location);
  [v4 _setAccessibilityTraitsBlock:?];
  objc_copyWeak(v15, &location);
  [v4 _setAccessibilityLabelBlock:?];
  [v12 setIsAccessibilityElement:?];
  [v12 setAccessibilityTraits:?];
  [v12 _accessibilitySetUserDefinedMediaAnalysisOptions:?];
  v13 = v6;
  v14 = v8;
  [v12 _setAccessibilityLabelBlock:?];

  objc_destroyWeak(v15);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
}

uint64_t __79__BTSFitTestControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7F70];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeBoolForKey:?];

  v4 = *MEMORY[0x29EDC7FA8];
  if (v3)
  {
    v4 = 0;
  }

  return v4 | v1;
}

id __79__BTSFitTestControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:?];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 titleLabel];
  v6 = [v5 text];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [v4 titleLabel];
    v9 = [v8 text];
  }

  else
  {
    v8 = accessibilityLocalizedStringForB298(@"fit.test.button.play");
    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 safeBoolForKey:?];

    if (!v11)
    {
      goto LABEL_6;
    }

    v9 = accessibilityLocalizedStringForB298(@"fit.test.button.in.progress");
  }

  v12 = v9;

  v8 = v12;
LABEL_6:

  return v8;
}

id __79__BTSFitTestControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_367(id *a1)
{
  objc_opt_class();
  v2 = [a1[4] safeValueForKey:?];
  v3 = __UIAccessibilityCastAsClass();

  LODWORD(v2) = [v3 productId];
  if (v2 == 8210)
  {
    v4 = accessibilityLocalizedStringForB298(@"Beats494");
  }

  else
  {
    v5 = accessibilityLocalizedStringForB298(@"left.airpod");
    v6 = accessibilityLocalizedStringForB298(@"right.airpod");
    v7 = [a1[5] accessibilityLabel];
    v9 = [a1[6] accessibilityLabel];
    v4 = __UIAXStringForVariables();
  }

  return v4;
}

- (void)updateFocus
{
  v3 = [(BTSFitTestControllerAccessibility *)self safeBoolForKey:?];
  if (![(BTSFitTestControllerAccessibility *)self safeBoolForKey:?]|| (v3 & 1) != 0)
  {

    [(BTSFitTestControllerAccessibility *)self focusHeader];
  }

  else
  {

    [(BTSFitTestControllerAccessibility *)self focusPlayButton];
  }
}

- (void)focusPlayButton
{
  objc_opt_class();
  v3 = [(BTSFitTestControllerAccessibility *)self safeValueForKey:?];
  v4 = __UIAccessibilityCastAsClass();

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], v4);
}

- (void)focusHeader
{
  v2 = [(BTSFitTestControllerAccessibility *)self safeValueForKey:?];
  v3 = [v2 safeValueForKey:?];
  objc_opt_class();
  v4 = [v3 safeValueForKey:?];
  v5 = __UIAccessibilityCastAsClass();

  if ([v5 accessibilityElementIsFocused])
  {
    text = [v5 text];
    UIAccessibilitySpeak();
  }

  else
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], v5);
  }
}

- (void)viewWillAppear
{
  v3.receiver = self;
  v3.super_class = BTSFitTestControllerAccessibility;
  [(BTSFitTestControllerAccessibility *)&v3 viewWillAppear];
  [(BTSFitTestControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)startFitTest
{
  v3.receiver = self;
  v3.super_class = BTSFitTestControllerAccessibility;
  [(BTSFitTestControllerAccessibility *)&v3 startFitTest];
  [(BTSFitTestControllerAccessibility *)self updateFocus];
}

- (void)inEarStatusChanged:(id)changed
{
  v4.receiver = self;
  v4.super_class = BTSFitTestControllerAccessibility;
  [(BTSFitTestControllerAccessibility *)&v4 inEarStatusChanged:changed];
  [(BTSFitTestControllerAccessibility *)self updateFocus];
}

- (void)sealValueChanged:(id)changed
{
  v4.receiver = self;
  v4.super_class = BTSFitTestControllerAccessibility;
  [(BTSFitTestControllerAccessibility *)&v4 sealValueChanged:changed];
  [(BTSFitTestControllerAccessibility *)self focusHeader];
}

@end