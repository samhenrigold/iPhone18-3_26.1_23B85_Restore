@interface PKGroupsControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_moveGroup:(id)group fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex notify:(BOOL)notify;
@end

@implementation PKGroupsControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKGroupsController" hasInstanceMethod:@"indexOfSeparationGroup" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"PKGroupsController" hasInstanceMethod:@"_moveGroup:fromIndex:toIndex:notify:" withFullSignature:{"v", "@", "Q", "Q", "B", 0}];
  [validationsCopy validateClass:@"PKGroupsController" hasInstanceVariable:@"_groups" withType:"NSMutableArray"];
}

- (void)_moveGroup:(id)group fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex notify:(BOOL)notify
{
  notifyCopy = notify;
  groupCopy = group;
  v38.receiver = self;
  v38.super_class = PKGroupsControllerAccessibility;
  [(PKGroupsControllerAccessibility *)&v38 _moveGroup:groupCopy fromIndex:index toIndex:toIndex notify:notifyCopy];
  v11 = [(PKGroupsControllerAccessibility *)self safeArrayForKey:@"_groups"];
  if ([v11 count] > toIndex)
  {
    v12 = [(PKGroupsControllerAccessibility *)self safeValueForKey:@"indexOfSeparationGroup"];
    integerValue = [v12 integerValue];

    if (integerValue == toIndex)
    {
      v14 = *MEMORY[0x29EDC7EA8];
      v15 = accessibilityLocalizedString(@"top.card.default.announcement");
      UIAccessibilityPostNotification(v14, v15);
LABEL_10:

      goto LABEL_11;
    }

    if (toIndex >= index)
    {
      v37 = 0;
      v31 = 0;
      v32 = &v31;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy_;
      v35 = __Block_byref_object_dispose_;
      v36 = 0;
      v29 = v11;
      AXPerformSafeBlock();
      v20 = v32[5];

      _Block_object_dispose(&v31, 8);
      passes = [v20 passes];

      firstObject = [passes firstObject];
      v15 = __UIAccessibilitySafeClass();

      if (v37 != 1)
      {
        v19 = @"card.moved.front.card";
        goto LABEL_9;
      }
    }

    else
    {
      v37 = 0;
      v31 = 0;
      v32 = &v31;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy_;
      v35 = __Block_byref_object_dispose_;
      v36 = 0;
      v30 = v11;
      AXPerformSafeBlock();
      v16 = v32[5];

      _Block_object_dispose(&v31, 8);
      passes2 = [v16 passes];

      firstObject2 = [passes2 firstObject];
      v15 = __UIAccessibilitySafeClass();

      if (v37 != 1)
      {
        v19 = @"card.moved.behind.card";
LABEL_9:
        localizedDescription = [v15 localizedDescription];
        organizationName = [v15 organizationName];
        v25 = __UIAXStringForVariables();

        LODWORD(localizedDescription) = *MEMORY[0x29EDC7EA8];
        v26 = MEMORY[0x29EDBA0F8];
        v27 = accessibilityLocalizedString(v19);
        v28 = [v26 stringWithFormat:v27, v25, @"__AXStringForVariablesSentinel"];
        UIAccessibilityPostNotification(localizedDescription, v28);

        goto LABEL_10;
      }
    }

    abort();
  }

LABEL_11:
}

uint64_t __71__PKGroupsControllerAccessibility__moveGroup_fromIndex_toIndex_notify___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) objectAtIndex:*(a1 + 48) + 1];

  return MEMORY[0x2A1C71028]();
}

uint64_t __71__PKGroupsControllerAccessibility__moveGroup_fromIndex_toIndex_notify___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) objectAtIndex:*(a1 + 48) - 1];

  return MEMORY[0x2A1C71028]();
}

@end