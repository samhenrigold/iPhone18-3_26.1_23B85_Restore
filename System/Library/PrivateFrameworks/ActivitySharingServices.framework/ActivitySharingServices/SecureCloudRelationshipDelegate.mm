@interface SecureCloudRelationshipDelegate
- (_TtC23ActivitySharingServices31SecureCloudRelationshipDelegate)init;
- (void)relationshipManager:(ASRelationshipManager *)manager acceptedInviteForFriend:(NSUUID *)friend completion:(id)completion;
- (void)relationshipManager:(ASRelationshipManager *)manager relationshipBeganForFriend:(NSUUID *)friend completion:(id)completion;
- (void)relationshipManager:(ASRelationshipManager *)manager removeFriendWithUUID:(NSUUID *)d eventType:(unsigned __int16)type cloudKitGroup:(CKOperationGroup *)group completion:(id)completion;
- (void)relationshipManager:(ASRelationshipManager *)manager updateActiveFriendWithUUID:(NSUUID *)d eventType:(unsigned __int16)type cloudKitGroup:(CKOperationGroup *)group completion:(id)completion;
@end

@implementation SecureCloudRelationshipDelegate

- (_TtC23ActivitySharingServices31SecureCloudRelationshipDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)relationshipManager:(ASRelationshipManager *)manager relationshipBeganForFriend:(NSUUID *)friend completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = manager;
  v13[3] = friend;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_221FB64C8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_221FBE1F0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_221FBE1F8;
  v16[5] = v15;
  managerCopy = manager;
  friendCopy = friend;
  selfCopy = self;
  sub_221FB26AC(0, 0, v11, &unk_221FBE200, v16);
}

- (void)relationshipManager:(ASRelationshipManager *)manager updateActiveFriendWithUUID:(NSUUID *)d eventType:(unsigned __int16)type cloudKitGroup:(CKOperationGroup *)group completion:(id)completion
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(completion);
  v17 = swift_allocObject();
  *(v17 + 16) = manager;
  *(v17 + 24) = d;
  *(v17 + 32) = type;
  *(v17 + 40) = group;
  *(v17 + 48) = v16;
  *(v17 + 56) = self;
  v18 = sub_221FB64C8();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_221FBE1E0;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_221FB9BA8;
  v20[5] = v19;
  managerCopy = manager;
  dCopy = d;
  groupCopy = group;
  selfCopy = self;
  sub_221FB26AC(0, 0, v15, &unk_221FB9BB0, v20);
}

- (void)relationshipManager:(ASRelationshipManager *)manager removeFriendWithUUID:(NSUUID *)d eventType:(unsigned __int16)type cloudKitGroup:(CKOperationGroup *)group completion:(id)completion
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(completion);
  v17 = swift_allocObject();
  *(v17 + 16) = manager;
  *(v17 + 24) = d;
  *(v17 + 32) = type;
  *(v17 + 40) = group;
  *(v17 + 48) = v16;
  *(v17 + 56) = self;
  v18 = sub_221FB64C8();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_221FBE1D0;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_221FB9B88;
  v20[5] = v19;
  managerCopy = manager;
  dCopy = d;
  groupCopy = group;
  selfCopy = self;
  sub_221FB26AC(0, 0, v15, &unk_221FB9B90, v20);
}

- (void)relationshipManager:(ASRelationshipManager *)manager acceptedInviteForFriend:(NSUUID *)friend completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = manager;
  v13[3] = friend;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_221FB64C8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_221FBE1C0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_221FC0690;
  v16[5] = v15;
  managerCopy = manager;
  friendCopy = friend;
  selfCopy = self;
  sub_221FB26AC(0, 0, v11, &unk_221FB9B70, v16);
}

@end