@interface TPSSharedTipViewController
- (_TtC4Tips26TPSSharedTipViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)doneTapped:(id)tapped;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TPSSharedTipViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = type metadata accessor for TPSSharedTipViewController();
  v4 = v9.receiver;
  [(TPSTipsViewController *)&v9 viewWillAppear:appearCopy];
  tips = [v4 tips];
  if (tips)
  {
    v6 = tips;
    sub_100024368();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v8)
    {
      [v4 showErrorView];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TPSSharedTipViewController();
  v4 = v7.receiver;
  [(TPSTipsViewController *)&v7 viewDidDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC4Tips26TPSSharedTipViewController_onDismissed];
  if (v5)
  {
    v6 = *&v4[OBJC_IVAR____TtC4Tips26TPSSharedTipViewController_onDismissed + 8];

    v5(v4);

    sub_10001E970(v5, v6);
  }

  else
  {
  }
}

- (void)doneTapped:(id)tapped
{
  if (tapped)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    selfCopy2 = self;
  }

  [(TPSSharedTipViewController *)self dismissViewControllerAnimated:1 completion:0, v6, v7];

  sub_1000243B4(&v6);
}

- (_TtC4Tips26TPSSharedTipViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips26TPSSharedTipViewController_onDismissed);
    *v6 = 0;
    v6[1] = 0;
    bundleCopy = bundle;
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips26TPSSharedTipViewController_onDismissed);
    *v9 = 0;
    v9[1] = 0;
    bundleCopy2 = bundle;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for TPSSharedTipViewController();
  v11 = [(TPSViewController *)&v13 initWithNibName:v8 bundle:bundle];

  return v11;
}

@end