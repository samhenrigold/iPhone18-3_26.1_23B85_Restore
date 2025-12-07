@interface _SwiftDriverApprovalState
- (BOOL)driverIsApproved;
- (BOOL)updatePending;
- (NSString)displayName;
- (NSString)usageText;
- (_SwiftDriverApprovalState)init;
- (id)bundleIdentifier;
@end

@implementation _SwiftDriverApprovalState

- (NSString)displayName
{
  v2 = self + OBJC_IVAR____SwiftDriverApprovalState_driver;
  if (!*&v2[*(type metadata accessor for DriverKitDriver(0) + 24) + 8])
  {
  }

  v3 = sub_21C58205C();

  return v3;
}

- (NSString)usageText
{
  v2 = self + OBJC_IVAR____SwiftDriverApprovalState_driver;
  if (*&v2[*(type metadata accessor for DriverKitDriver(0) + 28) + 8])
  {

    v3 = sub_21C58205C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)updatePending
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_21C581FBC(&v6);

  v4 = v6;
  if (v6)
  {
  }

  return v4 != 0;
}

- (BOOL)driverIsApproved
{
  selfCopy = self;
  v3 = DriverApprovalState.driverIsApproved()();

  return v3;
}

- (id)bundleIdentifier
{

  v2 = sub_21C58205C();

  return v2;
}

- (_SwiftDriverApprovalState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end