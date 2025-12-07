@interface ModelPlayabilityController
+ (_TtC16MusicApplication26ModelPlayabilityController)shared;
+ (id)requiredPropertiesForModelClass:(Class)class;
- (int64_t)calculatePlayabilityStatusWithModel:(id)model;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkType:(id)type;
@end

@implementation ModelPlayabilityController

+ (_TtC16MusicApplication26ModelPlayabilityController)shared
{
  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  v3 = qword_E70E48;

  return v3;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedMonitor = [v3 sharedMonitor];
  [sharedMonitor unregisterObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for ModelPlayabilityController();
  [(ModelPlayabilityController *)&v6 dealloc];
}

+ (id)requiredPropertiesForModelClass:(Class)class
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v4 = sub_10F414(ObjCClassMetadata);

  return v4;
}

- (int64_t)calculatePlayabilityStatusWithModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  sub_10AC20(model);
  v8 = v7;

  return v8;
}

- (void)environmentMonitorDidChangeNetworkType:(id)type
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = sub_AB9990();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_AB9940();
  selfCopy = self;
  v8 = sub_AB9930();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_DBDC8(0, 0, v5, &unk_AFE878, v9);
}

@end