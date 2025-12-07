@interface SKUITracklistLockupCollectionViewCellAccessibility
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
@end

@implementation SKUITracklistLockupCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v48 = *MEMORY[0x29EDCA608];
  v2 = [(SKUITracklistLockupCollectionViewCellAccessibility *)self safeValueForKey:@"contentView"];
  v3 = [v2 safeValueForKey:@"subviews"];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (!v5)
  {
    v8 = 0;
    goto LABEL_32;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v37 = *v43;
  v33 = v4;
  do
  {
    v9 = 0;
    v32 = v7;
    v34 = v6;
    do
    {
      if (*v43 != v37)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v42 + 1) + 8 * v9);
      NSClassFromString(&cfstr_Skuibarratingv_0.isa);
      if (objc_opt_isKindOfClass())
      {
        accessibilityLabel = accessibilitySKUILocalizedString(@"popularity");
        accessibilityValue = [v10 accessibilityValue];
        v31 = @"__AXStringForVariablesSentinel";
        v29 = accessibilityLabel;
        v12 = __UIAXStringForVariables();

        v8 = accessibilityValue;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_28;
        }

        accessibilityLabel = [v10 accessibilityLabel];
        if ([accessibilityLabel rangeOfString:@":"] != 0x7FFFFFFFFFFFFFFFLL && v7 == 5)
        {
          v36 = v8;
          v14 = [accessibilityLabel componentsSeparatedByString:@":"];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v35 = v14;
          reverseObjectEnumerator = [v14 reverseObjectEnumerator];
          allObjects = [reverseObjectEnumerator allObjects];

          v17 = [allObjects countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = 0;
            v20 = *v39;
            v21 = 0.0;
            do
            {
              v22 = 0;
              v23 = v19;
              do
              {
                if (*v39 != v20)
                {
                  objc_enumerationMutation(allObjects);
                }

                integerValue = [*(*(&v38 + 1) + 8 * v22) integerValue];
                v25 = 3600 * integerValue;
                v26 = 60 * integerValue;
                if (v23 != 1)
                {
                  v26 = integerValue;
                }

                if (v23 != 2)
                {
                  v25 = v26;
                }

                v21 = v21 + v25;
                ++v23;
                ++v22;
              }

              while (v18 != v22);
              v19 += v18;
              v18 = [allObjects countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v18);
          }

          v27 = AXDurationStringForDuration();

          accessibilityLabel = v27;
          v4 = v33;
          v6 = v34;
          v8 = v36;
        }

        v29 = accessibilityLabel;
        accessibilityValue = @"__AXStringForVariablesSentinel";
        v12 = __UIAXStringForVariables();
      }

      v8 = v12;
LABEL_28:
      ++v7;
      ++v9;
    }

    while (v9 != v6);
    v7 = v32 + v6;
    v6 = [v4 countByEnumeratingWithState:&v42 objects:v47 count:16];
  }

  while (v6);
LABEL_32:

  return v8;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = [(SKUITracklistLockupCollectionViewCellAccessibility *)self safeValueForKey:@"contentView"];
  v3 = [v2 safeValueForKey:@"subviews"];

  array = [MEMORY[0x29EDB8DE8] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 isAccessibilityElement])
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

@end