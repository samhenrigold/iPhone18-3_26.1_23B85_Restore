@interface NTKFaceLibraryViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityShouldSwipeBetweenPagesForPageScrollViewController:(id)controller;
- (BOOL)_axAddPageViewControllerIsActive;
- (BOOL)_axCanUseOverlayButton:(id)button;
- (BOOL)_axStartEditing;
- (id)_accessibilityCustomActionsForPageAtIndex:(unint64_t)index forPageScrollViewController:(id)controller;
- (id)_accessibilityHintForPageAtIndex:(unint64_t)index forPageScrollViewController:(id)controller;
- (id)_accessibilityLabelForPageAtIndex:(unint64_t)index forPageScrollViewController:(id)controller;
- (id)_accessibilityValueForPageAtIndex:(unint64_t)index forPageScrollViewController:(id)controller;
- (void)_deactivateAddFaceAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)_dismissSwitcherAnimated:(BOOL)animated withIndex:(unint64_t)index remainFrozen:(BOOL)frozen completion:(id)completion;
- (void)_scrollToAndSetupFaceAtIndex:(unint64_t)index updateLibraryFaceCollection:(BOOL)collection;
- (void)endInteractiveLibraryPresentationLatched:(BOOL)latched;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NTKFaceLibraryViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKFaceLibraryViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"NTKFaceCollection" hasInstanceMethod:@"faceAtIndex:" withFullSignature:{"@", "Q", 0}];
  [validationsCopy validateClass:@"NTKFaceLibraryViewController" hasInstanceMethod:@"_indexOfAddPage" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"NTKFaceLibraryOverlayView" hasInstanceMethod:@"cancelButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKFaceLibraryOverlayView" hasInstanceMethod:@"editButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKFaceLibraryViewController" hasInstanceMethod:@"_deactivateAddFaceAnimated: withCompletion:" withFullSignature:{"v", "B", "@?", 0}];
  [validationsCopy validateClass:@"NTKFaceLibraryViewController" hasInstanceMethod:@"_startFaceEditing" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"NTKFaceViewController" hasInstanceMethod:@"face" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKFaceLibraryViewController" hasInstanceVariable:@"_libraryFaceCollection" withType:"NTKFaceCollection"];
  [validationsCopy validateClass:@"NTKFaceLibraryViewController" hasInstanceVariable:@"_addableFaceCollection" withType:"NTKFaceCollection"];
  [validationsCopy validateClass:@"NTKFaceLibraryViewController" hasInstanceVariable:@"_switcherController" withType:"NTKSwitcherViewController"];
  [validationsCopy validateClass:@"NTKFaceLibraryViewController" hasInstanceVariable:@"_libraryOverlayView" withType:"NTKFaceLibraryOverlayView"];
  [validationsCopy validateClass:@"NTKFaceLibraryViewController" hasInstanceVariable:@"_selectedFaceViewController" withType:"NTKFaceViewController"];
  [validationsCopy validateClass:@"NTKFaceLibraryViewController" hasInstanceVariable:@"_presented" withType:"B"];
  [validationsCopy validateClass:@"NTKFaceLibraryViewController" hasInstanceVariable:@"_isFaceEditing" withType:"B"];
  [validationsCopy validateClass:@"NTKFaceLibraryViewController" hasInstanceVariable:@"_addFaceViewController" withType:"NTKAddPageViewController"];
  [validationsCopy validateClass:@"NTKAddPageViewController" hasInstanceMethod:@"currentPageIndex" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"NTKAddPageViewController" hasInstanceMethod:@"isActive" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"NTKFaceLibraryViewController" hasInstanceMethod:@"_titleForAddFacePageAtIndex:" withFullSignature:{"@", "Q", 0}];
  [validationsCopy validateClass:@"NTKFaceLibraryViewController" hasInstanceMethod:@"endInteractiveLibraryPresentationLatched:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"NTKFaceLibraryViewController" hasInstanceMethod:@"_scrollToAndSetupFaceAtIndex: updateLibraryFaceCollection:" withFullSignature:{"v", "Q", "B", 0}];
  [validationsCopy validateClass:@"NTKFaceLibraryViewController" hasInstanceMethod:@"_dismissSwitcherAnimated:withIndex:remainFrozen:completion:" withFullSignature:{"v", "B", "Q", "B", "@?", 0}];
  [validationsCopy validateClass:@"NTKFace"];
  [validationsCopy validateClass:@"NTKFace" hasInstanceMethod:@"faceStyle" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"NTKFace" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKPageScrollViewController"];
  [validationsCopy validateClass:@"NTKPageScrollViewController" hasInstanceMethod:@"scrollEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"NTKPageScrollViewController" hasInstanceMethod:@"currentPageIndex" withFullSignature:{"Q", 0}];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = NTKFaceLibraryViewControllerAccessibility;
  [(NTKFaceLibraryViewControllerAccessibility *)&v3 viewWillAppear:appear];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = [(NTKFaceLibraryViewControllerAccessibility *)self safeBoolForKey:@"_presented"];
  v6.receiver = self;
  v6.super_class = NTKFaceLibraryViewControllerAccessibility;
  [(NTKFaceLibraryViewControllerAccessibility *)&v6 viewDidDisappear:disappearCopy];
  if (v5)
  {
    UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
  }
}

- (BOOL)_accessibilityShouldSwipeBetweenPagesForPageScrollViewController:(id)controller
{
  controllerCopy = controller;
  if (([(NTKFaceLibraryViewControllerAccessibility *)self safeBoolForKey:@"_isFaceEditing"]& 1) != 0 || ![(NTKFaceLibraryViewControllerAccessibility *)self safeBoolForKey:@"_presented"])
  {
    v5 = 0;
  }

  else
  {
    v5 = [controllerCopy safeBoolForKey:@"scrollEnabled"];
  }

  return v5;
}

- (id)_accessibilityValueForPageAtIndex:(unint64_t)index forPageScrollViewController:(id)controller
{
  controllerCopy = controller;
  v7 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_libraryFaceCollection"];
  v8 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_switcherController"];

  if (v8 == controllerCopy && [(NTKFaceLibraryViewControllerAccessibility *)self safeUnsignedIntegerForKey:@"_indexOfAddPage"]!= index)
  {
    v20 = 0;
    objc_opt_class();
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__2;
    v18 = __Block_byref_object_dispose__2;
    v19 = 0;
    v13 = v7;
    AXPerformSafeBlock();
    v12 = v15[5];

    _Block_object_dispose(&v14, 8);
    v9 = __UIAccessibilityCastAsSafeCategory();

    if (v20 == 1)
    {
      abort();
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = AXNTKFaceComplicationOverviewDescription(v9);

  return v10;
}

uint64_t __107__NTKFaceLibraryViewControllerAccessibility__accessibilityValueForPageAtIndex_forPageScrollViewController___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) faceAtIndex:*(a1 + 48)];

  return _objc_release_x1();
}

- (id)_accessibilityLabelForPageAtIndex:(unint64_t)index forPageScrollViewController:(id)controller
{
  controllerCopy = controller;
  v7 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_libraryFaceCollection"];
  v8 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_switcherController"];

  if (v8 != controllerCopy)
  {
    [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_addableFaceCollection"];
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__2;
    v26 = __Block_byref_object_dispose__2;
    v9 = v27 = 0;
    AXPerformSafeBlock();
    v10 = v23[5];

    _Block_object_dispose(&v22, 8);
    if (v10)
    {
      v11 = [v10 safeStringForKey:@"name"];
      localizedLowercaseString = [v11 localizedLowercaseString];
    }

    else
    {
      localizedLowercaseString = 0;
    }

    goto LABEL_8;
  }

  if ([(NTKFaceLibraryViewControllerAccessibility *)self safeUnsignedIntegerForKey:@"_indexOfAddPage"]== index)
  {
    localizedLowercaseString = accessibilityLocalizedString(@"add.new.face");
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v28 = 0;
  objc_opt_class();
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  v21 = v7;
  AXPerformSafeBlock();
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);
  v13 = __UIAccessibilityCastAsSafeCategory();

  if (v28 == 1)
  {
    abort();
  }

  if (v13)
  {
    v16 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_libraryOverlayView"];
    v17 = [v16 safeValueForKey:@"editButton"];
    v18 = [v13 safeStringForKey:@"name"];
    localizedLowercaseString2 = [v18 localizedLowercaseString];

    if ([(NTKFaceLibraryViewControllerAccessibility *)self _axCanUseOverlayButton:v17])
    {
      v20 = accessibilityLocalizedString(@"face.customizable.hint");
      localizedLowercaseString = __UIAXStringForVariables();
    }

    else
    {
      localizedLowercaseString = localizedLowercaseString2;
    }
  }

  else
  {
    localizedLowercaseString = 0;
  }

LABEL_9:

  return localizedLowercaseString;
}

uint64_t __107__NTKFaceLibraryViewControllerAccessibility__accessibilityLabelForPageAtIndex_forPageScrollViewController___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) faceAtIndex:*(a1 + 48)];

  return _objc_release_x1();
}

uint64_t __107__NTKFaceLibraryViewControllerAccessibility__accessibilityLabelForPageAtIndex_forPageScrollViewController___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) faceAtIndex:*(a1 + 48)];

  return _objc_release_x1();
}

- (id)_accessibilityHintForPageAtIndex:(unint64_t)index forPageScrollViewController:(id)controller
{
  controllerCopy = controller;
  v7 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_switcherController"];

  if (v7 == controllerCopy)
  {
    if ([(NTKFaceLibraryViewControllerAccessibility *)self safeUnsignedIntegerForKey:@"_indexOfAddPage"]== index)
    {
      v8 = accessibilityLocalizedString(@"add.face.hint");
    }

    else
    {
      v9 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_libraryFaceCollection"];
      v22 = 0;
      objc_opt_class();
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__2;
      v20 = __Block_byref_object_dispose__2;
      v21 = 0;
      v10 = v9;
      AXPerformSafeBlock();
      v11 = v17[5];

      _Block_object_dispose(&v16, 8);
      v12 = __UIAccessibilityCastAsSafeCategory();

      if (v22 == 1)
      {
        abort();
      }

      _accessibilityFaceStyleDescription = [v12 _accessibilityFaceStyleDescription];
      v15 = accessibilityLocalizedString(@"face.hint");
      v8 = __UIAXStringForVariables();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __106__NTKFaceLibraryViewControllerAccessibility__accessibilityHintForPageAtIndex_forPageScrollViewController___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) faceAtIndex:*(a1 + 48)];

  return _objc_release_x1();
}

- (BOOL)_axCanUseOverlayButton:(id)button
{
  buttonCopy = button;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  if ([v4 _accessibilityViewIsVisible])
  {
    isEnabled = [v4 isEnabled];
  }

  else
  {
    isEnabled = 0;
  }

  return isEnabled;
}

- (BOOL)_axStartEditing
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

id __60__NTKFaceLibraryViewControllerAccessibility__axStartEditing__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _startFaceEditing];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (BOOL)_axAddPageViewControllerIsActive
{
  v3 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_switcherController"];
  v4 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_addFaceViewController"];
  v5 = [v3 safeUnsignedIntegerForKey:@"currentPageIndex"];
  if (v5 == [(NTKFaceLibraryViewControllerAccessibility *)self safeUnsignedIntegerForKey:@"_indexOfAddPage"])
  {
    v6 = [v4 safeBoolForKey:@"isActive"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_accessibilityCustomActionsForPageAtIndex:(unint64_t)index forPageScrollViewController:(id)controller
{
  controllerCopy = controller;
  v7 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_libraryOverlayView"];
  v8 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_switcherController"];
  v9 = [(NTKFaceLibraryViewControllerAccessibility *)self _accessibilityShouldSwipeBetweenPagesForPageScrollViewController:v8];

  if (v9)
  {
    v10 = +[NSMutableArray array];
    if ([controllerCopy safeBoolForKey:@"scrollEnabled"] && objc_msgSend(controllerCopy, "safeUnsignedIntegerForKey:", @"currentPageIndex") == index)
    {
      v11 = [v7 safeValueForKey:@"editButton"];
      if (![(NTKFaceLibraryViewControllerAccessibility *)self _axCanUseOverlayButton:v11])
      {
LABEL_10:

        goto LABEL_13;
      }

      v12 = [UIAccessibilityCustomAction alloc];
      v13 = [v11 titleForState:0];
      v14 = [v12 initWithName:v13 target:self selector:"_axStartEditing"];

      v15 = [UIImage systemImageNamed:@"pencil.circle.fill"];
      [v14 setImage:v15];

      [v10 addObject:v14];
LABEL_9:

      goto LABEL_10;
    }
  }

  else
  {
    if ([(NTKFaceLibraryViewControllerAccessibility *)self _axAddPageViewControllerIsActive])
    {
      v11 = [v7 safeValueForKey:@"cancelButton"];
      if ([(NTKFaceLibraryViewControllerAccessibility *)self _axCanUseOverlayButton:v11])
      {
        v16 = [UIAccessibilityCustomAction alloc];
        v17 = [v11 titleForState:0];
        v14 = [v16 initWithName:v17 target:self selector:"_axDeactivateAddFace"];

        v19 = v14;
        v10 = [NSArray arrayWithObjects:&v19 count:1];
        goto LABEL_9;
      }
    }

    v10 = 0;
  }

LABEL_13:

  return v10;
}

- (void)endInteractiveLibraryPresentationLatched:(BOOL)latched
{
  v3.receiver = self;
  v3.super_class = NTKFaceLibraryViewControllerAccessibility;
  [(NTKFaceLibraryViewControllerAccessibility *)&v3 endInteractiveLibraryPresentationLatched:latched];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

- (void)_scrollToAndSetupFaceAtIndex:(unint64_t)index updateLibraryFaceCollection:(BOOL)collection
{
  v4.receiver = self;
  v4.super_class = NTKFaceLibraryViewControllerAccessibility;
  [(NTKFaceLibraryViewControllerAccessibility *)&v4 _scrollToAndSetupFaceAtIndex:index updateLibraryFaceCollection:collection];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

- (void)_deactivateAddFaceAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __87__NTKFaceLibraryViewControllerAccessibility__deactivateAddFaceAnimated_withCompletion___block_invoke;
  v9[3] = &unk_206C8;
  completionCopy = completion;
  v11 = [(NTKFaceLibraryViewControllerAccessibility *)self safeBoolForKey:@"_presented"];
  v6 = completionCopy;
  v7 = objc_retainBlock(v9);
  v8.receiver = self;
  v8.super_class = NTKFaceLibraryViewControllerAccessibility;
  [(NTKFaceLibraryViewControllerAccessibility *)&v8 _deactivateAddFaceAnimated:animatedCopy withCompletion:v7];
}

void __87__NTKFaceLibraryViewControllerAccessibility__deactivateAddFaceAnimated_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (*(a1 + 40) == 1)
  {
    v3 = UIAccessibilityScreenChangedNotification;

    UIAccessibilityPostNotification(v3, 0);
  }
}

- (void)_dismissSwitcherAnimated:(BOOL)animated withIndex:(unint64_t)index remainFrozen:(BOOL)frozen completion:(id)completion
{
  frozenCopy = frozen;
  animatedCopy = animated;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __104__NTKFaceLibraryViewControllerAccessibility__dismissSwitcherAnimated_withIndex_remainFrozen_completion___block_invoke;
  v13[3] = &unk_20710;
  completionCopy = completion;
  v10 = completionCopy;
  v11 = objc_retainBlock(v13);
  v12.receiver = self;
  v12.super_class = NTKFaceLibraryViewControllerAccessibility;
  [(NTKFaceLibraryViewControllerAccessibility *)&v12 _dismissSwitcherAnimated:animatedCopy withIndex:index remainFrozen:frozenCopy completion:v11];
}

uint64_t __104__NTKFaceLibraryViewControllerAccessibility__dismissSwitcherAnimated_withIndex_remainFrozen_completion___block_invoke(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(a2);
    v2 = vars8;
  }

  a2.n128_u64[0] = 0.5;

  return _AXPerformBlockOnMainThreadAfterDelay(&__block_literal_global_441, a2);
}

@end