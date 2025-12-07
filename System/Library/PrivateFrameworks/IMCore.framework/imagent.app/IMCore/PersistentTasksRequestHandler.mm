@interface PersistentTasksRequestHandler
- (_TtC7imagent29PersistentTasksRequestHandler)init;
- (void)addPersistentTaskExecutorMonitor:(id)monitor withID:(id)d;
- (void)ensureSchedulingForBackgroundWorkRefreshingTaskReports:(BOOL)reports completionHandler:(id)handler;
- (void)removePersistentTaskExecutorMonitorWithID:(id)d;
- (void)resumeExecutorWithGroupName:(id)name lane:(unint64_t)lane completionHandler:(id)handler;
- (void)runExecutorWithTaskLimit:(int64_t)limit groupName:(id)name lane:(unint64_t)lane completionHandler:(id)handler;
- (void)updateExecutorStateWithCompletionHandler:(id)handler;
@end

@implementation PersistentTasksRequestHandler

- (_TtC7imagent29PersistentTasksRequestHandler)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7imagent29PersistentTasksRequestHandler_requiredCapabilities) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7imagent29PersistentTasksRequestHandler_monitors) = &_swiftEmptySetSingleton;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PersistentTasksRequestHandler();
  return [(PersistentTasksRequestHandler *)&v3 init];
}

- (void)runExecutorWithTaskLimit:(int64_t)limit groupName:(id)name lane:(unint64_t)lane completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = sub_100054164();
  v12 = v11;
  _Block_copy(v9);
  selfCopy = self;
  sub_10004E4D0(limit, v10, v12, lane, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)resumeExecutorWithGroupName:(id)name lane:(unint64_t)lane completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_100054164();
  v10 = v9;
  _Block_copy(v7);
  selfCopy = self;
  sub_10004E694(v8, v10, lane, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)addPersistentTaskExecutorMonitor:(id)monitor withID:(id)d
{
  v6 = sub_100054164();
  v8 = v7;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10004CA9C(monitor, v6, v8);
  swift_unknownObjectRelease();
}

- (void)removePersistentTaskExecutorMonitorWithID:(id)d
{
  v5 = sub_100054164();
  v7 = v6;
  swift_beginAccess();
  dCopy = d;
  selfCopy = self;
  sub_10004E090(v5, v7);
  swift_endAccess();

  sharedInstance = [objc_opt_self() sharedInstance];
  bgstMessageProcessingController = [sharedInstance bgstMessageProcessingController];

  [bgstMessageProcessingController removePersistentTaskExecutorMonitorWithID:dCopy];
}

- (void)updateExecutorStateWithCompletionHandler:(id)handler
{
  v4 = sub_1000334C8(&unk_10008AD00, &qword_10005E910);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_100054224();
  v9 = sub_100054244();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = sub_10004EA04;
  v10[5] = v8;
  sub_1000363C0(0, 0, v6, &unk_10005F300, v10);
}

- (void)ensureSchedulingForBackgroundWorkRefreshingTaskReports:(BOOL)reports completionHandler:(id)handler
{
  v6 = sub_1000334C8(&unk_10008AD00, &qword_10005E910);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  sub_100054224();
  v11 = sub_100054244();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = reports;
  *(v12 + 40) = sub_10004E84C;
  *(v12 + 48) = v10;
  sub_1000363C0(0, 0, v8, &unk_10005F2F8, v12);
}

@end