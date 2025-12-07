@interface MockEligibilitySupport
- (NSURL)databaseDir;
- (_TtC13transparencyd22MockEligibilitySupport)init;
- (id)eligibilityContainerPathAndReturnError:(id *)error;
- (void)checkiCloudAnalyticsWithCompletionHandler:(id)handler;
- (void)setDatabaseDir:(id)dir;
@end

@implementation MockEligibilitySupport

- (NSURL)databaseDir
{
  v3 = sub_100095820(&qword_100382DC0, &unk_1002D5BC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC13transparencyd22MockEligibilitySupport_databaseDir;
  swift_beginAccess();
  sub_1000AB050(self + v6, v5, &qword_100382DC0, &unk_1002D5BC0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

- (void)setDatabaseDir:(id)dir
{
  v5 = sub_100095820(&qword_100382DC0, &unk_1002D5BC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (dir)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC13transparencyd22MockEligibilitySupport_databaseDir;
  swift_beginAccess();
  selfCopy = self;
  sub_1000EB698(v7, self + v10);
  swift_endAccess();
}

- (_TtC13transparencyd22MockEligibilitySupport)init
{
  v3 = OBJC_IVAR____TtC13transparencyd22MockEligibilitySupport_databaseDir;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  *(self + OBJC_IVAR____TtC13transparencyd22MockEligibilitySupport_iCloudAnalyticsFlag) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for MockEligibilitySupport(0);
  return [(MockEligibilitySupport *)&v6 init];
}

- (void)checkiCloudAnalyticsWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1002D78F0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002D7900;
  v12[5] = v11;
  selfCopy = self;
  sub_1000EAE9C(0, 0, v7, &unk_1002D7910, v12);
}

- (id)eligibilityContainerPathAndReturnError:(id *)error
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  v9 = sub_1000EB5A8(8);
  v11 = v10;
  v12 = Data.base64EncodedString(options:)(0);
  sub_1000956CC(v9, v11);
  (*((swift_isaMask & *selfCopy) + 0x98))(v12._countAndFlagsBits, v12._object);

  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  (*(v5 + 8))(v7, v4);

  return v15;
}

@end