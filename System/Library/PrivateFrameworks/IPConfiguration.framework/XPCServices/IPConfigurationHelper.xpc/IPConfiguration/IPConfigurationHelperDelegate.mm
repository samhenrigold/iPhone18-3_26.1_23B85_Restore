@interface IPConfigurationHelperDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (IPConfigurationHelperDelegate)init;
@end

@implementation IPConfigurationHelperDelegate

- (IPConfigurationHelperDelegate)init
{
  v4.receiver = self;
  v4.super_class = IPConfigurationHelperDelegate;
  v2 = [(IPConfigurationHelperDelegate *)&v4 init];
  if (v2)
  {
    sub_100000DD8("Helper");
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.private.IPConfigurationHelper.PvD"];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  if (([v5 BOOLValue] & 1) == 0)
  {
    v9 = sub_1000082A0();
    v10 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v16, 0, sizeof(v16));
      if (_sc_log <= 0)
      {
        v11 = 2;
      }

      else
      {
        v11 = 3;
      }

      if (os_log_type_enabled(v9, v10))
      {
        v12 = v11;
      }

      else
      {
        v12 = 2;
      }

      v15[0] = 0;
      v13 = _os_log_send_and_compose_impl(v12, 0, v16, 256, &_mh_execute_header, v9, v10, "rejecting new connection due to missing entitlement", v15, 2);
      __SC_log_send2();
      if (v13 != v16)
      {
        free(v13);
      }
    }

    goto LABEL_15;
  }

  v6 = objc_opt_new();
  [connectionCopy setExportedObject:v6];

  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___IPHPvDInfoRequestProtocol];
  [connectionCopy setExportedInterface:v7];

  [connectionCopy resume];
  v8 = 1;
LABEL_16:

  return v8;
}

@end