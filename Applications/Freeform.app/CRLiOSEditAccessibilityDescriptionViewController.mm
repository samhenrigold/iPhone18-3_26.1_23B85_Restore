@interface CRLiOSEditAccessibilityDescriptionViewController
- (NSString)accessibilityDescriptionToSubmit;
- (_TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController)initWithCoder:(id)coder;
- (_TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController)initWithInitialAccessibilityDescription:(id)description title:(id)title subtitle:(id)subtitle submitButtonTitle:(id)buttonTitle placeholder:(id)placeholder delegate:(id)delegate;
- (_TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)loadView;
- (void)setIsCancelled:(BOOL)cancelled;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CRLiOSEditAccessibilityDescriptionViewController

- (void)setIsCancelled:(BOOL)cancelled
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_isCancelled) = cancelled;
  if (cancelled)
  {
    [(CRLiOSEditAccessibilityDescriptionViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController)initWithInitialAccessibilityDescription:(id)description title:(id)title subtitle:(id)subtitle submitButtonTitle:(id)buttonTitle placeholder:(id)placeholder delegate:(id)delegate
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  swift_unknownObjectRetain();
  return sub_100D46894(v9, v11, v12, v14, v15, v17, v23, v19, v20, v22, delegate);
}

- (_TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_isCancelled) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_isCompact) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController____lazy_storage___textView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_100D46BD0();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLiOSEditAccessibilityDescriptionViewController();
  v4 = v7.receiver;
  [(CRLiOSEditAccessibilityDescriptionViewController *)&v7 viewWillAppear:appearCopy];
  navigationItem = [v4 navigationItem];
  v6 = String._bridgeToObjectiveC()();
  [navigationItem setTitle:v6];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CRLiOSEditAccessibilityDescriptionViewController();
  v4 = v6.receiver;
  [(CRLiOSEditAccessibilityDescriptionViewController *)&v6 viewDidAppear:appearCopy];
  LODWORD(appearCopy) = UIAccessibilityLayoutChangedNotification;
  view = [v4 view];
  UIAccessibilityPostNotification(appearCopy, view);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100D4747C(disappear);
}

- (_TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)accessibilityDescriptionToSubmit
{
  selfCopy = self;
  v3 = sub_100D4796C();
  text = [v3 text];

  if (text)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  controllerCopy = controller;
  collectionCopy = collection;
  selfCopy = self;
  v9 = sub_100D47FB0(collectionCopy);

  return v9;
}

@end