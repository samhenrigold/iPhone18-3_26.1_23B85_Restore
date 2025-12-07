@interface DeveloperModeServiceXPCBridge
- (_TtC20AttributionKitDaemon29DeveloperModeServiceXPCBridge)init;
- (void)clearDevelopmentPostbacksWithReply:(id)reply;
- (void)createDevelopmentPostbacksWithConfigurationData:(id)data reply:(id)reply;
- (void)getDeveloperModeEnabledWithReply:(id)reply;
- (void)retrieveDeveloperPostbackURLForBundleID:(id)d reply:(id)reply;
- (void)setDeveloperModeEnabled:(BOOL)enabled reply:(id)reply;
- (void)transmitDevelopmentPostbacksWithReply:(id)reply;
@end

@implementation DeveloperModeServiceXPCBridge

- (void)getDeveloperModeEnabledWithReply:(id)reply
{
  v5 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = OBJC_IVAR____TtC20AttributionKitDaemon29DeveloperModeServiceXPCBridge_service;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  selfCopy = self;
  sub_100171C3C("Get Developer Mode Enabled", 26, 2, sub_10017E17C, v9, self + v10, v7, &unk_1001C3EB0, 0);

  sub_10000DAF8(v7, &qword_100239EE0, &qword_1001B3640);
}

- (void)setDeveloperModeEnabled:(BOOL)enabled reply:(id)reply
{
  v7 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = OBJC_IVAR____TtC20AttributionKitDaemon29DeveloperModeServiceXPCBridge_service;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = enabled;
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_1001C3EA0;
  *(v15 + 24) = v14;
  selfCopy = self;

  sub_100172084("Set Developer Mode Enabled", 26, 2, sub_10017E17C, v11, self + v12, v9, &unk_1001C3EA8, v15);

  sub_10000DAF8(v9, &qword_100239EE0, &qword_1001B3640);
}

- (void)retrieveDeveloperPostbackURLForBundleID:(id)d reply:(id)reply
{
  v6 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = _Block_copy(reply);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = OBJC_IVAR____TtC20AttributionKitDaemon29DeveloperModeServiceXPCBridge_service;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  selfCopy = self;
  sub_1001724CC("Retrieve Developer Postback URL", 31, 2, sub_10017E17C, v13, self + v14, v8, &unk_1001C3E60, v16);

  sub_10000DAF8(v8, &qword_100239EE0, &qword_1001B3640);
}

- (void)createDevelopmentPostbacksWithConfigurationData:(id)data reply:(id)reply
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
  v17 = OBJC_IVAR____TtC20AttributionKitDaemon29DeveloperModeServiceXPCBridge_service;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_1001C3E40;
  *(v20 + 24) = v19;
  sub_1000438D8(v13, v15);

  sub_100172084("Create Development Postbacks", 28, 2, sub_10017E17C, v16, selfCopy + v17, v9, &unk_1001C3E50, v20);

  sub_10001BABC(v13, v15);
  sub_10000DAF8(v9, &qword_100239EE0, &qword_1001B3640);
}

- (void)transmitDevelopmentPostbacksWithReply:(id)reply
{
  v5 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = OBJC_IVAR____TtC20AttributionKitDaemon29DeveloperModeServiceXPCBridge_service;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  selfCopy = self;
  sub_100172084("Transmit Development Postbacks", 30, 2, sub_10017E17C, v9, self + v10, v7, &unk_1001C3E30, 0);

  sub_10000DAF8(v7, &qword_100239EE0, &qword_1001B3640);
}

- (void)clearDevelopmentPostbacksWithReply:(id)reply
{
  v5 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = OBJC_IVAR____TtC20AttributionKitDaemon29DeveloperModeServiceXPCBridge_service;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  selfCopy = self;
  sub_100172084("Clear Development Postbacks", 27, 2, sub_10017ABDC, v9, self + v10, v7, &unk_1001C3DC8, 0);

  sub_10000DAF8(v7, &qword_100239EE0, &qword_1001B3640);
}

- (_TtC20AttributionKitDaemon29DeveloperModeServiceXPCBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end