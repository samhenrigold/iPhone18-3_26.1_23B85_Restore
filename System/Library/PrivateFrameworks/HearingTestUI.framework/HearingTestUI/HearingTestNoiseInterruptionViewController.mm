@interface HearingTestNoiseInterruptionViewController
- (void)didTapHowtoReduceNoise;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HearingTestNoiseInterruptionViewController

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
  v4.super_class = type metadata accessor for HearingTestNoiseInterruptionViewController(0);
  selfCopy = self;
  [(HearingTestInterruptionsViewController *)&v4 viewDidLoad];
  sub_20CDA8BF0();
  sub_20CDA8F34();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for HearingTestNoiseInterruptionViewController(0);
  selfCopy = self;
  [(HearingTestNoiseInterruptionViewController *)&v6 viewWillAppear:appearCopy];
  sub_20CD85268();
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

  v11.receiver = self;
  v11.super_class = type metadata accessor for HearingTestNoiseInterruptionViewController(0);
  selfCopy = self;
  [(OBBaseWelcomeController *)&v11 viewDidDisappear:disappearCopy];
  v6 = *(&selfCopy->super.super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingTestUI42HearingTestNoiseInterruptionViewController_noiseDataProvider);
  v7 = v6[7];
  v8 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
  v10[3] = type metadata accessor for NoiseDataProvider();
  v10[4] = &off_2823BBDD8;
  v10[0] = v6;
  v9 = *(v8 + 24);

  v9(v10, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

- (void)didTapHowtoReduceNoise
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = objc_allocWithZone(type metadata accessor for HTUIHowToReduceNoiseViewController());
  selfCopy = self;
  v4 = HTUIHowToReduceNoiseViewController.init()();
  initWithRootViewController_ = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];

  [(HearingTestNoiseInterruptionViewController *)selfCopy presentViewController:initWithRootViewController_ animated:1 completion:0];
}

@end