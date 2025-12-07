@interface MOSuggestionSheetAssetViewAccessibility
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MOSuggestionSheetAssetViewAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(MOSuggestionSheetAssetViewAccessibility *)self safeValueForKey:@"subviews"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = MEMORY[0x29C2E21A0](v4);

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v19 = *MEMORY[0x29EDCA608];
  v17.receiver = self;
  v17.super_class = MOSuggestionSheetAssetViewAccessibility;
  accessibilityTraits = [(MOSuggestionSheetAssetViewAccessibility *)&v17 accessibilityTraits];
  v16 = 0;
  objc_opt_class();
  v4 = [(MOSuggestionSheetAssetViewAccessibility *)self safeValueForKey:@"subviews"];
  v5 = __UIAccessibilityCastAsClass();

  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        accessibilityTraits |= [*(*(&v12 + 1) + 8 * i) accessibilityTraits];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v8);
  }

  return accessibilityTraits;
}

- (id)accessibilityCustomActions
{
  v21 = *MEMORY[0x29EDCA608];
  v19 = 0;
  objc_opt_class();
  v3 = [(MOSuggestionSheetAssetViewAccessibility *)self safeValueForKey:@"subviews"];
  v4 = __UIAccessibilityCastAsClass();

  v18.receiver = self;
  v18.super_class = MOSuggestionSheetAssetViewAccessibility;
  accessibilityCustomActions = [(MOSuggestionSheetAssetViewAccessibility *)&v18 accessibilityCustomActions];
  array = [accessibilityCustomActions mutableCopy];

  if (!array)
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        accessibilityCustomActions2 = [*(*(&v14 + 1) + 8 * i) accessibilityCustomActions];
        [array addObjectsFromArray:accessibilityCustomActions2];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v9);
  }

  return array;
}

@end