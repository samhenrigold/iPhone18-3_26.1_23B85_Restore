@interface HearingTestPreEvaluationCoachingViewController
- (void)continueButtonTapped:(id)tapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation HearingTestPreEvaluationCoachingViewController

- (void)viewDidLoad
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for HearingTestPreEvaluationCoachingViewController(0);
  selfCopy = self;
  [(OBBaseWelcomeController *)&v4 viewDidLoad];
  sub_20CDBAB20();
  sub_20CDBAD48();
  sub_20CDBB0A8();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for HearingTestPreEvaluationCoachingViewController(0);
  selfCopy = self;
  [(HearingTestStepViewController *)&v7 viewDidAppear:appearCopy];
  v6 = *(&selfCopy->super.super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_animationView);
  sub_20CE12B94();
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

  v7.receiver = self;
  v7.super_class = type metadata accessor for HearingTestPreEvaluationCoachingViewController(0);
  selfCopy = self;
  [(OBBaseWelcomeController *)&v7 viewDidDisappear:disappearCopy];
  v6 = *(&selfCopy->super.super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_animationView);
  sub_20CE12B84();

  if (*(&selfCopy->super.super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_supportsSampleTone) == 1)
  {
    sub_20CDBC720();
  }
}

- (void)continueButtonTapped:(id)tapped
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20CE13FC4();
  swift_unknownObjectRelease();
  sub_20CDBBB04();

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

@end