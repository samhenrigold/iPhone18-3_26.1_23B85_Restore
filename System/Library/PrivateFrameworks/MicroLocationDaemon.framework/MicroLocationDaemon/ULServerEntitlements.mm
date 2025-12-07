@interface ULServerEntitlements
+ (BOOL)_checkEntitlement:(id)entitlement forConnection:(id)connection;
@end

@implementation ULServerEntitlements

+ (BOOL)_checkEntitlement:(id)entitlement forConnection:(id)connection
{
  v16 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  connectionCopy = connection;
  v7 = [connectionCopy hasBooleanEntitlement:entitlementCopy];
  if ((v7 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      +[ULServerEntitlements _checkEntitlement:forConnection:];
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      signingIdentity = [connectionCopy signingIdentity];
      v12 = 138412546;
      v13 = signingIdentity;
      v14 = 2112;
      v15 = entitlementCopy;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "Missing entitlement: %@ is missing required entitlement: %@, rejecting connection.", &v12, 0x16u);
    }
  }

  return v7;
}

@end