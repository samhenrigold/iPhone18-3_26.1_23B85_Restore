@interface BaseTableViewController
- (_TtC11Diagnostics23BaseTableViewController)initWithCoder:(id)coder;
- (_TtC11Diagnostics23BaseTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC11Diagnostics23BaseTableViewController)initWithStyle:(int64_t)style;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation BaseTableViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BaseTableViewController();
  v2 = v4.receiver;
  viewDidLoad = [(BaseTableViewController *)&v4 viewDidLoad];
  (*((swift_isaMask & *v2) + 0x50))(viewDidLoad);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics23BaseTableViewController)initWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for BaseTableViewController();
  return [(BaseTableViewController *)&v5 initWithStyle:style];
}

- (_TtC11Diagnostics23BaseTableViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v20.super_class = type metadata accessor for BaseTableViewController();
  v18 = [(BaseTableViewController *)&v20 initWithNibName:v9 bundle:bundle];

  return v18;
}

- (_TtC11Diagnostics23BaseTableViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BaseTableViewController();
  coderCopy = coder;
  v5 = [(BaseTableViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end