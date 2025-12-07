@interface LockScreenClient
- (void)setLockScreenState:(int64_t)state userInfo:(id)info;
@end

@implementation LockScreenClient

- (void)setLockScreenState:(int64_t)state userInfo:(id)info
{
  sub_10000FC54(0, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  if (info)
  {
    sub_10000D1A8();
    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  type metadata accessor for MainActor();
  swift_retain_n();
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = self;
  v13[5] = state;
  v13[6] = v10;
  sub_10000887C(0, 0, v9, &unk_1000112A8, v13);
}

@end