@interface FAXPCEventObserver
- (FAXPCEventObserver)init;
- (FAXPCEventObserver)initWithStream:(id)stream delegate:(id)delegate;
- (void)start;
@end

@implementation FAXPCEventObserver

- (FAXPCEventObserver)initWithStream:(id)stream delegate:(id)delegate
{
  v7 = OBJC_IVAR___FAXPCEventObserver_handlers;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = sub_1000243D0(_swiftEmptyArrayStorage);
  *(&self->super.isa + v7) = v8;
  *(&self->super.isa + OBJC_IVAR___FAXPCEventObserver_delegate) = delegate;
  *(&self->super.isa + OBJC_IVAR___FAXPCEventObserver_stream) = stream;
  v11.receiver = self;
  v11.super_class = type metadata accessor for XPCEventObserver(v8, v9);
  return [(FAXPCEventObserver *)&v11 init];
}

- (void)start
{
  selfCopy = self;
  sub_100068554();
}

- (FAXPCEventObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end