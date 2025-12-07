@interface ServiceXPCBridge
- (_TtC20AttributionKitDaemon16ServiceXPCBridge)init;
- (void)endViewWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s reply:(id)reply;
- (void)handleHeartbeatWithReply:(id)reply;
- (void)preflightImpressionWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s adNetworkID:(id)iD reply:(id)reply;
- (void)processTapWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s eventMessage:(id)message reengagementURL:(id)l reply:(id)reply;
- (void)reportDeveloperBillingEvent:(id)event reply:(id)reply;
- (void)startViewWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s reply:(id)reply;
- (void)updateConversionValue:(id)value reply:(id)reply;
@end

@implementation ServiceXPCBridge

- (void)handleHeartbeatWithReply:(id)reply
{
  v5 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = OBJC_IVAR____TtC20AttributionKitDaemon16ServiceXPCBridge_service;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  selfCopy = self;
  sub_1001717F8("Heartbeat", 9, 2, sub_10009DA9C, v9, self + v10, v7, &unk_1001C33D0, 0);

  sub_10000DAF8(v7, &qword_100239EE0, &qword_1001B3640);
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
  v17 = OBJC_IVAR____TtC20AttributionKitDaemon16ServiceXPCBridge_service;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_1001C33C0;
  *(v20 + 24) = v19;
  sub_1000438D8(v13, v15);

  sub_1001717F8("Update Postback", 15, 2, sub_10009DA9C, v16, selfCopy + v17, v9, &unk_1001C33C8, v20);

  sub_10001BABC(v13, v15);
  sub_10000DAF8(v9, &qword_100239EE0, &qword_1001B3640);
}

- (void)preflightImpressionWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s adNetworkID:(id)iD reply:(id)reply
{
  v9 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  v12 = _Block_copy(reply);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  v20 = OBJC_IVAR____TtC20AttributionKitDaemon16ServiceXPCBridge_service;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = d;
  v22[3] = v13;
  v22[4] = v15;
  v22[5] = v16;
  v22[6] = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_1001C33A8;
  *(v23 + 24) = v22;
  selfCopy = self;

  sub_1001717F8("Preflight Impression", 20, 2, sub_10009DA9C, v19, self + v20, v11, &unk_1001C33B0, v23);

  sub_10000DAF8(v11, &qword_100239EE0, &qword_1001B3640);
}

- (void)startViewWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s reply:(id)reply
{
  v8 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = _Block_copy(reply);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = OBJC_IVAR____TtC20AttributionKitDaemon16ServiceXPCBridge_service;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = d;
  v18[3] = v12;
  v18[4] = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = &unk_1001C3390;
  *(v19 + 24) = v18;
  selfCopy = self;

  sub_1001717F8("Start View", 10, 2, sub_10009DA9C, v15, self + v16, v10, &unk_1001C3398, v19);

  sub_10000DAF8(v10, &qword_100239EE0, &qword_1001B3640);
}

- (void)endViewWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s reply:(id)reply
{
  v8 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = _Block_copy(reply);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = OBJC_IVAR____TtC20AttributionKitDaemon16ServiceXPCBridge_service;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = d;
  v18[3] = v12;
  v18[4] = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = &unk_1001C3378;
  *(v19 + 24) = v18;
  selfCopy = self;

  sub_1001717F8("End View", 8, 2, sub_10009DA9C, v15, self + v16, v10, &unk_1001C3380, v19);

  sub_10000DAF8(v10, &qword_100239EE0, &qword_1001B3640);
}

- (void)processTapWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s eventMessage:(id)message reengagementURL:(id)l reply:(id)reply
{
  dCopy = d;
  messageCopy = message;
  selfCopy = self;
  v9 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12 - 8);
  v16 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v35 - v17;
  v19 = _Block_copy(reply);
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = type metadata accessor for URL();
    (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
  }

  else
  {
    v24 = type metadata accessor for URL();
    (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  v26 = OBJC_IVAR____TtC20AttributionKitDaemon16ServiceXPCBridge_service;
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  sub_10001B8EC(v18, v16);
  v28 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v29 = swift_allocObject();
  v30 = messageCopy;
  v29[2] = dCopy;
  v29[3] = v20;
  v29[4] = v22;
  v29[5] = v30;
  sub_100054734(v16, v29 + v28);
  v31 = swift_allocObject();
  *(v31 + 16) = &unk_1001C3360;
  *(v31 + 24) = v29;
  v32 = v30;
  v33 = selfCopy;
  v34 = selfCopy;

  sub_1001717F8("Process Tap", 11, 2, sub_10009DA9C, v25, v33 + v26, v11, &unk_1001C3368, v31);

  sub_10000DAF8(v11, &qword_100239EE0, &qword_1001B3640);
  sub_10000DAF8(v18, &qword_10023C230, &qword_1001B4FB0);
}

- (void)reportDeveloperBillingEvent:(id)event reply:(id)reply
{
  v7 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = _Block_copy(reply);
  eventCopy = event;
  selfCopy = self;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v17 = OBJC_IVAR____TtC20AttributionKitDaemon16ServiceXPCBridge_service;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_1001C3338;
  *(v20 + 24) = v19;
  sub_1000438D8(v13, v15);

  sub_1001717F8("Report Developer Billing Event", 30, 2, sub_1000849C4, v16, selfCopy + v17, v9, &unk_1001C3348, v20);

  sub_10001BABC(v13, v15);
  sub_10000DAF8(v9, &qword_100239EE0, &qword_1001B3640);
}

- (_TtC20AttributionKitDaemon16ServiceXPCBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end