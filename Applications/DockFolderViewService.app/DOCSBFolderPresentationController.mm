@interface DOCSBFolderPresentationController
- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (NSString)description;
- (_TtC21DockFolderViewService33DOCSBFolderPresentationController)init;
- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration dismissalPreviewForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (int64_t)_collectionView:(id)view dataOwnerForDragSession:(id)session atIndexPath:(id)path;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)handleCollectionViewBackgroundTapped:(id)tapped;
- (void)handleDockIconTapped:(id)tapped;
@end

@implementation DOCSBFolderPresentationController

- (NSString)description
{
  selfCopy = self;
  sub_10001BD78();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC21DockFolderViewService33DOCSBFolderPresentationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return 1;
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100029E84(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  type metadata accessor for IndexPath();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10003EE74(v7);
  v11 = v10;

  return v11;
}

- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  configurationCopy = configuration;
  selfCopy = self;
  v15 = sub_10002A530(viewCopy, configurationCopy, v11);

  (*(v9 + 8))(v11, v8);

  return v15;
}

- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration dismissalPreviewForItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  configurationCopy = configuration;
  selfCopy = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v16 = [(DOCSBFolderPresentationController *)selfCopy collectionView:viewCopy contextMenuConfiguration:configurationCopy highlightPreviewForItemAtIndexPath:isa];

  (*(v9 + 8))(v11, v8);

  return v16;
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10003F3EC(session, v11);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
  sub_10001A2A8(0, &qword_1000BC468, UIDragItem_ptr);
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v14.super.isa;
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10003F838(session, v12);

  swift_unknownObjectRelease();
  (*(v10 + 8))(v12, v9);
  sub_10001A2A8(0, &qword_1000BC468, UIDragItem_ptr);
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10003FBCC(v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)view dragSessionWillBegin:(id)begin
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10004001C(viewCopy);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)view dragSessionDidEnd:(id)end
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000402E4(viewCopy);

  swift_unknownObjectRelease();
}

- (int64_t)_collectionView:(id)view dataOwnerForDragSession:(id)session atIndexPath:(id)path
{
  v8 = sub_10000589C(&qword_1000BC448, &qword_100090B98);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  if (path)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for IndexPath();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v15 = sub_100040574(v10);

  swift_unknownObjectRelease();
  sub_100006390(v10, &qword_1000BC448, &qword_100090B98);
  return v15;
}

- (void)handleDockIconTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_10004070C();
}

- (void)handleCollectionViewBackgroundTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_100040A30();
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_10002D980(beginCopy);

  return self & 1;
}

@end