@interface SingleAccountSharingChoiceController
- (_TtC12FinanceKitUI36SingleAccountSharingChoiceController)initWithCoder:(id)coder;
- (_TtC12FinanceKitUI36SingleAccountSharingChoiceController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (void)didMoveToParentViewController:(id)controller;
- (void)emptySetter:(id)setter;
- (void)menuUpdated;
- (void)setStartDate:(id)date;
- (void)updateStartSharingTime;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SingleAccountSharingChoiceController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  ObjectType = swift_getObjectType();
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = self;
  v9.super_class = ObjectType;
  selfCopy = self;
  [(SingleAccountSharingChoiceController *)&v9 viewDidAppear:appearCopy];
  v7 = *MEMORY[0x277D38568];
  v8 = sub_23854B138(MEMORY[0x277D84F90]);
  sub_23844C218(v7, 25, v8);
}

- (void)didMoveToParentViewController:(id)controller
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  selfCopy = self;
  SingleAccountSharingChoiceController.didMove(toParent:)(controller);
}

- (id)specifiers
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v4 = SingleAccountSharingChoiceController.specifiers()();

  if (v4)
  {
    v5 = sub_23875EC60();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (_TtC12FinanceKitUI36SingleAccountSharingChoiceController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    v6 = sub_23875EA80();
    name = v7;
  }

  else
  {
    v6 = 0;
  }

  bundleCopy = bundle;
  v9 = SingleAccountSharingChoiceController.init(nibName:bundle:)(v6, name, bundle);

  return v9;
}

- (_TtC12FinanceKitUI36SingleAccountSharingChoiceController)initWithCoder:(id)coder
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = SingleAccountSharingChoiceController.init(coder:)(coder);

  return v4;
}

- (void)menuUpdated
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_2386C8160();
}

- (void)emptySetter:(id)setter
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (void)updateStartSharingTime
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  sub_23875ED50();
  sub_23875ED40();
  v6 = MEMORY[0x277D85700];
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_23875ED80();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  selfCopy = self;
  v9 = sub_23875ED40();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v6;
  v10[4] = selfCopy;
  sub_2386C3BA4(0, 0, v5, &unk_23877FC38, v10);
}

- (void)setStartDate:(id)date
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  dateCopy = date;
  selfCopy = self;
  sub_2386CA15C(dateCopy);
}

@end