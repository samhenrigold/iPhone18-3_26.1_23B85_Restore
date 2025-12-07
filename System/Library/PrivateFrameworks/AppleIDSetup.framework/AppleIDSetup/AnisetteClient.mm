@interface AnisetteClient
- (_TtC12AppleIDSetup14AnisetteClient)init;
- (void)eraseAnisetteWithCompletion:(id)completion;
- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion;
- (void)fetchPeerAttestationDataForRequest:(NSURLRequest *)request completion:(id)completion;
- (void)legacyAnisetteDataForDSID:(NSString *)d withCompletion:(id)completion;
- (void)provisionAnisetteWithCompletion:(id)completion;
- (void)syncAnisetteWithSIMData:(NSData *)data completion:(id)completion;
@end

@implementation AnisetteClient

- (void)provisionAnisetteWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24075A3D4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24076CEA8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24076CEB0;
  v12[5] = v11;
  selfCopy = self;
  sub_2406FC468(0, 0, v7, &unk_24076CEB8, v12);
}

- (void)syncAnisetteWithSIMData:(NSData *)data completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = data;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24075A3D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24076CE88;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24076CE90;
  v14[5] = v13;
  dataCopy = data;
  selfCopy = self;
  sub_2406FC468(0, 0, v9, &unk_24076CE98, v14);
}

- (void)eraseAnisetteWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24075A3D4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24076CE68;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24076CE70;
  v12[5] = v11;
  selfCopy = self;
  sub_2406FC468(0, 0, v7, &unk_24076CE78, v12);
}

- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = necessary;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_24075A3D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24076CE48;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24076CE50;
  v14[5] = v13;
  selfCopy = self;
  sub_2406FC468(0, 0, v9, &unk_24076CE58, v14);
}

- (void)legacyAnisetteDataForDSID:(NSString *)d withCompletion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24075A3D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24076CE28;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24076CE30;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_2406FC468(0, 0, v9, &unk_24076CE38, v14);
}

- (void)fetchPeerAttestationDataForRequest:(NSURLRequest *)request completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24075A3D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24076CE18;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240767F10;
  v14[5] = v13;
  requestCopy = request;
  selfCopy = self;
  sub_2406FC468(0, 0, v9, &unk_24076FBC0, v14);
}

- (_TtC12AppleIDSetup14AnisetteClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end