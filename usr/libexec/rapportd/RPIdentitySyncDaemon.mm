@interface RPIdentitySyncDaemon
+ (_TtC8rapportd20RPIdentitySyncDaemon)shared;
- (OS_dispatch_queue)dispatchQueue;
- (void)activate;
- (void)daemonInfoChanged:(unint64_t)changed;
- (void)invalidate;
- (void)setDispatchQueue:(id)queue;
- (void)startBrowsingServiceWithCompletionHandler:(id)handler;
- (void)stopBrowsingServiceWithSessionToken:(NSString *)token completionHandler:(id)handler;
@end

@implementation RPIdentitySyncDaemon

+ (_TtC8rapportd20RPIdentitySyncDaemon)shared
{
  if (qword_1001DA5B8 != -1)
  {
    swift_once();
  }

  v3 = qword_1001DA728;

  return v3;
}

- (OS_dispatch_queue)dispatchQueue
{
  v3 = OBJC_IVAR____TtC8rapportd20RPIdentitySyncDaemon_dispatchQueue;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDispatchQueue:(id)queue
{
  v5 = OBJC_IVAR____TtC8rapportd20RPIdentitySyncDaemon_dispatchQueue;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = queue;
  queueCopy = queue;
}

- (void)activate
{
  selfCopy = self;
  RPIdentitySyncDaemon.activate()();
}

- (void)invalidate
{
  selfCopy = self;
  RPIdentitySyncDaemon.invalidate()();
}

- (void)startBrowsingServiceWithCompletionHandler:(id)handler
{
  v5 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
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
  v11[4] = &unk_10014C850;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10014C858;
  v12[5] = v11;
  selfCopy = self;
  sub_1000EED08(0, 0, v7, &unk_10014C860, v12);
}

- (void)stopBrowsingServiceWithSessionToken:(NSString *)token completionHandler:(id)handler
{
  v7 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = token;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10014C818;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10014C828;
  v14[5] = v13;
  tokenCopy = token;
  selfCopy = self;
  sub_1000EED08(0, 0, v9, &unk_10014C838, v14);
}

- (void)daemonInfoChanged:(unint64_t)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1000CFC54(changedCopy);
}

@end