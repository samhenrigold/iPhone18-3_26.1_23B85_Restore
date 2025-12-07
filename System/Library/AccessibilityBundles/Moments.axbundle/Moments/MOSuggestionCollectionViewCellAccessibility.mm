@interface MOSuggestionCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityGridCollectionView;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MOSuggestionCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MomentsUIService.MOSuggestionCollectionViewCell" hasSwiftField:@"titleLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"MomentsUIService.MOSuggestionCollectionViewCell" hasSwiftField:@"subtitleLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"MomentsUIService.MOSuggestionCollectionViewCell" hasSwiftField:@"journalButton" withSwiftType:"MOSuggestionSheetJournalButton"];
  [validationsCopy validateClass:@"MomentsUIService.MOSuggestionCollectionViewCell" hasSwiftField:@"assetGridView" withSwiftType:"MOSuggestionSheetAssetGridView"];
  [validationsCopy validateClass:@"MomentsUIService.MOSuggestionSheetAssetGridView" hasSwiftField:@"gridCollectionView" withSwiftType:"Optional<MOSuggestionSheetGridCollectionView>"];
}

- (id)accessibilityValue
{
  _accessibilityGridCollectionView = [(MOSuggestionCollectionViewCellAccessibility *)self _accessibilityGridCollectionView];
  visibleCells = [_accessibilityGridCollectionView visibleCells];
  v4 = MEMORY[0x29C2E21A0]();

  v5 = __UIAXStringForVariables();

  return v5;
}

- (id)accessibilityLabel
{
  v3 = [(MOSuggestionCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v4 = [(MOSuggestionCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  _accessibilityGridCollectionView = [(MOSuggestionCollectionViewCellAccessibility *)self _accessibilityGridCollectionView];
  visibleCells = [_accessibilityGridCollectionView visibleCells];
  v7 = [visibleCells count];

  if (v7 < 2)
  {
    accessibilityLabel = [v3 accessibilityLabel];
    accessibilityLabel2 = [v4 accessibilityLabel];
    v11 = __UIAXStringForVariables();
  }

  else
  {
    accessibilityLabel = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%lu", v7];
    accessibilityLabel2 = [v3 accessibilityLabel];
    accessibilityLabel3 = [v4 accessibilityLabel];
    v13 = accessibilityJurassicLocalizedString(@"suggestion.elements");
    v11 = __UIAXStringForVariables();
  }

  return v11;
}

- (id)accessibilityCustomActions
{
  v31 = *MEMORY[0x29EDCA608];
  v3 = [(MOSuggestionCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"assetGridView"];
  v4 = [v3 safeSwiftValueForKey:@"gridCollectionView"];
  v29.receiver = self;
  v29.super_class = MOSuggestionCollectionViewCellAccessibility;
  accessibilityCustomActions = [(MOSuggestionCollectionViewCellAccessibility *)&v29 accessibilityCustomActions];
  array = [accessibilityCustomActions mutableCopy];

  if (!array)
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  visibleCells = [v4 visibleCells];
  v8 = [visibleCells countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(visibleCells);
        }

        accessibilityCustomActions2 = [*(*(&v25 + 1) + 8 * i) accessibilityCustomActions];
        [array addObjectsFromArray:accessibilityCustomActions2];
      }

      v9 = [visibleCells countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v24 = 0;
  objc_opt_class();
  v13 = [(MOSuggestionCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"journalButton"];
  v14 = __UIAccessibilityCastAsClass();

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x29EDC78E0]);
    v16 = accessibilityJurassicLocalizedString(@"suggestion.write.about.this");
    v19 = MEMORY[0x29EDCA5F8];
    v20 = 3221225472;
    v21 = __73__MOSuggestionCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke;
    v22 = &unk_29F2DBBE0;
    v23 = v14;
    v17 = [v15 initWithName:v16 actionHandler:&v19];

    [array addObject:{v17, v19, v20, v21, v22}];
  }

  return array;
}

- (id)_accessibilityGridCollectionView
{
  v2 = [(MOSuggestionCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"assetGridView"];
  v3 = [v2 safeSwiftValueForKey:@"gridCollectionView"];

  return v3;
}

@end