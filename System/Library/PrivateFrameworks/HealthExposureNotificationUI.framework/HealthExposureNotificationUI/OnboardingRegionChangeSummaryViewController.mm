@interface OnboardingRegionChangeSummaryViewController
- (_TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapPrimaryButton;
- (void)viewDidLoad;
@end

@implementation OnboardingRegionChangeSummaryViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(OBBaseWelcomeController *)&v4 viewDidLoad];
  sub_25169EA38();
  navigationItem = [v2 navigationItem];
  [navigationItem setHidesBackButton_];
}

- (void)didTapPrimaryButton
{
  v3 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_flow);
  swift_getObjectType();
  v4 = *(v3 + 120);
  selfCopy = self;
  v4();
}

- (_TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end