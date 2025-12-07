@interface HomePodSetupIntroViewController
- (_TtC14HDSViewService31HomePodSetupIntroViewController)initWithContentView:(id)view;
- (void)handleTapOnInfoButton;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HomePodSetupIntroViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100073804();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomePodSetupIntroViewController(0);
  v4 = v5.receiver;
  [(HomePodSetupIconContentViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007EA04();
    swift_unknownObjectRelease();
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HomePodSetupIntroViewController(0);
  v4 = v7.receiver;
  [(HomePodSetupIconContentViewController *)&v7 viewWillDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController_audioPlayer];
  if (v5)
  {
    v6 = v5;
    [v6 invalidateWithFlags:{1, v7.receiver, v7.super_class}];
  }
}

- (void)handleTapOnInfoButton
{
  selfCopy = self;
  infoButton = [(HomePodSetupIntroViewController *)selfCopy infoButton];
  if (infoButton && (v3 = infoButton, v4 = [infoButton isActive], v3, v4))
  {
    sub_1000746B0();
  }

  else
  {
    sub_100074BF8();
  }
}

- (_TtC14HDSViewService31HomePodSetupIntroViewController)initWithContentView:(id)view
{
  *&self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController_audioPlayer] = 0;
  *&self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView] = 0;
  self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController_loadedInfo] = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomePodSetupIntroViewController(0);
  return [(HomePodSetupIconContentViewController *)&v5 initWithContentView:view];
}

@end