@interface BackdropViewController
- (_TtC13MediaRemoteUI22BackdropViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didMoveToParentViewController:(id)controller;
- (void)traitCollectionDidChange:(id)change;
- (void)updateImage:(id)image animated:(BOOL)animated;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BackdropViewController

- (_TtC13MediaRemoteUI22BackdropViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_10000B514(v5, v7, bundle);
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for BackdropViewController();
  [(BackdropViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v10.receiver = self;
  v10.super_class = type metadata accessor for BackdropViewController();
  v4 = v10.receiver;
  v5 = [(BackdropViewController *)&v10 viewWillAppear:appearCopy];
  sub_10000CA44(v5, v6);
  v9 = v4[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isOnScreen];
  v4[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isOnScreen] = 1;
  if ((v9 & 1) == 0)
  {
    sub_10000C368(v7, v8);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  sub_10000BB3C(disappearCopy);
}

- (void)didMoveToParentViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BackdropViewController();
  v4 = v7.receiver;
  controllerCopy = controller;
  [(BackdropViewController *)&v7 didMoveToParentViewController:controllerCopy];
  if (controllerCopy)
  {
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong invalidate];

    swift_unknownObjectWeakAssign();
  }
}

- (void)updateImage:(id)image animated:(BOOL)animated
{
  imageCopy = image;
  selfCopy = self;
  sub_10000BF24(image, animated);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10000C24C(change);
}

@end