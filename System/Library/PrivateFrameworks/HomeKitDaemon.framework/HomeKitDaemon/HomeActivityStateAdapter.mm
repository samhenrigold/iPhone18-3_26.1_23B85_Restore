@interface HomeActivityStateAdapter
- (void)homeActivityStateManager:(id)manager didMoveToState:(id)state;
@end

@implementation HomeActivityStateAdapter

- (void)homeActivityStateManager:(id)manager didMoveToState:(id)state
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882030, &qword_22A586C30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882038, &qword_22A586C38);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - v11;
  sub_229564F88(self + OBJC_IVAR____TtC13HomeKitDaemonP33_748D0C001171CDD48878909A76481E9024HomeActivityStateAdapter_continuation, v8, &qword_27D882030, &qword_22A586C30);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F80, &qword_22A586A80);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    __break(1u);
  }

  else
  {
    v17[1] = state;
    stateCopy = state;
    selfCopy = self;
    sub_22A4DDA0C();

    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v8, v13);
  }
}

@end