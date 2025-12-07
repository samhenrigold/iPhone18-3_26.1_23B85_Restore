@interface HUMediaAccessControlEditorTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityHomeUIHandleTVandSpeakersTableViewCells;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUMediaAccessControlEditorTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUMediaAccessControlEditorTableViewController" isKindOfClass:@"UITableViewController"];
  [validationsCopy validateClass:@"HUItemTableViewController" hasInstanceMethod:@"itemManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUItemTableViewController" isKindOfClass:@"UITableViewController"];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HUMediaAccessControlEditorTableViewControllerAccessibility;
  [(HUMediaAccessControlEditorTableViewControllerAccessibility *)&v4 viewWillAppear:appear];
  [(HUMediaAccessControlEditorTableViewControllerAccessibility *)self _accessibilityHomeUIHandleTVandSpeakersTableViewCells];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = HUMediaAccessControlEditorTableViewControllerAccessibility;
  [(HUMediaAccessControlEditorTableViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(HUMediaAccessControlEditorTableViewControllerAccessibility *)self _accessibilityHomeUIHandleTVandSpeakersTableViewCells];
}

- (void)_accessibilityHomeUIHandleTVandSpeakersTableViewCells
{
  v35 = *MEMORY[0x29EDCA608];
  v25 = [MEMORY[0x29EDB9FE0] indexPathForRow:0 inSection:0];
  section = [v25 section];
  v33 = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v24 = v4;
  tableView = [v4 tableView];
  visibleCells = [tableView visibleCells];

  v7 = [(HUMediaAccessControlEditorTableViewControllerAccessibility *)self safeValueForKey:@"itemManager"];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = visibleCells;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    v11 = 0x29EDBA000uLL;
    v26 = section;
    v27 = v7;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v33 = 0;
        objc_opt_class();
        v14 = [v7 displayedSectionIdentifierForSectionIndex:section];
        v15 = __UIAccessibilityCastAsClass();

        if (v33 == 1)
        {
          abort();
        }

        if ([v15 isEqualToString:@"ACCESS_CONTROL_SECTION"])
        {
          v16 = *(v11 + 248);
          v17 = accessibilityHomeUILocalizedString(@"allow.speaker.and.tv.access.option");
          textLabel = [v13 textLabel];
          [textLabel text];
          v19 = v9;
          v20 = v11;
          v22 = v21 = v10;
          v23 = [v16 localizedStringWithFormat:v17, v22];
          [v13 setAccessibilityHint:v23];

          v10 = v21;
          v11 = v20;
          v9 = v19;

          section = v26;
          v7 = v27;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }
}

@end