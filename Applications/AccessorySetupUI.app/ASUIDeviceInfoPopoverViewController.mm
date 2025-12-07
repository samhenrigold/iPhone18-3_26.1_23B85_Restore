@interface ASUIDeviceInfoPopoverViewController
- (_TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation ASUIDeviceInfoPopoverViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100033BB4();
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_100034454();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v11 = [viewCopy cellForRowAtIndexPath:isa];

  if (v11)
  {
    [v11 setSelected:0 animated:1];
  }

  (*(v6 + 8))(v8, v5);
}

- (_TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100034090(v5, v7, bundle);
}

@end