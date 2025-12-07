@interface ActionBrickItemCellAccessibility
- (id)_accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation ActionBrickItemCellAccessibility

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, MEMORY[0x29ED34A70](@"SeymourUI.DownloadButton", a2)}];
  v4 = [(ActionBrickItemCellAccessibility *)self _accessibilityTextForSubhierarchyIncludingHeaders:0 focusableItems:1 exclusions:0 classExclusions:v3];
  v6 = _accessibilityReplaceStylsticBulletsForSpeaking(v4, v5);

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ActionBrickItemCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ActionBrickItemCellAccessibility *)&v3 accessibilityTraits];
}

- (id)_accessibilityCustomActions
{
  v10[1] = *MEMORY[0x29EDCA608];
  v2 = [(ActionBrickItemCellAccessibility *)self _accessibilityDescendantOfType:MEMORY[0x29ED34A70](@"SeymourUI.DownloadButton", a2)];
  accessibilityLabel = [v2 accessibilityLabel];
  if ([accessibilityLabel length])
  {
    v4 = objc_alloc(MEMORY[0x29EDC78E0]);
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __63__ActionBrickItemCellAccessibility__accessibilityCustomActions__block_invoke;
    v8[3] = &unk_29F2F66E0;
    v9 = v2;
    v5 = [v4 initWithName:accessibilityLabel actionHandler:v8];
    v10[0] = v5;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end