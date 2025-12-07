@interface TMPreferences
- (BOOL)isAppleTV;
- (BOOL)isAutomaticTimeEnabled;
- (BOOL)isAutomaticTimeZoneEnabled;
- (BOOL)isWatch;
- (BOOL)shouldClamp;
- (BOOL)supportsBasebandAPTimeSync;
- (NSString)NTPServerAddress;
- (TMPreferences)init;
- (TMPreferences)initWithDefaults:(id)defaults;
- (id)description;
- (void)dealloc;
- (void)setAccurateThresholds:(BOOL)thresholds;
@end

@implementation TMPreferences

- (BOOL)isAutomaticTimeEnabled
{
  v3 = [(NSUserDefaults *)self->_defaults BOOLForKey:@"TMAutomaticTimeOnlyEnabled"];
  if (v3)
  {
    LOBYTE(v3) = ![(NSUserDefaults *)self->_defaults BOOLForKey:@"DisableAutomaticTime"];
  }

  return v3;
}

- (BOOL)isAutomaticTimeZoneEnabled
{
  v3 = [(NSUserDefaults *)self->_defaults BOOLForKey:@"TMAutomaticTimeZoneEnabled"];
  if (v3)
  {
    LOBYTE(v3) = ![(NSUserDefaults *)self->_defaults BOOLForKey:@"DisableAutomaticTime"];
  }

  return v3;
}

- (BOOL)shouldClamp
{
  nTPServerAddress = [(TMPreferences *)self NTPServerAddress];
  if (self)
  {
    v4 = @"time.apple.com";
  }

  else
  {
    v4 = 0;
  }

  return [(NSString *)nTPServerAddress isEqualToString:v4];
}

- (NSString)NTPServerAddress
{
  if (!os_variant_allows_internal_security_policies() || (result = [(NSUserDefaults *)self->_defaults stringForKey:@"NtpTimeServer"]) == 0)
  {
    if (self)
    {
      return @"time.apple.com";
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TMPreferences;
  [(TMPreferences *)&v3 dealloc];
}

- (TMPreferences)initWithDefaults:(id)defaults
{
  v6.receiver = self;
  v6.super_class = TMPreferences;
  v4 = [(TMPreferences *)&v6 init];
  if (v4)
  {
    _CFPreferencesSetFileProtectionClass();
    v4->_defaults = defaults;
    sub_10001864C(&v4->super.isa);
  }

  return v4;
}

- (TMPreferences)init
{
  v3 = +[NSUserDefaults standardUserDefaults];

  return [(TMPreferences *)self initWithDefaults:v3];
}

- (BOOL)isAppleTV
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFEqual(v2, @"AppleTV") != 0;
  CFRelease(v3);
  return v4;
}

- (BOOL)supportsBasebandAPTimeSync
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 != 0;
}

- (BOOL)isWatch
{
  v2 = MGCopyAnswer();

  return [v2 isEqualToString:@"Watch"];
}

- (void)setAccurateThresholds:(BOOL)thresholds
{
  thresholdsCopy = thresholds;
  v5 = [(NSUserDefaults *)self->_defaults objectForKey:@"ForceAccurateTime"];
  if (v5)
  {
    thresholdsCopy = [v5 BOOLValue];
    v6 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (thresholdsCopy)
      {
        v7 = "enabled";
      }

      *buf = 136315138;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Forcing accurate thresholds to be %s, from defaults.", buf, 0xCu);
    }
  }

  v8 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
  {
    v9 = "inaccurate";
    if (thresholdsCopy)
    {
      v9 = "accurate";
    }

    *buf = 136315138;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Setting thresholds to be %s", buf, 0xCu);
  }

  v14[0] = @"BBTimeWantedThreshold";
  if (thresholdsCopy)
  {
    supportsBasebandAPTimeSync = [(TMPreferences *)self supportsBasebandAPTimeSync];
    v11 = INFINITY;
    if (supportsBasebandAPTimeSync)
    {
      v11 = 0.048;
    }
  }

  else
  {
    v11 = INFINITY;
  }

  v15[0] = [NSNumber numberWithDouble:v11, v14[0]];
  v15[1] = &off_10002C0B0;
  v14[1] = @"NtpTimeWantedThreshold";
  v14[2] = @"CorrectTimeOnWake";
  v15[2] = [NSNumber numberWithBool:thresholdsCopy];
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  v13 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Registering these thresholds: %@", buf, 0xCu);
  }

  [(NSUserDefaults *)self->_defaults registerDefaults:v12];
}

- (id)description
{
  dictionaryRepresentation = [(NSUserDefaults *)self->_defaults dictionaryRepresentation];

  return [(NSDictionary *)dictionaryRepresentation description];
}

@end