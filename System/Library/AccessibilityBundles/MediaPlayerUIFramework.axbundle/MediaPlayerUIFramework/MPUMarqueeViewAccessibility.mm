@interface MPUMarqueeViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation MPUMarqueeViewAccessibility

- (BOOL)isAccessibilityElement
{
  storedIsAccessibilityElement = [(MPUMarqueeViewAccessibility *)self storedIsAccessibilityElement];
  v4 = storedIsAccessibilityElement;
  if (storedIsAccessibilityElement)
  {
    bOOLValue = [storedIsAccessibilityElement BOOLValue];
  }

  else
  {
    accessibilityLabel = [(MPUMarqueeViewAccessibility *)self accessibilityLabel];
    bOOLValue = [accessibilityLabel length] != 0;
  }

  return bOOLValue;
}

- (id)accessibilityLabel
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = [(MPUMarqueeViewAccessibility *)self safeValueForKey:@"contentView"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  subviews = [v2 subviews];
  v4 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = &stru_2A2200CA8;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          accessibilityLabel = [v9 accessibilityLabel];
          v10 = __UIAXStringForVariables();

          v7 = v10;
        }
      }

      v5 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = &stru_2A2200CA8;
  }

  return v7;
}

@end