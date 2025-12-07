@interface RCDaemonFileCoordinator
+ (void)moveOrphandedCapturesToRecoveryDirectoryWithCompletionHandler:(id)handler;
- (RCDaemonFileCoordinator)init;
@end

@implementation RCDaemonFileCoordinator

+ (void)moveOrphandedCapturesToRecoveryDirectoryWithCompletionHandler:(id)handler
{
  v5 = sub_100024720(&qword_10005CB50, &qword_10003F510);
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
  v11[4] = &unk_10003F7B8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10003F7C0;
  v12[5] = v11;
  sub_10002AE20(0, 0, v7, &unk_10003F530, v12);
}

- (RCDaemonFileCoordinator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DaemonFileCoordinator();
  return [(RCDaemonFileCoordinator *)&v3 init];
}

@end