@interface VMDaemon
+ (id)sharedDaemon;
- (VMDaemon)init;
- (id)unlock_if_needed:(BOOL *)unlock_if_needed;
- (void)executeHandlerForNotificationWithName:(id)name info:(id)info;
- (void)handleVMDeviceUnlockedNotification:(id)notification;
- (void)start;
@end

@implementation VMDaemon

+ (id)sharedDaemon
{
  if (qword_10010D8A8 != -1)
  {
    sub_10009CF04();
  }

  v3 = qword_10010D8A0;

  return v3;
}

- (VMDaemon)init
{
  v31.receiver = self;
  v31.super_class = VMDaemon;
  v2 = [(VMDaemon *)&v31 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.vmd.mainProcessingQueue", 0);
    [(VMDaemon *)v2 setQueue:v3];

    v4 = [VMTelephonyClient alloc];
    queue = [(VMDaemon *)v2 queue];
    v6 = [(VMTelephonyClient *)v4 initWithQueue:queue];
    [(VMDaemon *)v2 setTelephonyClient:v6];

    initImapNetworkLayer();
    v7 = +[VMSharedProtectionObserver sharedProtectionObserver];
    -[VMDaemon setLocked:](v2, "setLocked:", [v7 hasDeviceBeenUnlockedSinceBoot] ^ 1);

    v9 = sub_100002784(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      locked = [(VMDaemon *)v2 locked];
      v11 = @"NOT locked";
      *buf = 136315650;
      v33 = "";
      if (locked)
      {
        v11 = @"locked";
      }

      v34 = 2080;
      v35 = "";
      v36 = 2112;
      v37 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sDevice is %@", buf, 0x20u);
    }

    v12 = [VMVoicemailService alloc];
    queue2 = [(VMDaemon *)v2 queue];
    telephonyClient = [(VMDaemon *)v2 telephonyClient];
    v15 = [(VMVoicemailService *)v12 initWithTelephonyClient:queue2 telephonyClient:telephonyClient];
    [(VMDaemon *)v2 setVoicemailService:v15];

    if ([(VMDaemon *)v2 locked])
    {
      v16 = [VMTelephonyService alloc];
      queue3 = [(VMDaemon *)v2 queue];
      telephonyClient2 = [(VMDaemon *)v2 telephonyClient];
      v19 = [(VMTelephonyService *)v16 initWithTelephonyClient:queue3 telephonyClient:telephonyClient2];
      [(VMDaemon *)v2 setTelephonyService:v19];
    }

    else
    {
      queue4 = [(VMDaemon *)v2 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000410A0;
      block[3] = &unk_1000EE5B8;
      v30 = v2;
      dispatch_async(queue4, block);

      queue3 = v30;
    }
  }

  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1000410E4;
  v27 = &unk_1000EE650;
  v21 = v2;
  v28 = v21;
  xpc_set_event_stream_handler("com.apple.CTTelephonyCenter", &_dispatch_main_q, &v24);
  v22 = [NSNotificationCenter defaultCenter:v24];
  [v22 addObserver:v21 selector:"handleVMDeviceUnlockedNotification:" name:@"kVMDeviceUnlockedNotification" object:0];

  return v21;
}

- (void)start
{
  queue = [(VMDaemon *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000412D8;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)unlock_if_needed:(BOOL *)unlock_if_needed
{
  queue = [(VMDaemon *)self queue];
  dispatch_assert_queue_V2(queue);

  if (unlock_if_needed)
  {
    *unlock_if_needed = [(VMDaemon *)self locked];
  }

  if (![(VMDaemon *)self locked])
  {
    goto LABEL_8;
  }

  v6 = +[VMSharedProtectionObserver sharedProtectionObserver];
  checkUnlockSinceBootState = [v6 checkUnlockSinceBootState];

  if (checkUnlockSinceBootState)
  {
    v9 = sub_100002784(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "";
      v15 = 2080;
      v16 = "";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sDaemon was locked - starting", &v13, 0x16u);
    }

    [(VMDaemon *)self setLocked:0];
    voicemailService = [(VMDaemon *)self voicemailService];
    [voicemailService full_start];

LABEL_8:
    v11 = 0;
    goto LABEL_10;
  }

  v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
LABEL_10:

  return v11;
}

- (void)executeHandlerForNotificationWithName:(id)name info:(id)info
{
  nameCopy = name;
  infoCopy = info;
  queue = [(VMDaemon *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041638;
  block[3] = &unk_1000ED478;
  block[4] = self;
  v12 = nameCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = nameCopy;
  dispatch_async(queue, block);
}

- (void)handleVMDeviceUnlockedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100002784(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v10 = "";
    v11 = 2080;
    v12 = "";
    v13 = 2112;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = notificationCopy;
    v6 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is handling %@", buf, 0x2Au);
  }

  queue = [(VMDaemon *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041800;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  dispatch_async(queue, block);
}

@end