@interface VMTelephonyService
- (VMTelephonyService)initWithTelephonyClient:(id)client telephonyClient:(id)telephonyClient;
- (void)dealloc;
- (void)excludeNotificationFromBackup:(id)backup;
- (void)executeHandlerForNotificationWithName:(id)name info:(id)info;
- (void)saveNotification:(id)notification info:(id)info;
- (void)voicemailInfoAvailableNotification:(id)notification voicemailInfo:(id)info;
@end

@implementation VMTelephonyService

- (VMTelephonyService)initWithTelephonyClient:(id)client telephonyClient:(id)telephonyClient
{
  clientCopy = client;
  telephonyClientCopy = telephonyClient;
  v14.receiver = self;
  v14.super_class = VMTelephonyService;
  v8 = [(VMTelephonyService *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v10 = sub_100002784(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      *buf = 136315650;
      v16 = "";
      v17 = 2080;
      v18 = "";
      v19 = 2112;
      v20 = v11;
      v12 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ init", buf, 0x20u);
    }

    [(VMTelephonyService *)v9 setQueue:clientCopy];
    [(VMTelephonyService *)v9 setTelephonyClient:telephonyClientCopy];
    [telephonyClientCopy addDelegate:v9 queue:clientCopy];
  }

  return v9;
}

- (void)dealloc
{
  v3 = sub_100002784(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v8 = "";
    v9 = 2080;
    v10 = "";
    v11 = 2112;
    v12 = objc_opt_class();
    v4 = v12;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s+++> %@ dealoc", buf, 0x20u);
  }

  telephonyClient = [(VMTelephonyService *)self telephonyClient];
  [telephonyClient removeDelegate:self];

  v6.receiver = self;
  v6.super_class = VMTelephonyService;
  [(VMTelephonyService *)&v6 dealloc];
}

- (void)voicemailInfoAvailableNotification:(id)notification voicemailInfo:(id)info
{
  notificationCopy = notification;
  infoCopy = info;
  v7 = sub_100002784(infoCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136316162;
    v10 = "";
    v11 = 2080;
    v12 = "";
    v13 = 2112;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = notificationCopy;
    v17 = 2112;
    v18 = infoCopy;
    v8 = v14;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is handling voicemail info available notification delegate callback for subscription %@, voicemail info %@", &v9, 0x34u);
  }
}

- (void)excludeNotificationFromBackup:(id)backup
{
  backupCopy = backup;
  v12 = 0;
  v4 = [backupCopy setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v12];
  v5 = v12;
  v6 = sub_100002784(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      path = [backupCopy path];
      *buf = 136315650;
      v14 = "";
      v15 = 2080;
      v16 = "";
      v17 = 2112;
      v18 = path;
      v9 = "#W %s%sNotification file at %@ excluded from backup";
      v10 = v6;
      v11 = 32;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else if (v7)
  {
    path = [backupCopy path];
    *buf = 136315906;
    v14 = "";
    v15 = 2080;
    v16 = "";
    v17 = 2112;
    v18 = path;
    v19 = 2112;
    v20 = v5;
    v9 = "#W %s%sError setting notification file at %@ to be excluded from backup with error %@";
    v10 = v6;
    v11 = 42;
    goto LABEL_6;
  }
}

- (void)saveNotification:(id)notification info:(id)info
{
  notificationCopy = notification;
  infoCopy = info;
  v8 = sub_100002784(infoCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v47 = "";
    v48 = 2080;
    v49 = "";
    v50 = 2112;
    v51 = notificationCopy;
    v52 = 2112;
    v53 = infoCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sSaving notification for subscription %@ with info %@", buf, 0x2Au);
  }

  v10 = sub_100085730(v9);
  v11 = +[NSFileManager defaultManager];
  path = [v10 path];
  v13 = [v11 fileExistsAtPath:path];

  if ((v13 & 1) == 0)
  {
    v15 = sub_100002784(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      path2 = [v10 path];
      *buf = 136315650;
      v47 = "";
      v48 = 2080;
      v49 = "";
      v50 = 2112;
      v51 = path2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sCreating notification directory %@", buf, 0x20u);
    }

    v17 = +[NSFileManager defaultManager];
    path3 = [v10 path];
    v45 = 0;
    v19 = [v17 createDirectoryAtPath:path3 withIntermediateDirectories:1 attributes:0 error:&v45];
    v20 = v45;

    if ((v19 & 1) == 0)
    {
      v22 = sub_100002784(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        path4 = [v10 path];
        *buf = 136315906;
        v47 = "";
        v48 = 2080;
        v49 = "";
        v50 = 2112;
        v51 = path4;
        v52 = 2112;
        v53 = v20;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#W %s%sError while creating notification directory at path: %@ error: %@", buf, 0x2Au);
      }
    }
  }

  accountID = [notificationCopy accountID];
  v25 = sub_1000857D4(accountID);

  v44 = 0;
  v26 = [NSKeyedArchiver archivedDataWithRootObject:infoCopy requiringSecureCoding:1 error:&v44];
  v27 = v44;
  v28 = v27;
  if (v27)
  {
    v29 = sub_100002784(v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v47 = "";
      v48 = 2080;
      v49 = "";
      v50 = 2112;
      v51 = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#W %s%sError encoding data notification: %@", buf, 0x20u);
    }
  }

  else
  {
    selfCopy = self;
    v29 = objc_opt_new();
    v30 = objc_opt_class();
    accountID2 = [notificationCopy accountID];
    v32 = [v30 hashedUUID:accountID2];
    uUIDString = [v32 UUIDString];

    v41 = uUIDString;
    [v29 setObject:uUIDString forKey:@"Account"];
    v34 = sub_100002784([v29 setObject:v26 forKey:@"Info"]);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v47 = "";
      v48 = 2080;
      v49 = "";
      v50 = 2112;
      v51 = v29;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s%s=== notificationsDictionary to save %@", buf, 0x20u);
    }

    path5 = [v25 path];
    v43 = 0;
    v36 = [v29 writeToFile:path5 options:805306369 error:&v43];
    v37 = v43;

    if ((v36 & 1) == 0)
    {
      v39 = sub_100002784(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        path6 = [v25 path];
        *buf = 136315906;
        v47 = "";
        v48 = 2080;
        v49 = "";
        v50 = 2112;
        v51 = path6;
        v52 = 2112;
        v53 = v37;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not save notification file at path %@ due to error %@", buf, 0x2Au);
      }
    }

    [(VMTelephonyService *)selfCopy excludeNotificationFromBackup:v25];
  }
}

- (void)executeHandlerForNotificationWithName:(id)name info:(id)info
{
  nameCopy = name;
  infoCopy = info;
  v8 = sub_100002784(infoCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v40 = "";
    v41 = 2080;
    v42 = "";
    v43 = 2112;
    v44 = objc_opt_class();
    v45 = 2112;
    v46 = nameCopy;
    v47 = 2112;
    v48 = infoCopy;
    v9 = v44;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is handling notification %@ with user info %@", buf, 0x34u);
  }

  v10 = [nameCopy isEqualToString:kCTIndicatorsVoiceMailNotification];
  if (infoCopy && v10)
  {
    v11 = [CTVoicemailInfoType voicemailInfoTypeForDictionaryRepresentation:infoCopy];
    isVoiceMailMWI = [v11 isVoiceMailMWI];
    if (isVoiceMailMWI)
    {
      v13 = sub_100002784(isVoiceMailMWI);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        *buf = 136315650;
        v40 = "";
        v41 = 2080;
        v42 = "";
        v43 = 2112;
        v44 = v14;
        v15 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is ignoring MWI notification", buf, 0x20u);
      }
    }

    else
    {
      v13 = [infoCopy objectForKeyedSubscript:kCTIndicatorVoiceMailSubInstance];
      if (v13)
      {
        v16 = [[NSUUID alloc] initWithUUIDString:v13];
        if (v16)
        {
          v17 = v16;
          v32 = v13;
          v33 = v11;
          selfCopy = self;
          telephonyClient = [(VMTelephonyService *)self telephonyClient];
          contexts = [telephonyClient contexts];
          subscriptions = [contexts subscriptions];

          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v21 = subscriptions;
          v22 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v35;
            while (2)
            {
              for (i = 0; i != v23; i = i + 1)
              {
                if (*v35 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v34 + 1) + 8 * i);
                uuid = [v26 uuid];
                v28 = [uuid isEqual:v17];

                if (v28)
                {
                  v30 = sub_100002784(v29);
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v40 = "";
                    v41 = 2080;
                    v42 = "";
                    v43 = 2112;
                    v44 = v26;
                    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%sAdding notification for subscription %@", buf, 0x20u);
                  }

                  [(VMTelephonyService *)selfCopy saveNotification:v26 info:infoCopy];
                  goto LABEL_22;
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

LABEL_22:

          v13 = v32;
          v11 = v33;
        }
      }
    }
  }
}

@end