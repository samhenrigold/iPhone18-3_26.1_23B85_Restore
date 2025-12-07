@interface PrivateService
- (void)applyDefaultUserPoliciesWithCompletionHandler:(id)handler;
- (void)applyIntroductionModel:(STIntroductionModel *)model forDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)authenticateRestrictionsPasscode:(NSString *)passcode completionHandler:(id)handler;
- (void)clearRestrictionsPasscodeWithCompletionHandler:(id)handler;
- (void)deleteAllWebApplicationHistory:(NSString *)history clientBundleURLWrapper:(NSSecurityScopedURLWrapper *)wrapper completionHandler:(id)handler;
- (void)deleteAllWebApplicationHistory:(NSString *)history completionHandler:(id)handler;
- (void)deleteAllWebApplicationHistory:(NSString *)history profileIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)deleteWebHistoryDuringInterval:(NSDateInterval *)interval webApplication:(NSString *)application clientBundleURLWrapper:(NSSecurityScopedURLWrapper *)wrapper completionHandler:(id)handler;
- (void)deleteWebHistoryDuringInterval:(NSDateInterval *)interval webApplication:(NSString *)application completionHandler:(id)handler;
- (void)deleteWebHistoryDuringInterval:(NSDateInterval *)interval webApplication:(NSString *)application profileIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)deleteWebHistoryForDomain:(NSString *)domain webApplication:(NSString *)application completionHandler:(id)handler;
- (void)deleteWebHistoryForDomain:(NSString *)domain webApplication:(NSString *)application profileIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)deleteWebHistoryForURL:(NSURL *)l webApplication:(NSString *)application clientBundleURLWrapper:(NSSecurityScopedURLWrapper *)wrapper completionHandler:(id)handler;
- (void)deleteWebHistoryForURL:(NSURL *)l webApplication:(NSString *)application completionHandler:(id)handler;
- (void)deleteWebHistoryForURL:(NSURL *)l webApplication:(NSString *)application profileIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)deleteWebHistoryForURLs:(NSArray *)ls webApplication:(NSString *)application completionHandler:(id)handler;
- (void)deleteWebHistoryForURLs:(NSArray *)ls webApplication:(NSString *)application profileIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)enableRemoteManagementForDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)fetchCommunicationPoliciesWithCompletionHandler:(id)handler;
- (void)fetchContactManagementStateForDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)fetchContactsEditableWithReplyHandler:(id)handler;
- (void)fetchLastCommunicationLimitsModificationDateForDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)fetchLastModificationDateForDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)fetchRestrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)handler;
- (void)forceFamilyFetchWithCompletionHandler:(id)handler;
- (void)isAllowFindMyFriendsModificationSetForDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)isContentPrivacyEnabledForDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)isExplicitContentRestricted:(id)restricted;
- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)handler;
- (void)isScreenTimeEnabledForLocalUserWithCompletionHandler:(id)handler;
- (void)isScreenTimeEnabledForRemoteUserWithDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)isScreenTimeSyncEnabledWithCompletionHandler:(id)handler;
- (void)needsToSetRestrictionsPasscodeWithCompletionHandler:(id)handler;
- (void)permitWebFilterURL:(NSURL *)l pageTitle:(NSString *)title completionHandler:(id)handler;
- (void)primaryiCloudCardDAVAccountIdentifierWithCompletionHandler:(id)handler;
- (void)requestToManageContactsForDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)setManageContactsEnabled:(BOOL)enabled forDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)setRestrictionsPasscode:(NSString *)passcode completionHandler:(id)handler;
- (void)setScreenTimeEnabledForLocalUser:(BOOL)user completionHandler:(id)handler;
- (void)setScreenTimeEnabledForRemoteUserWithDSID:(NSNumber *)d enabled:(BOOL)enabled completionHandler:(id)handler;
- (void)setScreenTimeSyncEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)shouldAllowOneMoreMinuteForBundleIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)shouldAllowOneMoreMinuteForCategoryIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)shouldAllowOneMoreMinuteForWebDomain:(NSString *)domain completionHandler:(id)handler;
- (void)shouldRequestMoreTimeWithCompletionHandler:(id)handler;
- (void)updateAllowFindMyFriendsModification:(BOOL)modification forDSID:(NSNumber *)d completionHandler:(id)handler;
@end

@implementation PrivateService

- (void)isScreenTimeEnabledForLocalUserWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100142608;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100142610;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100142618, v12);
}

- (void)isScreenTimeEnabledForRemoteUserWithDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001425E8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001425F0;
  v14[5] = v13;
  dCopy = d;

  sub_10010D4C0(0, 0, v9, &unk_1001425F8, v14);
}

- (void)setScreenTimeEnabledForLocalUser:(BOOL)user completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = user;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001425C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001425D0;
  v14[5] = v13;

  sub_10010D4C0(0, 0, v9, &unk_1001425D8, v14);
}

- (void)setScreenTimeEnabledForRemoteUserWithDSID:(NSNumber *)d enabled:(BOOL)enabled completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = d;
  *(v13 + 24) = enabled;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001425A8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001425B0;
  v16[5] = v15;
  dCopy = d;

  sub_10010D4C0(0, 0, v11, &unk_1001425B8, v16);
}

- (void)enableRemoteManagementForDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142588;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142590;
  v14[5] = v13;
  dCopy = d;

  sub_10010D4C0(0, 0, v9, &unk_100142598, v14);
}

- (void)isScreenTimeSyncEnabledWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100142568;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100142570;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100142578, v12);
}

- (void)setScreenTimeSyncEnabled:(BOOL)enabled completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = enabled;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142548;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142550;
  v14[5] = v13;

  sub_10010D4C0(0, 0, v9, &unk_100142558, v14);
}

- (void)shouldRequestMoreTimeWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100142528;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100142530;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100142538, v12);
}

- (void)isContentPrivacyEnabledForDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142508;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142510;
  v14[5] = v13;
  dCopy = d;

  sub_10010D4C0(0, 0, v9, &unk_100142518, v14);
}

- (void)clearRestrictionsPasscodeWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001424E8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001424F0;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_1001424F8, v12);
}

- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001424C8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001424D0;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_1001424D8, v12);
}

- (void)needsToSetRestrictionsPasscodeWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001424A8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001424B0;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_1001424B8, v12);
}

- (void)setRestrictionsPasscode:(NSString *)passcode completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = passcode;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142488;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142490;
  v14[5] = v13;
  passcodeCopy = passcode;

  sub_10010D4C0(0, 0, v9, &unk_100142498, v14);
}

- (void)authenticateRestrictionsPasscode:(NSString *)passcode completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = passcode;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142468;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142470;
  v14[5] = v13;
  passcodeCopy = passcode;

  sub_10010D4C0(0, 0, v9, &unk_100142478, v14);
}

- (void)fetchRestrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100142448;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100142450;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100142458, v12);
}

- (void)fetchCommunicationPoliciesWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100142428;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100142430;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100142438, v12);
}

- (void)setManageContactsEnabled:(BOOL)enabled forDSID:(NSNumber *)d completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = enabled;
  *(v13 + 24) = d;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100142408;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100142410;
  v16[5] = v15;
  dCopy = d;

  sub_10010D4C0(0, 0, v11, &unk_100142418, v16);
}

- (void)requestToManageContactsForDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001423E8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001423F0;
  v14[5] = v13;
  dCopy = d;

  sub_10010D4C0(0, 0, v9, &unk_1001423F8, v14);
}

- (void)fetchContactManagementStateForDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001423C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001423D0;
  v14[5] = v13;
  dCopy = d;

  sub_10010D4C0(0, 0, v9, &unk_1001423D8, v14);
}

- (void)primaryiCloudCardDAVAccountIdentifierWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001423A8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001423B0;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_1001423B8, v12);
}

- (void)fetchContactsEditableWithReplyHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100142388;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100142390;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100142398, v12);
}

- (void)fetchLastCommunicationLimitsModificationDateForDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142368;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142370;
  v14[5] = v13;
  dCopy = d;

  sub_10010D4C0(0, 0, v9, &unk_100142378, v14);
}

- (void)applyDefaultUserPoliciesWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100142348;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100142350;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100142358, v12);
}

- (void)permitWebFilterURL:(NSURL *)l pageTitle:(NSString *)title completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = l;
  v13[3] = title;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100142328;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100142330;
  v16[5] = v15;
  lCopy = l;
  titleCopy = title;

  sub_10010D4C0(0, 0, v11, &unk_100142338, v16);
}

- (void)isExplicitContentRestricted:(id)restricted
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(restricted);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100142308;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100142310;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100142318, v12);
}

- (void)fetchLastModificationDateForDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001422D8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001422E0;
  v14[5] = v13;
  dCopy = d;

  sub_10010D4C0(0, 0, v9, &unk_1001422E8, v14);
}

- (void)applyIntroductionModel:(STIntroductionModel *)model forDSID:(NSNumber *)d completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = model;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001422B8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001422C0;
  v16[5] = v15;
  modelCopy = model;
  dCopy = d;

  sub_10010D4C0(0, 0, v11, &unk_1001422C8, v16);
}

- (void)isAllowFindMyFriendsModificationSetForDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142298;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001422A0;
  v14[5] = v13;
  dCopy = d;

  sub_10010D4C0(0, 0, v9, &unk_1001422A8, v14);
}

- (void)updateAllowFindMyFriendsModification:(BOOL)modification forDSID:(NSNumber *)d completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = modification;
  *(v13 + 24) = d;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100142278;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100142280;
  v16[5] = v15;
  dCopy = d;

  sub_10010D4C0(0, 0, v11, &unk_100142288, v16);
}

- (void)shouldAllowOneMoreMinuteForBundleIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142258;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142260;
  v14[5] = v13;
  identifierCopy = identifier;

  sub_10010D4C0(0, 0, v9, &unk_100142268, v14);
}

- (void)shouldAllowOneMoreMinuteForWebDomain:(NSString *)domain completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = domain;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142238;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142240;
  v14[5] = v13;
  domainCopy = domain;

  sub_10010D4C0(0, 0, v9, &unk_100142248, v14);
}

- (void)shouldAllowOneMoreMinuteForCategoryIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142218;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142220;
  v14[5] = v13;
  identifierCopy = identifier;

  sub_10010D4C0(0, 0, v9, &unk_100142228, v14);
}

- (void)forceFamilyFetchWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001421F8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100142200;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100142208, v12);
}

- (void)deleteWebHistoryForURL:(NSURL *)l webApplication:(NSString *)application completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = l;
  v13[3] = application;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001421D8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001421E0;
  v16[5] = v15;
  lCopy = l;
  applicationCopy = application;

  sub_10010D4C0(0, 0, v11, &unk_100141560, v16);
}

- (void)deleteWebHistoryForURLs:(NSArray *)ls webApplication:(NSString *)application completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = ls;
  v13[3] = application;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001421B8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001421C0;
  v16[5] = v15;
  lsCopy = ls;
  applicationCopy = application;

  sub_10010D4C0(0, 0, v11, &unk_1001421C8, v16);
}

- (void)deleteWebHistoryForDomain:(NSString *)domain webApplication:(NSString *)application completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = domain;
  v13[3] = application;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100142198;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001421A0;
  v16[5] = v15;
  domainCopy = domain;
  applicationCopy = application;

  sub_10010D4C0(0, 0, v11, &unk_1001421A8, v16);
}

- (void)deleteWebHistoryDuringInterval:(NSDateInterval *)interval webApplication:(NSString *)application completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = interval;
  v13[3] = application;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100142178;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100142180;
  v16[5] = v15;
  intervalCopy = interval;
  applicationCopy = application;

  sub_10010D4C0(0, 0, v11, &unk_100142188, v16);
}

- (void)deleteAllWebApplicationHistory:(NSString *)history completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = history;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142158;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142160;
  v14[5] = v13;
  historyCopy = history;

  sub_10010D4C0(0, 0, v9, &unk_100142168, v14);
}

- (void)deleteWebHistoryForURL:(NSURL *)l webApplication:(NSString *)application profileIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v11 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = l;
  v15[3] = application;
  v15[4] = identifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100142138;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100142140;
  v18[5] = v17;
  lCopy = l;
  applicationCopy = application;
  identifierCopy = identifier;

  sub_10010D4C0(0, 0, v13, &unk_100142148, v18);
}

- (void)deleteWebHistoryForURLs:(NSArray *)ls webApplication:(NSString *)application profileIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v11 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = ls;
  v15[3] = application;
  v15[4] = identifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100142118;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100142120;
  v18[5] = v17;
  lsCopy = ls;
  applicationCopy = application;
  identifierCopy = identifier;

  sub_10010D4C0(0, 0, v13, &unk_100142128, v18);
}

- (void)deleteWebHistoryForDomain:(NSString *)domain webApplication:(NSString *)application profileIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v11 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = domain;
  v15[3] = application;
  v15[4] = identifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001420F8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100142100;
  v18[5] = v17;
  domainCopy = domain;
  applicationCopy = application;
  identifierCopy = identifier;

  sub_10010D4C0(0, 0, v13, &unk_100142108, v18);
}

- (void)deleteWebHistoryDuringInterval:(NSDateInterval *)interval webApplication:(NSString *)application profileIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v11 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = interval;
  v15[3] = application;
  v15[4] = identifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001420D8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001420E0;
  v18[5] = v17;
  intervalCopy = interval;
  applicationCopy = application;
  identifierCopy = identifier;

  sub_10010D4C0(0, 0, v13, &unk_1001420E8, v18);
}

- (void)deleteAllWebApplicationHistory:(NSString *)history profileIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = history;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001420B8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001420C0;
  v16[5] = v15;
  historyCopy = history;
  identifierCopy = identifier;

  sub_10010D4C0(0, 0, v11, &unk_1001420C8, v16);
}

- (void)deleteWebHistoryForURL:(NSURL *)l webApplication:(NSString *)application clientBundleURLWrapper:(NSSecurityScopedURLWrapper *)wrapper completionHandler:(id)handler
{
  v11 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = l;
  v15[3] = application;
  v15[4] = wrapper;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100142098;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001420A0;
  v18[5] = v17;
  lCopy = l;
  applicationCopy = application;
  wrapperCopy = wrapper;

  sub_10010D4C0(0, 0, v13, &unk_1001420A8, v18);
}

- (void)deleteWebHistoryDuringInterval:(NSDateInterval *)interval webApplication:(NSString *)application clientBundleURLWrapper:(NSSecurityScopedURLWrapper *)wrapper completionHandler:(id)handler
{
  v11 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = interval;
  v15[3] = application;
  v15[4] = wrapper;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100142078;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100142080;
  v18[5] = v17;
  intervalCopy = interval;
  applicationCopy = application;
  wrapperCopy = wrapper;

  sub_10010D4C0(0, 0, v13, &unk_100142820, v18);
}

- (void)deleteAllWebApplicationHistory:(NSString *)history clientBundleURLWrapper:(NSSecurityScopedURLWrapper *)wrapper completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = history;
  v13[3] = wrapper;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100142068;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100140550;
  v16[5] = v15;
  historyCopy = history;
  wrapperCopy = wrapper;

  sub_10010D4C0(0, 0, v11, &unk_100140230, v16);
}

@end