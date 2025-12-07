@interface PauseTimerIntentHandlerSingle
- (_TtC21SiriTimeTimerInternal29PauseTimerIntentHandlerSingle)init;
- (void)confirmPauseTimer:(PauseTimerIntent *)timer completion:(id)completion;
- (void)resolveAllAvailableTargetsForPauseTimer:(PauseTimerIntent *)timer withCompletion:(id)completion;
- (void)resolveAssociatedDeviceTargetForPauseTimer:(PauseTimerIntent *)timer withCompletion:(id)completion;
@end

@implementation PauseTimerIntentHandlerSingle

- (_TtC21SiriTimeTimerInternal29PauseTimerIntentHandlerSingle)init
{
  v7[3] = type metadata accessor for SiriTimerManagerImpl();
  v7[4] = &protocol witness table for SiriTimerManagerImpl;
  v7[0] = swift_allocObject();
  v2 = type metadata accessor for PauseTimerIntentHandlerSingle();
  v3 = objc_allocWithZone(v2);
  sub_26934489C(v7, v3 + OBJC_IVAR____TtC21SiriTimeTimerInternal29PauseTimerIntentHandlerSingle_siriTimerManager);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = [(PauseTimerIntentHandlerSingle *)&v6 init];
  __swift_destroy_boxed_opaque_existential_1(v7);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)confirmPauseTimer:(PauseTimerIntent *)timer completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = timer;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B5B68;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5740;
  v14[5] = v13;
  timerCopy = timer;
  selfCopy = self;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5748, v14);
}

- (void)resolveAssociatedDeviceTargetForPauseTimer:(PauseTimerIntent *)timer withCompletion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = timer;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B5B58;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5720;
  v14[5] = v13;
  timerCopy = timer;
  selfCopy = self;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5728, v14);
}

- (void)resolveAllAvailableTargetsForPauseTimer:(PauseTimerIntent *)timer withCompletion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = timer;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B5B48;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5700;
  v14[5] = v13;
  timerCopy = timer;
  selfCopy = self;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5530, v14);
}

@end