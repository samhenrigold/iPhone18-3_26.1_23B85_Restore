@interface ContactsLimitedAccessPromptViewController
- (_TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation ContactsLimitedAccessPromptViewController

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100014460();
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100016CB0;
  }

  else
  {
    v7 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_100015C70(context);
  sub_10000809C(v6, v7);
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100016B40;
  }

  else
  {
    v7 = 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  aBlock[4] = sub_100016AB0;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000798C;
  aBlock[3] = &unk_100029B28;
  v9 = _Block_copy(aBlock);
  selfCopy = self;
  sub_100016AF8(v6, v7);

  v11.receiver = selfCopy;
  v11.super_class = type metadata accessor for ContactsLimitedAccessPromptViewController();
  [(ContactsLimitedAccessPromptViewController *)&v11 dismissViewControllerAnimated:animatedCopy completion:v9];

  sub_10000809C(v6, v7);
  _Block_release(v9);
}

- (_TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_100014DA4(v5, v7, bundle);
}

@end