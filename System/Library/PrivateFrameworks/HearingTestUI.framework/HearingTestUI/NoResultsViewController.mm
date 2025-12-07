@interface NoResultsViewController
- (void)didTapEnd;
- (void)didTapRestart;
- (void)viewDidLoad;
@end

@implementation NoResultsViewController

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
  sub_20CD941CC();
}

- (void)didTapRestart
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
  ObjectType = swift_getObjectType();
  v7 = 5;
  v5 = *(v3 + 48);
  selfCopy = self;
  swift_unknownObjectRetain();
  v5(&v7, selfCopy, &protocol witness table for NoResultsViewController, ObjectType, v3);
  swift_unknownObjectRelease();
  sub_20CDDE578(1);
}

- (void)didTapEnd
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
  ObjectType = swift_getObjectType();
  v7 = 3;
  v5 = *(v3 + 48);
  selfCopy = self;
  swift_unknownObjectRetain();
  v5(&v7, selfCopy, &protocol witness table for NoResultsViewController, ObjectType, v3);
  swift_unknownObjectRelease();
  sub_20CDDE960();
}

@end