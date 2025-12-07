@interface TokenHandoffServiceXPCBridge
- (_TtC20AttributionKitDaemon28TokenHandoffServiceXPCBridge)init;
- (void)handoffPODTokenWithAdvertisedItemID:(unint64_t)d tokenData:(id)data reply:(id)reply;
- (void)handoffTokenWithAdvertisedItemID:(unint64_t)d tokenData:(id)data requestData:(id)requestData reply:(id)reply;
- (void)handoffUTMetricsWithAdvertisedItemID:(unint64_t)d eventsData:(id)data reply:(id)reply;
- (void)isEligibleForPurchaseProcessingWithAppItemID:(unint64_t)d reply:(id)reply;
- (void)processInAppPurchaseWithAppItemID:(unint64_t)d inAppPurchaseData:(id)data reply:(id)reply;
- (void)reportPurchaseIntakeFailureWithAppItemID:(unint64_t)d error:(id)error reply:(id)reply;
@end

@implementation TokenHandoffServiceXPCBridge

- (void)handoffTokenWithAdvertisedItemID:(unint64_t)d tokenData:(id)data requestData:(id)requestData reply:(id)reply
{
  v11 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v11 - 8);
  v13 = &v29 - v12;
  v14 = _Block_copy(reply);
  dataCopy = data;
  requestDataCopy = requestData;
  selfCopy = self;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = swift_allocObject();
  *(v24 + 16) = v14;
  v25 = OBJC_IVAR____TtC20AttributionKitDaemon28TokenHandoffServiceXPCBridge_service;
  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = d;
  v27[3] = v18;
  v27[4] = v20;
  v27[5] = v21;
  v27[6] = v23;
  v28 = swift_allocObject();
  *(v28 + 16) = &unk_1001BFB58;
  *(v28 + 24) = v27;
  sub_1000438D8(v18, v20);
  sub_1000438D8(v21, v23);

  sub_100170B38("Handoff Token", 13, 2, sub_10009DA9C, v24, selfCopy + v25, v13, &unk_1001BFB60, v28);

  sub_10001BABC(v21, v23);
  sub_10001BABC(v18, v20);
  sub_10009D7BC(v13);
}

- (void)handoffUTMetricsWithAdvertisedItemID:(unint64_t)d eventsData:(id)data reply:(id)reply
{
  v9 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - v10;
  v12 = _Block_copy(reply);
  dataCopy = data;
  selfCopy = self;
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  v19 = OBJC_IVAR____TtC20AttributionKitDaemon28TokenHandoffServiceXPCBridge_service;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = d;
  v21[3] = v15;
  v21[4] = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1001BFB40;
  *(v22 + 24) = v21;
  sub_1000438D8(v15, v17);

  sub_100170B38("Handoff UT Metrics", 18, 2, sub_10009DA9C, v18, selfCopy + v19, v11, &unk_1001BFB48, v22);

  sub_10001BABC(v15, v17);
  sub_10009D7BC(v11);
}

- (void)handoffPODTokenWithAdvertisedItemID:(unint64_t)d tokenData:(id)data reply:(id)reply
{
  v9 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - v10;
  v12 = _Block_copy(reply);
  dataCopy = data;
  selfCopy = self;
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  v19 = OBJC_IVAR____TtC20AttributionKitDaemon28TokenHandoffServiceXPCBridge_service;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = d;
  v21[3] = v15;
  v21[4] = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1001BFB28;
  *(v22 + 24) = v21;
  sub_1000438D8(v15, v17);

  sub_100170B38("Handoff Token", 13, 2, sub_10009DA9C, v18, selfCopy + v19, v11, &unk_1001BFB30, v22);

  sub_10001BABC(v15, v17);
  sub_10009D7BC(v11);
}

- (void)isEligibleForPurchaseProcessingWithAppItemID:(unint64_t)d reply:(id)reply
{
  v7 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = OBJC_IVAR____TtC20AttributionKitDaemon28TokenHandoffServiceXPCBridge_service;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = d;
  selfCopy = self;
  sub_100170F78("Is Eligible For Purchase Processing", 35, 2, sub_10009DA9C, v11, self + v12, v9, &unk_1001BFB18, v14);

  sub_10009D7BC(v9);
}

- (void)processInAppPurchaseWithAppItemID:(unint64_t)d inAppPurchaseData:(id)data reply:(id)reply
{
  v9 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - v10;
  v12 = _Block_copy(reply);
  dataCopy = data;
  selfCopy = self;
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  v19 = OBJC_IVAR____TtC20AttributionKitDaemon28TokenHandoffServiceXPCBridge_service;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = d;
  v21[3] = v15;
  v21[4] = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1001BFB00;
  *(v22 + 24) = v21;
  sub_1000438D8(v15, v17);

  sub_100170B38("Process In-App Purchase", 23, 2, sub_10009DA9C, v18, selfCopy + v19, v11, &unk_1001BFB08, v22);

  sub_10001BABC(v15, v17);
  sub_10009D7BC(v11);
}

- (void)reportPurchaseIntakeFailureWithAppItemID:(unint64_t)d error:(id)error reply:(id)reply
{
  v9 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = OBJC_IVAR____TtC20AttributionKitDaemon28TokenHandoffServiceXPCBridge_service;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = d;
  *(v16 + 24) = error;
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_1001BFAE0;
  *(v17 + 24) = v16;
  errorCopy = error;
  selfCopy = self;

  sub_100170B38("Report Purchase Intake Failure", 30, 2, sub_1000849C4, v13, self + v14, v11, &unk_1001BFAF0, v17);

  sub_10009D7BC(v11);
}

- (_TtC20AttributionKitDaemon28TokenHandoffServiceXPCBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end