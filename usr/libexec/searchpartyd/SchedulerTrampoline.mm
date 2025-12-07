@interface SchedulerTrampoline
- (_TtC12searchpartydP33_8F16B571022752B5A0333344EAF60C1619SchedulerTrampoline)init;
- (void)publishImmediatelyWithCompletion:(id)completion;
- (void)schedulePublishWakeWithInformation:(id)information completion:(id)completion;
@end

@implementation SchedulerTrampoline

- (void)schedulePublishWakeWithInformation:(id)information completion:(id)completion
{
  v4 = _Block_copy(completion);
  sub_100851F28();
  swift_allocError();
  v5 = _convertErrorToNSError(_:)();
  v4[2](v4, v5);

  _Block_release(v4);
}

- (void)publishImmediatelyWithCompletion:(id)completion
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = sub_1001BC108;
  v10[5] = v8;
  sub_10025EDD4(0, 0, v6, &unk_1013BF5C0, v10);
}

- (_TtC12searchpartydP33_8F16B571022752B5A0333344EAF60C1619SchedulerTrampoline)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SchedulerTrampoline();
  return [(SchedulerTrampoline *)&v3 init];
}

@end