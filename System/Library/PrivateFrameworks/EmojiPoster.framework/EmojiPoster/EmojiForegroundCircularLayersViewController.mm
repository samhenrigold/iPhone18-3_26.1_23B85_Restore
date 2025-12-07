@interface EmojiForegroundCircularLayersViewController
- (_TtC11EmojiPoster43EmojiForegroundCircularLayersViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation EmojiForegroundCircularLayersViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_249FE609C();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5.receiver = self;
  v5.super_class = type metadata accessor for EmojiForegroundCircularLayersViewController(0);
  v4 = v5.receiver;
  [(EmojiForegroundCircularLayersViewController *)&v5 viewIsAppearing:appearingCopy];
  sub_249FE64E8();
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for EmojiForegroundCircularLayersViewController(0);
  v2 = v4.receiver;
  viewDidLayoutSubviews = [(EmojiForegroundCircularLayersViewController *)&v4 viewDidLayoutSubviews];
  sub_249FE6930(viewDidLayoutSubviews);
}

- (_TtC11EmojiPoster43EmojiForegroundCircularLayersViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end