@interface NDOUIActionHandler
- (_TtC8ndoagent18NDOUIActionHandler)init;
- (void)ackPendingAcks;
- (void)removeAndAckDismissedPromoFor:(int64_t)for actionData:(id)data;
@end

@implementation NDOUIActionHandler

- (void)ackPendingAcks
{
  v3 = sub_10001A078(&qword_1000A7920, &qword_10007AE70);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_100041174(0, 0, v5, &unk_100081738, v7);
}

- (void)removeAndAckDismissedPromoFor:(int64_t)for actionData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  sub_100067590(for, v7, v9);
  sub_100003EBC(v7, v9);
}

- (_TtC8ndoagent18NDOUIActionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end