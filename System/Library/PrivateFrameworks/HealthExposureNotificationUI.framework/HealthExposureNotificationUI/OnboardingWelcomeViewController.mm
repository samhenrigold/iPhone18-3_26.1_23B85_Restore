@interface OnboardingWelcomeViewController
- (_TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapFooterLabel;
- (void)didTapHowExposureNotificationsWork;
- (void)didTapPrimaryButton;
- (void)didTapSecondaryButton;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation OnboardingWelcomeViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(OnboardingWelcomeViewController *)&v7 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    [navigationController setNavigationBarHidden:1 animated:appearCopy];
  }

  sub_2516FB810();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(OnboardingWelcomeViewController *)&v5 viewDidAppear:appearCopy];
  OnboardingWelcomeViewController.updateForScrollOffsetChange()();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(OnboardingWelcomeViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_2516FBCEC();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  OnboardingWelcomeViewController.traitCollectionDidChange(_:)(v9);
}

- (void)scrollViewDidScroll:(id)scroll
{
  selfCopy = self;
  OnboardingWelcomeViewController.updateForScrollOffsetChange()();
}

- (void)didTapHowExposureNotificationsWork
{
  type metadata accessor for OnboardingInfoViewController();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  selfCopy = self;
  v4 = [v3 init];
  initWithRootViewController_ = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  [(OnboardingWelcomeViewController *)selfCopy presentViewController:initWithRootViewController_ animated:1 completion:0];
}

- (void)didTapFooterLabel
{
  selfCopy = self;
  sub_2516B0724();
}

- (void)didTapPrimaryButton
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_flow);
  selfCopy = self;
  sub_2516B3EF4(selfCopy, v2);
}

- (void)didTapSecondaryButton
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_flow);
  selfCopy = self;
  sub_2516B4250(selfCopy, v2);
}

- (_TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end