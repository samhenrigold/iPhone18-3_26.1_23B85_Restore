@interface MFExpandedMessageCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityElements;
- (id)accessibilityLabel;
@end

@implementation MFExpandedMessageCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WKContentView"];
  [validationsCopy validateClass:@"MFExpandedMessageCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"MFExpandedMessageCell" hasInstanceMethod:@"messageViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UICollectionView" hasInstanceMethod:@"_accessibilityShouldUseCollectionViewCellAccessibilityElements" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UICollectionViewCellAccessibilityElement" hasInstanceMethod:@"indexPath" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFModernAddressAtom" hasInstanceVariable:@"_atomView" withType:"CNAtomView"];
}

- (id)accessibilityLabel
{
  v3 = [(MFExpandedMessageCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_4];
  v4 = [v3 safeValueForKey:@"_atomView"];
  accessibilityLabel = [v4 accessibilityLabel];

  v12 = 0;
  objc_opt_class();
  v6 = __UIAccessibilityCastAsSafeCategory();
  _accessibilityMessageIndexDescription = [v6 _accessibilityMessageIndexDescription];

  if (_accessibilityMessageIndexDescription)
  {
    accessibilityLabel2 = __AXStringForVariables();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MFExpandedMessageCellAccessibility;
    accessibilityLabel2 = [(MFExpandedMessageCellAccessibility *)&v11 accessibilityLabel];
  }

  v9 = accessibilityLabel2;

  return v9;
}

uint64_t __56__MFExpandedMessageCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Mfmodernaddres.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityDragSourceDescriptors
{
  v3 = [(MFExpandedMessageCellAccessibility *)self _accessibilityDescendantOfType:NSClassFromString(&cfstr_Wkcontentview.isa)];
  v4 = v3;
  if (v3)
  {
    accessibilityDragSourceDescriptors = [v3 accessibilityDragSourceDescriptors];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MFExpandedMessageCellAccessibility;
    accessibilityDragSourceDescriptors = [(MFExpandedMessageCellAccessibility *)&v8 accessibilityDragSourceDescriptors];
  }

  v6 = accessibilityDragSourceDescriptors;

  return v6;
}

- (id)accessibilityElements
{
  v12[1] = *MEMORY[0x29EDCA608];
  v3 = [(MFExpandedMessageCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v4 = [v3 safeBoolForKey:@"_accessibilityShouldUseCollectionViewCellAccessibilityElements"];

  if (v4 && (v11 = 0, objc_opt_class(), -[MFExpandedMessageCellAccessibility safeValueForKey:](self, "safeValueForKey:", @"messageViewController"), v5 = objc_claimAutoreleasedReturnValue(), __UIAccessibilityCastAsClass(), v6 = objc_claimAutoreleasedReturnValue(), v5, [v6 view], v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    v12[0] = v7;
    accessibilityElements = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:1];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MFExpandedMessageCellAccessibility;
    accessibilityElements = [(MFExpandedMessageCellAccessibility *)&v10 accessibilityElements];
  }

  return accessibilityElements;
}

@end