@interface CSDProtectedAppsUtilities
- (BOOL)shouldBlockCallWithBundleIdentifier:(id)identifier;
@end

@implementation CSDProtectedAppsUtilities

- (BOOL)shouldBlockCallWithBundleIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_1000271D8(v4, v6);

  return v4 & 1;
}

@end