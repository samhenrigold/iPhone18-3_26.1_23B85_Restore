@interface FMDAccessoryPlaySoundAction
- (BOOL)shouldCancelAction:(id)action;
- (FMDAccessoryPlaySoundAction)initWithAccessory:(id)accessory accessoryRegistry:(id)registry channels:(id)channels;
- (FMDAccessoryRegistry)accessoryRegistry;
- (NSNumber)inEarDetectionTimeout;
- (NSNumber)timeout;
- (id)commandStatusForInternalAccessoryAudioSafetyStatus:(unint64_t)status;
- (void)_executePlaySoundUsingExtensions;
- (void)_playSoundEnd:(id)end withCode:(int64_t)code;
- (void)_playSoundNow:(id)now;
- (void)_stopDiscoveryForExtAccessory;
- (void)accessoryDidUpdate:(id)update;
- (void)cancelTimer;
- (void)dealloc;
- (void)discardEarlyDiscovery;
- (void)executePlaySound;
- (void)notifyCompletionWithStatus:(id)status;
- (void)runWithCompletion:(id)completion;
- (void)setBluetoothManager:(id)manager;
- (void)stopSoundFromUnexpectedPanning;
- (void)terminate;
- (void)willCancelAction;
@end

@implementation FMDAccessoryPlaySoundAction

- (FMDAccessoryPlaySoundAction)initWithAccessory:(id)accessory accessoryRegistry:(id)registry channels:(id)channels
{
  accessoryCopy = accessory;
  registryCopy = registry;
  channelsCopy = channels;
  v15.receiver = self;
  v15.super_class = FMDAccessoryPlaySoundAction;
  v11 = [(FMDAccessoryPlaySoundAction *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(FMDAccessoryPlaySoundAction *)v11 setAccessory:accessoryCopy];
    [(FMDAccessoryPlaySoundAction *)v12 setAccessoryRegistry:registryCopy];
    [(FMDAccessoryPlaySoundAction *)v12 setChannels:channelsCopy];
    [(FMDAccessoryPlaySoundAction *)v12 setBypassInEarCheck:0];
    [(FMDAccessoryPlaySoundAction *)v12 setForceConnection:1];
    [(FMDAccessoryPlaySoundAction *)v12 setPlayingSound:0];
    [(FMDAccessoryPlaySoundAction *)v12 setTerminated:0];
    v13 = dispatch_queue_create("FMDAccessoryPlaySoundActionQueue", 0);
    [(FMDAccessoryPlaySoundAction *)v12 setSerialQueue:v13];
  }

  return v12;
}

- (void)setBluetoothManager:(id)manager
{
  managerCopy = manager;
  accessory = [(FMDAccessoryPlaySoundAction *)self accessory];
  category = [accessory category];

  if (category != 3)
  {
    objc_storeStrong(&self->_bluetoothManager, manager);
    if (managerCopy)
    {
      earlyDiscovery = [(FMDAccessoryPlaySoundAction *)self earlyDiscovery];

      if (!earlyDiscovery)
      {
        newDiscovery = [managerCopy newDiscovery];
        [(FMDAccessoryPlaySoundAction *)self setEarlyDiscovery:newDiscovery];

        v11 = sub_100002880(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          earlyDiscovery2 = [(FMDAccessoryPlaySoundAction *)self earlyDiscovery];
          v15 = 134218242;
          selfCopy = self;
          v17 = 2112;
          v18 = earlyDiscovery2;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction(0x%lX) - earlyDiscovery %@", &v15, 0x16u);
        }

        earlyDiscovery3 = [(FMDAccessoryPlaySoundAction *)self earlyDiscovery];
        duration = [(FMDAccessoryPlaySoundAction *)self duration];
        [duration doubleValue];
        [earlyDiscovery3 startDiscoveryForDuration:?];
      }
    }
  }
}

- (void)willCancelAction
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) will cancel.", &v4, 0xCu);
  }

  [(FMDAccessoryPlaySoundAction *)self notifyCompletionWithStatus:&off_1002E7A50];
  [(FMDAccessoryPlaySoundAction *)self terminate];
  [(FMDAccessoryPlaySoundAction *)self discardEarlyDiscovery];
}

- (NSNumber)timeout
{
  if (self->_timeout)
  {
    return self->_timeout;
  }

  else
  {
    return &off_1002E7D50;
  }
}

- (NSNumber)inEarDetectionTimeout
{
  if (self->_inEarDetectionTimeout)
  {
    return self->_inEarDetectionTimeout;
  }

  else
  {
    return &off_1002E7D60;
  }
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 beginTransaction:@"FMDAccessoryPlaySoundActionActivity"];

  [(FMDAccessoryPlaySoundAction *)self setCompletion:completionCopy];
  timeout = [(FMDAccessoryPlaySoundAction *)self timeout];
  [timeout doubleValue];
  v8 = v7;

  v9 = [NSDate dateWithTimeIntervalSinceNow:v8];
  [(FMDAccessoryPlaySoundAction *)self setTimeoutDate:v9];

  if (v8 >= 0.0)
  {
    inited = objc_initWeak(&location, self);
    v14 = sub_100002880(inited);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      selfCopy3 = self;
      v33 = 2048;
      v34 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) will timeout after %f", buf, 0x16u);
    }

    v15 = [FMDispatchTimer alloc];
    v16 = &_dispatch_main_q;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10014C940;
    v28[3] = &unk_1002CD288;
    objc_copyWeak(&v29, &location);
    v28[4] = self;
    v17 = [v15 initWithQueue:&_dispatch_main_q timeout:v28 completion:v8];
    [(FMDAccessoryPlaySoundAction *)self setTimeoutTimer:v17];

    timeoutTimer = [(FMDAccessoryPlaySoundAction *)self timeoutTimer];
    [timeoutTimer start];

    bluetoothManager = [(FMDAccessoryPlaySoundAction *)self bluetoothManager];
    newDiscovery = [bluetoothManager newDiscovery];
    [(FMDAccessoryPlaySoundAction *)self setDiscovery:newDiscovery];

    discovery = [(FMDAccessoryPlaySoundAction *)self discovery];
    duration = [(FMDAccessoryPlaySoundAction *)self duration];
    [duration doubleValue];
    [discovery startDiscoveryForDuration:?];

    discovery2 = [(FMDAccessoryPlaySoundAction *)self discovery];
    LODWORD(discovery) = discovery2 == 0;

    if (discovery)
    {
      v25 = sub_100002880(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10022767C();
      }
    }

    v26 = sub_100002880(v24);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      discovery3 = [(FMDAccessoryPlaySoundAction *)self discovery];
      *buf = 134218242;
      selfCopy3 = self;
      v33 = 2112;
      v34 = *&discovery3;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction(0x%lX) - init newDiscovery %@", buf, 0x16u);
    }

    [(FMDAccessoryPlaySoundAction *)self discardEarlyDiscovery];
    [(FMDAccessoryPlaySoundAction *)self executePlaySound];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = sub_100002880(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) the given command expired before starting.", buf, 0xCu);
    }

    v12 = [NSNumber numberWithInteger:qword_100312B18];
    [(FMDAccessoryPlaySoundAction *)self notifyCompletionWithStatus:v12];

    [(FMDAccessoryPlaySoundAction *)self terminate];
  }
}

- (BOOL)shouldCancelAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)executePlaySound
{
  objc_initWeak(&location, self);
  serialQueue = [(FMDAccessoryPlaySoundAction *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014CC10;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_stopDiscoveryForExtAccessory
{
  accessory = [(FMDAccessoryPlaySoundAction *)self accessory];
  if (accessory)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      statusController = [(FMDAccessoryPlaySoundAction *)self statusController];

      if (statusController)
      {
        v4 = +[FMDExtConfigurationRegistry sharedInstance];
        accessoryType = [accessory accessoryType];
        v6 = [v4 configForAccessoryType:accessoryType];

        v7 = [v6 infoForFeature:@"availability"];
        statusController2 = [(FMDAccessoryPlaySoundAction *)self statusController];
        accessoryIdentifier = [accessory accessoryIdentifier];
        stringValue = [accessoryIdentifier stringValue];
        [statusController2 stopDiscoveryForAccessory:stringValue info:v7 withCompletion:&stru_1002CE2F8];
      }
    }
  }
}

- (void)_executePlaySoundUsingExtensions
{
  v3 = sub_10017DBC8(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[NSDate date];
    timeoutDate = [(FMDAccessoryPlaySoundAction *)self timeoutDate];
    [timeoutDate timeIntervalSinceNow];
    *buf = 138412546;
    *&buf[4] = v4;
    *&buf[12] = 2048;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "started at time = %@ with timeout = %f", buf, 0x16u);
  }

  accessory = [(FMDAccessoryPlaySoundAction *)self accessory];
  if (accessory)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      accessoryIdentifier = [accessory accessoryIdentifier];
      stringValue = [accessoryIdentifier stringValue];

      v9 = +[FMDExtConfigurationRegistry sharedInstance];
      accessoryType = [accessory accessoryType];
      v11 = [v9 configForAccessoryType:accessoryType];

      v91 = [v11 flavorForFeature:@"sound"];
      v85 = [v11 flavorForFeature:@"availability"];
      v12 = [v11 flavorForFeature:@"connection"];
      accessoryRegistry = [(FMDAccessoryPlaySoundAction *)self accessoryRegistry];
      v88 = [v11 infoForFeature:@"sound"];
      v86 = [v11 infoForFeature:@"availability"];
      v13 = dispatch_group_create();
      group = v13;
      if (!v12 || !v91)
      {
        v23 = sub_10017DBC8(v13);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1002279E0();
        }

        [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"Unssuported device" withCode:qword_100312B30];
        goto LABEL_74;
      }

      channels = [(FMDAccessoryPlaySoundAction *)self channels];
      v15 = [channels count] == 0;

      if (v15)
      {
        v24 = sub_10017DBC8([(FMDAccessoryPlaySoundAction *)self cancelTimer]);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          name = [accessory name];
          *buf = 134218242;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = name;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "PlaySoundAction (0x%lX) Stopping sound for accessory %@", buf, 0x16u);
        }

        v26 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"sound" flavor:v91];
        if (v26)
        {
          channels2 = [(FMDAccessoryPlaySoundAction *)self channels];
          v115[0] = _NSConcreteStackBlock;
          v115[1] = 3221225472;
          v115[2] = sub_10014ECA8;
          v115[3] = &unk_1002CD4C8;
          v115[4] = self;
          [accessoryRegistry updateAccessory:accessory playbackChannels:channels2 completion:v115];

          v29 = sub_10017DBC8(v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v26;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "daemon stop sound controller = %@", buf, 0xCu);
          }

          rampDownDuration = [(FMDAccessoryPlaySoundAction *)self rampDownDuration];
          [rampDownDuration doubleValue];
          v32 = v31;
          v112[0] = _NSConcreteStackBlock;
          v112[1] = 3221225472;
          v112[2] = sub_10014ED10;
          v112[3] = &unk_1002CE320;
          v113 = accessory;
          selfCopy = self;
          [v26 stopSoundForAccessory:stringValue info:v88 rampDownDuration:v112 withCompletion:v32];
        }

        else
        {
          v33 = sub_10017DBC8(0);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_1002279A4();
          }

          [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"unable to get sound controller" withCode:qword_100312B30];
        }

        goto LABEL_74;
      }

      v108 = 0;
      v109 = &v108;
      v110 = 0x2020000000;
      v111 = [accessory connectionState] != 0;
      if ((v109[3] & 1) == 0 && [(FMDAccessoryPlaySoundAction *)self forceConnection])
      {
        v16 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"connection" flavor:v12];
        if (!v16)
        {
          v34 = sub_10017DBC8(0);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            name2 = [accessory name];
            sub_100227848(name2, buf, v34);
          }

          [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"Not able to get connectionController" withCode:qword_100312B30];
          goto LABEL_73;
        }

        v17 = v16;
        dispatch_group_enter(group);
        v18 = [v11 infoForFeature:@"connection"];
        v105[0] = _NSConcreteStackBlock;
        v105[1] = 3221225472;
        v105[2] = sub_10014ED80;
        v105[3] = &unk_1002CE348;
        v107 = &v108;
        v19 = group;
        v106 = v19;
        [v17 forceConnectToAccessory:stringValue info:v18 withCompletion:v105];
        v84 = v17;

        timeoutDate2 = [(FMDAccessoryPlaySoundAction *)self timeoutDate];
        [timeoutDate2 timeIntervalSinceNow];
        v22 = v21;

        if (v22 < 0.0)
        {
          [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"timeout occured before we can try to connect" withCode:qword_100312B18];

LABEL_72:
          goto LABEL_73;
        }

        v36 = dispatch_time(0, (v22 * 1000000000.0));
        v37 = dispatch_group_wait(v19, v36);
        if (v37)
        {
          v38 = sub_10017DBC8(v37);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            sub_1002277D8();
          }

          [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"timeout occured before we can connect" withCode:qword_100312B18];
          goto LABEL_72;
        }
      }

      if ((v109[3] & 1) == 0)
      {
        [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"Unable to Connect" withCode:qword_100312B18];
LABEL_73:
        _Block_object_dispose(&v108, 8);
LABEL_74:

        goto LABEL_75;
      }

      v84 = [v11 flavorForFeature:@"safetyAlert"];
      v101 = 0;
      v102 = &v101;
      v103 = 0x2020000000;
      v104 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v121 = sub_10000A9F4;
      v122 = sub_100002AC4;
      v123 = 0;
      bypassInEarCheck = [(FMDAccessoryPlaySoundAction *)self bypassInEarCheck];
      if (bypassInEarCheck)
      {
LABEL_36:
        *(v102 + 24) = 1;
        v40 = sub_10017DBC8(bypassInEarCheck);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *v116 = 0;
          v41 = "warning safety alert disabled";
LABEL_38:
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v41, v116, 2u);
          goto LABEL_46;
        }

        goto LABEL_46;
      }

      v42 = +[FMSystemInfo sharedInstance];
      if ([v42 isInternalBuild])
      {
        v43 = [FMPreferencesUtil BOOLForKey:@"DisableInEarCheck" inDomain:kFMDNotBackedUpPrefDomain];

        if (v43)
        {
          goto LABEL_36;
        }
      }

      else
      {
      }

      v44 = [v84 isEqualToString:@"ALWAYS"];
      if (v44)
      {
        *(v102 + 24) = 0;
        v40 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = @"ALWAYS";
        goto LABEL_46;
      }

      if (v84)
      {
        v40 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"safetyAlert" flavor:?];
        if (!v40)
        {
          v78 = sub_10017DBC8(0);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            name3 = [accessory name];
            sub_100227910(name3, v116, v78);
          }

          [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"Not safe to play" withCode:qword_100312B30];
          goto LABEL_71;
        }

        dispatch_group_enter(group);
        v71 = [v11 infoForFeature:@"safetyAlert"];
        v97[0] = _NSConcreteStackBlock;
        v97[1] = 3221225472;
        v97[2] = sub_10014EDF0;
        v97[3] = &unk_1002CE370;
        v99 = &v101;
        v100 = buf;
        v83 = group;
        v98 = v83;
        [v40 safetyAlertForAccessory:stringValue info:v71 withCompletion:v97];

        timeoutDate3 = [(FMDAccessoryPlaySoundAction *)self timeoutDate];
        [timeoutDate3 timeIntervalSinceNow];
        v74 = v73;

        v76 = sub_10017DBC8(v75);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          *v116 = 134217984;
          *v117 = v74;
          _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "safety check timeout = %f", v116, 0xCu);
        }

        if (v74 >= 0.0)
        {
          v80 = dispatch_time(0, (v74 * 1000000000.0));
          v81 = dispatch_group_wait(v83, v80);
          if (!v81)
          {

            goto LABEL_46;
          }

          v82 = sub_10017DBC8(v81);
          if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
          {
            sub_1002278A0();
          }

          [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"timeout occured while doing safety check" withCode:qword_100312B18];
        }

        else
        {
          [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"timeout occured before we can try to check safety status" withCode:qword_100312B18];
        }

        channels3 = v98;
        goto LABEL_57;
      }

      *(v102 + 24) = 1;
      v40 = sub_10017DBC8(v44);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *v116 = 0;
        v41 = "warning safet alert feature not found";
        goto LABEL_38;
      }

LABEL_46:

      if ((v102[3] & 1) == 0)
      {
        v67 = sub_10017DBC8(v45);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v68 = *(v109 + 24);
          v69 = *(v102 + 24);
          v70 = *(*&buf[8] + 40);
          *v116 = 67109634;
          *v117 = v68;
          *&v117[4] = 1024;
          *&v117[6] = v69;
          v118 = 2112;
          v119 = v70;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "returning playing sound connected = %d safe = %d safetyAlertType = %@", v116, 0x18u);
        }

        [(FMDAccessoryPlaySoundAction *)self setSafetyAlertType:*(*&buf[8] + 40)];
        [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"Not safe to play" withCode:qword_100312B28];
        goto LABEL_71;
      }

      v46 = sub_10017DBC8(v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = *(v109 + 24);
        v48 = *(v102 + 24);
        v49 = *(*&buf[8] + 40);
        *v116 = 67109634;
        *v117 = v47;
        *&v117[4] = 1024;
        *&v117[6] = v48;
        v118 = 2112;
        v119 = v49;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "playing sound with connected = %d safe = %d safetyAlertType = %@", v116, 0x18u);
      }

      v40 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"sound" flavor:v91];
      statusController = [(FMDAccessoryPlaySoundAction *)self statusController];
      v51 = statusController == 0;

      if (v51)
      {
        v52 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"availability" flavor:v85 withDelegate:accessoryRegistry];
        [(FMDAccessoryPlaySoundAction *)self setStatusController:v52];
      }

      statusController2 = [(FMDAccessoryPlaySoundAction *)self statusController];
      duration = [(FMDAccessoryPlaySoundAction *)self duration];
      [duration doubleValue];
      [statusController2 startDiscoveryForAccessory:stringValue duration:v86 info:&stru_1002CE390 withCompletion:?];

      if (!v40)
      {
        v77 = sub_10017DBC8(v55);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          sub_100227968();
        }

        [(FMDAccessoryPlaySoundAction *)self _playSoundEnd:@"unable to get sound controller" withCode:qword_100312B30];
        goto LABEL_70;
      }

      channels3 = [(FMDAccessoryPlaySoundAction *)self channels];
      v57 = sub_10017DBC8(channels3);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *v116 = 138412290;
        *v117 = channels3;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "channel Array = %@", v116, 0xCu);
      }

      inited = objc_initWeak(&location, self);
      v59 = sub_10017DBC8(inited);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *v116 = 138412290;
        *v117 = v40;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "daemon play sound controller = %@", v116, 0xCu);
      }

      [(FMDAccessoryPlaySoundAction *)self setPlaySoundRetryCounter:[(FMDAccessoryPlaySoundAction *)self playSoundRetryCounter]+ 1];
      duration2 = [(FMDAccessoryPlaySoundAction *)self duration];
      [duration2 doubleValue];
      v62 = v61;
      rampDownDuration2 = [(FMDAccessoryPlaySoundAction *)self rampDownDuration];
      [rampDownDuration2 doubleValue];
      v65 = v64;
      channels4 = [(FMDAccessoryPlaySoundAction *)self channels];
      v92[0] = _NSConcreteStackBlock;
      v92[1] = 3221225472;
      v92[2] = sub_10014EFB4;
      v92[3] = &unk_1002CE3E0;
      v92[4] = self;
      objc_copyWeak(&v95, &location);
      v93 = accessoryRegistry;
      v94 = accessory;
      [v40 playSoundForAccessory:stringValue info:v88 duration:channels4 rampUpDuration:v92 channels:v62 withCompletion:v65];

      objc_destroyWeak(&v95);
      objc_destroyWeak(&location);
LABEL_57:

LABEL_70:
LABEL_71:
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(&v101, 8);
      goto LABEL_72;
    }
  }

LABEL_75:
}

- (void)_playSoundEnd:(id)end withCode:(int64_t)code
{
  endCopy = end;
  v7 = sub_10017DBC8(endCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    accessory = [(FMDAccessoryPlaySoundAction *)self accessory];
    name = [accessory name];
    v11 = 138412546;
    v12 = name;
    v13 = 2112;
    v14 = endCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "play sound failed for %@ with %@", &v11, 0x16u);
  }

  [(FMDAccessoryPlaySoundAction *)self cancelTimer];
  v10 = [NSNumber numberWithInteger:code];
  [(FMDAccessoryPlaySoundAction *)self notifyCompletionWithStatus:v10];

  [(FMDAccessoryPlaySoundAction *)self terminate];
}

- (void)notifyCompletionWithStatus:(id)status
{
  statusCopy = status;
  v5 = sub_100002880(statusCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    selfCopy = self;
    v27 = 2048;
    integerValue = [statusCopy integerValue];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) did finish %li", buf, 0x16u);
  }

  [(FMDAccessoryPlaySoundAction *)self setTerminated:1];
  v23 = @"status";
  v24 = statusCopy;
  v6 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v7 = [v6 mutableCopy];

  safetyAlertType = [(FMDAccessoryPlaySoundAction *)self safetyAlertType];
  [v7 fm_safeSetObject:safetyAlertType forKey:@"safetyAlertType"];

  timeoutError = [(FMDAccessoryPlaySoundAction *)self timeoutError];
  [v7 fm_safeSetObject:timeoutError forKey:@"timeoutError"];

  future = [(FMDAccessoryPlaySoundAction *)self future];
  [(FMDAccessoryPlaySoundAction *)self setFuture:0];
  integerValue2 = [statusCopy integerValue];
  if (integerValue2 == qword_100312B18)
  {
    v12 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"com.apple.icloud.findmydeviced.FMDAccessoryPlaySoundAction", [statusCopy integerValue], 0);
    [future finishWithError:v12];
  }

  else
  {
    [future finishWithResult:v7];
  }

  integerValue3 = [statusCopy integerValue];
  if (integerValue3 == qword_100312B18 || (v14 = [statusCopy integerValue], v14 == qword_100312B20) || (v15 = objc_msgSend(statusCopy, "integerValue"), v15 == qword_100312B28) || (v16 = objc_msgSend(statusCopy, "integerValue"), v16 == qword_100312B40) || (v17 = objc_msgSend(statusCopy, "integerValue"), v17 == qword_100312B38) || (v18 = objc_msgSend(statusCopy, "integerValue"), v18 == qword_100312B48) || (v19 = objc_msgSend(statusCopy, "integerValue"), v19 == qword_100312B50))
  {
    discovery = [(FMDAccessoryPlaySoundAction *)self discovery];
    [discovery stopDiscovery];
  }

  actionCompletion = [(FMDAccessoryPlaySoundAction *)self actionCompletion];

  if (actionCompletion)
  {
    actionCompletion2 = [(FMDAccessoryPlaySoundAction *)self actionCompletion];
    (actionCompletion2)[2](actionCompletion2, v7);

    [(FMDAccessoryPlaySoundAction *)self setActionCompletion:0];
  }
}

- (void)cancelTimer
{
  inEarTimer = [(FMDAccessoryPlaySoundAction *)self inEarTimer];
  [inEarTimer cancel];

  [(FMDAccessoryPlaySoundAction *)self setInEarTimer:0];
  timeoutTimer = [(FMDAccessoryPlaySoundAction *)self timeoutTimer];
  [timeoutTimer cancel];

  [(FMDAccessoryPlaySoundAction *)self setTimeoutTimer:0];
}

- (void)terminate
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) will terminate.", &v6, 0xCu);
  }

  [(FMDAccessoryPlaySoundAction *)self setPlaySoundRetryCounter:0];
  [(FMDAccessoryPlaySoundAction *)self cancelTimer];
  completion = [(FMDAccessoryPlaySoundAction *)self completion];
  [(FMDAccessoryPlaySoundAction *)self setCompletion:0];
  if (completion)
  {
    completion[2](completion);
  }

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 endTransaction:@"FMDAccessoryPlaySoundActionActivity"];

  [(FMDAccessoryPlaySoundAction *)self discardEarlyDiscovery];
  [(FMDAccessoryPlaySoundAction *)self _stopDiscoveryForExtAccessory];
}

- (void)discardEarlyDiscovery
{
  earlyDiscovery = [(FMDAccessoryPlaySoundAction *)self earlyDiscovery];

  if (earlyDiscovery)
  {
    v5 = sub_100002880(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      earlyDiscovery2 = [(FMDAccessoryPlaySoundAction *)self earlyDiscovery];
      v8 = 134218242;
      selfCopy = self;
      v10 = 2112;
      v11 = earlyDiscovery2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction(0x%lX) - discard earlyDiscovery %@", &v8, 0x16u);
    }

    earlyDiscovery3 = [(FMDAccessoryPlaySoundAction *)self earlyDiscovery];
    [earlyDiscovery3 stopDiscovery];

    [(FMDAccessoryPlaySoundAction *)self setEarlyDiscovery:0];
  }
}

- (void)dealloc
{
  [(FMDAccessoryPlaySoundAction *)self discardEarlyDiscovery];
  [(FMDAccessoryPlaySoundAction *)self _stopDiscoveryForExtAccessory];
  v3.receiver = self;
  v3.super_class = FMDAccessoryPlaySoundAction;
  [(FMDAccessoryPlaySoundAction *)&v3 dealloc];
}

- (void)_playSoundNow:(id)now
{
  nowCopy = now;
  playingSound = [(FMDAccessoryPlaySoundAction *)self playingSound];
  if (playingSound)
  {
    v6 = sub_100002880(playingSound);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) already playing - ignoring.", buf, 0xCu);
    }
  }

  [(FMDAccessoryPlaySoundAction *)self setPlayingSound:1];
  v7 = sub_100002880([(FMDAccessoryPlaySoundAction *)self cancelTimer]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy2 = self;
    v28 = 2112;
    v29 = nowCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) Playing sound for accessory %@", buf, 0x16u);
  }

  channels = [(FMDAccessoryPlaySoundAction *)self channels];
  duration = [(FMDAccessoryPlaySoundAction *)self duration];
  rampUpDuration = [(FMDAccessoryPlaySoundAction *)self rampUpDuration];
  if ([FMPreferencesUtil BOOLForKey:@"CustomRampUpDurationEnabled" inDomain:kFMDPrefDomain])
  {
    v11 = [NSNumber numberWithInteger:[FMPreferencesUtil integerForKey:@"CustomRampUpDuration" inDomain:kFMDPrefDomain]];

    rampUpDuration = v11;
  }

  [(FMDAccessoryPlaySoundAction *)self setPlaySoundRetryCounter:[(FMDAccessoryPlaySoundAction *)self playSoundRetryCounter]+ 1];
  objc_initWeak(buf, self);
  v12 = +[FMDFMIPManager sharedInstance];
  [duration doubleValue];
  v14 = v13;
  [rampUpDuration doubleValue];
  v16 = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100150040;
  v20[3] = &unk_1002CE430;
  objc_copyWeak(&v25, buf);
  v17 = nowCopy;
  v21 = v17;
  selfCopy3 = self;
  v18 = channels;
  v23 = v18;
  v19 = duration;
  v24 = v19;
  [v12 startPlayingSoundForAccessory:v17 duration:v18 rampUpDuration:v20 channels:v14 completion:v16];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

- (id)commandStatusForInternalAccessoryAudioSafetyStatus:(unint64_t)status
{
  if (status <= 7)
  {
    self = [NSNumber numberWithInteger:*off_1002CE450[status], v3];
  }

  return self;
}

- (void)accessoryDidUpdate:(id)update
{
  updateCopy = update;
  accessoryIdentifier = [updateCopy accessoryIdentifier];
  accessory = [(FMDAccessoryPlaySoundAction *)self accessory];
  accessoryIdentifier2 = [accessory accessoryIdentifier];
  v8 = [accessoryIdentifier isEqual:accessoryIdentifier2];

  if (v8)
  {
    v9 = sub_100002880([(FMDAccessoryPlaySoundAction *)self setAccessory:updateCopy]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218498;
      selfCopy = self;
      v13 = 2112;
      v14 = objc_opt_class();
      v15 = 2048;
      v16 = updateCopy;
      v10 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction(%lu) playsound accessoryDidUpdate %@(%lu)", &v11, 0x20u);
    }

    [(FMDAccessoryPlaySoundAction *)self executePlaySound];
    [(FMDAccessoryPlaySoundAction *)self stopSoundFromUnexpectedPanning];
  }
}

- (void)stopSoundFromUnexpectedPanning
{
  if ([(FMDAccessoryPlaySoundAction *)self terminated]|| [(FMDAccessoryPlaySoundAction *)self playingSound])
  {
    accessory = [(FMDAccessoryPlaySoundAction *)self accessory];
    if (objc_opt_respondsToSelector())
    {
      accessory2 = [(FMDAccessoryPlaySoundAction *)self accessory];
      v4 = [accessory2 conformsToProtocol:&OBJC_PROTOCOL___FMDAudioAccessory];

      if (v4)
      {
        accessory3 = [(FMDAccessoryPlaySoundAction *)self accessory];
        shouldStopSoundNow = [accessory3 shouldStopSoundNow];
        if (shouldStopSoundNow)
        {
          v7 = sub_100002880(shouldStopSoundNow);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Stop sound from panning", buf, 2u);
          }

          [accessory3 updatePlaybackChannels:&__NSArray0__struct];
          v8 = +[FMDFMIPManager sharedInstance];
          v10[0] = _NSConcreteStackBlock;
          v10[1] = 3221225472;
          v10[2] = sub_100150C00;
          v10[3] = &unk_1002CD868;
          v10[4] = self;
          [v8 stopPlayingSoundForAccessory:accessory3 rampDownDuration:v10 completion:1.0];
        }
      }
    }

    else
    {
    }
  }
}

- (FMDAccessoryRegistry)accessoryRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryRegistry);

  return WeakRetained;
}

@end