@interface MUPlacePhotoGalleryViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLabelAttributionButton;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)downloadImageForVisibleViews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MUPlacePhotoGalleryViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MUPlacePhotoGalleryViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUPlacePhotoGalleryViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"MKMapItemPhoto" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKMapItemPhoto" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUPlacePhotoGalleryViewController" hasInstanceVariable:@"_photoViews" withType:"NSArray"];
  [validationsCopy validateClass:@"MUPlacePhotoGalleryViewController" hasInstanceVariable:@"_photos" withType:"NSArray"];
  [validationsCopy validateClass:@"MUPlacePhotoGalleryViewController" hasInstanceMethod:@"rapBarButtonView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUPlacePhotoGalleryViewController" hasInstanceMethod:@"currentPhoto" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKMapItemPhoto" hasInstanceMethod:@"attribution" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_MKMapItemPhotosAttribution" isKindOfClass:@"_MKMapItemAttribution"];
  [validationsCopy validateClass:@"_MKMapItemAttribution" hasInstanceMethod:@"providerName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUPlacePhotoGalleryViewController" hasInstanceMethod:@"attributionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUPlacePhotoGalleryAttributionView" hasInstanceMethod:@"accessoryButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUPlacePhotoGalleryViewController" hasInstanceMethod:@"downloadImageForVisibleViews" withFullSignature:{"v", 0}];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MUPlacePhotoGalleryViewControllerAccessibility;
  [(MUPlacePhotoGalleryViewControllerAccessibility *)&v4 viewWillAppear:appear];
  [(MUPlacePhotoGalleryViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v39 = *MEMORY[0x29EDCA608];
  v37.receiver = self;
  v37.super_class = MUPlacePhotoGalleryViewControllerAccessibility;
  [(MUPlacePhotoGalleryViewControllerAccessibility *)&v37 _accessibilityLoadAccessibilityInformation];
  v13 = [(MUPlacePhotoGalleryViewControllerAccessibility *)self safeUIViewForKey:@"scrollView"];
  [v13 setIsAccessibilityOpaqueElementProvider:1];
  v17 = [(MUPlacePhotoGalleryViewControllerAccessibility *)self safeArrayForKey:@"_photoViews"];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(MUPlacePhotoGalleryViewControllerAccessibility *)self safeArrayForKey:@"_photos"];
  v2 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v2)
  {
    v3 = 0;
    v16 = *v34;
    do
    {
      v4 = 0;
      do
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v33 + 1) + 8 * v4);
        v27 = 0;
        v28 = &v27;
        v29 = 0x3032000000;
        v30 = __Block_byref_object_copy_;
        v31 = __Block_byref_object_dispose_;
        v32 = 0;
        v20 = MEMORY[0x29EDCA5F8];
        v21 = 3221225472;
        v22 = __92__MUPlacePhotoGalleryViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
        v23 = &unk_29F2CDD88;
        v25 = &v27;
        v24 = v17;
        v26 = v3;
        AXPerformSafeBlock();
        v6 = v28[5];

        _Block_object_dispose(&v27, 8);
        v7 = [v5 safeStringForKey:@"title"];
        v8 = [v5 safeStringForKey:@"subtitle"];
        v9 = __UIAXStringForVariables();
        [v6 setAccessibilityLabel:{v9, v8, @"__AXStringForVariablesSentinel"}];

        ++v3;
        ++v4;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v2);
  }

  v10 = [(MUPlacePhotoGalleryViewControllerAccessibility *)self safeValueForKey:@"rapBarButtonView"];
  v11 = accessibilityLocalizedString(@"REPORT_A_PROBLEM");
  [v10 setAccessibilityLabel:v11];

  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __92__MUPlacePhotoGalleryViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v18[3] = &unk_29F2CDDB0;
  v19 = v10;
  v12 = v10;
  [v12 _setAccessibilityValueBlock:v18];
  [(MUPlacePhotoGalleryViewControllerAccessibility *)self _accessibilityLabelAttributionButton];
}

uint64_t __92__MUPlacePhotoGalleryViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 48)];

  return MEMORY[0x2A1C71028]();
}

id __92__MUPlacePhotoGalleryViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  v1 = __UIAccessibilityCastAsClass();
  v2 = [v1 customView];

  if (v2)
  {
    v3 = accessibilityLocalizedString(@"REPORT_A_PROBLEM_LOADING");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)downloadImageForVisibleViews
{
  v3.receiver = self;
  v3.super_class = MUPlacePhotoGalleryViewControllerAccessibility;
  [(MUPlacePhotoGalleryViewControllerAccessibility *)&v3 downloadImageForVisibleViews];
  [(MUPlacePhotoGalleryViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLabelAttributionButton
{
  v3 = [(MUPlacePhotoGalleryViewControllerAccessibility *)self safeValueForKey:@"currentPhoto"];
  v4 = [v3 safeValueForKey:@"attribution"];
  v7 = [v4 safeStringForKey:@"providerName"];

  v5 = [(MUPlacePhotoGalleryViewControllerAccessibility *)self safeUIViewForKey:@"attributionView"];
  v6 = [v5 safeUIViewForKey:@"accessoryButton"];
  [v6 setAccessibilityLabel:v7];
}

@end