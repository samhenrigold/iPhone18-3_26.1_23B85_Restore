@interface NSXPCConnection(DropInCoreAdditions)
- (id)bundleIdentifier;
@end

@implementation NSXPCConnection(DropInCoreAdditions)

- (id)bundleIdentifier
{
  v4 = 0;
  objc_msgSend_auditToken(self, a2);
  if (CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end