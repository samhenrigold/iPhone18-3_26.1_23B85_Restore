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
  v5 = sub_229710DE8(assertionCopy, sub_229711484, 0, sub_2297114B8, 0);
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