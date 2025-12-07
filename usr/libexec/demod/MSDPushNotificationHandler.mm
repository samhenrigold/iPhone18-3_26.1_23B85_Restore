@interface MSDPushNotificationHandler
+ (id)sharedInstance;
- (MSDPushNotificationHandler)init;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)enablePushNotifications;
@end

@implementation MSDPushNotificationHandler

+ (id)sharedInstance
{
  if (qword_1001A5680 != -1)
  {
    sub_1000CD044();
  }

  v3 = qword_1001A5678;

  return v3;
}

- (MSDPushNotificationHandler)init
{
  v6.receiver = self;
  v6.super_class = MSDPushNotificationHandler;
  v2 = [(MSDPushNotificationHandler *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MSDPushNotificationHandler *)v2 setApsConnection:0];
    [(MSDPushNotificationHandler *)v3 setApsToken:0];
    v4 = v3;
  }

  return v3;
}

- (void)enablePushNotifications
{
  apsConnection = [(MSDPushNotificationHandler *)self apsConnection];

  if (!apsConnection)
  {
    v4 = [APSConnection alloc];
    v5 = APSEnvironmentProduction;
    v6 = +[MSDWorkQueueSet sharedInstance];
    pollingQueue = [v6 pollingQueue];
    v8 = [v4 initWithEnvironmentName:v5 namedDelegatePort:@"com.apple.aps.mobilestoredemoport" queue:pollingQueue];
    [(MSDPushNotificationHandler *)self setApsConnection:v8];

    apsConnection2 = [(MSDPushNotificationHandler *)self apsConnection];
    [apsConnection2 setDelegate:self];

    apsConnection3 = [(MSDPushNotificationHandler *)self apsConnection];
    [apsConnection3 requestTokenForTopic:@"com.apple.ist.demounit.demodevicenotifications" identifier:&stru_10016D9D8];

    apsConnection4 = [(MSDPushNotificationHandler *)self apsConnection];
    v11 = [NSArray arrayWithObject:@"com.apple.ist.demounit.demodevicenotifications"];
    [apsConnection4 setEnabledTopics:v11];
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  topic = [messageCopy topic];
  if ([topic isEqualToString:@"com.apple.ist.demounit.demodevicenotifications"])
  {
    userInfo = [messageCopy userInfo];
    v7 = sub_100063A54(userInfo);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CD058(userInfo, v7);
    }

    v8 = [userInfo objectForKey:@"action"];
    v9 = [v8 isEqualToString:@"ping_hub"];

    if (v9)
    {
      v11 = sub_100063A54(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received request to ping the hub.", buf, 2u);
      }

      v12 = +[MSDMailProcessor sharedInstance];
      [v12 sendPushNotificationPing];
      goto LABEL_27;
    }

    v13 = [userInfo objectForKey:@"action"];
    v14 = [v13 isEqualToString:@"collect_logs"];

    if (v14)
    {
      v15 = [userInfo objectForKey:@"parameters"];
      v16 = +[MSDTargetDevice sharedInstance];
      v12 = [v15 objectForKey:@"url"];
      hubSuppliedSettings = [v16 hubSuppliedSettings];
      v18 = [hubSuppliedSettings objectForKey:@"LogS3BucketUrl"];

      if (v18)
      {
        v19 = [v12 hasPrefix:v18];
        if (v19)
        {
          v20 = [v15 objectForKey:@"retryAttempts"];
          integerValue = [v20 integerValue];

          v22 = [v15 objectForKey:@"logType"];
          unsignedIntegerValue = [v22 unsignedIntegerValue];

          v23 = [v15 objectForKey:@"headers"];
          v24 = sub_100063A54(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v38 = v12;
            v39 = 2048;
            v40 = integerValue;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Received request to collect MobileStoreDemo logs. Upload url: %{public}@, retry attempts: %ld", buf, 0x16u);
          }

          v25 = +[MSDS3UploadHandler sharedInstance];
          [v25 uploadDemoLogsTo:v12 HttpHeaders:v23 andMaxAttempts:integerValue ofType:unsignedIntegerValue];

          goto LABEL_27;
        }
      }

      v30 = sub_100063A54(v19);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Provided S3 URL does not match stored URL pre-fix. Abandoning log upload", buf, 2u);
      }
    }

    else
    {
      v26 = [userInfo objectForKey:@"action"];
      v27 = [v26 isEqualToString:@"demo_device_lock"];

      if (v27)
      {
        if (!os_variant_has_internal_content())
        {
LABEL_28:

          goto LABEL_29;
        }

        v12 = +[MSDTargetDevice sharedInstance];
        isDDLDevice = [v12 isDDLDevice];
        if (isDDLDevice && (isDDLDevice = [v12 isContentFrozen], isDDLDevice))
        {
          v29 = [v12 unenrollWithObliteration:0 preserveESim:1 callUnregister:0 preserveDDLFlag:1];
          if (v29)
          {
LABEL_27:

            goto LABEL_28;
          }

          v15 = sub_100063A54(v29);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_1000CD198(v15);
          }
        }

        else
        {
          v15 = sub_100063A54(isDDLDevice);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_1000CD154(v15);
          }
        }

LABEL_26:

        goto LABEL_27;
      }

      v31 = [userInfo objectForKey:@"action"];
      v32 = [v31 isEqualToString:@"discover"];

      v12 = sub_100063A54(v33);
      v34 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (!v32)
      {
        if (!v34)
        {
          goto LABEL_27;
        }

        v15 = [userInfo objectForKey:@"action"];
        *buf = 138543362;
        v38 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received invalid command from DU. %{public}@", buf, 0xCu);
        goto LABEL_26;
      }

      if (v34)
      {
        *buf = 136315138;
        v38 = "[MSDPushNotificationHandler connection:didReceiveIncomingMessage:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s - INFO - Received request to flash the device.", buf, 0xCu);
      }

      v12 = +[MSDAVFlashlight sharedInstance];
      v15 = [userInfo objectForKey:@"parameters"];
      v16 = [v15 objectForKey:@"flashDeviceDuration"];
      v35 = -[NSObject flash:](v12, "flash:", [v16 unsignedIntegerValue]);
      if (v35)
      {
LABEL_25:

        goto LABEL_26;
      }

      v18 = sub_100063A54(v35);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000CD0D0(v18);
      }
    }

    goto LABEL_25;
  }

LABEL_29:
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  hexStringRepresentation = [token hexStringRepresentation];
  [(MSDPushNotificationHandler *)self setApsToken:hexStringRepresentation];

  v9 = sub_100063A54(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CD1DC(self, v9);
  }
}

@end