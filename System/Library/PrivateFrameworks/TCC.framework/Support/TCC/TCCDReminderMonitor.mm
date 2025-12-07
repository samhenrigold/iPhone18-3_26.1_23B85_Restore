@interface TCCDReminderMonitor
+ (double)positiveDoubleValueAtPreferenceKey:(id)key withFallback:(double)fallback;
- (TCCDReminderMonitor)init;
- (id)reportResourceUsage:(id)usage;
- (void)setReminderCooldownPeriod:(int64_t)period with:(int64_t)with;
- (void)showReminderPrompt:(id)prompt result:(id)result;
@end

@implementation TCCDReminderMonitor

- (TCCDReminderMonitor)init
{
  v6.receiver = self;
  v6.super_class = TCCDReminderMonitor;
  v2 = [(TCCDReminderMonitor *)&v6 init];
  if (v2)
  {
    v2->_lastReminderTime = CFAbsoluteTimeGetCurrent();
    [TCCDReminderMonitor positiveDoubleValueAtPreferenceKey:@"reminderSystemCooldown" withFallback:604800.0];
    v2->_systemCooldown = v3;
    [TCCDReminderMonitor positiveDoubleValueAtPreferenceKey:@"reminderServiceCooldown" withFallback:15552000.0];
    v2->_serviceCooldown = v4;
  }

  return v2;
}

+ (double)positiveDoubleValueAtPreferenceKey:(id)key withFallback:(double)fallback
{
  keyCopy = key;
  valuePtr = 0.0;
  v6 = 0.0;
  if (os_variant_allows_internal_security_policies())
  {
    v7 = CFPreferencesCopyValue(keyCopy, @"com.apple.tccd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    if (v7)
    {
      v8 = v7;
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v8) && !CFNumberGetValue(v8, kCFNumberDoubleType, &valuePtr))
      {
        valuePtr = 0.0;
      }

      CFRelease(v8);
      v6 = valuePtr;
    }
  }

  if (v6 > 0.0)
  {
    fallback = v6;
  }

  return fallback;
}

- (id)reportResourceUsage:(id)usage
{
  usageCopy = usage;
  subjectIdentity = [usageCopy subjectIdentity];
  [usageCopy attributionChain];
  v6 = v36 = self;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x3032000000;
  v71[3] = sub_1000074F0;
  v71[4] = sub_100007578;
  v72 = 0;
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x2020000000;
  v70 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 1;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  Current = CFAbsoluteTimeGetCurrent();
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000279F8;
  v46[3] = &unk_1000A5318;
  v7 = subjectIdentity;
  v47 = v7;
  v48 = usageCopy;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100027B40;
  v37[3] = &unk_1000A5BD8;
  v40 = v69;
  v41 = &v61;
  v42 = &v57;
  v43 = &v53;
  v44 = &v49;
  v45 = &v65;
  v39 = v71;
  v37[4] = self;
  v8 = v48;
  v38 = v8;
  v9 = db_eval("SELECT client, client_type, last_reminded, last_modified, flags, auth_version FROM access WHERE auth_value = ? and client = ? and service = ? and (auth_reason = ? or auth_reason = ?)", v46, v37);
  v10 = v6;
  if (v9)
  {
    v11 = tcc_access_log(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      service = [v8 service];
      sub_1000282BC(v10, service, buf, v11);
    }

    v13 = 0;
  }

  else
  {
    if (&_TMIsAutomaticTimeEnabled)
    {
      if (*(v66 + 24) == 1)
      {
        v9 = TMIsAutomaticTimeEnabled();
        if (!v9)
        {
          v14 = tcc_access_log(v9);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v74 = "[TCCDReminderMonitor reportResourceUsage:]";
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: automatic time is disabled, not surfacing reminder prompt", buf, 0xCu);
          }

          *(v66 + 24) = 0;
        }
      }
    }

    v15 = tcc_access_log(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v66 + 24);
      *buf = 136315394;
      v74 = "[TCCDReminderMonitor reportResourceUsage:]";
      v75 = 1024;
      LODWORD(v76) = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: shouldRemind: %d", buf, 0x12u);
    }

    if (*(v66 + 24) == 1)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v18 = v50[3];
      lastReminderTime = selfCopy->_lastReminderTime;
      systemCooldown = [(TCCDReminderMonitor *)selfCopy systemCooldown];
      v22 = v18 - lastReminderTime <= v21;
      if (v18 - lastReminderTime <= v21)
      {
        v23 = tcc_access_log(systemCooldown);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(v50 + 3);
          v25 = selfCopy->_lastReminderTime;
          [(TCCDReminderMonitor *)selfCopy systemCooldown];
          v26 = v50[3] - selfCopy->_lastReminderTime;
          *buf = 134218752;
          v74 = v24;
          v75 = 2048;
          v76 = v25;
          v77 = 2048;
          v78 = v27;
          v79 = 2048;
          v80 = v26;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "reminder cooldown not expired: now %f, last_reminded %f, cooldown interval %f, elapsed %f", buf, 0x2Au);
          self = v36;
        }
      }

      else
      {
        v28 = tcc_access_log(systemCooldown);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(v50 + 3);
          v31 = selfCopy->_lastReminderTime;
          [(TCCDReminderMonitor *)selfCopy systemCooldown];
          v32 = v50[3] - selfCopy->_lastReminderTime;
          *buf = 134218752;
          v74 = v30;
          v75 = 2048;
          v76 = v31;
          v77 = 2048;
          v78 = v33;
          v79 = 2048;
          v80 = v32;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "reminder cooldown expired: now %f, last_reminded %f, cooldown interval %f, elapsed: %f", buf, 0x2Au);
          self = v36;
        }

        selfCopy->_lastReminderTime = v50[3];
      }

      objc_sync_exit(selfCopy);
    }

    else
    {
      v22 = 1;
    }

    v13 = objc_opt_new();
    [v13 setPreviousAuthorization:2];
    [v13 setDatabaseFlags:*(v58 + 6)];
    [v13 setAuthorizationVersion:*(v54 + 6)];
    [v13 setLastReminderTime:*(v62 + 6)];
    v34 = [v13 setPromptType:3];
    if (!v22 && (v66[3] & 1) != 0)
    {
      [(TCCDReminderMonitor *)self showReminderPrompt:v8 result:v13];
      v34 = [v13 setLastReminderTime:v50[3]];
    }

    v11 = tcc_access_log(v34);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v74 = "[TCCDReminderMonitor reportResourceUsage:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(v69, 8);
  _Block_object_dispose(v71, 8);

  return v13;
}

- (void)showReminderPrompt:(id)prompt result:(id)result
{
  promptCopy = prompt;
  resultCopy = result;
  service = [promptCopy service];
  v8 = [TCCDAccessIdentity alloc];
  attributionChain = [promptCopy attributionChain];
  v10 = -[TCCDAccessIdentity initWithAttributionChain:preferMostSpecificIdentifier:](v8, "initWithAttributionChain:preferMostSpecificIdentifier:", attributionChain, [service hasParanoidSecurityPolicy]);

  displayName = [(TCCDAccessIdentity *)v10 displayName];
  if (displayName)
  {
    v23 = resultCopy;
    reminderTitleTextLocalizationKey = [service reminderTitleTextLocalizationKey];
    if (!reminderTitleTextLocalizationKey)
    {
      reminderTitleTextLocalizationKey = [service requestTitleTextLocalizationKey];
    }

    reminderLimitedButtonTitleTextLocalizationKey = [service reminderLimitedButtonTitleTextLocalizationKey];
    if (!reminderLimitedButtonTitleTextLocalizationKey)
    {
      reminderLimitedButtonTitleTextLocalizationKey = [service buttonTitleLocalizationKeyForAuthorization:objc_msgSend(service desiredAuth:{"downgradeAuthRight"), 2}];
    }

    v22 = [service localizedTextWithKey:reminderLimitedButtonTitleTextLocalizationKey];
    downgradeAuthRight = [service downgradeAuthRight];
    reminderAllowButtonTitleTextLocalizationKey = [service reminderAllowButtonTitleTextLocalizationKey];
    if (!reminderAllowButtonTitleTextLocalizationKey)
    {
      reminderAllowButtonTitleTextLocalizationKey = [service allowAuthorizationButtonTitleLocalizationKey];
    }

    v21 = [service localizedTextWithKey:reminderAllowButtonTitleTextLocalizationKey];
    v16 = [service localizedTextWithKey:reminderTitleTextLocalizationKey];
    if (!v16)
    {
      v17 = tcc_access_log(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = service;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Could not find localized string for service: %@", buf, 0xCu);
      }

      goto LABEL_20;
    }

    v17 = [NSString stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:0, displayName];
    if (v17)
    {
      [promptCopy setReminderPrompt:1];
      v18 = tcc_access_log([promptCopy presentSynchronousPromptWithHeader:v17 message:0 aButtonTitle:v21 aButtonAuth:downgradeAuthRight bButtonTitle:v22 bButtonAuth:2 currentAuth:2 updatingResult:v23]);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v25 = "[TCCDReminderMonitor showReminderPrompt:result:]";
        v19 = "%s";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
      }
    }

    else
    {
      v18 = tcc_access_log(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = service;
        v19 = "Could not find localized request string for service: %@";
        goto LABEL_18;
      }
    }

LABEL_20:
    resultCopy = v23;
    goto LABEL_21;
  }

  reminderTitleTextLocalizationKey = tcc_access_log(0);
  if (os_log_type_enabled(reminderTitleTextLocalizationKey, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(TCCDAccessIdentity *)v10 identifier];
    *buf = 138412546;
    v25 = identifier;
    v26 = 2112;
    v27 = service;
    _os_log_impl(&_mh_execute_header, reminderTitleTextLocalizationKey, OS_LOG_TYPE_DEFAULT, "reminder prompt: cannot find display name: %@ service: %@", buf, 0x16u);
  }

LABEL_21:
}

- (void)setReminderCooldownPeriod:(int64_t)period with:(int64_t)with
{
  if (with | period)
  {
    if (period < 1 || with < 1)
    {
      return;
    }

    [(TCCDReminderMonitor *)self setSystemCooldown:period];
    withCopy = with;
  }

  else
  {
    [(TCCDReminderMonitor *)self setSystemCooldown:604800.0];
    withCopy = 15552000.0;
  }

  [(TCCDReminderMonitor *)self setServiceCooldown:withCopy];
}

@end