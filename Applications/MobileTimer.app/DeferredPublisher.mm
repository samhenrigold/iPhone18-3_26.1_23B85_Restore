@interface DeferredPublisher
- (_TtC11MobileTimer17DeferredPublisher)init;
- (void)deferActionWithTimeOut:(double)out completion:(id)completion;
- (void)publish;
@end

@implementation DeferredPublisher

- (void)deferActionWithTimeOut:(double)out completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  DeferredPublisher.deferAction(timeOut:completion:)(sub_100063930, v7, out);
}

- (void)publish
{
  selfCopy = self;
  sub_10005F248(&qword_1000D2510, &qword_10008C0B0);
  sub_10006285C(&qword_1000D2590, &qword_1000D2510, &qword_10008C0B0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  Subject<>.send()();
}

- (_TtC11MobileTimer17DeferredPublisher)init
{
  v3 = OBJC_IVAR____TtC11MobileTimer17DeferredPublisher_receiver;
  sub_10005F248(&qword_1000D2510, &qword_10008C0B0);
  swift_allocObject();
  *(&self->super.isa + v3) = PassthroughSubject.init()();
  *(&self->super.isa + OBJC_IVAR____TtC11MobileTimer17DeferredPublisher_cancellables) = &_swiftEmptySetSingleton;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DeferredPublisher();
  return [(DeferredPublisher *)&v5 init];
}

@end