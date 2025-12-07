@interface OngoingCredentialSharingStrings
+ (NSString)cannotChangePermissionForGroupMemberTitle;
+ (NSString)choosePasswordsButtonTitle;
+ (NSString)groupManagementViewSubtitleStringForNonOwner;
+ (NSString)newGroupButtonTitle;
+ (NSString)newGroupViewTitle;
+ (NSString)preventReadOnlyPermissionForGroupMemberThatHasContributedPasswordsExplanationFooter;
+ (NSString)removeDuplicatePasswordsTitle;
+ (NSString)reviewDuplicateButtonTitle;
+ (NSString)sharedPasswordsGroupsUnavailableAlertTitle;
+ (NSString)unableToInviteAllParticipantsBecauseOfUnsupportedDevicesAlertMessage;
+ (NSString)unableToInviteMultipleContactsBecauseOfUnsupportedDevicesAlertMessage;
+ (id)unableToInviteContactBecauseOfUnsupportedDevicesAlertMessageWithContactName:(id)name;
- (_TtC17PasswordManagerUI31OngoingCredentialSharingStrings)init;
@end

@implementation OngoingCredentialSharingStrings

+ (NSString)cannotChangePermissionForGroupMemberTitle
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v5, v2);
  v6 = sub_21CB85584();

  return v6;
}

+ (NSString)preventReadOnlyPermissionForGroupMemberThatHasContributedPasswordsExplanationFooter
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v5, v2);
  v6 = sub_21CB85584();

  return v6;
}

+ (NSString)groupManagementViewSubtitleStringForNonOwner
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v5, v2);
  v6 = sub_21CB85584();

  return v6;
}

+ (NSString)newGroupViewTitle
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v9(v8, v2);
  v10 = sub_21CB85584();

  return v10;
}

+ (NSString)newGroupButtonTitle
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v9(v8, v2);
  v10 = sub_21CB85584();

  return v10;
}

+ (NSString)choosePasswordsButtonTitle
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v5, v2);
  v6 = sub_21CB85584();

  return v6;
}

+ (NSString)reviewDuplicateButtonTitle
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v5, v2);
  v6 = sub_21CB85584();

  return v6;
}

+ (NSString)removeDuplicatePasswordsTitle
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v5, v2);
  v6 = sub_21CB85584();

  return v6;
}

+ (NSString)unableToInviteAllParticipantsBecauseOfUnsupportedDevicesAlertMessage
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v5, v2);
  v6 = sub_21CB85584();

  return v6;
}

+ (id)unableToInviteContactBecauseOfUnsupportedDevicesAlertMessageWithContactName:(id)name
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB855C4();
  v9 = v8;
  sub_21CB81014();
  sub_21CB81004();
  (*(v4 + 8))(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21CBA0690;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_21C7C0050();
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  sub_21CB85594();

  v11 = sub_21CB85584();

  return v11;
}

+ (NSString)unableToInviteMultipleContactsBecauseOfUnsupportedDevicesAlertMessage
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v5, v2);
  v6 = sub_21CB85584();

  return v6;
}

+ (NSString)sharedPasswordsGroupsUnavailableAlertTitle
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v5, v2);
  v6 = sub_21CB85584();

  return v6;
}

- (_TtC17PasswordManagerUI31OngoingCredentialSharingStrings)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for OngoingCredentialSharingStrings();
  return [(OngoingCredentialSharingStrings *)&v3 init];
}

@end