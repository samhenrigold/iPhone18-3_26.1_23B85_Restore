@interface LiveActivityService
- (_TtC5newsd19LiveActivityService)init;
- (void)cancelScheduledLiveActivityWithId:(NSString *)id backgroundTaskID:(NSString *)d completionHandler:(id)handler;
- (void)scheduleLiveActivityWithRequest:(_TtC10NewsDaemon27LiveActivityScheduleRequest *)request completionHandler:(id)handler;
@end

@implementation LiveActivityService

- (void)scheduleLiveActivityWithRequest:(_TtC10NewsDaemon27LiveActivityScheduleRequest *)request completionHandler:(id)handler
{
  v7 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10005A978;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10005A980;
  v14[5] = v13;
  requestCopy = request;
  selfCopy = self;
  sub_10004039C(0, 0, v9, &unk_10005A988, v14);
}

- (void)cancelScheduledLiveActivityWithId:(NSString *)id backgroundTaskID:(NSString *)d completionHandler:(id)handler
{
  v9 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = id;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10005A950;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10005A958;
  v16[5] = v15;
  idCopy = id;
  dCopy = d;
  selfCopy = self;
  sub_10004039C(0, 0, v11, &unk_10005A960, v16);
}

- (_TtC5newsd19LiveActivityService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end