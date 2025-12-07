@interface NCSTravelAlertsManager
+ (id)sharedManager;
- (BOOL)_ttlEnabledOnWatch;
- (BOOL)_ttlSupportedOnWatch;
- (BOOL)ttlRemoteForwardingEnabledForWatch;
@end

@implementation NCSTravelAlertsManager

+ (id)sharedManager
{
  if (qword_10DC0 != -1)
  {
    sub_564C();
  }

  v3 = qword_10DB8;

  return v3;
}

- (BOOL)_ttlSupportedOnWatch
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v2 getActivePairedDevice];

  if (getActivePairedDevice)
  {
    NRWatchOSVersionForRemoteDevice();
    IsGreaterThanOrEqual = NRVersionIsGreaterThanOrEqual();
  }

  else
  {
    IsGreaterThanOrEqual = 0;
  }

  return IsGreaterThanOrEqual;
}

- (BOOL)_ttlEnabledOnWatch
{
  _ttlSupportedOnWatch = [(NCSTravelAlertsManager *)self _ttlSupportedOnWatch];
  v3 = +[NanoCalendarPreferences appDefaults];
  v4 = [v3 objectForKey:@"EnableTTLOnWatch"];
  v5 = ncs_log_alerts_ttl(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_5660(v4, v5);
  }

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
    _ttlSupportedOnWatch = bOOLValue;
  }

  v7 = ncs_log_alerts_ttl(bOOLValue);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = _ttlSupportedOnWatch;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Asked _ttlEnabled; returning %d", v9, 8u);
  }

  return _ttlSupportedOnWatch;
}

- (BOOL)ttlRemoteForwardingEnabledForWatch
{
  _ttlEnabledOnWatch = [(NCSTravelAlertsManager *)self _ttlEnabledOnWatch];
  v3 = _ttlEnabledOnWatch ^ 1;
  v4 = ncs_log_alerts_ttl(_ttlEnabledOnWatch);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Asked ttlRemoteForwardingEnabledForWatch; returning %d", v6, 8u);
  }

  return v3;
}

@end