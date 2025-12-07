@interface MonogramPosterViewController
- (_TtC23MonogramPosterExtension28MonogramPosterViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
@end

@implementation MonogramPosterViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000844C();
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MonogramPosterViewController(0);
  windowCopy = window;
  v7 = v8.receiver;
  [(MonogramPosterViewController *)&v8 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  sub_10000A840();
}

- (_TtC23MonogramPosterExtension28MonogramPosterViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100026A20();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10000ADF4(v5, v7, bundle);
}

@end