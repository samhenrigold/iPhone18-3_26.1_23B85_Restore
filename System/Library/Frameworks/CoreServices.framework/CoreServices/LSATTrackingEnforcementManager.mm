@interface LSATTrackingEnforcementManager
+ (BOOL)shouldEnforceTrackingWithReasonCode:(int64_t *)code;
@end

@implementation LSATTrackingEnforcementManager

+ (BOOL)shouldEnforceTrackingWithReasonCode:(int64_t *)code
{
  if (getATTrackingEnforcementManagerClass(self, a2))
  {
    v4 = (getATTrackingEnforcementManagerClass)();

    return [(objc_class *)v4 shouldEnforceTrackingWithReasonCode:code];
  }

  else
  {
    v6 = _LSDefaultLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [LSATTrackingEnforcementManager shouldEnforceTrackingWithReasonCode:v6];
    }

    if (code)
    {
      *code = 0;
    }

    return 1;
  }
}

@end