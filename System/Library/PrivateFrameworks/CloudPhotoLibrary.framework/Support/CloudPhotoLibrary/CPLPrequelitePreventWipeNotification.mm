@interface CPLPrequelitePreventWipeNotification
+ (void)resetNotificationForLibraryIdentifier:(id)identifier;
- (BOOL)_warnUserAndReturnIfShouldPreventWipeOnUpgradeCreateRadar:(BOOL)radar;
- (BOOL)shouldPreventWipeOnUpgradeCreateRadar:(BOOL)radar;
- (CPLPrequelitePreventWipeNotification)initWithLibraryIdentifier:(id)identifier reason:(id)reason;
- (id)createRadarURL;
- (void)_save;
@end

@implementation CPLPrequelitePreventWipeNotification

+ (void)resetNotificationForLibraryIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    v5 = +[NSUserDefaults standardUserDefaults];
    v4 = sub_100169A30(identifierCopy);

    [v5 removeObjectForKey:v4];
  }
}

- (CPLPrequelitePreventWipeNotification)initWithLibraryIdentifier:(id)identifier reason:(id)reason
{
  identifierCopy = identifier;
  reasonCopy = reason;
  v21.receiver = self;
  v21.super_class = CPLPrequelitePreventWipeNotification;
  v8 = [(CPLPrequelitePreventWipeNotification *)&v21 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    libraryIdentifier = v8->_libraryIdentifier;
    v8->_libraryIdentifier = v9;

    v11 = [reasonCopy copy];
    reason = v8->_reason;
    v8->_reason = v11;

    v13 = v8->_libraryIdentifier;
    if (v13)
    {
      v14 = sub_100169A30(v13);
      defaultsKey = v8->_defaultsKey;
      v8->_defaultsKey = v14;

      v16 = +[NSUserDefaults standardUserDefaults];
      v17 = [v16 objectForKey:v8->_defaultsKey];
      ignoreBeforeDate = v8->_ignoreBeforeDate;
      v8->_ignoreBeforeDate = v17;

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = v8->_ignoreBeforeDate;
        v8->_ignoreBeforeDate = 0;
      }
    }
  }

  return v8;
}

- (void)_save
{
  if (self->_defaultsKey)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    ignoreBeforeDate = self->_ignoreBeforeDate;
    if (ignoreBeforeDate)
    {
      [v4 setObject:ignoreBeforeDate forKey:self->_defaultsKey];
    }

    else
    {
      [v4 removeObjectForKey:self->_defaultsKey];
    }

    [v4 synchronize];
  }
}

- (BOOL)shouldPreventWipeOnUpgradeCreateRadar:(BOOL)radar
{
  if (!self->_libraryIdentifier)
  {
    return 0;
  }

  radarCopy = radar;
  ignoreBeforeDate = [(CPLPrequelitePreventWipeNotification *)self ignoreBeforeDate];
  if (ignoreBeforeDate)
  {
    v6 = ignoreBeforeDate;
    ignoreBeforeDate2 = [(CPLPrequelitePreventWipeNotification *)self ignoreBeforeDate];
    [ignoreBeforeDate2 timeIntervalSinceNow];
    v9 = v8;

    if (v9 >= 0.0)
    {
      return 1;
    }
  }

  return [(CPLPrequelitePreventWipeNotification *)self _warnUserAndReturnIfShouldPreventWipeOnUpgradeCreateRadar:radarCopy];
}

- (BOOL)_warnUserAndReturnIfShouldPreventWipeOnUpgradeCreateRadar:(BOOL)radar
{
  radarCopy = radar;
  if (self->_reason)
  {
    v5 = [[NSString alloc] initWithFormat:@"%@.", self->_reason];
    if (radarCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = @"iCloud Photo Library is about to wipe its whole sync state.";
  if (!radar)
  {
LABEL_3:
    v6 = [(__CFString *)v5 stringByAppendingString:@"\nThis will trigger a potential lengthy reset sync but should not lose any data."];

    v5 = v6;
  }

LABEL_4:
  v48[0] = kCFUserNotificationAlertHeaderKey;
  v48[1] = kCFUserNotificationAlertMessageKey;
  v49[0] = @"iCloud Photo Library";
  v49[1] = v5;
  v48[2] = kCFUserNotificationAlertTopMostKey;
  v49[2] = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:3];
  v8 = [v7 mutableCopy];

  if (radarCopy)
  {
    v46[0] = kCFUserNotificationDefaultButtonTitleKey;
    v46[1] = kCFUserNotificationAlternateButtonTitleKey;
    v47[0] = @"Create Radar";
    v47[1] = @"OK";
    v46[2] = kCFUserNotificationOtherButtonTitleKey;
    v47[2] = @"Not Now";
    v9 = v47;
    v10 = v46;
  }

  else
  {
    v44[0] = kCFUserNotificationDefaultButtonTitleKey;
    v44[1] = kCFUserNotificationAlternateButtonTitleKey;
    v45[0] = @"Not now";
    v45[1] = @"Wipe Local Sync State";
    v44[2] = kCFUserNotificationOtherButtonTitleKey;
    v45[2] = @"Ignore for 1 hour";
    v9 = v45;
    v10 = v44;
  }

  v11 = [NSDictionary dictionaryWithObjects:v9 forKeys:v10 count:3];
  [v8 addEntriesFromDictionary:v11];

  HIDWORD(v41) = 0;
  v12 = CFUserNotificationCreate(0, 60.0, 3uLL, &v41 + 1, v8);
  if (v12)
  {
    v13 = v12;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43[0] = v5;
        sub_100169D5C(&_mh_execute_header, v15, v16, "Waiting for response to message: %@", v17, v18, v19, v20, v38, v39, responseFlags, v41);
      }
    }

    responseFlags = 0;
    CFUserNotificationReceiveResponse(v13, 60.0, &responseFlags);
    CFRelease(v13);
    v21 = responseFlags & 3;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v22 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [NSNumber numberWithUnsignedLong:v21];
        *buf = 138412290;
        v43[0] = v23;
        sub_100169D5C(&_mh_execute_header, v24, v25, "Button pressed is %@", v26, v27, v28, v29, v38, v39, responseFlags, v41);
      }
    }

    ignoreBeforeDate = self->_ignoreBeforeDate;
    self->_ignoreBeforeDate = 0;

    if (radarCopy)
    {
      if (v21 != 2)
      {
        if (v21 != 1)
        {
          createRadarURL = [(CPLPrequelitePreventWipeNotification *)self createRadarURL];
          v32 = +[LSApplicationWorkspace defaultWorkspace];
          [v32 openURL:createRadarURL configuration:0 completionHandler:0];
        }

        goto LABEL_29;
      }
    }

    else if (v21 == 2)
    {
      v35 = [NSDate dateWithTimeIntervalSinceNow:3600.0];
      v36 = self->_ignoreBeforeDate;
      self->_ignoreBeforeDate = v35;
    }

    else if (v21 == 1)
    {
LABEL_29:
      v34 = 0;
LABEL_32:
      [(CPLPrequelitePreventWipeNotification *)self _save];
      goto LABEL_33;
    }

    v34 = 1;
    goto LABEL_32;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v33 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v43[0]) = HIDWORD(v41);
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Could not create user notification to prevent wiping database: %d", buf, 8u);
    }
  }

  v34 = 0;
LABEL_33:

  return v34;
}

- (id)createRadarURL
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = v3;
  if (self->_reason)
  {
    reason = self->_reason;
  }

  else
  {
    reason = @"CPL wants to wipe its database";
  }

  [v3 setObject:reason forKeyedSubscript:@"Title"];
  [v4 setObject:@"Other Bug" forKeyedSubscript:@"Classification"];
  [v4 setObject:@"com.apple.PhotoLibraryServices.PhotosDiagnostics" forKeyedSubscript:@"ExtensionIdentifiers"];
  [v4 setObject:@"Not Applicable" forKeyedSubscript:@"Reproducibility"];
  [v4 setObject:@"Photos Backend iCloud" forKeyedSubscript:@"ComponentName"];
  [v4 setObject:@"630691" forKeyedSubscript:@"ComponentID"];
  [v4 setObject:@"all" forKeyedSubscript:@"ComponentVersion"];
  if (self->_reason)
  {
    v6 = [[NSString alloc] initWithFormat:@"%@\nReason: %@.", @"CPL presented a notification warning me that it was about to wipe its database.", self->_reason];
    [v4 setObject:v6 forKeyedSubscript:@"Description"];
  }

  else
  {
    [v4 setObject:@"CPL presented a notification warning me that it was about to wipe its database." forKeyedSubscript:@"Description"];
  }

  v7 = [NSURLComponents componentsWithString:@"tap-to-radar://new"];
  v8 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:v14];
        v16 = [NSURLQueryItem queryItemWithName:v14 value:v15];
        [v8 addObject:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v11);
  }

  [v7 setQueryItems:v8];
  v17 = [v7 URL];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v18 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Create radar URL: %@", buf, 0xCu);
    }
  }

  return v17;
}

@end