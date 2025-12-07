@interface OpensAppIntentDispatcher
- (NSString)bundleIdentifier;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation OpensAppIntentDispatcher

- (NSString)bundleIdentifier
{
  v2 = type metadata accessor for AppIdentifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  AppIntentSpecification.app.getter();
  AppIdentifier.bundleIdentifier.getter();

  (*(v3 + 8))(v5, v2);
  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (void)performWithCompletionHandler:(id)handler
{
  v5 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10006DC60;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10006DC70;
  v12[5] = v11;

  sub_1000241A0(0, 0, v7, &unk_10006DC80, v12);
}

@end