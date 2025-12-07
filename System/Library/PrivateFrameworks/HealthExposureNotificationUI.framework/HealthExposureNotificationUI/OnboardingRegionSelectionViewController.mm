@interface OnboardingRegionSelectionViewController
- (_TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)didTapCancel;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation OnboardingRegionSelectionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  OnboardingRegionSelectionViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(OnboardingRegionSelectionViewController *)&v9 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    [navigationController setNavigationBarHidden:0 animated:appearCopy];
  }

  v7 = *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow + 8];
  ObjectType = swift_getObjectType();
  (*(v7 + 16))(0, ObjectType, v7);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(OnboardingRegionSelectionViewController *)&v7 viewWillDisappear:disappearCopy];
  if ([v4 isMovingFromParentViewController])
  {
    v5 = *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow + 8];
    ObjectType = swift_getObjectType();
    (*(v5 + 64))(MEMORY[0x277D84F90], ObjectType, v5);
  }
}

- (void)didTapCancel
{
  v3 = self + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow;
  v4 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 64);
  selfCopy = self;
  v6(MEMORY[0x277D84F90], ObjectType, v4);
  v7 = *(v3 + 1);
  v8 = swift_getObjectType();
  (*(v7 + 128))(selfCopy, &protocol witness table for OnboardingRegionSelectionViewController, v8, v7);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  sub_2516B63A0();
  v6 = v5;

  v7 = *(v6 + 16);

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_251702EE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251702EC4();
  viewCopy = view;
  selfCopy = self;
  v12 = OnboardingRegionSelectionViewController.tableView(_:cellForRowAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_251702EE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251702EC4();
  viewCopy = view;
  selfCopy = self;
  OnboardingRegionSelectionViewController.tableView(_:didSelectRowAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  changeCopy = change;
  traitCollection = [(OnboardingRegionSelectionViewController *)selfCopy traitCollection];
  if (traitCollection)
  {
    v6 = traitCollection;
    if (changeCopy)
    {
      sub_25168CD90(0, &qword_27F4541E0, 0x277D75C80);
      v7 = changeCopy;
      v8 = sub_2517033B4();

      if (v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    sub_2516B72E8();
    v7 = changeCopy;
LABEL_9:

    goto LABEL_10;
  }

  if (changeCopy)
  {
    goto LABEL_8;
  }

LABEL_10:
}

- (_TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end