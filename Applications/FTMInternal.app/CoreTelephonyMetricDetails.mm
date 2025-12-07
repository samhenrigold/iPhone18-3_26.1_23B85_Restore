@interface CoreTelephonyMetricDetails
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (_TtC11FTMInternal26CoreTelephonyMetricDetails)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CoreTelephonyMetricDetails

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10023C4E0();
}

- (_TtC11FTMInternal26CoreTelephonyMetricDetails)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_10023C914(v5, v7, bundle);
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10023CC30(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v16 = sub_10023D044(viewCopy, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  [viewCopy bounds];
  Width = CGRectGetWidth(v16);

  (*(v7 + 8))(v9, v6);
  v12 = 60.0;
  v13 = Width;
  result.height = v12;
  result.width = v13;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  [view frame];
  v6 = v5;
  v7 = 20.0;
  result.height = v7;
  result.width = v6;
  return result;
}

@end