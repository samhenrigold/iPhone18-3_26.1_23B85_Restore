@interface MTAAlarmTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetDetailLabelsForVisibleCells;
- (void)_axSetHeaderLabelForSleepSection:(id)section;
- (void)viewDidLoad;
@end

@implementation MTAAlarmTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTAAlarmTableViewController" isKindOfClass:@"UITableViewController"];
  [validationsCopy validateClass:@"MTAAlarmTableViewController" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAAlarmTableViewController" hasInstanceMethod:@"_isAlarmsSection:" withFullSignature:{"B", "q", 0}];
  [validationsCopy validateClass:@"MTAAlarmTableViewController" hasInstanceMethod:@"_isWakeAlarmSection:" withFullSignature:{"B", "q", 0}];
  [validationsCopy validateClass:@"MTAAlarmTableViewController" hasInstanceMethod:@"tableView:viewForHeaderInSection:" withFullSignature:{"@", "@", "q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MTAAlarmTableViewControllerAccessibility;
  [(MTAAlarmTableViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MTAAlarmTableViewControllerAccessibility *)self _axSetDetailLabelsForVisibleCells];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MTAAlarmTableViewControllerAccessibility;
  [(MTAAlarmTableViewControllerAccessibility *)&v3 viewDidLoad];
  [(MTAAlarmTableViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axSetDetailLabelsForVisibleCells
{
  v39 = *MEMORY[0x29EDCA608];
  LOBYTE(v21) = 0;
  objc_opt_class();
  v20 = __UIAccessibilityCastAsClass();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  tableView = [v20 tableView];
  obj = [tableView indexPathsForVisibleRows];

  v4 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v4)
  {
    v19 = *v35;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v34 + 1) + 8 * i);
        v21 = 0;
        v22 = &v21;
        v23 = 0x2020000000;
        LOBYTE(v24) = 0;
        v27 = MEMORY[0x29EDCA5F8];
        v28 = 3221225472;
        v29 = __77__MTAAlarmTableViewControllerAccessibility__axSetDetailLabelsForVisibleCells__block_invoke;
        v30 = &unk_29F2DAB50;
        v32 = v6;
        v33 = &v21;
        selfCopy = self;
        AXPerformSafeBlock();
        v7 = *(v22 + 24);
        _Block_object_dispose(&v21, 8);
        if (v7 == 1)
        {
          v8 = [(MTAAlarmTableViewControllerAccessibility *)self safeValueForKey:@"dataSource"];
          v21 = 0;
          v22 = &v21;
          v23 = 0x3032000000;
          v24 = __Block_byref_object_copy_;
          v25 = __Block_byref_object_dispose_;
          v26 = 0;
          v9 = v8;
          AXPerformSafeBlock();
          v10 = v22[5];

          _Block_object_dispose(&v21, 8);
          tableView2 = [v20 tableView];
          v12 = [tableView2 cellForRowAtIndexPath:v6];

          LOBYTE(v21) = 0;
          objc_opt_class();
          v13 = __UIAccessibilityCastAsSafeCategory();
          if (v21 == 1)
          {
            abort();
          }

          v14 = v13;
          [v13 _axSetDetailLabelForAlarm:v10];
        }

        v21 = 0;
        v22 = &v21;
        v23 = 0x2020000000;
        LOBYTE(v24) = 0;
        AXPerformSafeBlock();
        v15 = *(v22 + 24);
        _Block_object_dispose(&v21, 8);
        if (v15 == 1)
        {
          tableView3 = [v20 tableView];
          v17 = [tableView3 headerViewForSection:{objc_msgSend(v6, "section")}];

          [(MTAAlarmTableViewControllerAccessibility *)self _axSetHeaderLabelForSleepSection:v17];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v4);
  }
}

void *__77__MTAAlarmTableViewControllerAccessibility__axSetDetailLabelsForVisibleCells__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isAlarmsSection:{objc_msgSend(*(a1 + 40), "section")}];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __77__MTAAlarmTableViewControllerAccessibility__axSetDetailLabelsForVisibleCells__block_invoke_309(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) alarmAtRow:{objc_msgSend(*(a1 + 40), "row")}];

  return MEMORY[0x2A1C71028]();
}

void *__77__MTAAlarmTableViewControllerAccessibility__axSetDetailLabelsForVisibleCells__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _isWakeAlarmSection:{objc_msgSend(*(a1 + 40), "section")}];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_axSetHeaderLabelForSleepSection:(id)section
{
  sectionCopy = section;
  v4 = [sectionCopy _accessibilityDescendantOfType:objc_opt_class()];
  objc_opt_class();
  contentConfiguration = [sectionCopy contentConfiguration];
  v6 = __UIAccessibilityCastAsClass();

  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  attributedText = [v6 attributedText];
  string = [attributedText string];
  [v4 setAccessibilityLabel:string];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = MTAAlarmTableViewControllerAccessibility;
  v7 = [(MTAAlarmTableViewControllerAccessibility *)&v15 tableView:viewCopy viewForHeaderInSection:section];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  AXPerformSafeBlock();
  LODWORD(section) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  if (section == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LOBYTE(v11) = 0;
      objc_opt_class();
      v8 = __UIAccessibilityCastAsClass();
      if (v11 == 1)
      {
        abort();
      }

      v9 = v8;
      [(MTAAlarmTableViewControllerAccessibility *)self _axSetHeaderLabelForSleepSection:v8];
    }
  }

  return v7;
}

void *__77__MTAAlarmTableViewControllerAccessibility_tableView_viewForHeaderInSection___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isWakeAlarmSection:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end