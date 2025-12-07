@interface AlertContentViewController
- (_TtC11Diagnostics26AlertContentViewController)initWithCoder:(id)coder;
- (_TtC11Diagnostics26AlertContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
@end

@implementation AlertContentViewController

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for AlertContentViewController();
  v2 = v11.receiver;
  [(AlertContentViewController *)&v11 viewDidLayoutSubviews];
  view = [v2 view];
  if (view)
  {
    v6 = view;
    LODWORD(v4) = 1112014848;
    LODWORD(v5) = 1112014848;
    [view systemLayoutSizeFittingSize:1.79769313e308 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v4, v5}];
    v8 = v7;
    v10 = v9;

    [v2 preferredContentSize];
    v13.width = v8;
    v13.height = v10;
    if (!CGSizeEqualToSize(v12, v13))
    {
      [v2 setPreferredContentSize:{v8, v10}];
    }
  }

  else
  {
    __break(1u);
  }
}

- (_TtC11Diagnostics26AlertContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    bundleCopy = bundle;
    v9 = String._bridgeToObjectiveC()();
    v7, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    bundleCopy2 = bundle;
    v9 = 0;
  }

  v20.receiver = self;
  v20.super_class = type metadata accessor for AlertContentViewController();
  v18 = [(AlertContentViewController *)&v20 initWithNibName:v9 bundle:bundle];

  return v18;
}

- (_TtC11Diagnostics26AlertContentViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AlertContentViewController();
  coderCopy = coder;
  v5 = [(AlertContentViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end