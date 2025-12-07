@interface ServiceDelegate
- (BOOL)_auditToken:(id *)token hasEntitlement:(id)entitlement;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  v9 = [(ServiceDelegate *)self _auditToken:v13 hasEntitlement:@"com.apple.private.DiagnosticsSessionAvailability.client"];
  if (v9)
  {
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DSDiagnosticsSessionAvailabilityServiceProtocol];
    [v8 setExportedInterface:v10];

    v11 = objc_opt_new();
    [v8 setExportedObject:v11];
    [v8 activate];
  }

  else
  {
    [v8 invalidate];
  }

  return v9;
}

- (BOOL)_auditToken:(id *)token hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  [entitlementCopy UTF8String];
  value = xpc_copy_entitlement_for_token();
  v6 = value;
  if (value && (value = xpc_BOOL_get_value(value), (value & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    v8 = DSLogSessionAvailability(value);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000AF58(v8);
    }

    v9 = [NSError errorWithDomain:entitlementCopy code:0 userInfo:0];
    [DSAnalytics sendAnalyticsWithEvent:5 error:v9];

    v7 = 0;
  }

  return v7;
}

@end