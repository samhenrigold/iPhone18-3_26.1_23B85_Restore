@interface SDDeferrableOperation
- (SDDeferrableOperation)init;
- (SDDeferrableOperation)initWithIdentifier:(id)identifier queue:(id)queue operation:(id)operation;
- (id)returnPreventUntilDate;
- (void)pushPreventionDateForReason:(id)reason newDate:(id)date;
- (void)scheduleOperation;
@end

@implementation SDDeferrableOperation

- (SDDeferrableOperation)initWithIdentifier:(id)identifier queue:(id)queue operation:(id)operation
{
  v6 = _Block_copy(operation);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  queueCopy = queue;
  v12 = sub_10042CA04(v7, v9, queueCopy, sub_10042C9FC, v10);

  return v12;
}

- (void)pushPreventionDateForReason:(id)reason newDate:(id)date
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100427BBC(v9, v11, v8);

  (*(v6 + 8))(v8, v5);
}

- (void)scheduleOperation
{
  selfCopy = self;
  sub_100428AA8();
}

- (id)returnPreventUntilDate
{
  v3 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
  swift_beginAccess();
  sub_10000FF90(self + v6, v5, &qword_10097A7F0, &unk_1007FB600);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (SDDeferrableOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end