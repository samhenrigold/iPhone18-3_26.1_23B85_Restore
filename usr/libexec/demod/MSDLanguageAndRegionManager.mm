@interface MSDLanguageAndRegionManager
+ (id)sharedInstance;
- (BOOL)isSiriEnabled;
- (BOOL)saveCurrentDeviceLanguageIdentifier;
- (BOOL)saveCurrentDeviceRegionCode;
- (BOOL)saveDeviceLanguageIdentifier:(id)identifier;
- (BOOL)saveDeviceRegionCode:(id)code;
- (BOOL)saveSiriLanguageToPreferences:(id)preferences;
- (BOOL)setDeviceLanguage:(id)language andRegion:(id)region matchToSystemLanguage:(BOOL)systemLanguage sbRestartNeeded:(BOOL *)needed sbRestartHandler:(id)handler;
- (BOOL)setSiriLanguage:(id)language;
- (MSDLanguageAndRegionManager)init;
- (id)deviceLanguageIdentifier;
- (id)deviceRegionCode;
- (id)getCurrentDeviceLanguage;
- (id)getCurrentDeviceLocaleCode;
- (id)getCurrentDevicePreferredLanguage;
- (id)getCurrentDeviceRegion;
- (id)getCurrentSiriLanguage;
- (id)getDemoPreferencesSiriLanguage;
- (void)cancelNotifyToken:(int)token;
- (void)restoreDeviceLanguageAndRegionIfNeeded;
- (void)setSiriIsEnabled:(BOOL)enabled;
@end

@implementation MSDLanguageAndRegionManager

+ (id)sharedInstance
{
  if (qword_1001A58C0 != -1)
  {
    sub_1000DB5B4();
  }

  v3 = qword_1001A58B8;

  return v3;
}

- (MSDLanguageAndRegionManager)init
{
  v5.receiver = self;
  v5.super_class = MSDLanguageAndRegionManager;
  v2 = [(MSDLanguageAndRegionManager *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.msd_language_and_region", 0);
    [(MSDLanguageAndRegionManager *)v2 setQueue:v3];
  }

  return v2;
}

- (BOOL)setDeviceLanguage:(id)language andRegion:(id)region matchToSystemLanguage:(BOOL)systemLanguage sbRestartNeeded:(BOOL *)needed sbRestartHandler:(id)handler
{
  systemLanguageCopy = systemLanguage;
  languageCopy = language;
  regionCopy = region;
  handlerCopy = handler;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = -1;
  v15 = +[MSDLanguageAndRegionHelper sharedInstance];
  v16 = [v15 setDeviceLanguage:languageCopy andRegion:regionCopy matchToSystemLanguage:systemLanguageCopy];

  if (v16 != 2)
  {
    v17 = dispatch_time(0, 60000000000);
    queue = [(MSDLanguageAndRegionManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007AE3C;
    block[3] = &unk_10016B688;
    v39 = &v40;
    block[4] = self;
    v19 = handlerCopy;
    v38 = v19;
    dispatch_after(v17, queue, block);

    v20 = v41;
    queue2 = [(MSDLanguageAndRegionManager *)self queue];
    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_10007AEE8;
    v33 = &unk_10016B6B0;
    selfCopy = self;
    v36 = &v40;
    v35 = v19;
    notify_register_dispatch("com.apple.springboard.finishedstartup", v20 + 6, queue2, &v30);
  }

  v22 = [(MSDLanguageAndRegionManager *)self getCurrentDevicePreferredLanguage:v30];
  v23 = [(MSDLanguageAndRegionManager *)self saveDeviceLanguageIdentifier:v22];

  if ((v23 & 1) == 0)
  {
    v28 = sub_100063A54(v24);
    sub_1000DB5C8(v28, v44);
    goto LABEL_10;
  }

  v25 = [(MSDLanguageAndRegionManager *)self saveDeviceRegionCode:regionCopy];
  if ((v25 & 1) == 0)
  {
    v29 = sub_100063A54(v25);
    sub_1000DB620(v29, v44);
LABEL_10:

    [(MSDLanguageAndRegionManager *)self cancelNotifyToken:v41[6]];
    v26 = 0;
    if (!needed)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v26 = 1;
  if (needed)
  {
LABEL_6:
    *needed = v16 != 2;
  }

LABEL_7:
  _Block_object_dispose(&v40, 8);

  return v26;
}

- (id)getCurrentDeviceLanguage
{
  v2 = +[MSDLanguageAndRegionHelper sharedInstance];
  getCurrentDeviceLanguage = [v2 getCurrentDeviceLanguage];

  return getCurrentDeviceLanguage;
}

- (id)getCurrentDevicePreferredLanguage
{
  v2 = +[MSDLanguageAndRegionHelper sharedInstance];
  getCurrentDevicePreferredLanguage = [v2 getCurrentDevicePreferredLanguage];

  return getCurrentDevicePreferredLanguage;
}

- (id)getCurrentDeviceRegion
{
  v2 = +[MSDLanguageAndRegionHelper sharedInstance];
  getCurrentDeviceRegion = [v2 getCurrentDeviceRegion];

  return getCurrentDeviceRegion;
}

- (id)getCurrentDeviceLocaleCode
{
  v2 = +[MSDLanguageAndRegionHelper sharedInstance];
  getCurrentLocaleCode = [v2 getCurrentLocaleCode];

  return getCurrentLocaleCode;
}

- (BOOL)saveCurrentDeviceLanguageIdentifier
{
  selfCopy = self;
  getCurrentDeviceLanguage = [(MSDLanguageAndRegionManager *)self getCurrentDeviceLanguage];
  LOBYTE(selfCopy) = [(MSDLanguageAndRegionManager *)selfCopy saveDeviceLanguageIdentifier:getCurrentDeviceLanguage];

  return selfCopy;
}

- (BOOL)saveCurrentDeviceRegionCode
{
  selfCopy = self;
  getCurrentDeviceRegion = [(MSDLanguageAndRegionManager *)self getCurrentDeviceRegion];
  LOBYTE(selfCopy) = [(MSDLanguageAndRegionManager *)selfCopy saveDeviceRegionCode:getCurrentDeviceRegion];

  return selfCopy;
}

- (BOOL)setSiriLanguage:(id)language
{
  languageCopy = language;
  v5 = +[MSDLanguageAndRegionHelper sharedInstance];
  v6 = [v5 setSiriLanguage:languageCopy];

  if (v6 != 1)
  {
    [(MSDLanguageAndRegionManager *)self saveSiriLanguageToPreferences:languageCopy];
  }

  return v6 != 1;
}

- (id)getCurrentSiriLanguage
{
  v2 = +[MSDLanguageAndRegionHelper sharedInstance];
  getSiriLanguage = [v2 getSiriLanguage];

  return getSiriLanguage;
}

- (BOOL)saveSiriLanguageToPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 setObject:preferencesCopy forKey:@"SiriLanguage"];

  return v5;
}

- (id)getDemoPreferencesSiriLanguage
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"SiriLanguage"];

  return v3;
}

- (BOOL)isSiriEnabled
{
  v2 = +[MSDLanguageAndRegionHelper sharedInstance];
  isSiriEnabled = [v2 isSiriEnabled];

  return isSiriEnabled;
}

- (void)setSiriIsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = +[MSDLanguageAndRegionHelper sharedInstance];
  [v4 setSiriIsEnabled:enabledCopy];
}

- (BOOL)saveDeviceLanguageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 setObject:identifierCopy forKey:@"DeviceLanguageIdentifier"];

  return v5;
}

- (id)deviceLanguageIdentifier
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"DeviceLanguageIdentifier"];

  return v3;
}

- (BOOL)saveDeviceRegionCode:(id)code
{
  codeCopy = code;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 setObject:codeCopy forKey:@"DeviceRegionCode"];

  return v5;
}

- (id)deviceRegionCode
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"DeviceRegionCode"];

  return v3;
}

- (void)cancelNotifyToken:(int)token
{
  if (token != -1)
  {
    notify_cancel(token);
  }
}

- (void)restoreDeviceLanguageAndRegionIfNeeded
{
  deviceLanguageIdentifier = [(MSDLanguageAndRegionManager *)self deviceLanguageIdentifier];
  deviceRegionCode = [(MSDLanguageAndRegionManager *)self deviceRegionCode];
  v5 = deviceRegionCode;
  if (deviceLanguageIdentifier)
  {
    if (deviceRegionCode)
    {
      v6 = +[MSDLanguageAndRegionHelper sharedInstance];
      v7 = [v6 setDeviceLanguage:deviceLanguageIdentifier andRegion:v5 matchToSystemLanguage:0];

      if (v7 == 1)
      {
        v9 = sub_100063A54(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *v10 = 0;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to set device language and region.", v10, 2u);
        }
      }
    }
  }
}

@end