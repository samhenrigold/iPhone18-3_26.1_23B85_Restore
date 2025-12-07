@interface HearingTestInterruptionsViewController
- (_TtC13HearingTestUI38HearingTestInterruptionsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC13HearingTestUI38HearingTestInterruptionsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HearingTestInterruptionsViewController

- (_TtC13HearingTestUI38HearingTestInterruptionsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  iconCopy = icon;
  sub_20CD84E34();
}

- (void)viewDidLoad
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_20CD84424();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  sub_20CD849AC(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = type metadata accessor for HearingTestInterruptionsViewController(0);
  v13.receiver = self;
  v13.super_class = v8;
  selfCopy = self;
  [(OBBaseWelcomeController *)&v13 viewDidAppear:appearCopy];
  sub_20CE124D4();
  v10 = sub_20CE124E4();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  v11 = OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_interruptionStartTime;
  swift_beginAccess();
  sub_20CD83094(v7, selfCopy + v11);
  swift_endAccess();
}

- (_TtC13HearingTestUI38HearingTestInterruptionsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end