@interface MKAnnotationContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityZoom:(BOOL)zoom point:(CGPoint)point;
- (id)_accessibilityAnnotationViews;
- (id)_accessibilityFilterVisibleElements:(id)elements;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)deselectAnnotationView:(id)view animated:(BOOL)animated;
@end

@implementation MKAnnotationContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKAnnotationContainerView" hasInstanceMethod:@"deselectAnnotationView: animated:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"MKAnnotationContainerView" hasInstanceVariable:@"_annotationViews" withType:"NSMutableOrderedSet"];
  [validationsCopy validateClass:@"MKAnnotationView" hasInstanceVariable:@"_calloutView" withType:"MKCalloutView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MKAnnotationContainerViewAccessibility;
  [(MKAnnotationContainerViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MKAnnotationContainerViewAccessibility *)self _accessibilitySetViewIsVisible:0];
}

- (id)accessibilityElements
{
  v31 = *MEMORY[0x29EDCA608];
  v3 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  _accessibilityAnnotationViews = [(MKAnnotationContainerViewAccessibility *)self _accessibilityAnnotationViews];
  v5 = [_accessibilityAnnotationViews countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(_accessibilityAnnotationViews);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        [(MKAnnotationContainerViewAccessibility *)self accessibilityFrame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        [v9 accessibilityFrame];
        v34.origin.x = v18;
        v34.origin.y = v19;
        v34.size.width = v20;
        v34.size.height = v21;
        v33.origin.x = v11;
        v33.origin.y = v13;
        v33.size.width = v15;
        v33.size.height = v17;
        if (CGRectContainsRect(v33, v34))
        {
          [v9 setAccessibilityContainer:self];
          [v3 axSafelyAddObject:v9];
        }

        if (_CFMZEnabled())
        {
          v22 = [v9 safeUIViewForKey:@"_calloutView"];
          v23 = AXMapKitLocString(@"INFO_PANEL");
          [v22 setAccessibilityLabel:v23];

          [v22 setAccessibilityContainer:self];
          [v3 axSafelyAddObject:v22];
        }
      }

      v6 = [_accessibilityAnnotationViews countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  v24 = [(MKAnnotationContainerViewAccessibility *)self _accessibilityFilterVisibleElements:v3];

  return v24;
}

- (id)_accessibilityFilterVisibleElements:(id)elements
{
  v36 = *MEMORY[0x29EDCA608];
  elementsCopy = elements;
  v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-_accessibilityFilterVisibleElements", self];
  v34 = 0;
  PossiblyNilObjectForKey = _AXServerCacheGetPossiblyNilObjectForKey();
  v7 = 0;
  v8 = v7;
  if (PossiblyNilObjectForKey)
  {
    array = v7;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];
    window = [(MKAnnotationContainerViewAccessibility *)self window];
    [window accessibilityFrame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = elementsCopy;
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v30 + 1) + 8 * i);
          if (AXRequestingClient() != 11)
          {
            [v24 accessibilityFrame];
            v39.origin.x = v25;
            v39.origin.y = v26;
            v39.size.width = v27;
            v39.size.height = v28;
            v38.origin.x = v12;
            v38.origin.y = v14;
            v38.size.width = v16;
            v38.size.height = v18;
            if (!CGRectIntersectsRect(v38, v39))
            {
              continue;
            }
          }

          [array addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v21);
    }

    _AXServerCacheInsertPossiblyNilObjectForKey();
  }

  return array;
}

- (id)_accessibilityAnnotationViews
{
  v2 = [(MKAnnotationContainerViewAccessibility *)self safeValueForKey:@"annotationViews"];
  v3 = __UIAccessibilitySafeClass();

  return v3;
}

- (BOOL)_accessibilityZoom:(BOOL)zoom point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  zoomCopy = zoom;
  if (_accessibilityZoom_point___VKMapViewClassOnceToken != -1)
  {
    [MKAnnotationContainerViewAccessibility _accessibilityZoom:point:];
  }

  v8 = [(MKAnnotationContainerViewAccessibility *)self safeValueForKey:@"delegate"];
  v9 = [v8 safeValueForKey:@"_mapView"];

  if (objc_opt_isKindOfClass())
  {
    if (zoomCopy)
    {
      v10 = [v9 accessibilityZoomInAtPoint:{x, y}];
    }

    else
    {
      v10 = [v9 accessibilityZoomOutAtPoint:{x, y}];
    }

    v11 = v10;
  }

  else
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA40]);
    v11 = 1;
  }

  return v11;
}

Class __67__MKAnnotationContainerViewAccessibility__accessibilityZoom_point___block_invoke()
{
  result = NSClassFromString(&cfstr_Vkmapview.isa);
  _accessibilityZoom_point___VKMapViewClass = result;
  return result;
}

- (void)deselectAnnotationView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  v30 = *MEMORY[0x29EDCA608];
  viewCopy = view;
  v28.receiver = self;
  v28.super_class = MKAnnotationContainerViewAccessibility;
  [(MKAnnotationContainerViewAccessibility *)&v28 deselectAnnotationView:viewCopy animated:animatedCopy];
  [viewCopy accessibilityFrame];
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  MidX = CGRectGetMidX(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  MidY = CGRectGetMidY(v32);
  v13 = [(MKAnnotationContainerViewAccessibility *)self safeValueForKey:@"delegate"];
  v14 = [v13 safeValueForKey:@"_mapView"];
  accessibilityElements = [v14 accessibilityElements];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = accessibilityElements;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v25;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v24 + 1) + 8 * i);
        NSClassFromString(&cfstr_Vkfeatureacces.isa);
        if ((objc_opt_isKindOfClass() & 1) != 0 && (([v22 safeBoolForKey:{@"isPOI", v24}] & 1) != 0 || objc_msgSend(v22, "safeBoolForKey:", @"isRouteEta")))
        {
          if ([v22 pointInside:{MidX, MidY}])
          {
            v23 = v22;

            v19 = v23;
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v19);
}

@end