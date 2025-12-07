@interface StandardPlayerViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC20FitnessPlayerService28StandardPlayerViewController)initWithCoder:(id)coder;
- (_TtC20FitnessPlayerService28StandardPlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)modalPresentationStyle;
- (void)setModalPresentationStyle:(int64_t)style;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation StandardPlayerViewController

- (NSArray)preferredFocusEnvironments
{
  sub_1E65E6058();
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  StandardPlayerViewController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078268, &qword_1E65FBB30);
  v4 = sub_1E65E5EF8();

  return v4;
}

- (int64_t)modalPresentationStyle
{
  sub_1E65E6058();
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  modalPresentationStyle = [*(&self->super.super.super.isa + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController) modalPresentationStyle];

  return modalPresentationStyle;
}

- (void)setModalPresentationStyle:(int64_t)style
{
  sub_1E65E6058();
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [*(&self->super.super.super.isa + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController) setModalPresentationStyle_];
}

- (_TtC20FitnessPlayerService28StandardPlayerViewController)initWithCoder:(id)coder
{
  sub_1E65E6058();
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  sub_1E65E6058();
  sub_1E65E6048();
  v9 = MEMORY[0x1E69E85E0];
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15.receiver = self;
  v15.super_class = ObjectType;
  selfCopy = self;
  [(StandardPlayerViewController *)&v15 viewDidAppear:appearCopy];
  v11 = sub_1E65E60A8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = selfCopy;
  v13 = sub_1E65E6048();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v9;
  v14[4] = v12;
  sub_1E64B80F8(0, 0, v8, &unk_1E660C760, v14);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  sub_1E65E6058();
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  StandardPlayerViewController.viewDidDisappear(_:)(disappear);
}

- (_TtC20FitnessPlayerService28StandardPlayerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_1E65E6058();
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end