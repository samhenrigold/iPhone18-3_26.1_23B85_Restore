@interface SearchUICollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityContainsCombinedView;
- (BOOL)_accessibilityContainsNestedAccessibilityView;
- (BOOL)_accessibilityHasAccessibleSubviews;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityLabelFallback;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation SearchUICollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUICardSectionView"];
  [validationsCopy validateClass:@"SearchUIDetailedRowCardSectionView"];
  [validationsCopy validateClass:@"SearchUIHomeScreenAppIconView"];
  [validationsCopy validateClass:@"SearchUIWebCardSectionView"];
  [validationsCopy validateClass:@"SearchUICombinedCardSectionsView"];
  [validationsCopy validateClass:@"SearchUIHeroCardSectionView"];
  [validationsCopy validateClass:@"SearchUILabel"];
  [validationsCopy validateClass:@"SearchUIMapPlaceCardSectionView"];
  [validationsCopy validateClass:@"SearchUIFlightCardSectionView"];
  v3 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.SiriUICardKitProviderSupport.framework"];

  if (v3)
  {
    [validationsCopy validateClass:@"SCKPMediaControlCardSectionView"];
  }

  [validationsCopy validateClass:@"SearchUITableViewCell" hasInstanceMethod:@"rowModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIRowModel" hasInstanceMethod:@"isTappable" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SearchUIRowModel" hasProperty:@"identifyingResult" withType:"@"];
  [validationsCopy validateClass:@"SFSearchResult" hasProperty:@"contentType" withType:"@"];
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-_accessibilityChildren", self];
  v4 = MEMORY[0x29EDC7300];
  v5 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:v3];

  if (v5)
  {
    v6 = [*v4 objectForKeyedSubscript:v3];
  }

  else
  {
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __64__SearchUICollectionViewCellAccessibility_accessibilityElements__block_invoke;
    v8[3] = &unk_29F2F4FB0;
    v8[4] = self;
    v6 = [(SearchUICollectionViewCellAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:v8];
    [*v4 setObject:v6 forKeyedSubscript:v3];
  }

  return v6;
}

uint64_t __64__SearchUICollectionViewCellAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = v5;
  if (*(a1 + 32) == v5 || ![v5 _accessibilityViewIsVisible])
  {
    isKindOfClass = 0;
  }

  else
  {
    NSClassFromString(&cfstr_Searchuicombin_2.isa);
    if (objc_opt_isKindOfClass())
    {
      *a3 = 1;
LABEL_7:
      isKindOfClass = v6 != 0;
      goto LABEL_8;
    }

    NSClassFromString(&cfstr_Searchuicardse_0.isa);
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }

    NSClassFromString(&cfstr_Sckpmediacontr.isa);
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else
    {
      NSClassFromString(&cfstr_Searchuimultir_0.isa);
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

LABEL_8:

  return isKindOfClass & 1;
}

- (id)accessibilityLabel
{
  accessibilityElements = [(SearchUICollectionViewCellAccessibility *)self accessibilityElements];
  _accessibilityLabelFallback = MEMORY[0x29ED341C0]();

  if ([(SearchUICollectionViewCellAccessibility *)self isAccessibilityElement]|| AXDoesRequestingClientDeserveAutomation())
  {
    if (!_accessibilityLabelFallback)
    {
      _accessibilityLabelFallback = [(SearchUICollectionViewCellAccessibility *)self _accessibilityLabelFallback];
    }

    v5 = [(SearchUICollectionViewCellAccessibility *)self safeValueForKey:@"rowModel"];
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:{*MEMORY[0x29EDBB1E0], *MEMORY[0x29EDBB1F8], *MEMORY[0x29EDBB1D8], *MEMORY[0x29EDBB1F0], *MEMORY[0x29EDBB200], *MEMORY[0x29EDBB1E8], 0}];
    NSClassFromString(&cfstr_Searchuidetail_1.isa);
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 safeValueForKey:@"identifyingResult"];
      v8 = [v7 safeStringForKey:@"contentType"];

      if ([v6 containsObject:v8])
      {
        v12 = accessibilityLocalizedString(@"siri.shortcut");
        v9 = __UIAXStringForVariables();

        _accessibilityLabelFallback = v9;
      }
    }

    _accessibilityLabelFallback = _accessibilityLabelFallback;

    v10 = _accessibilityLabelFallback;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)accessibilityValue
{
  accessibilityElements = [(SearchUICollectionViewCellAccessibility *)self accessibilityElements];
  if ([accessibilityElements count])
  {
    v4 = [accessibilityElements objectAtIndexedSubscript:0];
    accessibilityValue = [v4 accessibilityValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SearchUICollectionViewCellAccessibility;
    accessibilityValue = [(SearchUICollectionViewCellAccessibility *)&v7 accessibilityValue];
  }

  return accessibilityValue;
}

- (BOOL)isAccessibilityElement
{
  accessibilityElements = [(SearchUICollectionViewCellAccessibility *)self accessibilityElements];
  if ([accessibilityElements count])
  {
    if ([(SearchUICollectionViewCellAccessibility *)self _accessibilityContainsNestedAccessibilityView])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v5 = [accessibilityElements objectAtIndexedSubscript:0];
      v4 = [v5 isAccessibilityElement] ^ 1;
    }
  }

  else
  {
    v4 = ![(SearchUICollectionViewCellAccessibility *)self _accessibilityHasAccessibleSubviews];
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = SearchUICollectionViewCellAccessibility;
  accessibilityTraits = [(SearchUICollectionViewCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(SearchUICollectionViewCellAccessibility *)self safeValueForKey:@"rowModel"];
  if ([v4 safeBoolForKey:@"isTappable"])
  {
    v5 = *MEMORY[0x29EDC7F70];
  }

  else
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (BOOL)_accessibilityHasAccessibleSubviews
{
  if (_accessibilityHasAccessibleSubviews_onceToken_0 != -1)
  {
    [SearchUICollectionViewCellAccessibility _accessibilityHasAccessibleSubviews];
  }

  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __78__SearchUICollectionViewCellAccessibility__accessibilityHasAccessibleSubviews__block_invoke_2;
  v6[3] = &unk_29F2F5018;
  v6[4] = self;
  v3 = [(SearchUICollectionViewCellAccessibility *)self _accessibilityFindSubviewDescendant:v6];
  v4 = v3 != 0;

  return v4;
}

Class __78__SearchUICollectionViewCellAccessibility__accessibilityHasAccessibleSubviews__block_invoke()
{
  _accessibilityHasAccessibleSubviews_webCardClass_0 = NSClassFromString(&cfstr_Searchuiwebcar.isa);
  _accessibilityHasAccessibleSubviews_detailedRowClass_0 = NSClassFromString(&cfstr_Searchuidetail_0.isa);
  _accessibilityHasAccessibleSubviews_trailersSectionClass_0 = NSClassFromString(&cfstr_Searchuitraile_1.isa);
  result = NSClassFromString(&cfstr_Crkcontainerca.isa);
  _accessibilityHasAccessibleSubviews_cardKitSection_0 = result;
  return result;
}

uint64_t __78__SearchUICollectionViewCellAccessibility__accessibilityHasAccessibleSubviews__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = objc_opt_isKindOfClass();
  v6 = objc_opt_isKindOfClass();
  v7 = objc_opt_isKindOfClass();
  v8 = 0;
  if (*(a1 + 32) != v3 && ((v6 | isKindOfClass | v7) & 1) != 0 && (v5 & 1) == 0)
  {
    v8 = [v3 _accessibilityViewIsVisible];
  }

  return v8;
}

- (id)_accessibilitySupplementaryFooterViews
{
  if ([(SearchUICollectionViewCellAccessibility *)self _accessibilityContainsCombinedView])
  {
    v6.receiver = self;
    v6.super_class = SearchUICollectionViewCellAccessibility;
    _accessibilitySupplementaryFooterViews = [(SearchUICollectionViewCellAccessibility *)&v6 _accessibilitySupplementaryFooterViews];
  }

  else
  {
    if (_accessibilitySupplementaryFooterViews_onceToken != -1)
    {
      [SearchUICollectionViewCellAccessibility _accessibilitySupplementaryFooterViews];
    }

    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = __81__SearchUICollectionViewCellAccessibility__accessibilitySupplementaryFooterViews__block_invoke_2;
    v5[3] = &unk_29F2F5068;
    v5[4] = self;
    _accessibilitySupplementaryFooterViews = [(SearchUICollectionViewCellAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:v5];
  }

  return _accessibilitySupplementaryFooterViews;
}

Class __81__SearchUICollectionViewCellAccessibility__accessibilitySupplementaryFooterViews__block_invoke()
{
  result = NSClassFromString(&cfstr_Tlktextbutton.isa);
  _accessibilitySupplementaryFooterViews_footnoteButtonClass = result;
  return result;
}

uint64_t __81__SearchUICollectionViewCellAccessibility__accessibilitySupplementaryFooterViews__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (*(a1 + 32) != v3 && (isKindOfClass & 1) != 0)
  {
    v5 = [v3 _accessibilityViewIsVisible];
  }

  return v5;
}

- (BOOL)_accessibilityContainsCombinedView
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-_accessibilityContainsCombinedView", self];
  v4 = MEMORY[0x29EDC7300];
  v5 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:v3];

  if (v5)
  {
    v6 = [*v4 objectForKeyedSubscript:v3];
    LOBYTE(v7) = [v6 BOOLValue];
  }

  else
  {
    if (_accessibilityContainsCombinedView_onceToken != -1)
    {
      [SearchUICollectionViewCellAccessibility _accessibilityContainsCombinedView];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    accessibilityElements = [(SearchUICollectionViewCellAccessibility *)self accessibilityElements];
    v9 = [accessibilityElements countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(accessibilityElements);
          }

          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
          {
            v7 = 1;
            goto LABEL_17;
          }
        }

        v10 = [accessibilityElements countByEnumeratingWithState:&v14 objects:v18 count:16];
        v7 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_17:

    v6 = [MEMORY[0x29EDBA070] numberWithBool:v7];
    [*v4 setObject:v6 forKeyedSubscript:v3];
  }

  return v7;
}

Class __77__SearchUICollectionViewCellAccessibility__accessibilityContainsCombinedView__block_invoke()
{
  _accessibilityContainsCombinedView_combinedSectionView = NSClassFromString(&cfstr_Searchuicombin_2.isa);
  result = NSClassFromString(&cfstr_Searchuiheroca_0.isa);
  _accessibilityContainsCombinedView_heroSectionView = result;
  return result;
}

- (BOOL)_accessibilityContainsNestedAccessibilityView
{
  v14 = *MEMORY[0x29EDCA608];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(SearchUICollectionViewCellAccessibility *)self accessibilityElements:0];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        NSClassFromString(&cfstr_Searchuiinfoca_0.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          NSClassFromString(&cfstr_Searchuimappla.isa);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            NSClassFromString(&cfstr_Searchuiflight_0.isa);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              NSClassFromString(&cfstr_Sckpmediacontr.isa);
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                continue;
              }
            }
          }
        }

        v7 = 1;
        goto LABEL_15;
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v7 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_15:

  return v7;
}

- (id)_accessibilityLabelFallback
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-_accessibilityLabel", self];
  v4 = MEMORY[0x29EDC7300];
  v5 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:v3];

  if (v5)
  {
    v6 = [*v4 objectForKeyedSubscript:v3];
  }

  else
  {
    if (_accessibilityLabelFallback_onceToken != -1)
    {
      [SearchUICollectionViewCellAccessibility _accessibilityLabelFallback];
    }

    v7 = [(SearchUICollectionViewCellAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_395];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      v6 = &stru_2A22CFF00;
      do
      {
        v11 = 0;
        v12 = v6;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          accessibilityLabel = [*(*(&v16 + 1) + 8 * v11) accessibilityLabel];
          v15 = @"__AXStringForVariablesSentinel";
          v6 = __AXStringForVariables();

          ++v11;
          v12 = v6;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:{16, accessibilityLabel, @"__AXStringForVariablesSentinel"}];
      }

      while (v9);
    }

    else
    {
      v6 = &stru_2A22CFF00;
    }

    [*v4 setObject:v6 forKeyedSubscript:v3];
  }

  return v6;
}

Class __70__SearchUICollectionViewCellAccessibility__accessibilityLabelFallback__block_invoke()
{
  result = NSClassFromString(&cfstr_Searchuilabel.isa);
  _accessibilityLabelFallback_searchUILabel = result;
  return result;
}

uint64_t __70__SearchUICollectionViewCellAccessibility__accessibilityLabelFallback__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
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

@end