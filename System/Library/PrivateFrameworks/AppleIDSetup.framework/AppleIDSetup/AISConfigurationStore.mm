@interface AISConfigurationStore
- (AISChildAccountCutOffAgeResponse)cachedChildCutOffResponse;
- (AISConfigurationStore)init;
- (void)fetchMaxAgeForChildAccountWithCompletionHandler:(id)handler;
- (void)setCachedChildCutOffResponse:(id)response;
@end

@implementation AISConfigurationStore

- (AISChildAccountCutOffAgeResponse)cachedChildCutOffResponse
{
  v3 = OBJC_IVAR___AISConfigurationStore_cachedChildCutOffResponse;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCachedChildCutOffResponse:(id)response
{
  v5 = OBJC_IVAR___AISConfigurationStore_cachedChildCutOffResponse;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = response;
  responseCopy = response;
}

- (void)fetchMaxAgeForChildAccountWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24075A3D4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_240779B48;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240767F10;
  v12[5] = v11;
  selfCopy = self;
  sub_2406FC468(0, 0, v7, &unk_24076FBC0, v12);
}

- (AISConfigurationStore)init
{
  *(&self->super.isa + OBJC_IVAR___AISConfigurationStore_cachedChildCutOffResponse) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AISConfigurationStore();
  return [(AISConfigurationStore *)&v3 init];
}

@end