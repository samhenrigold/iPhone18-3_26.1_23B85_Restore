@interface WFSystemActionConfigurationServiceViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (WFSystemActionConfigurationServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)setSelectedSystemAction:(id)action;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFSystemActionConfigurationServiceViewController

- (WFSystemActionConfigurationServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1000135EC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  sub_100006EE0(v5, v7, bundle);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100007320(selfCopy);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_100007784(appearCopy);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10000781C(selfCopy);
}

- (void)setSelectedSystemAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_100007A60(actionCopy, selfCopy, v5, v6);
}

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_100007C68(contextCopy, selfCopy, v5, v6);
}

+ (id)_exportedInterface
{
  v2 = sub_1000089C8();

  return v2;
}

+ (id)_remoteViewControllerInterface
{
  v2 = sub_100008A1C();

  return v2;
}

@end