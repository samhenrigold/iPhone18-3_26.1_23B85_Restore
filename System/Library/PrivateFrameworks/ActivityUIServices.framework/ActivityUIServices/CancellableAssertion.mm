@interface CancellableAssertion
- (_TtC18ActivityUIServices20CancellableAssertion)init;
- (void)invalidate;
@end

@implementation CancellableAssertion

- (void)invalidate
{
  selfCopy = self;

  sub_18E65F730();
}

- (_TtC18ActivityUIServices20CancellableAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end