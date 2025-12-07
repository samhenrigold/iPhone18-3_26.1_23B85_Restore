@interface EKEventDateEditItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySetupDateCellForKey:(id)key;
- (void)_axUpdateEndDateCellLabel;
- (void)_datePickerChanged:(id)changed;
- (void)_showInlineControls:(int64_t)controls forSubitem:(int64_t)subitem includingInlineDatePicker:(BOOL)picker;
- (void)editor:(id)editor didSelectSubitem:(unint64_t)subitem;
@end

@implementation EKEventDateEditItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKEventDateEditItem" hasInstanceMethod:@"_modernEndDateCell" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKEventDateEditItem" hasInstanceMethod:@"_endDateIsBeforeStartDate" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"EKEventDateEditItem" hasInstanceMethod:@"_datePickerChanged:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"EKEventDateEditItem" isKindOfClass:@"EKEventEditItem"];
  [validationsCopy validateClass:@"EKEventDateEditItem" hasInstanceMethod:@"_rowForSubitem:" withFullSignature:{"q", "q", 0}];
  [validationsCopy validateClass:@"EKCalendarItemEditor" hasInstanceMethod:@"tableSectionForEditItem:" withFullSignature:{"Q", "@", 0}];
  [validationsCopy validateClass:@"EKEventDateEditItem" hasInstanceVariable:@"_startDatePickerCell" withType:"UITableViewCell"];
  [validationsCopy validateClass:@"EKEventDateEditItem" hasInstanceVariable:@"_endDatePickerCell" withType:"UITableViewCell"];
  [validationsCopy validateClass:@"EKEventDateEditItem" hasInstanceVariable:@"_startDatePicker" withType:"UIDatePicker"];
  [validationsCopy validateClass:@"EKEventDateEditItem" hasInstanceVariable:@"_endDatePicker" withType:"UIDatePicker"];
  [validationsCopy validateClass:@"EKEventDateEditItem" hasInstanceMethod:@"_showInlineControls:forSubitem:includingInlineDatePicker:" withFullSignature:{"v", "q", "q", "B", 0}];
  [validationsCopy validateClass:@"EKEventDateEditItem" hasInstanceVariable:@"_selectedSubitem" withType:"q"];
  [validationsCopy validateClass:@"EKEventDateEditItem" hasInstanceVariable:@"_currentPickerMode" withType:"q"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = EKEventDateEditItemAccessibility;
  [(EKEventDateEditItemAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  [(EKEventDateEditItemAccessibility *)self _axUpdateEndDateCellLabel];
  v3 = [(EKEventDateEditItemAccessibility *)self safeValueForKey:@"_modernEndDateCell"];
  [v3 _accessibilitySetAssignedValue:self forKey:@"AXEKEventDateEditItem"];

  [(EKEventDateEditItemAccessibility *)self _accessibilitySetupDateCellForKey:@"_start"];
  [(EKEventDateEditItemAccessibility *)self _accessibilitySetupDateCellForKey:@"_end"];
}

- (void)editor:(id)editor didSelectSubitem:(unint64_t)subitem
{
  v7.receiver = self;
  v7.super_class = EKEventDateEditItemAccessibility;
  [(EKEventDateEditItemAccessibility *)&v7 editor:editor didSelectSubitem:?];
  v6 = MEMORY[0x29EDCA5F8];
  AXPerformBlockAsynchronouslyOnMainThread();
  [(EKEventDateEditItemAccessibility *)self _accessibilitySetupDateCellForKey:@"_start", v6, 3221225472, __60__EKEventDateEditItemAccessibility_editor_didSelectSubitem___block_invoke, &unk_29F2BCB10, self, subitem];
  [(EKEventDateEditItemAccessibility *)self _accessibilitySetupDateCellForKey:@"_end"];
}

void __60__EKEventDateEditItemAccessibility_editor_didSelectSubitem___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v17 = MEMORY[0x29EDCA5F8];
  v18 = 3221225472;
  v19 = __60__EKEventDateEditItemAccessibility_editor_didSelectSubitem___block_invoke_2;
  v20 = &unk_29F2BCAC0;
  v3 = *(a1 + 40);
  v21 = *(a1 + 32);
  v22 = &v24;
  v23 = v3;
  AXPerformSafeBlock();
  LOBYTE(v13) = 0;
  v4 = [*(a1 + 32) safeValueForKey:@"delegate"];
  v5 = __UIAccessibilitySafeClass();

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v11 = MEMORY[0x29EDCA5F8];
  v12 = v5;
  AXPerformSafeBlock();
  v6 = v14[3];

  _Block_object_dispose(&v13, 8);
  v7 = [MEMORY[0x29EDB9FE0] indexPathForRow:v25[3] inSection:{v6, v11, 3221225472, __60__EKEventDateEditItemAccessibility_editor_didSelectSubitem___block_invoke_3, &unk_29F2BCAE8}];
  objc_opt_class();
  v8 = [v12 safeValueForKey:@"tableView"];
  v9 = __UIAccessibilityCastAsClass();

  v10 = [v9 cellForRowAtIndexPath:v7];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v10);

  _Block_object_dispose(&v24, 8);
}

void *__60__EKEventDateEditItemAccessibility_editor_didSelectSubitem___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _rowForSubitem:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void *__60__EKEventDateEditItemAccessibility_editor_didSelectSubitem___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) tableSectionForEditItem:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_datePickerChanged:(id)changed
{
  v4.receiver = self;
  v4.super_class = EKEventDateEditItemAccessibility;
  [(EKEventDateEditItemAccessibility *)&v4 _datePickerChanged:changed];
  [(EKEventDateEditItemAccessibility *)self _axUpdateEndDateCellLabel];
}

- (void)_showInlineControls:(int64_t)controls forSubitem:(int64_t)subitem includingInlineDatePicker:(BOOL)picker
{
  pickerCopy = picker;
  v9 = [(EKEventDateEditItemAccessibility *)self safeIntegerForKey:@"_selectedSubitem"];
  v10 = [(EKEventDateEditItemAccessibility *)self safeIntegerForKey:@"_currentPickerMode"];
  v13.receiver = self;
  v13.super_class = EKEventDateEditItemAccessibility;
  [(EKEventDateEditItemAccessibility *)&v13 _showInlineControls:controls forSubitem:subitem includingInlineDatePicker:pickerCopy];
  if (v9 != subitem || v10 != controls)
  {
    if (subitem == 1)
    {
      v12 = @"_start";
    }

    else
    {
      if (subitem != 2)
      {
LABEL_10:
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
        return;
      }

      v12 = @"_end";
    }

    [(EKEventDateEditItemAccessibility *)self _accessibilitySetupDateCellForKey:v12];
    goto LABEL_10;
  }
}

- (void)_axUpdateEndDateCellLabel
{
  v4 = [(EKEventDateEditItemAccessibility *)self safeValueForKey:@"_modernEndDateCell"];
  if ([(EKEventDateEditItemAccessibility *)self safeBoolForKey:@"_endDateIsBeforeStartDate"])
  {
    v3 = accessibilityLocalizedString(@"invalid.end.date");
  }

  else
  {
    v3 = &stru_2A2195B98;
  }

  [v4 _accessibilitySetAssignedValue:v3 forKey:@"AXAddendumString"];
}

- (void)_accessibilitySetupDateCellForKey:(id)key
{
  keyCopy = key;
  v5 = [keyCopy stringByAppendingString:@"DatePickerCell"];
  v9 = [(EKEventDateEditItemAccessibility *)self safeValueForKey:v5];

  v6 = objc_opt_new();
  v7 = [keyCopy stringByAppendingString:@"DatePicker"];

  v8 = [(EKEventDateEditItemAccessibility *)self safeValueForKey:v7];
  [v6 axSafelyAddObject:v8];

  [v9 setAccessibilityElements:v6];
}

@end