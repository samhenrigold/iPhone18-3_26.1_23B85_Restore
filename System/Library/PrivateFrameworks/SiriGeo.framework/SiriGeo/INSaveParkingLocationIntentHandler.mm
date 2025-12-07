@interface INSaveParkingLocationIntentHandler
- (_TtC7SiriGeo34INSaveParkingLocationIntentHandler)init;
- (void)handleSaveParkingLocation:(id)location completion:(id)completion;
- (void)resolveParkingLocationForSaveParkingLocation:(INSaveParkingLocationIntent *)location withCompletion:(id)completion;
@end

@implementation INSaveParkingLocationIntentHandler

- (void)resolveParkingLocationForSaveParkingLocation:(INSaveParkingLocationIntent *)location withCompletion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = location;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTATu;
  v14[5] = v13;
  locationCopy = location;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTATu, v14);
}

- (void)handleSaveParkingLocation:(id)location completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  locationCopy = location;
  selfCopy = self;
  INSaveParkingLocationIntentHandler.handle(intent:completion:)(locationCopy, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned INDeleteParkingLocationIntentResponse) -> (), v7);
}

- (_TtC7SiriGeo34INSaveParkingLocationIntentHandler)init
{
  v3 = OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *(&self->super.isa + v3) = OS_os_log.init(subsystem:category:)();
  v4 = (&self->super.isa + OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_completion);
  v5 = type metadata accessor for INSaveParkingLocationIntentHandler();
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = self;
  v7.super_class = v5;
  return [(INSaveParkingLocationIntentHandler *)&v7 init];
}

@end