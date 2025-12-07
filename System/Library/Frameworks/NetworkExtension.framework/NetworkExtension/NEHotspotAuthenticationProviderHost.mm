@interface NEHotspotAuthenticationProviderHost
- (NEHotspotAuthenticationProviderHost)init;
- (void)initialize:(id)initialize;
- (void)setExportedObject:(id)object;
- (void)startWithCompletion:(id)completion;
- (void)stopWithReason:(int64_t)reason completion:(id)completion;
@end

@implementation NEHotspotAuthenticationProviderHost

- (void)setExportedObject:(id)object
{
  v4 = *&self->NEExtensionBaseProviderHost_opaque[OBJC_IVAR___NEHotspotAuthenticationProviderHost_exportedObject];
  *&self->NEExtensionBaseProviderHost_opaque[OBJC_IVAR___NEHotspotAuthenticationProviderHost_exportedObject] = object;
  objectCopy = object;
}

- (void)initialize:(id)initialize
{
  v4 = sub_1BAA39D9C();
  v6 = v5;
  selfCopy = self;
  sub_1BA871AA8(v4, v6);
}

- (void)startWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1BAA39EFC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1BAA4DA00;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1BAA4DA08;
  v12[5] = v11;
  selfCopy = self;
  sub_1BA8737D8(0, 0, v7, &unk_1BAA4DA10, v12);
}

- (void)stopWithReason:(int64_t)reason completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = reason;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1BAA39EFC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1BAA4D998;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1BAA4D100;
  v14[5] = v13;
  selfCopy = self;
  sub_1BA8737D8(0, 0, v9, &unk_1BAA4CD70, v14);
}

- (NEHotspotAuthenticationProviderHost)init
{
  *&self->NEExtensionBaseProviderHost_opaque[OBJC_IVAR___NEHotspotAuthenticationProviderHost_exportedObject] = 0;
  v3.receiver = self;
  v3.super_class = NEHotspotAuthenticationProviderHost;
  return [(NEExtensionBaseProviderHost *)&v3 init];
}

@end