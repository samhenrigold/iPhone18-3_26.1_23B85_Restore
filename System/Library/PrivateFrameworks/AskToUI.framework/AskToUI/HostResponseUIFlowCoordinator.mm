@interface HostResponseUIFlowCoordinator
- (_TtC7AskToUI29HostResponseUIFlowCoordinator)init;
- (void)didSelectAnswerChoice:(id)choice;
- (void)dismiss;
- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error;
@end

@implementation HostResponseUIFlowCoordinator

- (_TtC7AskToUI29HostResponseUIFlowCoordinator)init
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  deactivateCopy = deactivate;
  selfCopy = self;
  errorCopy = error;
  sub_2411A579C(error);
}

- (void)didSelectAnswerChoice:(id)choice
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_2411ABDD8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2411ABDA8();
  choiceCopy = choice;
  selfCopy = self;
  v11 = choiceCopy;
  v12 = selfCopy;
  v13 = sub_2411ABD98();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v11;
  v14[5] = v12;
  sub_241192B80(0, 0, v7, &unk_2411ADF28, v14);
}

- (void)dismiss
{
  selfCopy = self;
  HostResponseUIFlowCoordinator.dismiss()();
}

@end