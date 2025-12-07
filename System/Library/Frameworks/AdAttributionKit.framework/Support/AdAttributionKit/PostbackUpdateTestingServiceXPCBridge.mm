@interface PostbackUpdateTestingServiceXPCBridge
- (_TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge)init;
- (void)clearBiomeWithClearEvent:(id)event reply:(id)reply;
- (void)fetchReengagementTokensWithReply:(id)reply;
- (void)getSnoutStoriesWithReply:(id)reply;
- (void)submitConversionEventWithEventData:(id)data reply:(id)reply;
- (void)submitPurchaseEventWithEventData:(id)data reply:(id)reply;
- (void)triggerFetchWithReply:(id)reply;
- (void)updateConversionValue:(id)value reply:(id)reply;
@end

@implementation PostbackUpdateTestingServiceXPCBridge

- (void)triggerFetchWithReply:(id)reply
{
  v5 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = OBJC_IVAR____TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge_service;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  selfCopy = self;
  sub_1001702C4("Trigger Fetch", 13, 2, sub_10009DA9C, v9, self + v10, v7, &unk_1001BAB38, 0);

  sub_10009D7BC(v7);
}

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
  v17 = OBJC_IVAR____TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge_service;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_1001BAB28;
  *(v20 + 24) = v19;
  sub_1000438D8(v13, v15);

  sub_1001702C4("Postback Update Testing", 23, 2, sub_10009DA9C, v16, selfCopy + v17, v9, &unk_1001BAB30, v20);

  sub_10001BABC(v13, v15);
  sub_10009D7BC(v9);
}

- (void)getSnoutStoriesWithReply:(id)reply
{
  v5 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = OBJC_IVAR____TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge_service;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  selfCopy = self;
  sub_100170708("Get Snout Stories", 17, 2, sub_10009DA9C, v9, self + v10, v7, &unk_1001BAB18, 0);

  sub_10009D7BC(v7);
}

- (void)fetchReengagementTokensWithReply:(id)reply
{
  v5 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = OBJC_IVAR____TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge_service;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  selfCopy = self;
  sub_1001702C4("Fetch Reengagement Tokens", 25, 2, sub_10009DA9C, v9, self + v10, v7, &unk_1001BAB10, 0);

  sub_10009D7BC(v7);
}

- (void)submitConversionEventWithEventData:(id)data reply:(id)reply
{
  v7 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = _Block_copy(reply);
  dataCopy = data;
  selfCopy = self;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v17 = OBJC_IVAR____TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge_service;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_1001BAB00;
  *(v20 + 24) = v19;
  sub_1000438D8(v13, v15);

  sub_1001702C4("Submit Conversion Event", 23, 2, sub_10009DA9C, v16, selfCopy + v17, v9, &unk_1001BAB08, v20);

  sub_10001BABC(v13, v15);
  sub_10009D7BC(v9);
}

- (void)submitPurchaseEventWithEventData:(id)data reply:(id)reply
{
  v7 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = _Block_copy(reply);
  dataCopy = data;
  selfCopy = self;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v17 = OBJC_IVAR____TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge_service;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_1001BAAE8;
  *(v20 + 24) = v19;
  sub_1000438D8(v13, v15);

  sub_1001702C4("Submit Purchase Event", 21, 2, sub_10009DA9C, v16, selfCopy + v17, v9, &unk_1001BAAF0, v20);

  sub_10001BABC(v13, v15);
  sub_10009D7BC(v9);
}

- (void)clearBiomeWithClearEvent:(id)event reply:(id)reply
{
  v6 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = _Block_copy(reply);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = OBJC_IVAR____TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge_service;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_1001BAAC8;
  *(v17 + 24) = v16;
  selfCopy = self;

  sub_1001702C4("Clear Biome", 11, 2, sub_1000849C4, v13, self + v14, v8, &unk_1001BAAD8, v17);

  sub_10009D7BC(v8);
}

- (_TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end