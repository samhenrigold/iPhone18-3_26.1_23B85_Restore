@interface HomePodSetupProgressViewController
- (_TtC14HDSViewService34HomePodSetupProgressViewController)initWithContentView:(id)view;
- (void)handleTimer:(id)timer;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation HomePodSetupProgressViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10009A6FC();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10009ACB0(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for HomePodSetupProgressViewController(0);
  v4 = v6.receiver;
  [(HomePodSetupProgressViewController *)&v6 viewDidDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC14HDSViewService34HomePodSetupProgressViewController_timer];
  [v5 invalidate];
}

- (void)handleTimer:(id)timer
{
  timerCopy = timer;
  selfCopy = self;
  sub_10009C734();
}

- (_TtC14HDSViewService34HomePodSetupProgressViewController)initWithContentView:(id)view
{
  *&self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService34HomePodSetupProgressViewController_timer] = 0;
  v5 = OBJC_IVAR____TtC14HDSViewService34HomePodSetupProgressViewController_startDate;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(&self->super.PRXCardContentViewController_opaque[v5], 1, 1, v6);
  v8.receiver = self;
  v8.super_class = type metadata accessor for HomePodSetupProgressViewController(0);
  return [(HomePodSetupStereoViewController *)&v8 initWithContentView:view];
}

@end