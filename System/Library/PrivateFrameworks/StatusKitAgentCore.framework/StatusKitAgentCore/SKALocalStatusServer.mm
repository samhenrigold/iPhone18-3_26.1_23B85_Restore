@interface SKALocalStatusServer
- (SKALocalStatusServer)init;
- (void)objcShutdown;
- (void)service:(id)service devicesChanged:(id)changed;
@end

@implementation SKALocalStatusServer

- (void)objcShutdown
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &closure #1 in SKALocalStatusServer.objcShutdown()partial apply, v7);
}

- (void)service:(id)service devicesChanged:(id)changed
{
  if (changed)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  serviceCopy = service;

  specialized SKALocalStatusServer.service(_:devicesChanged:)(v5);
}

- (SKALocalStatusServer)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end