@interface AMSUIMessageLoadingViewController
+ (id)placeholderStyleLoadingControllerWithMessage:(id)message;
- (AMSUIMessageLoadingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)removeMessage;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIMessageLoadingViewController

+ (id)placeholderStyleLoadingControllerWithMessage:(id)message
{
  if (message)
  {
    v3 = sub_1BB1DD378();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = static MessageLoadingViewController.placeholderStyleLoadingController(message:)(v3, v5);

  return v6;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BB1741C4();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1BB174260();
}

- (void)removeMessage
{
  selfCopy = self;
  sub_1BB174388();
}

- (AMSUIMessageLoadingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1BB1DD378();
  }

  bundleCopy = bundle;
  MessageLoadingViewController.init(nibName:bundle:)();
}

@end