@interface SearchUIMovieCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (SearchUIMovieCardSectionViewAccessibility)initWithRowModel:(id)model feedbackDelegate:(id)delegate;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SearchUIMovieCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TLKMediaInfoView"];
  [validationsCopy validateClass:@"TLKMediaInfoView" hasInstanceMethod:@"contents" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TLKDetailsSection"];
  [validationsCopy validateClass:@"TLKDetailsSection" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TLKDetailsSection" hasInstanceMethod:@"details" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TLKMultilineText"];
  [validationsCopy validateClass:@"TLKMultilineText" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIMovieCardSectionView" hasInstanceMethod:@"initWithRowModel:feedbackDelegate:" withFullSignature:{"@", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v29 = *MEMORY[0x29EDCA608];
  v27.receiver = self;
  v27.super_class = SearchUIMovieCardSectionViewAccessibility;
  [(SearchUIMovieCardSectionViewAccessibility *)&v27 _accessibilityLoadAccessibilityInformation];
  v21 = objc_alloc_init(MEMORY[0x29EDBA078]);
  [v21 setNumberStyle:3];
  v26 = 0;
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v20 = v2;
  subviews = [v2 subviews];
  firstObject = [subviews firstObject];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = firstObject;
  subviews2 = [firstObject subviews];
  v6 = [subviews2 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(subviews2);
        }

        v26 = 0;
        objc_opt_class();
        v10 = __UIAccessibilityCastAsClass();
        if (v26 == 1)
        {
          abort();
        }

        v11 = v10;
        if (v10)
        {
          text = [v10 text];
          v13 = [v21 numberFromString:text];
          v14 = v13;
          if (v13)
          {
            [v13 floatValue];
            if (v15 >= 0.6)
            {
              v16 = @"movie.rotten.tomatoes.fresh";
            }

            else
            {
              v16 = @"movie.rotten.tomatoes.rotten";
            }

            v17 = accessibilityLocalizedString(v16);
            v18 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@, %@", text, v17];
            [v11 setAccessibilityLabel:v18];
          }
        }
      }

      v7 = [subviews2 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }
}

- (id)accessibilityLabel
{
  v39 = *MEMORY[0x29EDCA608];
  v3 = [(SearchUIMovieCardSectionViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_11];
  v36.receiver = self;
  v36.super_class = SearchUIMovieCardSectionViewAccessibility;
  accessibilityLabel = [(SearchUIMovieCardSectionViewAccessibility *)&v36 accessibilityLabel];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = v3;
  obj = [v3 safeValueForKey:@"contents"];
  v25 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v25)
  {
    v24 = *v33;
    do
    {
      v5 = 0;
      v6 = accessibilityLabel;
      do
      {
        v27 = v6;
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * v5);
        v8 = [v7 safeValueForKey:{@"title", v17, v19, v21}];
        v26 = [v8 safeStringForKey:@"text"];

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v9 = [v7 safeValueForKey:@"details"];
        v10 = [v9 countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v29;
          v13 = &stru_2A22CFF00;
          do
          {
            v14 = 0;
            v15 = v13;
            do
            {
              if (*v29 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v18 = [*(*(&v28 + 1) + 8 * v14) safeStringForKey:{@"text", v18, v20}];
              v20 = @"__AXStringForVariablesSentinel";
              v13 = __UIAXStringForVariables();

              ++v14;
              v15 = v13;
            }

            while (v11 != v14);
            v11 = [v9 countByEnumeratingWithState:&v28 objects:v37 count:{16, v18, @"__AXStringForVariablesSentinel"}];
          }

          while (v11);
        }

        else
        {
          v13 = &stru_2A22CFF00;
        }

        v19 = v13;
        v21 = @"__AXStringForVariablesSentinel";
        v17 = v26;
        accessibilityLabel = __UIAXStringForVariables();

        ++v5;
        v6 = accessibilityLabel;
      }

      while (v5 != v25);
      v25 = [obj countByEnumeratingWithState:&v32 objects:v38 count:{16, v26, v13, @"__AXStringForVariablesSentinel"}];
    }

    while (v25);
  }

  return accessibilityLabel;
}

uint64_t __63__SearchUIMovieCardSectionViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Tlkmediainfovi.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __83__SearchUIMovieCardSectionViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Searchuimoviec_2.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 _accessibilityViewIsVisible];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SearchUIMovieCardSectionViewAccessibility)initWithRowModel:(id)model feedbackDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = SearchUIMovieCardSectionViewAccessibility;
  v4 = [(SearchUIMovieCardSectionViewAccessibility *)&v6 initWithRowModel:model feedbackDelegate:delegate];
  [(SearchUIMovieCardSectionViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
  return v4;
}

@end