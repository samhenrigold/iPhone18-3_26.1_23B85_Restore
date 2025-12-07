@interface DebugFormatInventoryTreeViewController
- (_TtC8NewsFeed38DebugFormatInventoryTreeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)doVersionsWithSender:(id)sender;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatInventoryTreeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D6C83684();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(DebugFormatInventoryTreeViewController *)&v9 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    [navigationController setToolbarHidden:0 animated:0];
  }

  navigationController2 = [v4 navigationController];
  toolbar = [navigationController2 toolbar];

  sub_1D71CD8F4(toolbar);
}

- (void)viewWillLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = swift_getObjectType();
  v2 = v16.receiver;
  [(DebugFormatInventoryTreeViewController *)&v16 viewWillLayoutSubviews];
  v4 = sub_1D6C828A8(v3);
  view = [v4 view];

  if (view)
  {
    view2 = [v2 view];
    if (view2)
    {
      v7 = view2;
      [view2 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [view setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)doVersionsWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1D6C845F0(senderCopy);
}

- (_TtC8NewsFeed38DebugFormatInventoryTreeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1D6C8484C(controllerCopy);
}

@end