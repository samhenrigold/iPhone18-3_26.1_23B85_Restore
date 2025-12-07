@interface TagCommandManager
- (_TtC12searchpartyd17TagCommandManager)init;
- (void)findMyAccessoryManager:(id)manager didDisconnectDevice:(id)device;
- (void)findMyAccessoryManager:(id)manager didFailWithError:(id)error forDevice:(id)device;
- (void)findMyAccessoryManager:(id)manager didFetchUserStats:(id)stats forDevice:(id)device withError:(id)error;
- (void)findMyAccessoryManager:(id)manager didFetchUserStats:(id)stats fromDevice:(id)device withError:(id)error;
@end

@implementation TagCommandManager

- (_TtC12searchpartyd17TagCommandManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)findMyAccessoryManager:(id)manager didFetchUserStats:(id)stats fromDevice:(id)device withError:(id)error
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  managerCopy = manager;
  deviceCopy = device;
  errorCopy = error;
  selfCopy = self;
  if (stats)
  {
    statsCopy = stats;
    stats = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v21 = 0xF000000000000000;
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1008A67BC(stats, v21, v14, error, self);
  sub_100006654(stats, v21);

  (*(v12 + 8))(v14, v11);
}

- (void)findMyAccessoryManager:(id)manager didFetchUserStats:(id)stats forDevice:(id)device withError:(id)error
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  statsCopy = stats;
  selfCopy = self;
  errorCopy = error;
  sub_1008A703C(statsCopy, v13, error, selfCopy);

  (*(v11 + 8))(v13, v10);
}

- (void)findMyAccessoryManager:(id)manager didFailWithError:(id)error forDevice:(id)device
{
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  if (device)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_1008A7700(errorCopy, v11);

  sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
}

- (void)findMyAccessoryManager:(id)manager didDisconnectDevice:(id)device
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  selfCopy = self;
  sub_1008A7D8C(v9, selfCopy);

  (*(v7 + 8))(v9, v6);
}

@end