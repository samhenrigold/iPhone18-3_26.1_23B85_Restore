@interface RCVisibleEntitiesObserver
- (_TtC10VoiceMemos25RCVisibleEntitiesObserver)init;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
@end

@implementation RCVisibleEntitiesObserver

- (_TtC10VoiceMemos25RCVisibleEntitiesObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  v12 = sub_1000C773C(&qword_1002D11F8, &qword_100245408);
  __chkstk_darwin(v12 - 8);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v26 - v16;
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  pathCopy = path;
  indexPathCopy = indexPath;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (pathCopy)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = type metadata accessor for IndexPath();
    (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
  }

  else
  {
    v23 = type metadata accessor for IndexPath();
    (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  }

  if (indexPathCopy)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = type metadata accessor for IndexPath();
  (*(*(v25 - 8) + 56))(v14, v24, 1, v25);
  sub_10011A5DC(controllerCopy, v26, v17, type, v14);

  sub_10011AA08(v14);
  sub_10011AA08(v17);
  sub_100014B64(v26);
}

@end