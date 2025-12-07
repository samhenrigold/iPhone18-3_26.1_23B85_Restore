@interface CancellableAssertion
- (_TtC11ActivityKit20CancellableAssertion)init;
- (void)cancel;
@end

@implementation CancellableAssertion

- (void)cancel
{
  selfCopy = self;

  sub_1A2D080D4();
}

- (_TtC11ActivityKit20CancellableAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end