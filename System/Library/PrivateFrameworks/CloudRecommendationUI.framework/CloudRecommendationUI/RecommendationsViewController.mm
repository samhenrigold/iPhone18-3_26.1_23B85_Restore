@interface RecommendationsViewController
- (_TtC21CloudRecommendationUI29RecommendationsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RecommendationsViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RecommendationsViewController();
  v4 = v7.receiver;
  [(RecommendationsViewController *)&v7 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    [navigationController setNavigationBarHidden:1 animated:0];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RecommendationsViewController();
  v4 = v7.receiver;
  [(RecommendationsViewController *)&v7 viewWillDisappear:disappearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    [navigationController setNavigationBarHidden:0 animated:disappearCopy];
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_243A61B74();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RecommendationsViewController();
  v4 = v5.receiver;
  [(RecommendationsViewController *)&v5 viewDidAppear:appearCopy];
  if (*&v4[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController])
  {

    sub_243A3D3EC();
  }
}

- (_TtC21CloudRecommendationUI29RecommendationsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_243AC2858();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_243A63B24(v5, v7, bundle);
}

@end