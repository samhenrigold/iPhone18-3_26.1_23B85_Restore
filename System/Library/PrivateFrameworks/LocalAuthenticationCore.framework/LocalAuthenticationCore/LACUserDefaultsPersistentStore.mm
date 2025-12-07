@interface LACUserDefaultsPersistentStore
- (_TtC23LocalAuthenticationCore30LACUserDefaultsPersistentStore)init;
- (_TtC23LocalAuthenticationCore30LACUserDefaultsPersistentStore)initWithSuiteName:(id)name;
- (void)dataForKey:(NSString *)key completion:(id)completion;
- (void)removeObjectForKey:(NSString *)key completion:(id)completion;
- (void)setData:(NSData *)data forKey:(NSString *)key completion:(id)completion;
@end

@implementation LACUserDefaultsPersistentStore

- (_TtC23LocalAuthenticationCore30LACUserDefaultsPersistentStore)initWithSuiteName:(id)name
{
  if (name)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return LACUserDefaultsPersistentStore.init(suiteName:)(v3, v4);
}

- (void)dataForKey:(NSString *)key completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = key;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in LACUserDefaultsPersistentStore.data(forKey:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_36Tu;
  v14[5] = v13;
  keyCopy = key;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_41Tu, v14);
}

- (void)setData:(NSData *)data forKey:(NSString *)key completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = data;
  v13[3] = key;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in LACUserDefaultsPersistentStore.setData(_:forKey:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_22Tu;
  v16[5] = v15;
  dataCopy = data;
  keyCopy = key;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_27Tu, v16);
}

- (void)removeObjectForKey:(NSString *)key completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = key;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in LACUserDefaultsPersistentStore.removeObject(forKey:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTATu;
  v14[5] = v13;
  keyCopy = key;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTATu, v14);
}

- (_TtC23LocalAuthenticationCore30LACUserDefaultsPersistentStore)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end