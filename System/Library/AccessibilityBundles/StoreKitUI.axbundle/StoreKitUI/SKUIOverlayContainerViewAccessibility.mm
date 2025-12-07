@interface SKUIOverlayContainerViewAccessibility
- (id)_accessibilityObscuredScreenAllowedViews;
- (id)accessibilityElements;
@end

@implementation SKUIOverlayContainerViewAccessibility

- (id)accessibilityElements
{
  v3 = [(SKUIOverlayContainerViewAccessibility *)self _accessibilityValueForKey:@"Backstop"];
  if (!v3)
  {
    v3 = [[StoreBackstopAccessibilityElement alloc] initWithAccessibilityContainer:self];
    v4 = UIKitAccessibilityLocalizedString();
    [(StoreBackstopAccessibilityElement *)v3 setAccessibilityLabel:v4];

    v5 = UIKitAccessibilityLocalizedString();
    [(StoreBackstopAccessibilityElement *)v3 setAccessibilityHint:v5];

    [(SKUIOverlayContainerViewAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:@"Backstop"];
  }

  subviews = [(SKUIOverlayContainerViewAccessibility *)self subviews];
  v7 = [subviews arrayByAddingObject:v3];

  return v7;
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  v25 = *MEMORY[0x29EDCA608];
  accessibilityIdentifier = [(SKUIOverlayContainerViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"OverlayCaptureView"];

  if (v4)
  {
    v23 = 0;
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    superview = [v5 superview];
    subviews = [superview subviews];

    array = [MEMORY[0x29EDB8DE8] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = subviews;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          accessibilityIdentifier2 = [v14 accessibilityIdentifier];
          v16 = [accessibilityIdentifier2 isEqualToString:@"FloatingPreview"];

          if (v16)
          {
            [array addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }

    if ([array count])
    {

      goto LABEL_15;
    }
  }

  v18.receiver = self;
  v18.super_class = SKUIOverlayContainerViewAccessibility;
  array = [(SKUIOverlayContainerViewAccessibility *)&v18 _accessibilityObscuredScreenAllowedViews];
LABEL_15:

  return array;
}

@end