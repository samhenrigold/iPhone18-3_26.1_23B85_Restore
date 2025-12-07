@interface PSXPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PSPowerManager)power_manager;
- (void)disableUserActivityOverride;
- (void)getUserActivityStatusDescription:(id)description;
- (void)overrideUserActivityToUserActive;
- (void)overrideUserActivityToUserInactive;
@end

@implementation PSXPCServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSString stringWithUTF8String:"com.apple.polaris.polarisd_debug"];
  v7 = [connectionCopy valueForEntitlement:v6];

  if (v7 && (v8 = [v7 BOOLValue], v8))
  {
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PSXPCProtocol];
    [connectionCopy setExportedInterface:v10];

    v11 = [connectionCopy setExportedObject:self];
    v13 = sub_100013BF4(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "setting up new connection", v17, 2u);
    }

    [connectionCopy resume];
    v14 = 1;
  }

  else
  {
    v15 = sub_100013BF4(v8, v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17[0] = 67109120;
      v17[1] = [connectionCopy processIdentifier];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "PID %d tried to connect via XPC but is not entitled", v17, 8u);
    }

    v14 = 0;
  }

  return v14;
}

- (void)disableUserActivityOverride
{
  v3 = sub_100013BF4(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Got disableOverride", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_power_manager);
  [WeakRetained disableUserActivityOverride];
}

- (void)overrideUserActivityToUserActive
{
  v3 = sub_100013BF4(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Got overrideToUserActive", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_power_manager);
  [WeakRetained overrideUserActivityToUserActive];
}

- (void)overrideUserActivityToUserInactive
{
  v3 = sub_100013BF4(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Got overrideToUserInactive", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_power_manager);
  [WeakRetained overrideUserActivityToUserInactive];
}

- (void)getUserActivityStatusDescription:(id)description
{
  descriptionCopy = description;
  v6 = sub_100013BF4(descriptionCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Got getUserActivityStatusDescription", v9, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_power_manager);
  userActivityStatusDescription = [WeakRetained userActivityStatusDescription];
  descriptionCopy[2](descriptionCopy, userActivityStatusDescription);
}

- (PSPowerManager)power_manager
{
  WeakRetained = objc_loadWeakRetained(&self->_power_manager);

  return WeakRetained;
}

@end