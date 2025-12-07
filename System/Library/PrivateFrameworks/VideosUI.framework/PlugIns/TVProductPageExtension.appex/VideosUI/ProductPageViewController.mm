@interface ProductPageViewController
- (BOOL)lookupItemDidLoad:(id)load parameters:(id)parameters;
- (_TtC22TVProductPageExtension25ProductPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)setupWithCustomNavigationItem:(id)item promptString:(id)string askToBuy:(BOOL)buy;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ProductPageViewController

- (_TtC22TVProductPageExtension25ProductPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100006B78();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100001718(v5, v7, bundle);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProductPageViewController();
  v2 = v3.receiver;
  [(ProductPageViewController *)&v3 viewDidLoad];
  [v2 setNeedsUpdateOfSupportedInterfaceOrientations];
  sub_100002720(1);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_100002504(selfCopy);
}

- (void)setupWithCustomNavigationItem:(id)item promptString:(id)string askToBuy:(BOOL)buy
{
  buyCopy = buy;
  v9 = sub_100006A88();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (string)
  {
    sub_100006B78();
  }

  itemCopy = item;
  selfCopy = self;
  sub_100006C18();
  v15 = VUISignpostLogObject();
  sub_100006A78();
  sub_100006A68();

  (*(v10 + 8))(v12, v9);
  sub_1000029C4(itemCopy, buyCopy, v24);

  v16 = &selfCopy->SKProductPageExtension_opaque[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_askToBuyConfig];
  v17 = *&selfCopy->SKProductPageExtension_opaque[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_askToBuyConfig];
  v18 = *&selfCopy->lookupRequest[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_askToBuyConfig];
  v19 = *&selfCopy->lookupRequest[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_askToBuyConfig + 8];
  v20 = *&selfCopy->tvExtensionControllerTask[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_askToBuyConfig];
  v21 = *&selfCopy->askToBuyConfig[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_askToBuyConfig];
  v22 = *&selfCopy->askToBuyConfig[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_askToBuyConfig + 8];
  v23 = v24[1];
  *v16 = v24[0];
  *(v16 + 1) = v23;
  *(v16 + 2) = v24[2];
  sub_100006830(v17, v18, v19, v20, v21, v22);
}

- (BOOL)lookupItemDidLoad:(id)load parameters:(id)parameters
{
  v6 = sub_100006B48();
  loadCopy = load;
  selfCopy = self;
  v9 = sub_100002CCC(loadCopy, v6);

  return v9 & 1;
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

@end