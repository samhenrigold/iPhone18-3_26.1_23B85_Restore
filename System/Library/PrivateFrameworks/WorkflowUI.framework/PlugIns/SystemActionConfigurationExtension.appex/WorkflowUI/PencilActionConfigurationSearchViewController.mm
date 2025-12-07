@interface PencilActionConfigurationSearchViewController
- (_TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PencilActionConfigurationSearchViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000C244(selfCopy);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  sub_10000C574(disappearCopy);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10000C624(selfCopy);
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v6 = sub_1000135EC();
  v8 = v7;
  barCopy = bar;
  selfCopy = self;
  sub_10000CA00(selfCopy, v6, v8);
}

- (_TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1000135EC();
  }

  bundleCopy = bundle;
  sub_10000CAE0();
}

@end