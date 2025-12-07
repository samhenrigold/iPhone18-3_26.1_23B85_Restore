@interface EKEventDetailAttendeesCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axStringForParticipants:(id)participants;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation EKEventDetailAttendeesCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKEventDetailAttendeesListView" hasInstanceVariable:@"_inviteeNames" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"EKEventDetailAttendeesCell" hasInstanceMethod:@"_attendeesListView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKEventDetailAttendeesListView" hasInstanceMethod:@"groupsNames" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"EKEventDetailAttendeesCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"EKEventDetailAttendeesCell" hasInstanceVariable:@"_countLabel" withType:"UILabel"];
}

- (id)_axStringForParticipants:(id)participants
{
  v24 = *MEMORY[0x29EDCA608];
  participantsCopy = participants;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [participantsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_21;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v20;
  do
  {
    v8 = 0;
    do
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(participantsCopy);
      }

      v9 = *(*(&v19 + 1) + 8 * v8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        name = [v9 name];
LABEL_10:
        v11 = name;
        v12 = __UIAXStringForVariables();

        v6 = v12;
        goto LABEL_11;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        name = [v9 string];
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        displayString = [v9 displayString];
        string = [displayString string];
        v14 = __UIAXStringForVariables();

        if ([v9 isOptionalParticipant])
        {
          v18 = accessibilityLocalizedString(@"optional.attendee");
          v6 = __UIAXStringForVariables();
        }

        else
        {
          v6 = v14;
        }
      }

      else
      {
        _AXAssert();
      }

LABEL_11:
      ++v8;
    }

    while (v5 != v8);
    v15 = [participantsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    v5 = v15;
  }

  while (v15);
LABEL_21:

  return v6;
}

- (id)accessibilityLabel
{
  v3 = [(EKEventDetailAttendeesCellAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(EKEventDetailAttendeesCellAccessibility *)self safeUIViewForKey:@"_countLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityValue
{
  v3 = [(EKEventDetailAttendeesCellAccessibility *)self safeValueForKey:@"_attendeesListView"];
  v4 = [v3 safeValueForKey:@"groupsNames"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    LOBYTE(v41) = 0;
    v6 = [v3 safeValueForKey:@"_inviteeNames"];
    v7 = __UIAccessibilitySafeClass();

    v47 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy_;
    v45 = __Block_byref_object_dispose_;
    v46 = 0;
    v8 = v7;
    AXPerformSafeBlock();
    v9 = v42[5];

    _Block_object_dispose(&v41, 8);
    v10 = __UIAccessibilitySafeClass();

    if (v47 == 1)
    {
      goto LABEL_24;
    }

    if ([v10 count])
    {
      v11 = MobileCalAXLocalizedString(@"invite.attending");
      v12 = [(EKEventDetailAttendeesCellAccessibility *)self _axStringForParticipants:v10];
      v13 = __UIAXStringForVariables();

      v14 = __UIAXStringForVariables();
    }

    else
    {
      v14 = 0;
    }

    v47 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy_;
    v45 = __Block_byref_object_dispose_;
    v46 = 0;
    v19 = v8;
    AXPerformSafeBlock();
    v20 = v42[5];

    _Block_object_dispose(&v41, 8);
    v21 = __UIAccessibilitySafeClass();

    if (v47 == 1)
    {
      goto LABEL_24;
    }

    if ([v21 count])
    {
      v22 = MobileCalAXLocalizedString(@"invite.tentative");
      v23 = [(EKEventDetailAttendeesCellAccessibility *)self _axStringForParticipants:v21];
      v24 = __UIAXStringForVariables();

      v25 = __UIAXStringForVariables();

      v14 = v25;
    }

    v47 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy_;
    v45 = __Block_byref_object_dispose_;
    v46 = 0;
    v26 = v19;
    AXPerformSafeBlock();
    v27 = v42[5];

    _Block_object_dispose(&v41, 8);
    v28 = __UIAccessibilitySafeClass();

    if (v47 == 1)
    {
      goto LABEL_24;
    }

    if ([v28 count])
    {
      v29 = MobileCalAXLocalizedString(@"invite.declined");
      v30 = [(EKEventDetailAttendeesCellAccessibility *)self _axStringForParticipants:v28];
      v31 = __UIAXStringForVariables();

      v32 = __UIAXStringForVariables();

      v14 = v32;
    }

    v47 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy_;
    v45 = __Block_byref_object_dispose_;
    v46 = 0;
    v33 = v26;
    AXPerformSafeBlock();
    v34 = v42[5];

    _Block_object_dispose(&v41, 8);
    v35 = __UIAccessibilitySafeClass();

    if (v47 == 1)
    {
LABEL_24:
      abort();
    }

    if ([v35 count])
    {
      v36 = MobileCalAXLocalizedString(@"invite.pending");
      v37 = [(EKEventDetailAttendeesCellAccessibility *)self _axStringForParticipants:v35];
      v38 = __UIAXStringForVariables();

      v39 = __UIAXStringForVariables();

      v14 = v39;
    }
  }

  else
  {
    v15 = [v3 safeValueForKey:@"_ungrouped"];
    if ([v15 count])
    {
      v16 = accessibilityLocalizedString(@"invited.status");
      v17 = [(EKEventDetailAttendeesCellAccessibility *)self _axStringForParticipants:v15];
      v18 = __UIAXStringForVariables();

      v14 = __UIAXStringForVariables();
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

uint64_t __61__EKEventDetailAttendeesCellAccessibility_accessibilityValue__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) objectAtIndex:0];

  return MEMORY[0x2A1C71028]();
}

uint64_t __61__EKEventDetailAttendeesCellAccessibility_accessibilityValue__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) objectAtIndex:1];

  return MEMORY[0x2A1C71028]();
}

uint64_t __61__EKEventDetailAttendeesCellAccessibility_accessibilityValue__block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) objectAtIndex:2];

  return MEMORY[0x2A1C71028]();
}

uint64_t __61__EKEventDetailAttendeesCellAccessibility_accessibilityValue__block_invoke_4(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) objectAtIndex:3];

  return MEMORY[0x2A1C71028]();
}

@end