@interface MSDMailProcessor
+ (id)sharedInstance;
- (BOOL)ack:(BOOL)ack;
- (BOOL)isAllowedRequest:(id)request relayNeeded:(BOOL)needed;
- (BOOL)processRequest:(id)request;
- (BOOL)updateManifestInfo:(id)info error:(id *)error;
- (MSDMailProcessor)init;
- (id)pingWithType:(unint64_t)type;
- (int64_t)pingIntervalToUse;
- (unint64_t)convertPingType:(unint64_t)type;
- (void)pingAndProcess:(unint64_t)process waitForCompletion:(BOOL)completion;
- (void)sendImmediateDeviceInfoPing;
- (void)setPingInterval:(unint64_t)interval;
- (void)setWaitingForCommand:(BOOL)command;
- (void)start;
- (void)startPeriodicPing;
@end

@implementation MSDMailProcessor

+ (id)sharedInstance
{
  if (qword_1001A5828 != -1)
  {
    sub_1000D6884();
  }

  v3 = qword_1001A5820;

  return v3;
}

- (MSDMailProcessor)init
{
  v3 = sub_100063B64(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MSDMailProcessor init", buf, 2u);
  }

  v9.receiver = self;
  v9.super_class = MSDMailProcessor;
  v4 = [(MSDMailProcessor *)&v9 init];
  v5 = v4;
  if (v4)
  {
    [(MSDMailProcessor *)v4 setDemodReady:0];
    v6 = +[MSDTargetDevice sharedInstance];
    [(MSDMailProcessor *)v5 setDevice:v6];

    v7 = v5;
  }

  return v5;
}

- (void)start
{
  v3 = sub_100063B64(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MSDMailProcessor start", v10, 2u);
  }

  device = [(MSDMailProcessor *)self device];
  hubHostName = [device hubHostName];
  if (hubHostName)
  {
    v6 = hubHostName;
    device2 = [(MSDMailProcessor *)self device];
    hubPort = [device2 hubPort];

    if (hubPort)
    {
      v9 = +[MSDPushNotificationHandler sharedInstance];
      [v9 enablePushNotifications];

      [(MSDMailProcessor *)self setPingInterval:30];
      [(MSDMailProcessor *)self pingAndProcess:1 waitForCompletion:0];
      [(MSDMailProcessor *)self startPeriodicPing];
    }
  }

  else
  {
  }
}

- (void)sendImmediateDeviceInfoPing
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[MSDMailProcessor sendImmediateDeviceInfoPing]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s - Sending immediate device info ping.", &v4, 0xCu);
  }

  [(MSDMailProcessor *)self pingAndProcess:8 waitForCompletion:0];
}

- (void)startPeriodicPing
{
  v3 = sub_100063B64(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    device = [(MSDMailProcessor *)self device];
    hubHostName = [device hubHostName];
    device2 = [(MSDMailProcessor *)self device];
    hubPort = [device2 hubPort];
    *buf = 136315650;
    v11 = "[MSDMailProcessor startPeriodicPing]";
    v12 = 2114;
    v13 = hubHostName;
    v14 = 2114;
    v15 = hubPort;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: serverAddress is %{public}@, serverPort is %{public}@.", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064A7C;
  block[3] = &unk_100169C78;
  objc_copyWeak(&v9, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)setPingInterval:(unint64_t)interval
{
  pingInterval = self->_pingInterval;
  self->_pingInterval = interval;
  v5 = sub_100063B64(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_pingInterval;
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ping interval changed to %tu", &v7, 0xCu);
  }

  if (pingInterval)
  {
    [(MSDMailProcessor *)self startPeriodicPing];
  }
}

- (void)setWaitingForCommand:(BOOL)command
{
  if (self->_waitingForCommand != command)
  {
    commandCopy = command;
    self->_waitingForCommand = command;
    pingIntervalToUse = [(MSDMailProcessor *)self pingIntervalToUse];
    pingInterval = [(MSDMailProcessor *)self pingInterval];
    if (commandCopy)
    {
      if (pingInterval <= pingIntervalToUse)
      {
        return;
      }
    }

    else if (pingInterval == pingIntervalToUse)
    {
      return;
    }

    [(MSDMailProcessor *)self setPingInterval:pingIntervalToUse];
  }
}

- (void)pingAndProcess:(unint64_t)process waitForCompletion:(BOOL)completion
{
  completionCopy = completion;
  processCopy = process;
  if (([(MSDMailProcessor *)self queuedPingType]& process) == 0)
  {
    if ((processCopy & 8) != 0)
    {
      processCopy = 1;
    }

    [(MSDMailProcessor *)self setQueuedPingType:[(MSDMailProcessor *)self queuedPingType]| processCopy];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100064DDC;
    v11[3] = &unk_10016B318;
    v11[4] = self;
    v11[5] = processCopy;
    v7 = objc_retainBlock(v11);
    v8 = +[MSDWorkQueueSet sharedInstance];
    pollingQueue = [v8 pollingQueue];
    v10 = pollingQueue;
    if (completionCopy)
    {
      dispatch_sync(pollingQueue, v7);
    }

    else
    {
      dispatch_async(pollingQueue, v7);
    }
  }
}

- (id)pingWithType:(unint64_t)type
{
  v5 = sub_100063B64(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D6898();
  }

  if (type - 1 <= 1)
  {
    if ([(MSDMailProcessor *)self fullKeysSent])
    {
      [(MSDMailProcessor *)self reducedKeyList];
    }

    else
    {
      [(MSDMailProcessor *)self fullKeyList];
    }
    v10 = ;
    device = [(MSDMailProcessor *)self device];
    getS3ServerFailureEventForPing = [device deviceInformationForPing:v10];

    if (!getS3ServerFailureEventForPing)
    {
      sub_1000D6D4C(self);
      v9 = 0;
      v52 = 0;
      v29 = 0;
      v27 = 0;
      goto LABEL_50;
    }

    v51 = [getS3ServerFailureEventForPing objectForKey:@"InternalStatus"];
    if (v51 && [v51 intValue] != 199 && !-[MSDMailProcessor demodReady](self, "demodReady"))
    {
      [(MSDMailProcessor *)self setDemodReady:1];
      [(MSDMailProcessor *)self setPingInterval:[(MSDMailProcessor *)self pingIntervalToUse]];
    }

    device2 = [(MSDMailProcessor *)self device];
    hubSuppliedSettings = [device2 hubSuppliedSettings];
    v9 = [hubSuppliedSettings objectForKey:@"PingFrequency"];

    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v9 unsignedIntegerValue])
    {
      integerValue = [v9 integerValue];
    }

    else
    {
      integerValue = [(MSDMailProcessor *)self pingInterval];
    }

    v16 = [NSNumber numberWithInteger:integerValue];
    [getS3ServerFailureEventForPing setObject:v16 forKey:@"MSDPingFrequency"];

    typeCopy = type;
    goto LABEL_24;
  }

  if (type == 32)
  {
    device3 = [(MSDMailProcessor *)self device];
    getS3ServerFailureEventForPing = [device3 getS3ServerFailureEventForPing];

    if (getS3ServerFailureEventForPing)
    {
      v9 = 0;
      v50 = 0;
      v10 = 0;
      typeCopy = 32;
      goto LABEL_24;
    }

    sub_1000D6900(v18);
LABEL_63:
    v9 = 0;
    v52 = 0;
    v29 = 0;
    v27 = 0;
    v10 = 0;
    goto LABEL_50;
  }

  if (type == 16)
  {
    device4 = [(MSDMailProcessor *)self device];
    getS3ServerFailureEventForPing = [device4 getCachingHubFailureEventForPing];

    if (getS3ServerFailureEventForPing)
    {
      v9 = 0;
      v50 = 0;
      v10 = 0;
      typeCopy = 16;
LABEL_24:
      v19 = [NSNumber numberWithUnsignedInteger:[(MSDMailProcessor *)self convertPingType:typeCopy, v50]];
      [getS3ServerFailureEventForPing setObject:v19 forKey:@"MSDDemoPingType"];

      goto LABEL_25;
    }

    sub_1000D699C(v8);
    goto LABEL_63;
  }

  v9 = 0;
  v52 = 0;
  getS3ServerFailureEventForPing = 0;
  v10 = 0;
LABEL_25:
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    v21 = sub_100063A54(has_internal_content);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D6A38();
    }
  }

  else
  {
    v22 = [getS3ServerFailureEventForPing objectForKey:@"MSDExistingAccounts"];
    v21 = [v22 objectForKey:@"iCloudRecoveryKey"];

    v23 = [getS3ServerFailureEventForPing objectForKeyedSubscript:@"MSDExistingAccounts"];
    [v23 setObject:@"<redacted>" forKeyedSubscript:@"iCloudRecoveryKey"];

    v25 = sub_100063A54(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D6A38();
    }

    v26 = [getS3ServerFailureEventForPing objectForKeyedSubscript:@"MSDExistingAccounts"];
    [v26 setObject:v21 forKeyedSubscript:@"iCloudRecoveryKey"];
  }

  v27 = objc_alloc_init(MSDPingRequest);
  [(MSDPingRequest *)v27 setRequestInfo:getS3ServerFailureEventForPing];
  v28 = +[MSDServerRequestHandler sharedInstance];
  v29 = [v28 handleRequestSync:v27];

  error = [v29 error];

  if (error)
  {
    sub_1000D6AA0(v29);
LABEL_50:
    v46 = 0;
    v44 = 0;
    data = 0;
LABEL_51:
    v47 = 0;
    goto LABEL_53;
  }

  v31 = v10;
  data = [v29 data];
  statusCode = [v29 statusCode];
  intValue = [statusCode intValue];

  if (!data)
  {
    v48 = sub_100063B64(v35);
    v10 = v31;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      sub_1000D6CCC();
    }

    goto LABEL_50;
  }

  if (type == 1 && (intValue & 0xFFFFFFFB) == 0xC8)
  {
    [(MSDMailProcessor *)self setFullKeysSent:1];
    if ([v52 intValue] == 20 || objc_msgSend(v52, "intValue") == 100)
    {
      v36 = [getS3ServerFailureEventForPing objectForKey:{@"MSDExistingAccounts", v52}];
      v37 = [v36 objectForKey:@"iCloudCDPState"];

      integerValue2 = [v37 integerValue];
      if (integerValue2 == [&off_10017B0F8 integerValue])
      {
        device5 = [(MSDMailProcessor *)self device];
        iCloudAccountRecoveryKey = [device5 iCloudAccountRecoveryKey];

        if (iCloudAccountRecoveryKey)
        {
          v42 = sub_100063A54(v41);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "iCloud account recovery key successfully uploaded. Removing local copy...", buf, 2u);
          }

          device6 = [(MSDMailProcessor *)self device];
          [device6 saveiCloudAccountRecoveryKey:0];
        }
      }
    }
  }

  if ([data length])
  {
    v53 = 0;
    v44 = [NSJSONSerialization JSONObjectWithData:data options:0 error:&v53];
    v45 = v53;
    v46 = v45;
    v10 = v31;
    if (v44)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = v44;
        v47 = v44;
        goto LABEL_53;
      }

      sub_1000D6B48(v44);
    }

    else
    {
      sub_1000D6BEC(v45);
    }

    goto LABEL_51;
  }

  v46 = 0;
  v44 = 0;
  v47 = 0;
  v10 = v31;
LABEL_53:

  return v47;
}

- (BOOL)ack:(BOOL)ack
{
  ackCopy = ack;
  v4 = objc_alloc_init(MSDAckRequest);
  [(MSDAckRequest *)v4 setStatus:ackCopy];
  v5 = +[MSDServerRequestHandler sharedInstance];
  v6 = [v5 handleRequestSync:v4];

  error = [v6 error];
  LOBYTE(v5) = error == 0;

  return v5;
}

- (BOOL)processRequest:(id)request
{
  requestCopy = request;
  v5 = +[MSDPairedWatchProxy sharedInstance];
  if ([requestCopy count])
  {
    v6 = [requestCopy objectForKey:@"Command"];
    v7 = [requestCopy objectForKey:@"IgnorePairedDevice"];
    bOOLValue = [v7 BOOLValue];

    device = [(MSDMailProcessor *)self device];
    if ([device isBetterTogetherDemo])
    {
      v10 = [v5 paired] & (bOOLValue ^ 1);
    }

    else
    {
      v10 = 0;
    }

    v15 = [(MSDMailProcessor *)self isAllowedRequest:requestCopy relayNeeded:v10];
    v16 = [(MSDMailProcessor *)self ack:v15];
    if (!v15)
    {
      hubSuppliedSettings = sub_100063B64(v16);
      if (os_log_type_enabled(hubSuppliedSettings, OS_LOG_TYPE_ERROR))
      {
        sub_1000D6E04();
      }

      v135 = 0;
      v34 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      goto LABEL_169;
    }

    v17 = [requestCopy objectForKey:@"Duration"];
    v13 = v17;
    if (v17 && [v17 integerValue] >= 1)
    {
      v18 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", [v13 integerValue]);
      [v18 timeIntervalSinceReferenceDate];
      v132 = v19;
    }

    else
    {
      v132 = 0;
    }

    v130 = v10;
    v12 = [requestCopy objectForKey:@"ContentType"];
    v136 = v13;
    if ([v12 containsObject:@"Demo"])
    {
      [requestCopy objectForKey:@"ManifestInfo"];
      v134 = v142 = 0;
      v20 = [MSDMailProcessor updateManifestInfo:"updateManifestInfo:error:" error:?];
      v21 = 0;
      v11 = v21;
      if ((v20 & 1) == 0)
      {
        hubSuppliedSettings = sub_100063A54(v21);
        if (os_log_type_enabled(hubSuppliedSettings, OS_LOG_TYPE_ERROR))
        {
          sub_1000D6E74(v11);
        }

        v135 = 0;
        goto LABEL_168;
      }

      LODWORD(v22) = 1;
    }

    else
    {
      v134 = 0;
      v11 = 0;
      LODWORD(v22) = 0;
    }

    if ([v12 containsObject:@"Pricing"])
    {
      LODWORD(v22) = v22 | 2;
    }

    if ([v12 containsObject:@"Account"])
    {
      LODWORD(v22) = v22 | 4;
    }

    if ([v12 containsObject:@"Asset"])
    {
      LODWORD(v22) = v22 | 0x10;
    }

    if ([v12 containsObject:@"ContinuityLinking"])
    {
      LODWORD(v22) = v22 | 0x40;
    }

    if ([v6 isEqualToString:@"RevertSnapshot"])
    {
      v22 = v22 | 8;
    }

    else
    {
      v22 = v22;
    }

    v23 = [requestCopy objectForKey:@"BackgroundDownloadOnly"];
    bOOLValue2 = [v23 BOOLValue];

    if ([v6 isEqualToString:@"UpdateContent"] && !bOOLValue2 || objc_msgSend(v6, "isEqualToString:", @"UpdateOS"))
    {
      v25 = v5;
      +[MSDDemoUpdateTimeKeeper sharedInstance];
      v27 = v26 = v11;
      v28 = [v27 setCompletionTime:v132 reserveTimeForCleanup:1];

      v11 = 0;
      if (v28)
      {
        v135 = 0;
        v11 = v28;
        v13 = v136;
        v34 = v134;
        v5 = v25;
        goto LABEL_170;
      }

      v5 = v25;
    }

    if ([v6 isEqualToString:@"ChangePingFrequency"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"ChangeSettings") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"HoldPowerAssertion") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"LiftPowerAssertion"))
    {
      v135 = 0;
LABEL_36:
      v29 = [v6 isEqualToString:@"UpdateContent"];
      if (v29)
      {
        if ((v22 & 4) != 0)
        {
          v42 = sub_100063A54(v29);
          if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
LABEL_55:

            device2 = [(MSDMailProcessor *)self device];
            [device2 switchModeImmediately:2];

            v14 = 1;
            goto LABEL_56;
          }

          *buf = 0;
          v43 = "Account update.";
        }

        else
        {
          if ((v22 & 0x10) == 0)
          {
            if ((v22 & 0x40) == 0)
            {
              v128 = v5;
              v129 = v11;
              v30 = +[NSFileManager defaultManager];
              device3 = [(MSDMailProcessor *)self device];
              manifestPath = [device3 manifestPath];
              [v30 removeItemAtPath:manifestPath error:0];

              if (bOOLValue2)
              {
                v33 = +[MSDBackgroundDownload sharedInstance];
                [v33 kickOffBackgroundDownload];

LABEL_42:
                v14 = 1;
                v5 = v128;
                v13 = v136;
LABEL_43:
                v34 = v134;
LABEL_114:
                v11 = v129;
                goto LABEL_76;
              }

              v59 = +[MSDUIHelper sharedInstance];
              [v59 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:1];

              device4 = [(MSDMailProcessor *)self device];
              [device4 setWaitingForCommand:0];

              [(MSDMailProcessor *)self setWaitingForCommand:0];
              v5 = v128;
              if ((v22 & 2) != 0)
              {
                device5 = [(MSDMailProcessor *)self device];
                mode = [device5 mode];

                if (mode == 5)
                {
                  device6 = [(MSDMailProcessor *)self device];
                  [device6 switchModeImmediately:2];
                }
              }

              v64 = +[MSDPlatform sharedInstance];
              if ([v64 macOS])
              {

                v34 = v134;
                if (v22 != 2)
                {
                  goto LABEL_111;
                }

LABEL_102:
                v71 = +[MSDPricingUpdateController sharedInstance];
                v14 = 1;
                [v71 setSwitchModeAfterCompletion:1];

                v72 = +[MSDProgressUpdater sharedInstance];
                [v72 updateStage:17];

                v13 = v136;
                goto LABEL_114;
              }

              v70 = +[MSDPlatform sharedInstance];
              v34 = v134;
              if ([v70 iOS])
              {

                if (v22 == 2)
                {
                  goto LABEL_102;
                }
              }

              else
              {
              }

LABEL_111:
              v13 = v136;
              if (v22)
              {
                v81 = +[MSDWorkQueueSet sharedInstance];
                demoUpdateQueue = [v81 demoUpdateQueue];
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_100066DB8;
                block[3] = &unk_10016B340;
                v141 = v130;
                v139 = v128;
                v140 = v132;
                dispatch_async(demoUpdateQueue, block);
              }

              v14 = 1;
              goto LABEL_114;
            }

            v57 = sub_100063A54(v29);
            v13 = v136;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Continuity linking.", buf, 2u);
            }

            device7 = [(MSDMailProcessor *)self device];
            [device7 switchModeImmediately:2];
            goto LABEL_74;
          }

          v42 = sub_100063A54(v29);
          if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_55;
          }

          *buf = 0;
          v43 = "Asset update.";
        }

        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v43, buf, 2u);
        goto LABEL_55;
      }

      if ([v6 isEqualToString:@"UpdateOS"])
      {
        +[MSDUIHelper sharedInstance];
        v36 = v35 = v11;
        v14 = 1;
        [v36 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:1];

        device8 = [(MSDMailProcessor *)self device];
        [device8 saveOSUpdateRequest:requestCopy];

        device9 = [(MSDMailProcessor *)self device];
        [device9 setWaitingForCommand:0];

        [(MSDMailProcessor *)self setWaitingForCommand:0];
        device10 = [(MSDMailProcessor *)self device];
        [device10 switchModeImmediately:7];

        v40 = +[MSDWorkQueueSet sharedInstance];
        demoUpdateQueue2 = [v40 demoUpdateQueue];
        dispatch_async(demoUpdateQueue2, &stru_10016B360);

        v11 = v35;
LABEL_56:
        v13 = v136;
LABEL_75:
        v34 = v134;
LABEL_76:

        goto LABEL_77;
      }

      v13 = v136;
      if ([v6 isEqualToString:@"Restart"])
      {
        if (!v130 || [v5 reboot])
        {
          device7 = [(MSDMailProcessor *)self device];
          [device7 reboot];
LABEL_74:

          v14 = 1;
          goto LABEL_75;
        }

        v34 = v134;
LABEL_170:
        v14 = 0;
        goto LABEL_76;
      }

      if ([v6 isEqualToString:@"TurnSnapshotON"])
      {
        v46 = v11;
        device11 = [(MSDMailProcessor *)self device];
        [device11 setWaitingForCommand:0];

        [(MSDMailProcessor *)self setWaitingForCommand:0];
        if (v130 && ![v5 lockSnapshot])
        {
          goto LABEL_173;
        }

        device12 = [(MSDMailProcessor *)self device];
        lockSnapshot = [device12 lockSnapshot];
LABEL_92:
        v65 = lockSnapshot;

        if (v65)
        {
LABEL_93:
          v14 = 1;
          v34 = v134;
          v11 = v46;
          goto LABEL_76;
        }

LABEL_173:
        v34 = v134;
        v11 = v46;
        goto LABEL_170;
      }

      if ([v6 isEqualToString:@"TurnSnapshotOFF"])
      {
        v46 = v11;
        if (v130 && ![v5 unlockSnapshot])
        {
          goto LABEL_173;
        }

        device12 = [(MSDMailProcessor *)self device];
        lockSnapshot = [device12 unlockSnapshot];
        goto LABEL_92;
      }

      if ([v6 isEqualToString:@"RevertSnapshot"])
      {
        v46 = v11;
        if (v130 && ![v5 revertSnapshot])
        {
          goto LABEL_173;
        }

        device12 = [(MSDMailProcessor *)self device];
        lockSnapshot = [device12 revertSnapshot];
        goto LABEL_92;
      }

      if ([v6 isEqualToString:@"Virgin"])
      {
        v129 = v11;
        v73 = [requestCopy objectForKey:@"ObliterateDevice"];
        bOOLValue3 = [v73 BOOLValue];

        v75 = [requestCopy objectForKey:@"PreserveESim"];
        bOOLValue4 = [v75 BOOLValue];

        v78 = sub_100063A54(v77);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v144 = bOOLValue3;
          *&v144[4] = 1024;
          *&v144[6] = bOOLValue4;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Unenrolling device with obliteration: %{BOOL}d and preserve eSim: %{BOOL}d", buf, 0xEu);
        }

        if (v130)
        {
          [v5 unenrollWithObliteration:bOOLValue3 callUnregister:1];
        }

        device13 = [(MSDMailProcessor *)self device];
        v80 = [device13 unenrollWithObliteration:bOOLValue3 preserveESim:bOOLValue4 callUnregister:0 preserveDDLFlag:0];

        if (v80)
        {
          v14 = 1;
          goto LABEL_43;
        }

        v34 = v134;
        v11 = v129;
        goto LABEL_170;
      }

      if ([v6 isEqualToString:@"ChangeSettings"])
      {
        v129 = v11;
        device14 = [(MSDMailProcessor *)self device];
        hubSuppliedSettings = [device14 hubSuppliedSettings];

        v85 = [requestCopy objectForKey:@"Settings"];
        device15 = [(MSDMailProcessor *)self device];
        [device15 saveHubSuppliedSettings:v85];

        v133 = [hubSuppliedSettings objectForKey:@"StoreHours"];
        v87 = [v85 objectForKey:@"StoreHours"];
        v131 = v87;
        if (v87)
        {
          v88 = v87;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v88 count])
            {
              v89 = [v133 isEqualToArray:v88];
              if ((v89 & 1) == 0)
              {
                v90 = sub_100063A54(v89);
                if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  *v144 = "[MSDMailProcessor processRequest:]";
                  _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "%s - ChangeSettings has new 'StoreHours' set.", buf, 0xCu);
                }

                device16 = [(MSDMailProcessor *)self device];
                [device16 refreshStoreHoursManagerUsingSettingsAndTime:0];

                device17 = [(MSDMailProcessor *)self device];
                isContentFrozen = [device17 isContentFrozen];

                if (isContentFrozen)
                {
                  device18 = [(MSDMailProcessor *)self device];
                  [device18 setupSnapshotRevertTimer];
                }
              }
            }
          }
        }

        v95 = [v85 objectForKey:@"PingFrequency"];
        v127 = v95;
        if (v95)
        {
          v96 = v95;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v96 unsignedIntegerValue])
            {
              unsignedIntegerValue = [v96 unsignedIntegerValue];
              pingInterval = [(MSDMailProcessor *)self pingInterval];
              if (unsignedIntegerValue != pingInterval)
              {
                v99 = sub_100063A54(pingInterval);
                if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  *v144 = "[MSDMailProcessor processRequest:]";
                  _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "%s - ChangeSettings has new 'PingFrequency' set.", buf, 0xCu);
                }

                [(MSDMailProcessor *)self setPingInterval:[(MSDMailProcessor *)self pingIntervalToUse]];
              }
            }
          }
        }

        v128 = v5;
        v100 = [v85 objectForKey:@"DeviceOptions"];
        if (!v100 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (-[MSDMailProcessor device](self, "device"), v101 = objc_claimAutoreleasedReturnValue(), v102 = [v101 updateDeviceOptions:v100 skipImutableKeys:1], v101, v102))
        {
          v126 = hubSuppliedSettings;
          v103 = [hubSuppliedSettings objectForKey:@"FeatureFlags"];
          v104 = [v85 objectForKey:@"FeatureFlags"];
          if (v104)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v105 = [v103 isEqualToDictionary:v104];
              if ((v105 & 1) == 0)
              {
                v106 = sub_100063A54(v105);
                if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  *v144 = "[MSDMailProcessor processRequest:]";
                  _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "%s - ChangeSettings has new 'FeatureFlags' set.", buf, 0xCu);
                }

                device19 = [(MSDMailProcessor *)self device];
                [device19 processNewFeatureFlags:v104 oldFeatureFlags:v103];
              }
            }
          }

          goto LABEL_42;
        }

        goto LABEL_176;
      }

      if ([v6 isEqualToString:@"StopBackgroundDownload"])
      {
        device7 = +[MSDBackgroundDownload sharedInstance];
        [device7 quitBackgroundDownload];
        goto LABEL_74;
      }

      if ([v6 isEqualToString:@"DemoDeviceLock"])
      {
        device20 = [(MSDMailProcessor *)self device];
        if ([device20 isDDLDevice])
        {
          [(MSDMailProcessor *)self device];
          v110 = v109 = v11;
          isContentFrozen2 = [v110 isContentFrozen];

          v11 = v109;
          if (isContentFrozen2)
          {
            v113 = +[MSDPlatform sharedInstance];
            watchOS = [v113 watchOS];

            device21 = [(MSDMailProcessor *)self device];
            v14 = 1;
            LOBYTE(watchOS) = [device21 unenrollWithObliteration:watchOS preserveESim:1 callUnregister:0 preserveDDLFlag:1];

            if (watchOS)
            {
              v34 = v134;
              v11 = v109;
              goto LABEL_76;
            }

            v125 = sub_100063A54(v116);
            if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
            {
              sub_1000D7034();
            }

            v34 = v134;
            v11 = v109;
            hubSuppliedSettings = v125;
            goto LABEL_169;
          }
        }

        else
        {
        }

        v122 = sub_100063A54(v112);
        v34 = v134;
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          sub_1000D6FF8();
        }

        v14 = 1;
        goto LABEL_76;
      }

      v117 = [v6 isEqualToString:@"ChangeOSPreferences"];
      if (v117)
      {
        v46 = v11;
        v118 = sub_100063A54(v117);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "OS Preferences Update.", buf, 2u);
        }

        device22 = [(MSDMailProcessor *)self device];
        isContentFrozen3 = [device22 isContentFrozen];

        if (isContentFrozen3)
        {
          device23 = [(MSDMailProcessor *)self device];
          [device23 switchModeImmediately:2];
        }

        else
        {
          device23 = +[MSDWorkQueueSet sharedInstance];
          demoUpdateQueue3 = [device23 demoUpdateQueue];
          v137[0] = _NSConcreteStackBlock;
          v137[1] = 3221225472;
          v137[2] = sub_100066EAC;
          v137[3] = &unk_100169B70;
          v137[4] = self;
          dispatch_async(demoUpdateQueue3, v137);
        }

        goto LABEL_93;
      }

      v123 = sub_100063B64(v117);
      if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        sub_1000D6FBC();
      }

      hubSuppliedSettings = [(MSDMailProcessor *)self device];
      [hubSuppliedSettings deleteOperationRequest];
LABEL_168:
      v34 = v134;
LABEL_169:

      goto LABEL_170;
    }

    v129 = v11;
    if (!(bOOLValue2 & 1 | (([v6 isEqualToString:@"UpdateContent"] & 1) == 0)))
    {
      v50 = [requestCopy objectForKey:@"OnlyInstallCriticalComponents"];

      if (v50)
      {
        v51 = [requestCopy objectForKey:@"OnlyInstallCriticalComponents"];
        bOOLValue5 = [v51 BOOLValue];
        device24 = [(MSDMailProcessor *)self device];
        [device24 setCriticalUpdatePrioritized:bOOLValue5];
      }
    }

    if (([v6 isEqualToString:@"UpdateContent"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"ChangeOSPreferences") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"UpdateOS"))
    {
      v54 = [requestCopy objectForKey:@"OSPreferences"];
      if (v54)
      {
        v55 = v54;
        device25 = [(MSDMailProcessor *)self device];
        v135 = v55;
        [device25 stageNewOSPreferences:v55];

        if ([v6 isEqualToString:@"ChangeOSPreferences"])
        {
          v22 = v22 | 0x20;
        }

        else
        {
          v22 = v22;
        }

        goto LABEL_98;
      }

      v66 = sub_100063A54(0);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        sub_1000D6F10();
      }
    }

    v135 = 0;
LABEL_98:
    device26 = [(MSDMailProcessor *)self device];
    v68 = [device26 saveOperationRequest:v6 requestFlag:v22 completeBy:v132];

    if ((v68 & 1) == 0)
    {
      hubSuppliedSettings = sub_100063B64(v69);
      if (os_log_type_enabled(hubSuppliedSettings, OS_LOG_TYPE_ERROR))
      {
        sub_1000D6F80();
      }

LABEL_176:
      v13 = v136;
      v34 = v134;
      v11 = v129;
      goto LABEL_169;
    }

    v11 = v129;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 1;
LABEL_77:

  return v14;
}

- (BOOL)isAllowedRequest:(id)request relayNeeded:(BOOL)needed
{
  neededCopy = needed;
  requestCopy = request;
  v7 = [requestCopy objectForKey:@"Command"];
  v8 = +[MSDPairedWatchProxy sharedInstance];
  if (![v7 isEqualToString:@"UpdateContent"])
  {
    if ([v7 isEqualToString:@"StopBackgroundDownload"])
    {
      device = [(MSDMailProcessor *)self device];
      canStopBackgroundDownload = [device canStopBackgroundDownload];
      goto LABEL_11;
    }

    if ([v7 isEqualToString:@"UpdateOS"])
    {
      device = [(MSDMailProcessor *)self device];
      canStopBackgroundDownload = [device canStartOSUpdate];
      goto LABEL_11;
    }

    if ([v7 isEqualToString:@"TurnSnapshotON"])
    {
      device2 = [(MSDMailProcessor *)self device];
      LOBYTE(self) = [device2 canLockSnapshot];

      if (!neededCopy)
      {
        goto LABEL_13;
      }

      canLockSnapshot = [v8 canLockSnapshot];
    }

    else if ([v7 isEqualToString:@"TurnSnapshotOFF"])
    {
      device3 = [(MSDMailProcessor *)self device];
      LOBYTE(self) = [device3 canUnlockSnapshot];

      if (!neededCopy)
      {
        goto LABEL_13;
      }

      canLockSnapshot = [v8 canUnlockSnapshot];
    }

    else
    {
      if (![v7 isEqualToString:@"RevertSnapshot"])
      {
        if (![v7 isEqualToString:@"Virgin"])
        {
          if ([v7 isEqualToString:@"Restart"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"ChangeSettings"))
          {
            LOBYTE(self) = 1;
            goto LABEL_13;
          }

          if (([v7 isEqualToString:@"Shutdown"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"HoldPowerAssertion") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"LiftPowerAssertion") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"MigrateToNewHub") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"ChangePingFrequency") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"ConfigScreenSaver") & 1) == 0)
          {
            if ([v7 isEqualToString:@"DemoDeviceLock"])
            {
              device = [(MSDMailProcessor *)self device];
              if ([device isDDLDevice])
              {
                device4 = [(MSDMailProcessor *)self device];
                LOBYTE(self) = [device4 isContentFrozen];
              }

              else
              {
                LOBYTE(self) = 0;
              }

              goto LABEL_12;
            }

            if ([v7 isEqualToString:@"ChangeOSPreferences"])
            {
              v26 = [requestCopy objectForKey:@"OSPreferences"];

              if (v26)
              {
                device = [(MSDMailProcessor *)self device];
                canStopBackgroundDownload = [device canStartContentUpdate];
                goto LABEL_11;
              }

              v28 = sub_100063A54(v27);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                sub_1000D70E8();
              }
            }
          }

          LOBYTE(self) = 0;
          goto LABEL_13;
        }

        v23 = [requestCopy objectForKey:@"ObliterateDevice"];
        bOOLValue = [v23 BOOLValue];

        device = [(MSDMailProcessor *)self device];
        canStopBackgroundDownload = [device canUnenrollWithObliteration:bOOLValue consultDeviceOptions:0];
LABEL_11:
        LOBYTE(self) = canStopBackgroundDownload;
LABEL_12:

        goto LABEL_13;
      }

      device5 = [(MSDMailProcessor *)self device];
      LOBYTE(self) = [device5 canRevertSnapshot];

      if (!neededCopy)
      {
        goto LABEL_13;
      }

      canLockSnapshot = [v8 canRevertSnapshot];
    }

    LOBYTE(self) = self & canLockSnapshot;
    goto LABEL_13;
  }

  v9 = [requestCopy objectForKey:@"ContentType"];
  if (([v9 containsObject:@"Account"] & 1) != 0 || objc_msgSend(v9, "containsObject:", @"ContinuityLinking"))
  {
    device6 = [(MSDMailProcessor *)self device];
    canStartAccountContentUpdate = [device6 canStartAccountContentUpdate];
  }

  else
  {
    if (![v9 containsObject:@"Asset"])
    {
      v17 = [requestCopy objectForKey:@"BackgroundDownloadOnly"];
      bOOLValue2 = [v17 BOOLValue];

      device7 = [(MSDMailProcessor *)self device];
      v20 = device7;
      if (bOOLValue2)
      {
        LOBYTE(self) = [device7 canStartBackgroundDownload];
      }

      else
      {
        LODWORD(self) = [device7 canStartContentUpdate];

        if (neededCopy)
        {
          LODWORD(self) = self & [v8 canUpdateContent];
        }
      }

      goto LABEL_6;
    }

    device6 = [(MSDMailProcessor *)self device];
    canStartAccountContentUpdate = [device6 canStartContentUpdate];
  }

  LOBYTE(self) = canStartAccountContentUpdate;

LABEL_6:
LABEL_13:

  return self;
}

- (int64_t)pingIntervalToUse
{
  device = [(MSDMailProcessor *)self device];
  hubSuppliedSettings = [device hubSuppliedSettings];
  v5 = [hubSuppliedSettings objectForKey:@"PingFrequency"];

  if ([(MSDMailProcessor *)self waitingForCommand])
  {
    integerValue = 30;
  }

  else if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v5 unsignedIntegerValue])
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 600;
  }

  return integerValue;
}

- (BOOL)updateManifestInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v6 = +[MSDFileDownloadCredentials sharedInstance];
  v7 = sub_100063A54(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = infoCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "receiveDict:%{public}@", &v14, 0xCu);
  }

  if (![infoCopy count])
  {
    sub_1000D7240(error);
    v8 = 0;
    goto LABEL_13;
  }

  v8 = [infoCopy objectForKey:@"Ready"];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v8 BOOLValue] & 1) == 0)
  {
    sub_1000C1390(error, 3727740939, @"Hub still downloading contents. Please wait.");
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v9 = [infoCopy mutableCopy];
  [v9 removeObjectForKey:@"Ready"];
  allKeys = [v9 allKeys];
  v11 = [allKeys count];

  if (!v11)
  {
    sub_1000D7168(v9, error);
    goto LABEL_14;
  }

  if (([v6 updateWithResponseFromGetManifestInfo:v9] & 1) == 0)
  {
LABEL_14:
    v12 = 0;
    goto LABEL_10;
  }

  v12 = 1;
LABEL_10:

  return v12;
}

- (unint64_t)convertPingType:(unint64_t)type
{
  v4 = +[MSDNPIMaskValues sharedInstance];
  isNPIDevice = [v4 isNPIDevice];

  if (isNPIDevice)
  {
    return type | 0x40;
  }

  else
  {
    return type;
  }
}

@end