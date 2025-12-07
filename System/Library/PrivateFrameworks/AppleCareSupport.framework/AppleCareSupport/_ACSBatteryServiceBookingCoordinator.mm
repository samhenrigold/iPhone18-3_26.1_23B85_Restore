@interface _ACSBatteryServiceBookingCoordinator
- (void)launchBatteryServiceBookingFlowWithCompletionHandler:(id)handler;
- (void)prepareBatteryServiceBookingFlowWithCompletionHandler:(id)handler;
@end

@implementation _ACSBatteryServiceBookingCoordinator

- (void)prepareBatteryServiceBookingFlowWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DA8, &qword_2402A8DC8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2402A74E8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2402A8E20;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2402A8E28;
  v13[5] = v12;

  sub_240298CF4(0, 0, v8, &unk_2402A8E30, v13);
}

- (void)launchBatteryServiceBookingFlowWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DA8, &qword_2402A8DC8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2402A74E8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2402A8DD8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2402A8DE8;
  v13[5] = v12;

  sub_240298CF4(0, 0, v8, &unk_2402A8DF8, v13);
}

@end