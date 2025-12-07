@interface DismissTimerIntentHandler
- (_TtC21SiriTimeTimerInternal25DismissTimerIntentHandler)init;
- (void)confirmDismissTimer:(id)timer completion:(id)completion;
- (void)handleDismissTimer:(DismissTimerIntent *)timer completion:(id)completion;
@end

@implementation DismissTimerIntentHandler

- (void)confirmDismissTimer:(id)timer completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  timerCopy = timer;
  selfCopy = self;
  sub_269360620(timerCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)handleDismissTimer:(DismissTimerIntent *)timer completion:(id)completion
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
  v13[4] = &unk_2693B5F90;
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

- (_TtC21SiriTimeTimerInternal25DismissTimerIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end