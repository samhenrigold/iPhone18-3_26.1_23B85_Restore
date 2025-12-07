@interface AISSafetySettingsViewController
- (AISSafetySettingsViewController)initWithCoder:(id)coder;
- (AISSafetySettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (AISSafetySettingsViewController)initWithSafetySettingsContext:(id)context;
- (AISSafetySettingsViewControllerDelegate)delegate;
- (void)shouldPresentSafetySettingsWithContext:(AISSafetySettingsContext *)context completionHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AISSafetySettingsViewController

- (AISSafetySettingsViewControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (AISSafetySettingsViewController)initWithSafetySettingsContext:(id)context
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___AISSafetySettingsViewController_progressHostingController) = 0;
  *(self + OBJC_IVAR___AISSafetySettingsViewController_context) = context;
  *(self + OBJC_IVAR___AISSafetySettingsViewController_configuration) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SafetySettingsViewController();
  contextCopy = context;
  return [(AISSafetySettingsViewController *)&v7 initWithNibName:0 bundle:0];
}

- (AISSafetySettingsViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___AISSafetySettingsViewController_progressHostingController) = 0;
  result = sub_240A2C58C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SafetySettingsViewController();
  v2 = v3.receiver;
  [(AISSafetySettingsViewController *)&v3 viewDidLoad];
  sub_2409674C8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_240966AB4(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for SafetySettingsViewController();
  v15.receiver = self;
  v15.super_class = v8;
  selfCopy = self;
  [(AISSafetySettingsViewController *)&v15 viewDidAppear:appearCopy];
  v10 = sub_240A2C24C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_240A2C21C();
  v11 = selfCopy;
  v12 = sub_240A2C20C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_2409230D4(0, 0, v7, &unk_240A33608, v13);
}

- (void)shouldPresentSafetySettingsWithContext:(AISSafetySettingsContext *)context completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_240A2C24C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240A335F0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240A30840;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_240A0B0A4(0, 0, v9, &unk_240A33600, v14);
}

- (AISSafetySettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end