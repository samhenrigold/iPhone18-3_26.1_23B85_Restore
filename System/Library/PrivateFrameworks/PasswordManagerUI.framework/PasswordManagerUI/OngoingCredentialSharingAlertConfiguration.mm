@interface OngoingCredentialSharingAlertConfiguration
+ (NSString)alertSubtitleForFailingToMoveAccountsBackToPersonalKeychainWhileDeletingGroup;
+ (NSString)alertSubtitleForFailingToMoveAccountsBackToPersonalKeychainWhileLeavingGroup;
+ (NSString)alertSubtitleForUnavailableGroup;
+ (NSString)alertTitleForFailingToMoveToGroup;
+ (NSString)alertTitleForUnavailableGroup;
+ (NSString)groupDeletionConfirmationAlertTitle;
+ (NSString)leaveGroupConfirmationAlertTitle;
+ (id)alertSubtitleForFailingToMoveSavedAccounts:(id)accounts toGroupWithName:(id)name;
+ (id)alertTitleAndSubtitleForMovingSavedAccounts:(id)accounts toGroupWithName:(id)name isDragAndDropOperation:(BOOL)operation;
+ (id)alertTitleForFailingToAcceptInvitationWithError:(id)error;
+ (id)alertTitleForFailingToAddGroupMemberWithError:(id)error;
+ (id)alertTitleForFailingToCreateGroupWithError:(id)error;
+ (id)alertTitleForFailingToDeclineInvitationWithError:(id)error;
+ (id)alertTitleForFailingToDeleteGroupWithError:(id)error;
+ (id)alertTitleForFailingToLeaveGroupWithError:(id)error;
+ (id)alertTitleForFailingToRemoveGroupMemberWithError:(id)error;
+ (id)alertTitleForFailingToUpdateGroupWithError:(id)error;
+ (id)alertTitleForMovingSavedAccount:(id)account toGroupWithName:(id)name;
+ (id)confirmationAlertSubtitleForMovingSavedAccount:(id)account fromGroupWithName:(id)name;
+ (id)confirmationAlertSubtitleForMovingSavedAccount:(id)account fromMyPasswordstoGroupWithName:(id)name;
+ (id)confirmationAlertSubtitleForMovingSavedAccount:(id)account toMyPasswordsFromGroup:(id)group;
+ (id)confirmationAlertSubtitleForRemovingGroupMemberWithName:(id)name;
+ (id)confirmationAlertTitleForRemovingGroupMemberWithName:(id)name;
+ (id)declineGroupInvitationAlertTitleForGroupWithName:(id)name fromKnownSender:(BOOL)sender;
+ (id)groupExitWarningAlertTitleWithGroupMemberNames:(id)names;
+ (id)warningAlertMessageForMovingNumberOfReusedPasswords:(int64_t)passwords withTotalNumberOfAccountsSelected:(int64_t)selected;
+ (id)warningAlertSubtitleTellingUserThatRemovedGroupMemberMightStillHaveAccessToAccountsAfterRemovalWithName:(id)name;
+ (id)warningAlertTitleForMovingNumberOfReusedPasswords:(int64_t)passwords withTotalNumberOfAccountsSelected:(int64_t)selected;
+ (id)warningAlertTitleTellingUserThatRemovedGroupMemberMightStillHaveAccessToAccountsAfterRemovalWithName:(id)name;
- (_TtC17PasswordManagerUI42OngoingCredentialSharingAlertConfiguration)init;
@end

@implementation OngoingCredentialSharingAlertConfiguration

+ (id)confirmationAlertSubtitleForMovingSavedAccount:(id)account toMyPasswordsFromGroup:(id)group
{
  accountCopy = account;
  groupCopy = group;
  sub_21C7BD554(accountCopy, groupCopy);
  v8 = v7;

  if (v8)
  {
    v9 = sub_21CB85584();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)confirmationAlertSubtitleForMovingSavedAccount:(id)account fromMyPasswordstoGroupWithName:(id)name
{
  accountCopy = account;
  sub_21C7BFCA4(accountCopy);

  v5 = sub_21CB85584();

  return v5;
}

+ (id)confirmationAlertSubtitleForMovingSavedAccount:(id)account fromGroupWithName:(id)name
{
  v5 = sub_21CB855C4();
  v7 = v6;
  accountCopy = account;
  sub_21C7BFE38(accountCopy, v5, v7);

  v9 = sub_21CB85584();

  return v9;
}

+ (id)confirmationAlertTitleForRemovingGroupMemberWithName:(id)name
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

+ (id)confirmationAlertSubtitleForRemovingGroupMemberWithName:(id)name
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

+ (id)warningAlertTitleTellingUserThatRemovedGroupMemberMightStillHaveAccessToAccountsAfterRemovalWithName:(id)name
{
  v3 = sub_21CB855C4();
  sub_21C7C00A4(v3, v4);

  v5 = sub_21CB85584();

  return v5;
}

+ (id)warningAlertSubtitleTellingUserThatRemovedGroupMemberMightStillHaveAccessToAccountsAfterRemovalWithName:(id)name
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

+ (id)alertTitleAndSubtitleForMovingSavedAccounts:(id)accounts toGroupWithName:(id)name isDragAndDropOperation:(BOOL)operation
{
  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  v7 = sub_21CB85824();
  if (name)
  {
    v8 = sub_21CB855C4();
    name = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = sub_21C7C15C0(v7, v8, name, operation);

  return v10;
}

+ (NSString)alertTitleForFailingToMoveToGroup
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

+ (id)alertSubtitleForFailingToMoveSavedAccounts:(id)accounts toGroupWithName:(id)name
{
  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  v5 = sub_21CB85824();
  if (name)
  {
    v6 = sub_21CB855C4();
    name = v7;
  }

  else
  {
    v6 = 0;
  }

  sub_21C7C1BFC(v5, v6, name);

  v8 = sub_21CB85584();

  return v8;
}

+ (id)warningAlertTitleForMovingNumberOfReusedPasswords:(int64_t)passwords withTotalNumberOfAccountsSelected:(int64_t)selected
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v5 + 8))(v7, v4);
  v8 = sub_21CB85584();

  return v8;
}

+ (id)warningAlertMessageForMovingNumberOfReusedPasswords:(int64_t)passwords withTotalNumberOfAccountsSelected:(int64_t)selected
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v5 + 8))(v7, v4);
  v8 = sub_21CB85584();

  return v8;
}

+ (id)alertTitleForMovingSavedAccount:(id)account toGroupWithName:(id)name
{
  if (name)
  {
    v5 = sub_21CB855C4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  accountCopy = account;
  sub_21C7C1D78(accountCopy, v5, v7);

  v9 = sub_21CB85584();

  return v9;
}

+ (NSString)groupDeletionConfirmationAlertTitle
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

+ (NSString)leaveGroupConfirmationAlertTitle
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

+ (id)groupExitWarningAlertTitleWithGroupMemberNames:(id)names
{
  v3 = sub_21CB85824();
  sub_21C7C2A6C(v3);

  v4 = sub_21CB85584();

  return v4;
}

+ (NSString)alertSubtitleForFailingToMoveAccountsBackToPersonalKeychainWhileLeavingGroup
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

+ (NSString)alertSubtitleForFailingToMoveAccountsBackToPersonalKeychainWhileDeletingGroup
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

+ (NSString)alertTitleForUnavailableGroup
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

+ (NSString)alertSubtitleForUnavailableGroup
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

+ (id)alertTitleForFailingToCreateGroupWithError:(id)error
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (error)
  {
    errorCopy = error;
    if ([errorCopy safari_isOrContainsNetworkUnavailableError])
    {
      error = errorCopy;
    }
  }

  sub_21CB81014();
  sub_21CB81004();

  (*(v5 + 8))(v7, v4);
  v9 = sub_21CB85584();

  return v9;
}

+ (id)alertTitleForFailingToDeleteGroupWithError:(id)error
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (error)
  {
    errorCopy = error;
    if ([errorCopy safari_isOrContainsNetworkUnavailableError])
    {
      error = errorCopy;
    }
  }

  sub_21CB81014();
  sub_21CB81004();

  (*(v5 + 8))(v7, v4);
  v9 = sub_21CB85584();

  return v9;
}

+ (id)alertTitleForFailingToLeaveGroupWithError:(id)error
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (error)
  {
    errorCopy = error;
    if ([errorCopy safari_isOrContainsNetworkUnavailableError])
    {
      error = errorCopy;
    }
  }

  sub_21CB81014();
  sub_21CB81004();

  (*(v5 + 8))(v7, v4);
  v9 = sub_21CB85584();

  return v9;
}

+ (id)alertTitleForFailingToAddGroupMemberWithError:(id)error
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (error)
  {
    errorCopy = error;
    if ([errorCopy safari_isOrContainsNetworkUnavailableError])
    {
      error = errorCopy;
    }
  }

  sub_21CB81014();
  sub_21CB81004();

  (*(v5 + 8))(v7, v4);
  v9 = sub_21CB85584();

  return v9;
}

+ (id)alertTitleForFailingToRemoveGroupMemberWithError:(id)error
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (error)
  {
    errorCopy = error;
    if ([errorCopy safari_isOrContainsNetworkUnavailableError])
    {
      error = errorCopy;
    }
  }

  sub_21CB81014();
  sub_21CB81004();

  (*(v5 + 8))(v7, v4);
  v9 = sub_21CB85584();

  return v9;
}

+ (id)alertTitleForFailingToUpdateGroupWithError:(id)error
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (error)
  {
    errorCopy = error;
    if ([errorCopy safari_isOrContainsNetworkUnavailableError])
    {
      error = errorCopy;
    }
  }

  sub_21CB81014();
  sub_21CB81004();

  (*(v5 + 8))(v7, v4);
  v9 = sub_21CB85584();

  return v9;
}

+ (id)alertTitleForFailingToAcceptInvitationWithError:(id)error
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (error)
  {
    errorCopy = error;
    if ([errorCopy safari_isOrContainsNetworkUnavailableError])
    {
      error = errorCopy;
    }
  }

  sub_21CB81014();
  sub_21CB81004();

  (*(v5 + 8))(v7, v4);
  v9 = sub_21CB85584();

  return v9;
}

+ (id)alertTitleForFailingToDeclineInvitationWithError:(id)error
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (error)
  {
    errorCopy = error;
    if ([errorCopy safari_isOrContainsNetworkUnavailableError])
    {
      error = errorCopy;
    }
  }

  sub_21CB81014();
  sub_21CB81004();

  (*(v5 + 8))(v7, v4);
  v9 = sub_21CB85584();

  return v9;
}

+ (id)declineGroupInvitationAlertTitleForGroupWithName:(id)name fromKnownSender:(BOOL)sender
{
  v5 = sub_21CB855C4();
  sub_21C7C2FB4(v5, v6, sender);

  v7 = sub_21CB85584();

  return v7;
}

- (_TtC17PasswordManagerUI42OngoingCredentialSharingAlertConfiguration)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for OngoingCredentialSharingAlertConfiguration();
  return [(OngoingCredentialSharingAlertConfiguration *)&v3 init];
}

@end