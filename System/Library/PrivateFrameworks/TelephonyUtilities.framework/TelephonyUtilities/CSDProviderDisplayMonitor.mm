@interface CSDProviderDisplayMonitor
- (BOOL)isVisible;
- (CSDProviderDisplayMonitor)initWithBundleIdentifier:(id)identifier pid:(int)pid;
@end

@implementation CSDProviderDisplayMonitor

- (CSDProviderDisplayMonitor)initWithBundleIdentifier:(id)identifier pid:(int)pid
{
  v4 = *&pid;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1002C7D94(v5, v6, v4);
}

- (BOOL)isVisible
{
  selfCopy = self;
  v3 = sub_1002C820C();

  return v3 & 1;
}

@end