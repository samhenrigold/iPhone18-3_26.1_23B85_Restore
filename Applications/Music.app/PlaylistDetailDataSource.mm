@interface PlaylistDetailDataSource
- (_TtC5Music24PlaylistDetailDataSource)init;
- (id)_collectionView:(id)view indexPathOfReferenceItemToPreserveContentOffsetWithProposedReference:(id)reference;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)dealloc;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)updateSearchResultsForSearchController:(id)controller;
@end

@implementation PlaylistDetailDataSource

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_asyncSetupTask))
  {
    selfCopy = self;

    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    Task.cancel()();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for PlaylistDetailDataSource(0);
  [(PlaylistDetailDataSource *)&v5 dealloc];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_10086843C(section);

  return v8;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10080FBAC(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100810ECC(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  type metadata accessor for IndexPath();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v11 = sub_10086B65C(v7, v10);

  return v11;
}

- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator
{
  selfCopy = self;
  v5 = sub_100853B54();
  [v5 resignFirstResponder];
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10086BE48(configurationCopy, animator);

  swift_unknownObjectRelease();
}

- (id)_collectionView:(id)view indexPathOfReferenceItemToPreserveContentOffsetWithProposedReference:(id)reference
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v19 - v9;
  if (reference)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for IndexPath();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  }

  else
  {
    v11 = type metadata accessor for IndexPath();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  viewCopy = view;
  selfCopy = self;
  sub_100813D14(v10);

  sub_1000095E8(v8, &unk_10118BCE0, &qword_100EC6450);
  type metadata accessor for IndexPath();
  v14 = *(v11 - 8);
  v15 = (*(v14 + 48))(v10, 1, v11);
  v16 = 0;
  if (v15 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v10, v11);
    v16 = isa;
  }

  return v16;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_10086C6A8(cellCopy, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_10086C82C(v11);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  type metadata accessor for IndexPath();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1008147A0(viewCopy, v6);
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100814CE0(controllerCopy);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_100814DE8(scrollCopy);
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  draggingCopy = dragging;
  [draggingCopy contentOffset];
  v7 = v6;
  [draggingCopy adjustedContentInset];
  if (v7 != -v8)
  {
    y = offset->y;
    [draggingCopy safeAreaInsets];
    if (y < -v10)
    {
      [draggingCopy safeAreaInsets];
      offset->y = -v11;
    }
  }
}

- (_TtC5Music24PlaylistDetailDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end