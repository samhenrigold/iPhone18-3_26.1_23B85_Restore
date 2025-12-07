@interface STransferMetricsStore
- (NSString)description;
- (_TtC11FTMInternal21STransferMetricsStore)init;
@end

@implementation STransferMetricsStore

- (NSString)description
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  type metadata accessor for STransferMetrics(0);
  Dictionary.description.getter();

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (_TtC11FTMInternal21STransferMetricsStore)init
{
  ObjectType = swift_getObjectType();
  v4 = sub_1001A551C(&qword_1003761E0, &qword_1002F11B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC11FTMInternal21STransferMetricsStore__metrics;
  v13 = &_swiftEmptyDictionarySingleton;
  sub_1001A551C(&qword_1003761C0, &qword_1002F10F8);
  Published.init(initialValue:)();
  (*(v5 + 32))(self + v8, v7, v4);
  v9 = OBJC_IVAR____TtC11FTMInternal21STransferMetricsStore_lock;
  *(&self->super.isa + v9) = [objc_allocWithZone(NSLock) init];
  *(&self->super.isa + OBJC_IVAR____TtC11FTMInternal21STransferMetricsStore____lazy_storage___queue) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(STransferMetricsStore *)&v12 init];
}

@end