@interface TTRIBoardColumnCollectionViewCell
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionViewDidEndMultipleSelectionInteraction:(id)interaction;
- (void)prepareForReuse;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
@end

@implementation TTRIBoardColumnCollectionViewCell

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1001C7F4C();
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView);
  if (v4)
  {
    v5 = v4 == animation;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    animationCopy = animation;
    selfCopy = self;
    sub_100058000(&unk_1007701B0, &qword_100644F50);
    sub_10000E188(&unk_1007701E0, &unk_1007701B0, &qword_100644F50, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Subject<>.send()();
  }
}

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  type metadata accessor for IndexPath();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1001CA4B4(viewCopy, v6);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_1001D1E38(v11);

  (*(v9 + 8))(v11, v8);
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  selfCopy = self;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  __chkstk_darwin(v17);
  v19 = &v25 - v18;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  v21 = selfCopy;
  sub_1001CAA98(v16, v13, v10, v19);

  v22 = *(v8 + 8);
  v22(v10, v7);
  v22(v13, v7);
  v22(v16, v7);
  v23.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v22(v19, v7);

  return v23.super.isa;
}

- (void)collectionViewDidEndMultipleSelectionInteraction:(id)interaction
{
  interactionCopy = interaction;
  selfCopy = self;
  sub_1001D29C4();
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  type metadata accessor for IndexPath();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1001CB3BC(viewCopy, v9, x, y);
  v13 = v12;

  return v13;
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
    v10 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
    sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v9);
    v11 = *(v10 + 8);
    v12 = *(v11 + 848);
    configurationCopy = configuration;
    swift_unknownObjectRetain();
    selfCopy = self;
    v12(configurationCopy, animator, v9, v11);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }
}

@end