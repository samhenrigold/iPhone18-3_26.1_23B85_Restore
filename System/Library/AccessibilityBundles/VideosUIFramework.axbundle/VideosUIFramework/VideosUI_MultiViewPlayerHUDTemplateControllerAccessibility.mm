@interface VideosUI_MultiViewPlayerHUDTemplateControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateVisibleCellsWithPlaybackIdentifiers:(id)identifiers;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation VideosUI_MultiViewPlayerHUDTemplateControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v17 = *MEMORY[0x29EDCA608];
  v15.receiver = self;
  v15.super_class = VideosUI_MultiViewPlayerHUDTemplateControllerAccessibility;
  [(VideosUI_MultiViewPlayerHUDTemplateControllerAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
  v14 = 0;
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  view = [v2 view];

  v4 = [view _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_15];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    v8 = *MEMORY[0x29EDC7FA0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * i) setAccessibilityTraits:v8];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VideosUI_MultiViewPlayerHUDTemplateControllerAccessibility;
  [(VideosUI_MultiViewPlayerHUDTemplateControllerAccessibility *)&v4 viewDidAppear:appear];
  [(VideosUI_MultiViewPlayerHUDTemplateControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)updateVisibleCellsWithPlaybackIdentifiers:(id)identifiers
{
  v4.receiver = self;
  v4.super_class = VideosUI_MultiViewPlayerHUDTemplateControllerAccessibility;
  [(VideosUI_MultiViewPlayerHUDTemplateControllerAccessibility *)&v4 updateVisibleCellsWithPlaybackIdentifiers:identifiers];
  [(VideosUI_MultiViewPlayerHUDTemplateControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end