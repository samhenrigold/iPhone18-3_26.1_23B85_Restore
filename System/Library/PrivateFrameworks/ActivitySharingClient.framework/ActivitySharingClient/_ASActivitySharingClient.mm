@interface _ASActivitySharingClient
- (_ASActivitySharingClient)init;
- (void)acceptCompetitionInviteFromFriendUUID:(NSString *)d completion:(id)completion;
- (void)acceptFriendInviteFromFriendUUID:(NSString *)d completion:(id)completion;
- (void)activateWithCompletionHandler:(id)handler;
- (void)allFriendsWithCompletion:(id)completion;
- (void)appBadgeCountWithCompletion:(id)completion;
- (void)areMultipleDevicesSharingDataForSnapshotIndex:(int64_t)index completion:(id)completion;
- (void)completeCompetitionWithFriendUUID:(NSString *)d completion:(id)completion;
- (void)expireChangeTokenWithCompletion:(id)completion;
- (void)fetchActivityDataIfGreaterThanLastFetchElapsedMinimum:(unint64_t)minimum completion:(id)completion;
- (void)friendWithRemoteRelationshipUUID:(NSString *)d completion:(id)completion;
- (void)handleNotificationResponse:(ASUserNotificationResponse *)response completion:(id)completion;
- (void)ignoreCompetitionInviteFromFriendUUID:(NSString *)d completion:(id)completion;
- (void)ignoreFriendInviteFromFriendUUID:(NSString *)d completion:(id)completion;
- (void)immediateFetchActivityDataWithCompletion:(id)completion;
- (void)invalidateWithCompletionHandler:(id)handler;
- (void)isCloudKitAccountActiveWithCompletion:(id)completion;
- (void)pushActivityDataWithCompletion:(id)completion;
- (void)pushFakeActivityDataWithCompletion:(id)completion;
- (void)removeAllFriendsWithCompletion:(id)completion;
- (void)removeFriendWithUUID:(NSString *)d completion:(id)completion;
- (void)rollCompetitionWithFriendUUID:(NSString *)d completion:(id)completion;
- (void)sendCompetitionInviteToFriendUUID:(NSString *)d completion:(id)completion;
- (void)sendFriendInviteToDestination:(NSString *)destination callerID:(NSString *)d serviceIdentifier:(NSString *)identifier completion:(id)completion;
- (void)setActivityDataVisible:(BOOL)visible friendUUID:(NSString *)d completion:(id)completion;
- (void)setMuteEnabled:(BOOL)enabled friendUUID:(NSString *)d completion:(id)completion;
- (void)withdrawFriendInviteToFriendUUID:(NSString *)d completion:(id)completion;
@end

@implementation _ASActivitySharingClient

- (void)fetchActivityDataIfGreaterThanLastFetchElapsedMinimum:(unint64_t)minimum completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = minimum;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23E5C9110();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC640;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC648;
  v14[5] = v13;
  selfCopy = self;
  sub_23E5932F4(0, 0, v9, &unk_23E5CC650, v14);
}

- (_ASActivitySharingClient)init
{
  v2 = ASActivitySharingDaemonEnabled();
  v3 = objc_allocWithZone(type metadata accessor for ActivitySharingClient());
  ActivitySharingClient.init(activitySharingDaemonEnabled:)(v2);
  v5 = v4;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)activateWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23E5C9110();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23E5CC820;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC828;
  v12[5] = v11;
  selfCopy = self;
  sub_23E5932F4(0, 0, v7, &unk_23E5CC830, v12);
}

- (void)invalidateWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23E5C9110();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23E5CC800;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC808;
  v12[5] = v11;
  selfCopy = self;
  sub_23E5932F4(0, 0, v7, &unk_23E5CC810, v12);
}

- (void)sendFriendInviteToDestination:(NSString *)destination callerID:(NSString *)d serviceIdentifier:(NSString *)identifier completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = destination;
  v15[3] = d;
  v15[4] = identifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_23E5C9110();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23E5CC7E0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_23E5CC7E8;
  v18[5] = v17;
  destinationCopy = destination;
  dCopy = d;
  identifierCopy = identifier;
  selfCopy = self;
  sub_23E5932F4(0, 0, v13, &unk_23E5CC7F0, v18);
}

- (void)acceptFriendInviteFromFriendUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23E5C9110();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC7C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC7C8;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v9, &unk_23E5CC7D0, v14);
}

- (void)withdrawFriendInviteToFriendUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23E5C9110();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC7A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC7A8;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v9, &unk_23E5CC7B0, v14);
}

- (void)ignoreFriendInviteFromFriendUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23E5C9110();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC780;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC788;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v9, &unk_23E5CC790, v14);
}

- (void)setMuteEnabled:(BOOL)enabled friendUUID:(NSString *)d completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = enabled;
  *(v13 + 24) = d;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_23E5C9110();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E5CC760;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23E5CC768;
  v16[5] = v15;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v11, &unk_23E5CC770, v16);
}

- (void)setActivityDataVisible:(BOOL)visible friendUUID:(NSString *)d completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = visible;
  *(v13 + 24) = d;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_23E5C9110();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E5CC740;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23E5CC748;
  v16[5] = v15;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v11, &unk_23E5CC750, v16);
}

- (void)sendCompetitionInviteToFriendUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23E5C9110();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC720;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC728;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v9, &unk_23E5CC730, v14);
}

- (void)acceptCompetitionInviteFromFriendUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23E5C9110();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC700;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC708;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v9, &unk_23E5CC710, v14);
}

- (void)ignoreCompetitionInviteFromFriendUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23E5C9110();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC6E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC6E8;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v9, &unk_23E5CC6F0, v14);
}

- (void)completeCompetitionWithFriendUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23E5C9110();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC6C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC6C8;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v9, &unk_23E5CC6D0, v14);
}

- (void)rollCompetitionWithFriendUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23E5C9110();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC6A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC6A8;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v9, &unk_23E5CC6B0, v14);
}

- (void)pushActivityDataWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23E5C9110();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23E5CC680;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC688;
  v12[5] = v11;
  selfCopy = self;
  sub_23E5932F4(0, 0, v7, &unk_23E5CC690, v12);
}

- (void)immediateFetchActivityDataWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23E5C9110();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23E5CC660;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC668;
  v12[5] = v11;
  selfCopy = self;
  sub_23E5932F4(0, 0, v7, &unk_23E5CC670, v12);
}

- (void)isCloudKitAccountActiveWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23E5C9110();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23E5CC620;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC628;
  v12[5] = v11;
  selfCopy = self;
  sub_23E5932F4(0, 0, v7, &unk_23E5CC630, v12);
}

- (void)expireChangeTokenWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23E5C9110();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23E5CC600;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC608;
  v12[5] = v11;
  selfCopy = self;
  sub_23E5932F4(0, 0, v7, &unk_23E5CC610, v12);
}

- (void)areMultipleDevicesSharingDataForSnapshotIndex:(int64_t)index completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = index;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23E5C9110();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC5E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC5E8;
  v14[5] = v13;
  selfCopy = self;
  sub_23E5932F4(0, 0, v9, &unk_23E5CC5F0, v14);
}

- (void)allFriendsWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23E5C9110();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23E5CC5C0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC5C8;
  v12[5] = v11;
  selfCopy = self;
  sub_23E5932F4(0, 0, v7, &unk_23E5CC5D0, v12);
}

- (void)friendWithRemoteRelationshipUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23E5C9110();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC5A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC5A8;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v9, &unk_23E5CC5B0, v14);
}

- (void)removeFriendWithUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23E5C9110();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC580;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC588;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v9, &unk_23E5CC590, v14);
}

- (void)removeAllFriendsWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23E5C9110();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23E5CC560;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC568;
  v12[5] = v11;
  selfCopy = self;
  sub_23E5932F4(0, 0, v7, &unk_23E5CC570, v12);
}

- (void)handleNotificationResponse:(ASUserNotificationResponse *)response completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = response;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23E5C9110();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC540;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC548;
  v14[5] = v13;
  responseCopy = response;
  selfCopy = self;
  sub_23E5932F4(0, 0, v9, &unk_23E5CC550, v14);
}

- (void)appBadgeCountWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23E5C9110();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23E5CC520;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC528;
  v12[5] = v11;
  selfCopy = self;
  sub_23E5932F4(0, 0, v7, &unk_23E5CC530, v12);
}

- (void)pushFakeActivityDataWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23E5C9110();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23E5CC4D8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC4E8;
  v12[5] = v11;
  selfCopy = self;
  sub_23E5932F4(0, 0, v7, &unk_23E5CC4F8, v12);
}

@end