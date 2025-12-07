@interface RDDebouncerWithNumber
- (_TtC7remindd21RDDebouncerWithNumber)init;
- (_TtC7remindd21RDDebouncerWithNumber)initWithDebouncingInterval:(double)interval queue:(id)queue handler:(id)handler;
- (double)debouncingInterval;
- (void)fire:(id)fire completion:(id)completion;
- (void)setDebouncingInterval:(double)interval;
@end

@implementation RDDebouncerWithNumber

- (double)debouncingInterval
{
  selfCopy = self;
  v3 = sub_1004434C4();

  return v3;
}

- (void)setDebouncingInterval:(double)interval
{
  selfCopy = self;
  sub_10014E468(interval);
}

- (_TtC7remindd21RDDebouncerWithNumber)initWithDebouncingInterval:(double)interval queue:(id)queue handler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v14 = *&interval;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  queueCopy = queue;
  *(&self->super.isa + OBJC_IVAR____TtC7remindd21RDDebouncerWithNumber_debouncer) = sub_1004427E0(0, 0, &v14, queueCopy, sub_10014F6E4, v9);
  v13.receiver = self;
  v13.super_class = type metadata accessor for RDDebouncerWithNumber();
  v11 = [(RDDebouncerWithNumber *)&v13 init];

  return v11;
}

- (void)fire:(id)fire completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_10014F63C();
  sub_10014F688(&qword_100944230, 255, sub_10014F63C);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = sub_10014F6DC;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  selfCopy = self;
  sub_10043BF60(v6, v8, v7);

  v6, v10, v11, v12, v13, v14, v15, v16;

  sub_10003E114(v8, v7);
}

- (_TtC7remindd21RDDebouncerWithNumber)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end