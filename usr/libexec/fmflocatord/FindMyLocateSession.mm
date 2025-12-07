@interface FindMyLocateSession
+ (NSString)scheduleAlarmStream;
+ (NSString)scheduleTimerIdentifier;
- (id)fencesUpdateCallback;
- (void)checkIfThisDeviceIsBeingUsedToShareLocationWithCompletionHandler:(id)handler;
- (void)getFences:(id)fences;
- (void)setFencesUpdateCallback:(id)callback;
- (void)triggerFenceWithID:(NSUUID *)d trigger:(int64_t)trigger location:(CLLocation *)location completionHandler:(id)handler;
@end

@implementation FindMyLocateSession

- (id)fencesUpdateCallback
{
  v2 = (self + OBJC_IVAR____TtC11fmflocatord19FindMyLocateSession_fencesUpdateCallback);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002C2D4;
    aBlock[3] = &unk_10005E9B8;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFencesUpdateCallback:(id)callback
{
  v4 = _Block_copy(callback);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_100002828;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC11fmflocatord19FindMyLocateSession_fencesUpdateCallback);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1000028D4(v7, v8);
}

- (void)triggerFenceWithID:(NSUUID *)d trigger:(int64_t)trigger location:(CLLocation *)location completionHandler:(id)handler
{
  v11 = sub_10002C750(&qword_10006FDA8, &qword_100044D90);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = d;
  v15[3] = trigger;
  v15[4] = location;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100044F58;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100044F60;
  v18[5] = v17;
  dCopy = d;
  locationCopy = location;
  selfCopy = self;
  sub_10002FE64(0, 0, v13, &unk_100044F68, v18);
}

- (void)checkIfThisDeviceIsBeingUsedToShareLocationWithCompletionHandler:(id)handler
{
  v5 = sub_10002C750(&qword_10006FDA8, &qword_100044D90);
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
  v11[4] = &unk_100044F10;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100044F20;
  v12[5] = v11;
  selfCopy = self;
  sub_10002FE64(0, 0, v7, &unk_100044F30, v12);
}

+ (NSString)scheduleTimerIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)scheduleAlarmStream
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)getFences:(id)fences
{
  v5 = sub_10002C750(&qword_10006FDA8, &qword_100044D90);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(fences);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  type metadata accessor for MainActor();
  selfCopy = self;

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = selfCopy;
  v13[5] = sub_100030A04;
  v13[6] = v9;
  sub_10002CE84(0, 0, v7, &unk_100044F00, v13);
}

@end