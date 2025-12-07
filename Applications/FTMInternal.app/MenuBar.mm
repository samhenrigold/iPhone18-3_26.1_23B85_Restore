@interface MenuBar
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
@end

@implementation MenuBar

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10023D718(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10023E3F4(v9, v12);

  (*(v7 + 8))(v9, v6);
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  [(MenuBar *)selfCopy frame];
  v11 = CGRectGetWidth(v17) / *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC11FTMInternal7MenuBar_segmentWidthMultiplier);
  [(MenuBar *)selfCopy frame];
  Height = CGRectGetHeight(v18);

  (*(v7 + 8))(v9, v6);
  v13 = v11;
  v14 = Height;
  result.height = v14;
  result.width = v13;
  return result;
}

@end