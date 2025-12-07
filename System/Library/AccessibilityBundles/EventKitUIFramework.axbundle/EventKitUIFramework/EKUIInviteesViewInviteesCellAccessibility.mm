@interface EKUIInviteesViewInviteesCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (void)updateWithParticipantForSorting:(id)sorting availabilityType:(int64_t)type hideStatus:(BOOL)status showSpinner:(BOOL)spinner animated:(BOOL)animated;
- (void)updateWithParticipantForSorting:(id)sorting hideStatus:(BOOL)status;
@end

@implementation EKUIInviteesViewInviteesCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKParticipantForSorting" hasInstanceMethod:@"participant" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKUIInviteesViewInviteesCell" hasInstanceMethod:@"commentLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKUIInviteesViewInviteesCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKUIInviteesViewInviteesCell" hasInstanceMethod:@"updateWithParticipantForSorting:hideStatus:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"EKUIInviteesViewInviteesCell" hasInstanceMethod:@"updateWithParticipantForSorting: availabilityType: hideStatus: showSpinner: animated:" withFullSignature:{"v", "@", "q", "B", "B", "B", 0}];
}

- (void)updateWithParticipantForSorting:(id)sorting availabilityType:(int64_t)type hideStatus:(BOOL)status showSpinner:(BOOL)spinner animated:(BOOL)animated
{
  animatedCopy = animated;
  spinnerCopy = spinner;
  statusCopy = status;
  sortingCopy = sorting;
  v24.receiver = self;
  v24.super_class = EKUIInviteesViewInviteesCellAccessibility;
  [(EKUIInviteesViewInviteesCellAccessibility *)&v24 updateWithParticipantForSorting:sortingCopy availabilityType:type hideStatus:statusCopy showSpinner:spinnerCopy animated:animatedCopy];
  v13 = [sortingCopy safeValueForKey:@"participant"];
  v14 = __UIAccessibilitySafeClass();

  v15 = [(EKUIInviteesViewInviteesCellAccessibility *)self safeValueForKey:@"nameLabel"];
  accessibilityLabel = [v15 accessibilityLabel];

  if ([v14 participantRole] == 3)
  {
    v17 = accessibilityLocalizedString(@"organizer");
  }

  else
  {
    v17 = 0;
  }

  if ([v14 participantType] == 2)
  {
    v18 = accessibilityLocalizedString(@"invitee.type.room");
  }

  else
  {
    v18 = 0;
  }

  v19 = type - 1;
  if (type - 1) <= 6 && ((0x6Bu >> v19))
  {
    v20 = accessibilityLocalizedString(off_29F2BCD20[v19]);
  }

  else
  {
    v20 = 0;
  }

  participantStatus = [v14 participantStatus];
  if (participantStatus > 7)
  {
    v22 = 0;
  }

  else
  {
    v22 = accessibilityLocalizedString(off_29F2BCD58[participantStatus]);
  }

  v23 = __UIAXStringForVariables();
  [(EKUIInviteesViewInviteesCellAccessibility *)self setAccessibilityLabel:v23, v22, v20, v17, v18, @"__AXStringForVariablesSentinel"];
}

- (id)accessibilityValue
{
  v2 = [(EKUIInviteesViewInviteesCellAccessibility *)self safeValueForKey:@"commentLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (void)updateWithParticipantForSorting:(id)sorting hideStatus:(BOOL)status
{
  statusCopy = status;
  sortingCopy = sorting;
  v16.receiver = self;
  v16.super_class = EKUIInviteesViewInviteesCellAccessibility;
  [(EKUIInviteesViewInviteesCellAccessibility *)&v16 updateWithParticipantForSorting:sortingCopy hideStatus:statusCopy];
  v7 = [sortingCopy safeValueForKey:@"participant"];
  v8 = __UIAccessibilitySafeClass();

  v9 = [(EKUIInviteesViewInviteesCellAccessibility *)self safeValueForKey:@"nameLabel"];
  accessibilityLabel = [v9 accessibilityLabel];

  if ([v8 participantRole] == 3)
  {
    v11 = accessibilityLocalizedString(@"organizer");
  }

  else
  {
    v11 = 0;
  }

  if ([v8 participantType] == 2)
  {
    v12 = accessibilityLocalizedString(@"invitee.type.room");
  }

  else
  {
    v12 = 0;
  }

  participantStatus = [v8 participantStatus];
  if (participantStatus > 7)
  {
    v14 = 0;
  }

  else
  {
    v14 = accessibilityLocalizedString(off_29F2BCD58[participantStatus]);
  }

  v15 = __UIAXStringForVariables();
  [(EKUIInviteesViewInviteesCellAccessibility *)self setAccessibilityLabel:v15, v14, v11, v12, @"__AXStringForVariablesSentinel"];
}

@end