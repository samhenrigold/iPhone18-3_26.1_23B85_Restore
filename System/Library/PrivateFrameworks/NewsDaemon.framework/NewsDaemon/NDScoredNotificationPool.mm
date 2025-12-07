@interface NDScoredNotificationPool
- (NDScoredNotificationPool)init;
- (void)enumerateItemsUsingBlock:(id)block;
- (void)refreshIfNeededWithCompletionHandler:(id)handler;
- (void)refreshIfOlderThan:(NSDate *)than completionHandler:(id)handler;
@end

@implementation NDScoredNotificationPool

- (void)enumerateItemsUsingBlock:(id)block
{
  v5 = _Block_copy(block);
  selfCopy = self;
  OS_dispatch_queue.sync<A>(execute:)();

  _Block_release(v5);
}

- (void)refreshIfNeededWithCompletionHandler:(id)handler
{
  v5 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
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
  v11[4] = &unk_10005BD20;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10005BD28;
  v12[5] = v11;
  selfCopy = self;
  sub_10004039C(0, 0, v7, &unk_10005BD30, v12);
}

- (void)refreshIfOlderThan:(NSDate *)than completionHandler:(id)handler
{
  v7 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = than;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10005BC78;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10005A958;
  v14[5] = v13;
  thanCopy = than;
  selfCopy = self;
  sub_10004039C(0, 0, v9, &unk_10005A960, v14);
}

- (NDScoredNotificationPool)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end