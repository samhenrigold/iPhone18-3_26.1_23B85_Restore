@interface MKMapViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (id)_axMapsDelegate;
- (id)accessibilityElements;
- (int64_t)_accessibilitySortPriority;
- (void)_didEndZoom;
- (void)_setCompassVisible:(BOOL)visible animationAllowed:(BOOL)allowed force:(BOOL)force;
@end

@implementation MKMapViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKMapView" hasInstanceMethod:@"_setCompassVisible:animationAllowed:force:" withFullSignature:{"v", "B", "B", "B", 0}];
  [validationsCopy validateClass:@"MKMapView" hasInstanceMethod:@"_mapLayer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKMapView" hasInstanceMethod:@"_didEndZoom" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MKMapView" hasInstanceVariable:@"_basicMapView" withType:"MKBasicMapView"];
  [validationsCopy validateClass:@"MKMapView" hasInstanceVariable:@"_showsZoomControls" withType:"B"];
  [validationsCopy validateClass:@"MKMapView" hasInstanceVariable:@"_compassVisible" withType:"B"];
  [validationsCopy validateClass:@"MKMapView" hasInstanceVariable:@"_compassView" withType:"UIView<MKCompassView>"];
  [validationsCopy validateClass:@"MKAttributionLabel"];
}

- (id)accessibilityElements
{
  v39 = *MEMORY[0x29EDCA608];
  v3 = objc_opt_new();
  v37 = 0;
  objc_opt_class();
  _axMapsDelegate = [(MKMapViewAccessibility *)self _axMapsDelegate];
  v5 = [_axMapsDelegate safeValueForKey:@"chromeViewController"];
  v6 = __UIAccessibilityCastAsClass();

  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  childViewControllers = [v6 childViewControllers];
  v8 = [childViewControllers countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v34 != v10)
      {
        objc_enumerationMutation(childViewControllers);
      }

      v12 = *(*(&v33 + 1) + 8 * v11);
      NSClassFromString(&cfstr_Lookaroundpuck.isa);
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [childViewControllers countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v12;

    if (!v13)
    {
      goto LABEL_13;
    }

    childViewControllers = [v13 view];
    [v3 addObject:childViewControllers];
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

LABEL_13:
  if ([(MKMapViewAccessibility *)self safeBoolForKey:@"_compassVisible"])
  {
    v14 = [(MKMapViewAccessibility *)self safeValueForKey:@"_compassView"];
    v15 = v14;
    if (v14)
    {
      [v14 setAccessibilityContainer:self];
      [v3 addObject:v15];
    }
  }

  v16 = [(MKMapViewAccessibility *)self safeValueForKey:@"_basicMapView"];
  array = [MEMORY[0x29EDB8DE8] array];
  v25 = MEMORY[0x29EDCA5F8];
  v26 = 3221225472;
  v27 = __47__MKMapViewAccessibility_accessibilityElements__block_invoke;
  v28 = &unk_29F2CB168;
  v18 = v3;
  v29 = v18;
  v19 = v16;
  v30 = v19;
  v31 = 0;
  v32 = array;
  v20 = array;
  v21 = [(MKMapViewAccessibility *)self _accessibilityFindUnsortedSubviewDescendantsPassingTest:&v25];
  if (v19)
  {
    [v19 setAccessibilityContainer:{self, v25, v26, v27, v28, v29, v30, v31}];
    [v18 addObject:v19];
  }

  [(MKMapViewAccessibility *)self safeBoolForKey:@"_showsZoomControls", v25, v26, v27, v28];
  [v18 addObjectsFromArray:v20];
  v22 = v32;
  v23 = v18;

  return v18;
}

uint64_t __47__MKMapViewAccessibility_accessibilityElements__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (([a1[4] containsObject:v3] & 1) != 0 || a1[5] == v3 || a1[6] == v3)
  {
    v6 = 1;
  }

  else
  {
    if ([v3 isAccessibilityElement])
    {
      NSClassFromString(&cfstr_Mkattributionl_0.isa);
      isKindOfClass = objc_opt_isKindOfClass();
      v5 = 4;
      if (isKindOfClass)
      {
        v5 = 7;
      }

      [a1[v5] addObject:v3];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  v4 = [(MKMapViewAccessibility *)self safeValueForKey:@"_mapLayer"];
  LOBYTE(scroll) = [v4 accessibilityScroll:scroll];

  return scroll;
}

- (int64_t)_accessibilitySortPriority
{
  v2 = __UIAccessibilitySafeClass();
  traitCollection = [v2 traitCollection];
  if ([traitCollection horizontalSizeClass] == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (id)_axMapsDelegate
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [MEMORY[0x29EDC7938] safeValueForKey:@"sharedMapsDelegate"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_setCompassVisible:(BOOL)visible animationAllowed:(BOOL)allowed force:(BOOL)force
{
  forceCopy = force;
  allowedCopy = allowed;
  visibleCopy = visible;
  v9 = [(MKMapViewAccessibility *)self safeBoolForKey:@"_compassVisible"];
  v10.receiver = self;
  v10.super_class = MKMapViewAccessibility;
  [(MKMapViewAccessibility *)&v10 _setCompassVisible:visibleCopy animationAllowed:allowedCopy force:forceCopy];
  if (v9 != [(MKMapViewAccessibility *)self safeBoolForKey:@"_compassVisible"])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (void)_didEndZoom
{
  v4.receiver = self;
  v4.super_class = MKMapViewAccessibility;
  [(MKMapViewAccessibility *)&v4 _didEndZoom];
  v3 = [(MKMapViewAccessibility *)self safeValueForKey:@"_mapLayer"];
  [v3 _accessibilitySetBoolValue:1 forKey:@"ZoomNotification"];
}

@end