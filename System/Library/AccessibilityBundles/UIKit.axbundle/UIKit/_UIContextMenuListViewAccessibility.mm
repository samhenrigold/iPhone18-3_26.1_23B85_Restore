@interface _UIContextMenuListViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_configureCell:(id)cell inCollectionView:(id)view atIndexPath:(id)path forElement:(id)element section:(id)section size:(int64_t)size;
@end

@implementation _UIContextMenuListViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  v4 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = "@";
  [location[0] validateClass:@"_UIContextMenuListView" hasInstanceMethod:@"_configureCell: inCollectionView: atIndexPath: forElement: section: size:" withFullSignature:{"v", "@", "@", "@", "@", "@", "q", 0}];
  [location[0] validateClass:@"_UIContextMenuCell" hasInstanceMethod:@"actionView" withFullSignature:{v3, 0}];
  objc_storeStrong(v5, v4);
}

- (void)_configureCell:(id)cell inCollectionView:(id)view atIndexPath:(id)path forElement:(id)element section:(id)section size:(int64_t)size
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cell);
  v36 = 0;
  objc_storeStrong(&v36, view);
  v35 = 0;
  objc_storeStrong(&v35, path);
  v34 = 0;
  objc_storeStrong(&v34, element);
  v33 = 0;
  objc_storeStrong(&v33, section);
  sizeCopy = size;
  v31.receiver = selfCopy;
  v31.super_class = _UIContextMenuListViewAccessibility;
  [(_UIContextMenuListViewAccessibility *)&v31 _configureCell:location[0] inCollectionView:v36 atIndexPath:v35 forElement:v34 section:v33 size:size];
  v29 = 0;
  objc_opt_class();
  v26 = [location[0] safeValueForKey:@"actionView"];
  v28 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](v26);
  v27 = MEMORY[0x29EDC9748](v28);
  objc_storeStrong(&v28, 0);
  v30 = v27;
  accessibilityLabel = [v34 accessibilityLabel];
  [(_UIContextMenuCellContentViewAccessibility *)v30 _accessibilitySetStoredLabelFromMenuElement:accessibilityLabel];
  *&v8 = MEMORY[0x29EDC9740](accessibilityLabel).n128_u64[0];
  accessibilityValue = [v34 accessibilityValue];
  [(_UIContextMenuCellContentViewAccessibility *)v30 _accessibilitySetStoredValueFromMenuElement:accessibilityValue];
  *&v9 = MEMORY[0x29EDC9740](accessibilityValue).n128_u64[0];
  accessibilityHint = [v34 accessibilityHint];
  [(_UIContextMenuCellContentViewAccessibility *)v30 _accessibilitySetStoredHintFromMenuElement:accessibilityHint];
  *&v10 = MEMORY[0x29EDC9740](accessibilityHint).n128_u64[0];
  accessibilityIdentifier = [v34 accessibilityIdentifier];
  [(_UIContextMenuCellContentViewAccessibility *)v30 _accessibilitySetStoredIdentifierFromMenuElement:accessibilityIdentifier];
  *&v11 = MEMORY[0x29EDC9740](accessibilityIdentifier).n128_u64[0];
  v19 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v34, "accessibilityTraits", v11)}];
  [(_UIContextMenuCellContentViewAccessibility *)v30 _accessibilitySetStoredTraitsFromMenuElement:v19];
  *&v12 = MEMORY[0x29EDC9740](v19).n128_u64[0];
  accessibilityUserInputLabels = [v34 accessibilityUserInputLabels];
  [(_UIContextMenuCellContentViewAccessibility *)v30 _accessibilitySetStoredUserInputLabelsFromMenuElement:accessibilityUserInputLabels];
  *&v13 = MEMORY[0x29EDC9740](accessibilityUserInputLabels).n128_u64[0];
  accessibilityElementsHidden = [v34 accessibilityElementsHidden];
  [(_UIContextMenuCellContentViewAccessibility *)v30 _accessibilitySetStoredElementsHidden:accessibilityElementsHidden];
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

@end