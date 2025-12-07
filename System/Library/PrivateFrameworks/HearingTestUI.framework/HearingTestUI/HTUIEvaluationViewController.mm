@interface HTUIEvaluationViewController
- (_TtC13HearingTestUI28HTUIEvaluationViewController)initWithCoder:(id)coder;
- (_TtC13HearingTestUI28HTUIEvaluationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)pauseHearingTestSession;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation HTUIEvaluationViewController

- (_TtC13HearingTestUI28HTUIEvaluationViewController)initWithCoder:(id)coder
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_20CDD8D50();
}

- (void)loadView
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = objc_allocWithZone(type metadata accessor for HTUIEvaluationViewController.View());
  selfCopy = self;
  initWithFrame_ = [v3 initWithFrame_];
  [(HTUIEvaluationViewController *)selfCopy setView:initWithFrame_];
}

- (void)viewDidLoad
{
  v3 = sub_20CE12924();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = type metadata accessor for HTUIEvaluationViewController(0);
  v9.receiver = self;
  v9.super_class = v7;
  selfCopy = self;
  [(HTUIEvaluationViewController *)&v9 viewDidLoad];
  sub_20CDD1D3C();
  sub_20CDD2764();
  (*(v4 + 104))(v6, *MEMORY[0x277D12CD8], v3);
  sub_20CDD2958(v6);

  (*(v4 + 8))(v6, v3);
}

- (void)viewDidAppear:(BOOL)appear
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_20CDD16A4(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for HTUIEvaluationViewController(0);
  selfCopy = self;
  [(HTUIEvaluationViewController *)&v8 viewDidDisappear:disappearCopy];
  sub_20CDD19E0(0);
  v6 = OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager;
  [*(*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_application) setIdleTimerDisabled_];
  v7 = __swift_project_boxed_opaque_existential_1((*(&selfCopy->super.super.super.isa + v6) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager), *(*(&selfCopy->super.super.super.isa + v6) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24));
  sub_20CDB9494(selfCopy, *v7);
}

- (_TtC13HearingTestUI28HTUIEvaluationViewController)initWithNibName:(id)name bundle:(id)bundle
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

- (void)pauseHearingTestSession
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager))
  {
    selfCopy = self;

    sub_20CD75A38();

    sub_20CDD4E60();
  }

  else
  {
    __break(1u);
  }
}

@end