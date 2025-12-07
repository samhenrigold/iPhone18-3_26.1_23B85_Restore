@interface OnboardingSummaryViewController
- (_TtC28HealthExposureNotificationUI31OnboardingSummaryViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC28HealthExposureNotificationUI31OnboardingSummaryViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapCancel;
- (void)didTapPrimaryButton;
- (void)viewDidLoad;
@end

@implementation OnboardingSummaryViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(OBBaseWelcomeController *)&v4 viewDidLoad];
  sub_25168DF3C();
  navigationItem = [v2 navigationItem];
  [navigationItem setHidesBackButton_];
}

- (void)didTapPrimaryButton
{
  v3 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingSummaryViewController_flow);
  swift_getObjectType();
  v4 = *(v3 + 120);
  selfCopy = self;
  v4();
}

- (void)didTapCancel
{
  v3 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingSummaryViewController_flow);
  swift_getObjectType();
  v4 = *(v3 + 128);
  selfCopy = self;
  v4();
}

- (_TtC28HealthExposureNotificationUI31OnboardingSummaryViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI31OnboardingSummaryViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end