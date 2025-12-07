@interface HeadphoneLiveTranslationAssetDownloadViewController
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HeadphoneLiveTranslationAssetDownloadViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(HeadphoneLiveTranslationAssetDownloadViewController *)&v3 viewDidLoad];
  [v2 setDismissalType:{1, v3.receiver, v3.super_class}];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(HeadphoneLiveTranslationAssetDownloadViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000BB1F8(v4[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_type]);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_100080C08(section);

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10007F464(viewCopy);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = UITableViewAutomaticDimension;
  if (section >= 2)
  {
    return 0.0;
  }

  return result;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v4 = sub_100080D14(section);

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10007FE84(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

@end