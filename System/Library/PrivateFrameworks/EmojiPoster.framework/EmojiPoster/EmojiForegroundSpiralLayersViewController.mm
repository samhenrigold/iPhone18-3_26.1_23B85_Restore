@interface EmojiForegroundSpiralLayersViewController
- (_TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation EmojiForegroundSpiralLayersViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_249FF1308();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5.receiver = self;
  v5.super_class = type metadata accessor for EmojiForegroundSpiralLayersViewController(0);
  v4 = v5.receiver;
  [(EmojiForegroundSpiralLayersViewController *)&v5 viewIsAppearing:appearingCopy];
  sub_249FF1754();
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for EmojiForegroundSpiralLayersViewController(0);
  v2 = v4.receiver;
  viewDidLayoutSubviews = [(EmojiForegroundSpiralLayersViewController *)&v4 viewDidLayoutSubviews];
  sub_249FF1BCC(viewDidLayoutSubviews);
}

- (_TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end