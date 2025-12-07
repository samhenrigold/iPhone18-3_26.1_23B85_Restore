@interface RemoteEngagementViewController
- (_TtC24AMSEngagementViewService30RemoteEngagementViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)didReceiveMemoryWarning;
- (void)handleButtonActions:(id)actions;
- (void)loadView;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RemoteEngagementViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10000EB58;
  }

  else
  {
    v7 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_100009AD8(context, v6);
  sub_100006708(v6, v7);
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10000EB14;
  }

  else
  {
    v7 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_10000A0A0(context, v6);
  sub_100006708(v6, v7);
}

- (void)handleButtonActions:(id)actions
{
  if (actions)
  {
    sub_100008CB8(0, &qword_100021E70, SBUIRemoteAlertButtonAction_ptr);
    sub_10000E060();
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_10000A4D8(v4);
}

- (void)loadView
{
  selfCopy = self;
  sub_10000A974();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000AA5C();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_10000ADC8(appearCopy, &selRef_viewWillAppear_, &ViewControllerPresenter.viewWillAppear());
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10000AB9C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10000AC48(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  sub_10000ADC8(disappearCopy, &selRef_viewDidDisappear_, &ViewControllerPresenter.viewDidDisappear());
}

- (void)didReceiveMemoryWarning
{
  selfCopy = self;
  sub_10000AED4(selfCopy);
}

- (_TtC24AMSEngagementViewService30RemoteEngagementViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10000D934(v5, v7, bundle);
}

@end