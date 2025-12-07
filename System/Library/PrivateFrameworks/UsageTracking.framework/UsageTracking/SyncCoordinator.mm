@interface SyncCoordinator
+ (BOOL)deleteLocalDataAndReturnError:(id *)error;
+ (NSString)privateEngineDidIdleNotificationName;
+ (void)deleteExpiredDataWithZoneNames:(id)names;
+ (void)downloadWithCompletionHandler:(id)handler;
+ (void)resetSharingPermissions;
+ (void)startSyncing;
+ (void)uploadLocalDataWithCompletionHandler:(id)handler;
- (_TtC18UsageTrackingAgent15SyncCoordinator)init;
@end

@implementation SyncCoordinator

+ (NSString)privateEngineDidIdleNotificationName
{
  if (qword_100090D40 != -1)
  {
    swift_once();
  }

  v3 = qword_100092F00;

  return v3;
}

+ (void)startSyncing
{
  if (qword_100090D38 != -1)
  {
    swift_once();
  }
}

+ (void)resetSharingPermissions
{
  if (qword_100090D38 != -1)
  {
    swift_once();
  }

  sub_1000366AC(0, 0);
}

+ (void)uploadLocalDataWithCompletionHandler:(id)handler
{
  v3 = _Block_copy(handler);
  type metadata accessor for DeviceActivityAuthorization();
  _Block_copy(v3);
  if (static DeviceActivityAuthorization.sharingEnabled.getter())
  {
    if (qword_100090D38 != -1)
    {
      swift_once();
    }

    v4 = qword_100092EF8;
    _Block_copy(v3);
    v5._rawValue = v3;
    sub_10005071C(v4, v5);
    _Block_release(v3);
  }

  else
  {
    (*(v3 + 2))(v3, 0);
  }

  _Block_release(v3);

  _Block_release(v3);
}

+ (BOOL)deleteLocalDataAndReturnError:(id *)error
{
  if (qword_100090D38 != -1)
  {
    swift_once();
  }

  v3 = static _SegmentInterval.allCases.getter();
  sub_1000379FC(v3);

  return 1;
}

+ (void)deleteExpiredDataWithZoneNames:(id)names
{
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_100090D38 != -1)
  {
    swift_once();
  }

  CKSyncEngine.state.getter();
  v4 = sub_10003F194(v3);

  CKSyncEngine.State.add(pendingDatabaseChanges:)(v4);
}

+ (void)downloadWithCompletionHandler:(id)handler
{
  v4 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  if (qword_100090D38 != -1)
  {
    swift_once();
  }

  v9 = qword_100092EF8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  v11[5] = sub_10004E7CC;
  v11[6] = v8;

  sub_100035B98(0, 0, v6, &unk_10006E0A8, v11);
}

- (_TtC18UsageTrackingAgent15SyncCoordinator)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SyncCoordinator *)&v3 init];
}

@end