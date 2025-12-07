@interface MessagingSessionDelegateTrampoline
- (_TtC12searchpartyd34MessagingSessionDelegateTrampoline)init;
- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error;
- (void)sessionStarted:(id)started;
@end

@implementation MessagingSessionDelegateTrampoline

- (void)sessionStarted:(id)started
{
  startedCopy = started;
  selfCopy = self;
  sub_1011E9B88();
}

- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error
{
  v6 = *&reason;
  endedCopy = ended;
  selfCopy = self;
  errorCopy = error;
  sub_1011E9D28(v6, error);
}

- (_TtC12searchpartyd34MessagingSessionDelegateTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end