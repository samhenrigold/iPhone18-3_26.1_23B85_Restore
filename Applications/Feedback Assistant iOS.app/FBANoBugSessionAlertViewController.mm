@interface FBANoBugSessionAlertViewController
+ (void)showInController:(id)controller forDevice:(id)device;
- (_TtC18Feedback_Assistant34FBANoBugSessionAlertViewController)initWithCoder:(id)coder;
- (_TtC18Feedback_Assistant34FBANoBugSessionAlertViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation FBANoBugSessionAlertViewController

+ (void)showInController:(id)controller forDevice:(id)device
{
  controllerCopy = controller;
  deviceCopy = device;
  sub_10004BFF0(controllerCopy);
}

- (_TtC18Feedback_Assistant34FBANoBugSessionAlertViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for FBANoBugSessionAlertViewController(bundleCopy2, v9);
  v10 = [(FBANoBugSessionAlertViewController *)&v12 initWithNibName:v7 bundle:bundle];

  return v10;
}

- (_TtC18Feedback_Assistant34FBANoBugSessionAlertViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FBANoBugSessionAlertViewController(self, a2);
  coderCopy = coder;
  v5 = [(FBANoBugSessionAlertViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end