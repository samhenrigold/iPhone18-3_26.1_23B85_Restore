@interface CollectionViewDragDropController.DropDelegate
- (_TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate)init;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
@end

@implementation CollectionViewDragDropController.DropDelegate

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v10 = &v19 - v9;
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

  v13 = *(&self->super.isa + OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidUpdate);
  if (v13)
  {
    v14 = *&self->canHandleSession[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidUpdate];
    viewCopy = view;
    swift_unknownObjectRetain();
    selfCopy = self;
    sub_100030444(v13, v14);
    v17 = v13(update, v10);
    sub_100020438(v13, v14);

    swift_unknownObjectRelease();
  }

  else
  {
    v17 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:0];
  }

  sub_1000095E8(v10, &unk_10118BCE0, &qword_100EC6450);

  return v17;
}

- (_TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_canHandleSession);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onPerformDrop);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.isa + OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidUpdate);
  *v5 = 0;
  v5[1] = 0;
  v6 = (&self->super.isa + OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidExitOrEnd);
  v7 = type metadata accessor for CollectionViewDragDropController.DropDelegate();
  *v6 = 0;
  v6[1] = 0;
  v9.receiver = self;
  v9.super_class = v7;
  return [(CollectionViewDragDropController.DropDelegate *)&v9 init];
}

@end