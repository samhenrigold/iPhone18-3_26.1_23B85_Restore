@interface ICSHomeDataController
- (ICSHomeDataController)init;
- (ICSHomeDataController)initWithAccount:(id)account launchedFromRootLevel:(BOOL)level;
- (id)cachediCloudHomeDataModel;
- (void)fetchCloudStorage:(BOOL)storage completion:(id)completion;
- (void)fetchCloudStorageInfo:(BOOL)info completion:(id)completion;
- (void)fetchiCloudHomeDataModelAllowingCache:(BOOL)cache completion:(id)completion;
- (void)reportStatefulHeaderImpressionWithUrl:(id)url payload:(id)payload;
@end

@implementation ICSHomeDataController

- (ICSHomeDataController)initWithAccount:(id)account launchedFromRootLevel:(BOOL)level
{
  accountCopy = account;
  v6 = sub_275929A14(accountCopy, level);

  return v6;
}

- (void)fetchiCloudHomeDataModelAllowingCache:(BOOL)cache completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = cache;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_2759BA518();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2759C9A78;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2759C9A80;
  v14[5] = v13;
  selfCopy = self;
  sub_275929728(0, 0, v9, &unk_2759C9A88, v14);
}

- (void)fetchCloudStorage:(BOOL)storage completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = storage;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_2759BA518();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2759C9A30;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2759C3C40;
  v14[5] = v13;
  selfCopy = self;
  sub_275929728(0, 0, v9, &unk_2759C33E0, v14);
}

- (id)cachediCloudHomeDataModel
{
  v2 = qword_2815ADD40;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  result = [*(&selfCopy->super.isa + OBJC_IVAR___ICSHomeDataController_account) aa_altDSID];
  if (result)
  {
    v5 = result;
    v6 = sub_2759BA298();
    v8 = v7;

    v9 = sub_2758B26E4(v6, v8);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)fetchCloudStorageInfo:(BOOL)info completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(completion);
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v10 = sub_27592A35C;
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_2759BA518();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = self;
  *(v13 + 40) = info;
  *(v13 + 48) = v10;
  *(v13 + 56) = v11;
  selfCopy = self;
  sub_27587D460(0, 0, v9, &unk_2759C9A20, v13);
}

- (void)reportStatefulHeaderImpressionWithUrl:(id)url payload:(id)payload
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_2759B8508();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  sub_2759B84C8();
  v15 = sub_2759BA1D8();
  selfCopy = self;
  sub_2759BA4D8();
  v17 = sub_2759BA518();
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = selfCopy;
  (*(v9 + 32))(&v20[v18], v12, v8);
  *&v20[v19] = v15;
  v21 = selfCopy;
  sub_27587D460(0, 0, v7, &unk_2759C9A18, v20);

  (*(v9 + 8))(v14, v8);
}

- (ICSHomeDataController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end