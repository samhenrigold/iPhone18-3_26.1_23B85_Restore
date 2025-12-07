@interface IdentityWatchSessionManagementListener
- (_TtC8coreidvd38IdentityWatchSessionManagementListener)init;
- (void)lockStateMonitor:(id)monitor deviceLockDidUpdate:(BOOL)update watchPairingID:(id)d;
- (void)manager:(id)manager didCompleteAuthenticationForSessionWithID:(id)d;
- (void)manager:(id)manager didFailAuthenticationForSessionWithID:(id)d error:(id)error;
- (void)manager:(id)manager didStartAuthenticationForSessionWithID:(id)d;
@end

@implementation IdentityWatchSessionManagementListener

- (void)lockStateMonitor:(id)monitor deviceLockDidUpdate:(BOOL)update watchPairingID:(id)d
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  monitorCopy = monitor;
  selfCopy = self;
  sub_1004CC5E8(v7, v9);
}

- (void)manager:(id)manager didStartAuthenticationForSessionWithID:(id)d
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  selfCopy = self;
  sub_1004CC9B8(v9);

  (*(v7 + 8))(v9, v6);
}

- (void)manager:(id)manager didCompleteAuthenticationForSessionWithID:(id)d
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  (*(v9 + 16))(v12, v14, v8);
  v16 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = self;
  (*(v9 + 32))(&v17[v16], v12, v8);
  selfCopy = self;
  sub_1003E653C(0, 0, v7, &unk_1006E6488, v17);

  (*(v9 + 8))(v14, v8);
}

- (void)manager:(id)manager didFailAuthenticationForSessionWithID:(id)d error:(id)error
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v23 - v15;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  (*(v11 + 16))(v14, v16, v10);
  v18 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = self;
  (*(v11 + 32))(&v19[v18], v14, v10);
  *&v19[(v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8] = error;
  errorCopy = error;
  selfCopy = self;
  v22 = errorCopy;
  sub_1003E653C(0, 0, v9, &unk_1006E6478, v19);

  (*(v11 + 8))(v16, v10);
}

- (_TtC8coreidvd38IdentityWatchSessionManagementListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end