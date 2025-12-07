@interface STStorefrontClient
- (STStorefrontClient)init;
- (STStorefrontClient)initWithAmsStorefrontClient:(id)client;
- (id)fetchStorefrontFromLocale:(id)locale error:(id *)error;
- (void)fetchStorefrontFromAMSForChildWithDSID:(NSNumber *)d parentAccount:(ACAccount *)account completionHandler:(id)handler;
- (void)fetchStorefrontFromAMSForLocalUserWithCompletionHandler:(id)handler;
- (void)fetchStorefrontFromAMSWith:(STRegionRatingsRequestOptions *)with completionHandler:(id)handler;
- (void)fetchStorefrontWithOptions:(STRegionRatingsRequestOptions *)options completionHandler:(id)handler;
@end

@implementation STStorefrontClient

- (STStorefrontClient)init
{
  type metadata accessor for STAMSStorefrontClient();
  *(&self->super.isa + OBJC_IVAR___STStorefrontClient_amsStorefrontClient) = swift_allocObject();
  v4.receiver = self;
  v4.super_class = STStorefrontClient;
  return [(STStorefrontClient *)&v4 init];
}

- (STStorefrontClient)initWithAmsStorefrontClient:(id)client
{
  swift_unknownObjectRetain();
  v5 = [(STStorefrontClient *)self init];
  *(&v5->super.isa + OBJC_IVAR___STStorefrontClient_amsStorefrontClient) = client;
  swift_unknownObjectRelease();
  return v5;
}

- (void)fetchStorefrontWithOptions:(STRegionRatingsRequestOptions *)options completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = options;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B83DDE3C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B83E9B68;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B83E9B70;
  v14[5] = v13;
  optionsCopy = options;
  selfCopy = self;
  sub_1B83CD2A8(0, 0, v9, &unk_1B83E9B78, v14);
}

- (void)fetchStorefrontFromAMSWith:(STRegionRatingsRequestOptions *)with completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = with;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B83DDE3C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B83E9B38;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B83E9B40;
  v14[5] = v13;
  withCopy = with;
  selfCopy = self;
  sub_1B83CD2A8(0, 0, v9, &unk_1B83E9B48, v14);
}

- (void)fetchStorefrontFromAMSForLocalUserWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1B83DDE3C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1B83E9B10;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B83E9B18;
  v12[5] = v11;
  selfCopy = self;
  sub_1B83CD2A8(0, 0, v7, &unk_1B83E9B20, v12);
}

- (void)fetchStorefrontFromAMSForChildWithDSID:(NSNumber *)d parentAccount:(ACAccount *)account completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = account;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1B83DDE3C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B83E9AB8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B83E9940;
  v16[5] = v15;
  dCopy = d;
  accountCopy = account;
  selfCopy = self;
  sub_1B83CD2A8(0, 0, v11, &unk_1B83E9948, v16);
}

- (id)fetchStorefrontFromLocale:(id)locale error:(id *)error
{
  v5 = sub_1B83DD9EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B83DD9AC();
  selfCopy = self;
  sub_1B83CDC10();
  (*(v6 + 8))(v8, v5);

  v10 = sub_1B83DDCBC();

  return v10;
}

@end