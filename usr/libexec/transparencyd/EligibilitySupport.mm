@interface EligibilitySupport
- (BOOL)allowKTEnableByDefault;
- (_TtC13transparencyd18EligibilitySupport)init;
- (id)eligibilityContainerPathAndReturnError:(id *)error;
- (void)checkiCloudAnalyticsWithCompletionHandler:(id)handler;
@end

@implementation EligibilitySupport

- (id)eligibilityContainerPathAndReturnError:(id *)error
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_100007DF8();

  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(v5 + 8))(v7, v4);

  return v11;
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
  v11[4] = &unk_1002D7FB8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002D7FC8;
  v12[5] = v11;
  selfCopy = self;
  sub_1000EAE9C(0, 0, v7, &unk_1002D7FD8, v12);
}

- (BOOL)allowKTEnableByDefault
{
  v4[3] = &type metadata for TransparencyFeatureFlags;
  v4[4] = sub_1000E3338();
  LOBYTE(v4[0]) = 3;
  v2 = isFeatureEnabled(_:)();
  sub_10009A9E8(v4);
  return v2 & 1;
}

- (_TtC13transparencyd18EligibilitySupport)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EligibilitySupport();
  return [(EligibilitySupport *)&v3 init];
}

@end