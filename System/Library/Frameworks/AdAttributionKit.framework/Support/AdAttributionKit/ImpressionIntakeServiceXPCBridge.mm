@interface ImpressionIntakeServiceXPCBridge
- (_TtC20AttributionKitDaemon32ImpressionIntakeServiceXPCBridge)init;
- (void)processReengagementWithAdvertisedItemID:(unint64_t)d intakeRequestData:(id)data reengagementURL:(id)l reply:(id)reply;
- (void)recordImpressionWithAdvertisedItemID:(unint64_t)d intakeRequestData:(id)data reply:(id)reply;
@end

@implementation ImpressionIntakeServiceXPCBridge

- (void)recordImpressionWithAdvertisedItemID:(unint64_t)d intakeRequestData:(id)data reply:(id)reply
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
  v19 = OBJC_IVAR____TtC20AttributionKitDaemon32ImpressionIntakeServiceXPCBridge_service;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = d;
  v21[3] = v15;
  v21[4] = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1001BA4B0;
  *(v22 + 24) = v21;
  sub_1000438D8(v15, v17);

  sub_10016FE7C("Record Impression", 17, 2, sub_1000849C4, v18, selfCopy + v19, v11, &unk_1001BA4C0, v22);

  sub_10001BABC(v15, v17);
  sub_10000DAF8(v11, &qword_100239EE0, &qword_1001B3640);
}

- (void)processReengagementWithAdvertisedItemID:(unint64_t)d intakeRequestData:(id)data reengagementURL:(id)l reply:(id)reply
{
  dCopy = d;
  v10 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v32 - v17;
  v19 = _Block_copy(reply);
  dataCopy = data;
  selfCopy = self;
  lCopy = l;
  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (lCopy)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = type metadata accessor for URL();
    (*(*(v26 - 8) + 56))(v18, 0, 1, v26);
  }

  else
  {
    v27 = type metadata accessor for URL();
    (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
  }

  v33 = OBJC_IVAR____TtC20AttributionKitDaemon32ImpressionIntakeServiceXPCBridge_service;
  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  sub_10001B8EC(v18, v16);
  v29 = v12;
  v30 = (*(v34 + 80) + 40) & ~*(v34 + 80);
  v31 = swift_allocObject();
  v31[2] = dCopy;
  v31[3] = v23;
  v31[4] = v25;
  sub_100054734(v16, v31 + v30);
  _Block_copy(v19);
  sub_1000438D8(v23, v25);
  sub_1000F2F0C("Process Reengagement", 20, 2, selfCopy + v33, v29, &unk_1001BA4A0, v31, selfCopy, v19);
  _Block_release(v19);

  _Block_release(v19);
  sub_10001BABC(v23, v25);
  sub_10000DAF8(v29, &qword_100239EE0, &qword_1001B3640);
  sub_10000DAF8(v18, &qword_10023C230, &qword_1001B4FB0);
}

- (_TtC20AttributionKitDaemon32ImpressionIntakeServiceXPCBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end