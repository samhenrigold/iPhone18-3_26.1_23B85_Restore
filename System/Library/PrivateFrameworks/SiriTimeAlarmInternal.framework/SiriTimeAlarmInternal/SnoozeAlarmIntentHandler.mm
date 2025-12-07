@interface SnoozeAlarmIntentHandler
- (void)confirmSnoozeAlarmHal:(id)hal completion:(id)completion;
- (void)handleSnoozeAlarmHal:(SnoozeAlarmHalIntent *)hal completion:(id)completion;
@end

@implementation SnoozeAlarmIntentHandler

- (void)confirmSnoozeAlarmHal:(id)hal completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  halCopy = hal;
  selfCopy = self;
  sub_2692953FC(halCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)handleSnoozeAlarmHal:(SnoozeAlarmHalIntent *)hal completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD8, &qword_2692C9868);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = hal;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2692C79C0();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2692C9878;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2692C9880;
  v15[5] = v14;
  halCopy = hal;
  selfCopy = self;
  sub_2692AB004(0, 0, v10, &unk_2692C9888, v15);
}

@end