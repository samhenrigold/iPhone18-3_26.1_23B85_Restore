@interface FBAFFUDisplayTextViewController
- (UITextView)textView;
- (_TtC18Feedback_Assistant31FBAFFUDisplayTextViewController)initWithCoder:(id)coder;
- (_TtC18Feedback_Assistant31FBAFFUDisplayTextViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation FBAFFUDisplayTextViewController

- (UITextView)textView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10006CF04(selfCopy, v2);
}

- (_TtC18Feedback_Assistant31FBAFFUDisplayTextViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectWeakInit();
    v6 = (self + OBJC_IVAR____TtC18Feedback_Assistant31FBAFFUDisplayTextViewController_displayText);
    *v6 = 0;
    v6[1] = 0xE000000000000000;
    bundleCopy = bundle;
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    swift_unknownObjectWeakInit();
    v11 = (self + OBJC_IVAR____TtC18Feedback_Assistant31FBAFFUDisplayTextViewController_displayText);
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    bundleCopy2 = bundle;
    v8 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for FBAFFUDisplayTextViewController(bundleCopy2, v10);
  v12 = [(FBAFFUDisplayTextViewController *)&v14 initWithNibName:v8 bundle:bundle];

  return v12;
}

- (_TtC18Feedback_Assistant31FBAFFUDisplayTextViewController)initWithCoder:(id)coder
{
  v5 = swift_unknownObjectWeakInit();
  v6 = (self + OBJC_IVAR____TtC18Feedback_Assistant31FBAFFUDisplayTextViewController_displayText);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v11.receiver = self;
  v11.super_class = type metadata accessor for FBAFFUDisplayTextViewController(v5, v7);
  coderCopy = coder;
  v9 = [(FBAFFUDisplayTextViewController *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end