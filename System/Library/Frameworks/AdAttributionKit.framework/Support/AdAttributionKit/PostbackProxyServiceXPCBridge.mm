@interface PostbackProxyServiceXPCBridge
- (_TtC20AttributionKitDaemon29PostbackProxyServiceXPCBridge)init;
- (void)updateConversionValue:(id)value reply:(id)reply;
@end

@implementation PostbackProxyServiceXPCBridge

- (void)updateConversionValue:(id)value reply:(id)reply
{
  v7 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = _Block_copy(reply);
  valueCopy = value;
  selfCopy = self;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v17 = OBJC_IVAR____TtC20AttributionKitDaemon29PostbackProxyServiceXPCBridge_service;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_1001C2760;
  *(v20 + 24) = v19;
  sub_1000438D8(v13, v15);

  sub_1001713B8("Protected Update Postback", 25, 2, sub_1000849C4, v16, selfCopy + v17, v9, &unk_1001C2770, v20);

  sub_10001BABC(v13, v15);
  sub_10009D7BC(v9);
}

- (_TtC20AttributionKitDaemon29PostbackProxyServiceXPCBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end