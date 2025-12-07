@interface HFActivityStateManager
- (HFActivityStateManager)init;
- (void)fetchActivityState;
- (void)fetchHomeActivityStateStatusWithCompletionHandler:(id)handler;
- (void)home:(id)home didUpdateHomeActivityState:(unint64_t)state isActivityStateHoldActive:(BOOL)active activityStateHoldEndDate:(id)date transitionalStateEndDate:(id)endDate;
- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home;
- (void)residentDevice:(id)device didUpdateStatus:(unint64_t)status;
- (void)updateHomeActivityHoldStateWithCompletionHandler:(id)handler;
- (void)updateHomeActivityStateTo:(unint64_t)to completionHandler:(id)handler;
@end

@implementation HFActivityStateManager

- (void)fetchHomeActivityStateStatusWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20DD65114();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20DD969E8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD969F0;
  v12[5] = v11;
  selfCopy = self;
  sub_20DAB35AC(0, 0, v7, &unk_20DD969F8, v12);
}

- (void)fetchActivityState
{
  selfCopy = self;
  sub_20DA8D3EC();
}

- (void)updateHomeActivityStateTo:(unint64_t)to completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = to;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_20DD65114();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20DD969C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20DD969D0;
  v14[5] = v13;
  selfCopy = self;
  sub_20DAB35AC(0, 0, v9, &unk_20DD969D8, v14);
}

- (void)updateHomeActivityHoldStateWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20DD65114();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20DD969B8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD94D90;
  v12[5] = v11;
  selfCopy = self;
  sub_20DAB35AC(0, 0, v7, &unk_20DD95520, v12);
}

- (void)home:(id)home didUpdateHomeActivityState:(unint64_t)state isActivityStateHoldActive:(BOOL)active activityStateHoldEndDate:(id)date transitionalStateEndDate:(id)endDate
{
  activeCopy = active;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  if (date)
  {
    sub_20DD63674();
    v19 = sub_20DD636C4();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }

  else
  {
    v20 = sub_20DD636C4();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  if (endDate)
  {
    sub_20DD63674();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_20DD636C4();
  (*(*(v22 - 8) + 56))(v16, v21, 1, v22);
  homeCopy = home;
  selfCopy = self;
  sub_20DA907CC(homeCopy, state, activeCopy, v18, v16);

  sub_20D9D76EC(v16, &unk_27C843810, &qword_20DD93F00);
  sub_20D9D76EC(v18, &unk_27C843810, &qword_20DD93F00);
}

- (void)residentDevice:(id)device didUpdateStatus:(unint64_t)status
{
  deviceCopy = device;
  selfCopy = self;
  sub_20DA92880();
}

- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home
{
  dispatcherCopy = dispatcher;
  managerCopy = manager;
  homeCopy = home;
  selfCopy = self;
  sub_20DA92F24(home);
}

- (HFActivityStateManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end