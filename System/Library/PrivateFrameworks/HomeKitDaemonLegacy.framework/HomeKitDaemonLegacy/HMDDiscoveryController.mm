@interface HMDDiscoveryController
- (HMDDiscoveryController)init;
- (HMDDiscoveryController)initWithDiscoveryNeedsAssertion:(BOOL)assertion;
- (void)start;
@end

@implementation HMDDiscoveryController

- (HMDDiscoveryController)initWithDiscoveryNeedsAssertion:(BOOL)assertion
{
  assertionCopy = assertion;
  v4 = objc_allocWithZone(type metadata accessor for DiscoveryController(0));
  v5 = sub_25321D908(assertionCopy, sub_25321DFA4, 0, sub_25321DFD8, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)start
{
  selfCopy = self;
  DiscoveryController.start()();
}

- (HMDDiscoveryController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end