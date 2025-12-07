@interface ManageStorageAppIconURL
- (_TtC14iCloudSettings23ManageStorageAppIconURL)init;
- (void)urlForScreenScaleWithCompletionHandler:(id)handler;
@end

@implementation ManageStorageAppIconURL

- (_TtC14iCloudSettings23ManageStorageAppIconURL)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)urlForScreenScaleWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2759BA518();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2759C7510;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2759C3C40;
  v12[5] = v11;
  selfCopy = self;
  sub_275929728(0, 0, v7, &unk_2759C33E0, v12);
}

@end