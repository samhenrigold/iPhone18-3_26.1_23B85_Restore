@interface InvitationStateObserver
- (_TtC23ActivitySharingServices23InvitationStateObserver)init;
- (void)cloudKitManager:(id)manager didHandleServerPushWithCloudKitGroup:(id)group;
- (void)cloudKitManager:(id)manager didUpdateAccountStatus:(int64_t)status;
- (void)friendListDidUpdate:(id)update;
@end

@implementation InvitationStateObserver

- (_TtC23ActivitySharingServices23InvitationStateObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)cloudKitManager:(id)manager didUpdateAccountStatus:(int64_t)status
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_221FB64C8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  selfCopy = self;
  sub_221FA7A78(0, 0, v7, &unk_221FB9140, v9);
}

- (void)cloudKitManager:(id)manager didHandleServerPushWithCloudKitGroup:(id)group
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = qword_281307080;
  groupCopy = group;
  selfCopy = self;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = sub_221FB61D8();
  __swift_project_value_buffer(v12, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000088, 0x8000000221FC1390, 0xD000000000000038, 0x8000000221FC1440);
  v13 = sub_221FB64C8();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = selfCopy;
  v14[5] = groupCopy;
  sub_221FA7A78(0, 0, v8, &unk_221FB9120, v14);
}

- (void)friendListDidUpdate:(id)update
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_221FB64C8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  selfCopy = self;
  sub_221FA7A78(0, 0, v6, &unk_221FB90F0, v8);
}

@end