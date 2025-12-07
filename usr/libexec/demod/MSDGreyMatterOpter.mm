@interface MSDGreyMatterOpter
+ (BOOL)isOptedIn;
+ (void)migrateOptInValue;
+ (void)setIsOptedIn:(BOOL)in;
@end

@implementation MSDGreyMatterOpter

+ (BOOL)isOptedIn
{
  v2 = objc_alloc_init(CSFGMOptIn);
  isOptedIn = [v2 isOptedIn];

  return isOptedIn;
}

+ (void)setIsOptedIn:(BOOL)in
{
  inCopy = in;
  v4 = objc_alloc_init(CSFGMOptIn);
  [v4 setIsOptedIn:inCopy];
  [CSFFollowUp setHasEngagedWithCFU:1];
}

+ (void)migrateOptInValue
{
  isKindOfClass = CFPreferencesCopyValue(@"com.apple.csf.gm.toggle", @".GlobalPreferences", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v3 = isKindOfClass;
  if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
    v5 = sub_100063A54(bOOLValue);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      LODWORD(v11) = bOOLValue;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Read a valid opt-in value from the global preferences domain: %d", &v10, 8u);
    }

    v7 = sub_100063A54(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (bOOLValue)
      {
        v8 = @"YES";
      }

      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Applying the opt-in value %@ to the device", &v10, 0xCu);
    }

    [MSDGreyMatterOpter setIsOptedIn:bOOLValue];
    _CFPreferencesFlushCachesForIdentifier();
  }

  else
  {
    v9 = sub_100063A54(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "AI opt-in value doesn't exist in the global preferences domain, setting the opt-in value to NO.", &v10, 2u);
    }

    [MSDGreyMatterOpter setIsOptedIn:0];
  }
}

@end