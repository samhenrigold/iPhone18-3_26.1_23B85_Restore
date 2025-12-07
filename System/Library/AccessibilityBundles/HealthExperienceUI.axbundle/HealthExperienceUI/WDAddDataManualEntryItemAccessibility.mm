@interface WDAddDataManualEntryItemAccessibility
- (id)_createWDManualDataEntryTableViewCellWithDisplayName:(id)name unitName:(id)unitName entryType:(unint64_t)type highlightWhenEditing:(BOOL)editing;
@end

@implementation WDAddDataManualEntryItemAccessibility

- (id)_createWDManualDataEntryTableViewCellWithDisplayName:(id)name unitName:(id)unitName entryType:(unint64_t)type highlightWhenEditing:(BOOL)editing
{
  editingCopy = editing;
  nameCopy = name;
  unitNameCopy = unitName;
  v17 = 0;
  v16.receiver = self;
  v16.super_class = WDAddDataManualEntryItemAccessibility;
  v12 = [(WDAddDataManualEntryItemAccessibility *)&v16 _createWDManualDataEntryTableViewCellWithDisplayName:nameCopy unitName:unitNameCopy entryType:type highlightWhenEditing:editingCopy];
  v13 = __UIAccessibilitySafeClass();

  if (v17 == 1)
  {
    abort();
  }

  accessibilityLabel = [(WDAddDataManualEntryItemAccessibility *)self accessibilityLabel];
  [v13 _accessibilitySetRetainedValue:accessibilityLabel forKey:@"AXDisplayLabelOverrideKey"];

  [v13 _accessibilityLoadAccessibilityInformation];

  return v13;
}

@end