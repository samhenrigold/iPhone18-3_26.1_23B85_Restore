@interface FMDCommandHandlerMessage
- (BOOL)shouldHonorSecureMessage;
- (BOOL)shouldShowLockScreenMessage;
- (FMDCommandHandlerMessage)initWithParams:(id)params provider:(id)provider;
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
- (void)showSecureMessage:(id)message andLockScreenMessage:(id)screenMessage;
@end

@implementation FMDCommandHandlerMessage

- (FMDCommandHandlerMessage)initWithParams:(id)params provider:(id)provider
{
  v7.receiver = self;
  v7.super_class = FMDCommandHandlerMessage;
  v4 = [(FMDCommandHandler *)&v7 initWithParams:params provider:provider];
  v5 = v4;
  if (v4)
  {
    [(FMDCommandHandler *)v4 setRequiresAsynchronousAck:1];
  }

  return v5;
}

- (void)handleCommand
{
  commandParams = [(FMDCommandHandler *)self commandParams];
  v4 = [commandParams objectForKeyedSubscript:@"secureMsg"];

  bOOLValue = [v4 BOOLValue];
  v6 = +[FMDPreferencesMgr accessibilityFontSizeEnabled];
  provider = [(FMDCommandHandler *)self provider];
  v8 = sub_100002880(provider);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (bOOLValue)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received a secure message", buf, 2u);
    }

    shouldHonorSecureMessage = [(FMDCommandHandlerMessage *)self shouldHonorSecureMessage];
    v11 = shouldHonorSecureMessage;
    v12 = sub_100002880(shouldHonorSecureMessage);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (!v11)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring secure message because it cannot be honored", buf, 2u);
      }

      goto LABEL_56;
    }

    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Can honor the secure message", buf, 2u);
    }

    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v15 = [commandParams2 objectForKeyedSubscript:@"text"];

    commandParams3 = [(FMDCommandHandler *)self commandParams];
    v17 = [commandParams3 objectForKeyedSubscript:@"lockScreenText"];

    shouldShowLockScreenMessage = [(FMDCommandHandlerMessage *)self shouldShowLockScreenMessage];
    v19 = shouldShowLockScreenMessage;
    if (v15)
    {
      v20 = sub_100002880(shouldShowLockScreenMessage);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found secure message text in the secure message command", buf, 2u);
      }

      v21 = objc_alloc_init(FMAlert);
      v12 = v21;
      v150 = v17;
      if (v6)
      {
        fm_stringByReplacingNonBreakingSpaces = [v15 fm_stringByReplacingNonBreakingSpaces];
        [v12 setMsgText:fm_stringByReplacingNonBreakingSpaces];
      }

      else
      {
        [v21 setMsgText:v15];
      }

      commandParams4 = [(FMDCommandHandler *)self commandParams];
      v68 = [commandParams4 objectForKeyedSubscript:@"title"];

      v149 = v6;
      if (v6)
      {
        fm_stringByReplacingNonBreakingSpaces2 = [v68 fm_stringByReplacingNonBreakingSpaces];
        [v12 setMsgTitle:fm_stringByReplacingNonBreakingSpaces2];
      }

      else
      {
        [v12 setMsgTitle:v68];
      }

      [v12 setShowMsgInLockScreen:[(FMDCommandHandlerMessage *)self shouldShowSecureMessageOnLockScreen]];
      [v12 setDismissMsgOnUnlock:0];
      [v12 setDismissMsgOnLock:0];
      commandParams5 = [(FMDCommandHandler *)self commandParams];
      v71 = [commandParams5 objectForKeyedSubscript:@"okButtonTitle"];
      [v12 setDefaultButtonTitle:v71];

      commandParams6 = [(FMDCommandHandler *)self commandParams];
      v73 = [commandParams6 objectForKeyedSubscript:@"okButtonAction"];

      if (v73)
      {
        commandParams7 = [(FMDCommandHandler *)self commandParams];
        v75 = [commandParams7 objectForKeyedSubscript:@"okButtonURL"];

        [provider alertActionInfoForAction:v73 andURL:v75];
        v155[0] = _NSConcreteStackBlock;
        v155[1] = 3221225472;
        v155[2] = sub_10016323C;
        v156 = v155[3] = &unk_1002CD4C8;
        v76 = v156;
        [v12 setDefaultButtonAction:v155];
      }

      commandParams8 = [(FMDCommandHandler *)self commandParams];
      v78 = [commandParams8 objectForKeyedSubscript:@"cancelButtonTitle"];
      [v12 setAlternateButtonTitle:v78];

      commandParams9 = [(FMDCommandHandler *)self commandParams];
      v80 = [commandParams9 objectForKeyedSubscript:@"cancelButtonAction"];

      if (v80)
      {
        commandParams10 = [(FMDCommandHandler *)self commandParams];
        [commandParams10 objectForKeyedSubscript:@"cancelButtonURL"];
        v145 = v4;
        v82 = v68;
        v83 = v15;
        v85 = v84 = v19;

        [provider alertActionInfoForAction:v80 andURL:v85];
        v153[0] = _NSConcreteStackBlock;
        v153[1] = 3221225472;
        v153[2] = sub_1001632F4;
        v154 = v153[3] = &unk_1002CD4C8;
        v86 = v154;
        [v12 setAlternateButtonAction:v153];

        v19 = v84;
        v15 = v83;
        v68 = v82;
        v4 = v145;
      }

      v6 = v149;
      v17 = v150;
      if (!v19)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v12 = 0;
      if (!shouldShowLockScreenMessage)
      {
        goto LABEL_53;
      }
    }

    v87 = sub_100002880(shouldShowLockScreenMessage);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Device is locked. We can show lock screen message", buf, 2u);
    }

    if (v17)
    {
      v89 = sub_100002880(v88);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Found lock screen message text in the secure message command", buf, 2u);
      }

      v90 = objc_alloc_init(FMAlert);
      v91 = v90;
      if (v6)
      {
        fm_stringByReplacingNonBreakingSpaces3 = [v17 fm_stringByReplacingNonBreakingSpaces];
        [v91 setMsgText:fm_stringByReplacingNonBreakingSpaces3];
      }

      else
      {
        [v90 setMsgText:v17];
      }

      commandParams11 = [(FMDCommandHandler *)self commandParams];
      v94 = [commandParams11 objectForKeyedSubscript:@"lockScreenTitle"];

      if (v6)
      {
        fm_stringByReplacingNonBreakingSpaces4 = [v94 fm_stringByReplacingNonBreakingSpaces];
        [v91 setMsgTitle:fm_stringByReplacingNonBreakingSpaces4];
      }

      else
      {
        [v91 setMsgTitle:v94];
      }

      [v91 setShowMsgInLockScreen:1];
      [v91 setDismissMsgOnUnlock:1];
      [v91 setDismissMsgOnLock:0];

      if (!v12)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

LABEL_53:
    v91 = 0;
    if (!v12)
    {
LABEL_55:

LABEL_56:
      [(FMDCommandHandler *)self didHandleCommandWithAckData:0];
      goto LABEL_96;
    }

LABEL_54:
    [(FMDCommandHandlerMessage *)self showSecureMessage:v12 andLockScreenMessage:v91];
    goto LABEL_55;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received a regular message", buf, 2u);
  }

  v23 = objc_alloc_init(FMDMessage);
  commandParams12 = [(FMDCommandHandler *)self commandParams];
  v25 = [commandParams12 objectForKeyedSubscript:@"sound"];

  if ([v25 BOOLValue])
  {
    commandParams13 = [(FMDCommandHandler *)self commandParams];
    v27 = [commandParams13 objectForKey:@"udid"];
    fm_nullToNil = [v27 fm_nullToNil];

    commandParams14 = [(FMDCommandHandler *)self commandParams];
    v30 = [commandParams14 objectForKeyedSubscript:@"durationInSeconds"];

    if (v30)
    {
      intValue = [v30 intValue];
      v32 = intValue;
    }

    else
    {
      v32 = 120;
    }

    v142 = v32;
    v148 = v6;
    v33 = sub_100002880(intValue);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v167 = fm_nullToNil;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Message command for accessory %@", buf, 0xCu);
    }

    commandParams15 = [(FMDCommandHandler *)self commandParams];
    v147 = [commandParams15 objectForKeyedSubscript:@"id"];

    commandParams16 = [(FMDCommandHandler *)self commandParams];
    v144 = [commandParams16 objectForKeyedSubscript:@"scanDuration"];

    commandParams17 = [(FMDCommandHandler *)self commandParams];
    v37 = [commandParams17 objectForKeyedSubscript:@"rampUpDurationInSeconds"];

    commandParams18 = [(FMDCommandHandler *)self commandParams];
    v39 = [commandParams18 objectForKeyedSubscript:@"rampDownDurationInSeconds"];

    v151 = v25;
    v143 = v37;
    if (v37)
    {
      [v37 doubleValue];
      v41 = v40;
      v42 = v39;
      [v39 doubleValue];
      v44 = v43;
    }

    else
    {
      v42 = v39;
      v41 = 0.0;
      v44 = 0.0;
    }

    commandParams19 = [(FMDCommandHandler *)self commandParams];
    v46 = [commandParams19 objectForKeyedSubscript:@"channels"];

    commandParams20 = [(FMDCommandHandler *)self commandParams];
    v48 = [commandParams20 objectForKey:@"userConfirmedSafetyWarning"];
    bOOLValue2 = [v48 BOOLValue];

    commandParams21 = [(FMDCommandHandler *)self commandParams];
    v50 = [commandParams21 objectForKey:@"forceConnection"];
    bOOLValue3 = [v50 BOOLValue];

    commandParams22 = [(FMDCommandHandler *)self commandParams];
    v52 = [commandParams22 objectForKey:@"inEarDetectionTimeout"];

    if ([fm_nullToNil length])
    {
      v141 = v30;

      v54 = sub_100002880(v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v167 = fm_nullToNil;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "CommandHandlerMessage for accessory %@", buf, 0xCu);
      }

      v55 = [[FMDAccessoryIdentifier alloc] initWithString:fm_nullToNil];
      accessoryRegistry = [provider accessoryRegistry];
      v140 = v55;
      v57 = [accessoryRegistry accessoryForIdentifier:v55];

      v59 = sub_100002880(v58);
      v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
      if (v57)
      {
        v136 = v42;
        v137 = v52;
        if (v60)
        {
          *buf = 138412546;
          v167 = v57;
          v168 = 2112;
          v169 = fm_nullToNil;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "CommandHandlerMessage Found accessory %@ for id %@", buf, 0x16u);
        }

        commandContext = [v57 commandContext];
        pendingActionUUID = [commandContext pendingActionUUID];

        supportedAccessoryRegistry = [provider supportedAccessoryRegistry];
        v63 = [supportedAccessoryRegistry defaultTimeoutAudioSafetyStatusForAccessory:v57];

        v59 = [provider futureForCommandId:v147];
        v64 = sub_100002880(v59);
        v65 = os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
        if (v59)
        {
          if (v65)
          {
            fm_logID = [(FMDCommandHandler *)self fm_logID];
            *buf = 138412546;
            v167 = fm_logID;
            v168 = 2112;
            v169 = v147;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%@ Found an existing future for command %@", buf, 0x16u);
          }
        }

        else
        {
          v146 = v4;
          if (v65)
          {
            fm_logID2 = [(FMDCommandHandler *)self fm_logID];
            *buf = 138412546;
            v167 = fm_logID2;
            v168 = 2112;
            v169 = v147;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%@ Creating a future for command %@", buf, 0x16u);
          }

          v59 = objc_alloc_init(FMFuture);
          [provider setFuture:v59 commandId:v147];
          supportedAccessoryRegistry2 = [provider supportedAccessoryRegistry];
          v98 = [supportedAccessoryRegistry2 playbackChannelNamesForAccessory:v57 commandChannels:v46];

          v99 = [FMDAccessoryPlaySoundAction alloc];
          accessoryRegistry2 = [provider accessoryRegistry];
          v64 = [(FMDAccessoryPlaySoundAction *)v99 initWithAccessory:v57 accessoryRegistry:accessoryRegistry2 channels:v98];

          v101 = [NSNumber numberWithInteger:v142];
          [v64 setDuration:v101];

          if (v144)
          {
            [v144 doubleValue];
            v102 = [NSNumber numberWithDouble:?];
            [v64 setTimeout:v102];
          }

          else
          {
            [v64 setTimeout:0];
          }

          v103 = [NSNumber numberWithDouble:v41];
          [v64 setRampUpDuration:v103];

          v104 = [NSNumber numberWithDouble:v44];
          [v64 setRampDownDuration:v104];

          [v64 setDefaultAudioSafetyStatus:v63];
          [v64 setForceConnection:bOOLValue3];
          [v64 setBypassInEarCheck:bOOLValue2];
          [v64 setInEarDetectionTimeout:v137];
          [v64 setFuture:v59];
          bluetoothManager = [provider bluetoothManager];
          [v64 setBluetoothManager:bluetoothManager];

          accessoryRegistry3 = [provider accessoryRegistry];
          [accessoryRegistry3 registerDelegate:v64];

          v107 = +[ActionManager sharedManager];
          v108 = [v107 enqueueAction:v64];

          v46 = v98;
          v4 = v146;
        }

        v161[0] = _NSConcreteStackBlock;
        v161[1] = 3221225472;
        v161[2] = sub_100162E70;
        v161[3] = &unk_1002CF140;
        v161[4] = self;
        v162 = v147;
        v163 = provider;
        v164 = pendingActionUUID;
        v165 = v57;
        v109 = pendingActionUUID;
        v110 = [v59 addCompletionBlock:v161];

        v42 = v136;
        v52 = v137;
      }

      else if (v60)
      {
        *buf = 138412290;
        v167 = fm_nullToNil;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "No accessory found with id %@. Ignoring the message", buf, 0xCu);
      }

      v23 = 0;
      v30 = v141;
    }

    else
    {
      [(FMDMessage *)v23 setPlaySound:1];
      [(FMDMessage *)v23 setSoundName:@"fmd_sound"];
      [(FMDMessage *)v23 setSoundDuration:v142];
      [(FMDMessage *)v23 setIsHighPrioritySound:1];
      [(FMDMessage *)v23 setIsFmipSound:1];
    }

    v6 = v148;
    v25 = v151;
  }

  if (v23)
  {
    commandParams23 = [(FMDCommandHandler *)self commandParams];
    v112 = [commandParams23 objectForKeyedSubscript:@"text"];

    if (v112)
    {
      [(FMDMessage *)v23 setShowMessage:1];
      if (v6)
      {
        fm_stringByReplacingNonBreakingSpaces5 = [v112 fm_stringByReplacingNonBreakingSpaces];
        [(FMDMessage *)v23 setMsgText:fm_stringByReplacingNonBreakingSpaces5];
      }

      else
      {
        [(FMDMessage *)v23 setMsgText:v112];
      }

      commandParams24 = [(FMDCommandHandler *)self commandParams];
      v115 = [commandParams24 objectForKeyedSubscript:@"title"];

      if (v6)
      {
        fm_stringByReplacingNonBreakingSpaces6 = [v115 fm_stringByReplacingNonBreakingSpaces];
        [(FMDMessage *)v23 setMsgTitle:fm_stringByReplacingNonBreakingSpaces6];
      }

      else
      {
        [(FMDMessage *)v23 setMsgTitle:v115];
      }

      v152 = v25;
      [(FMDMessage *)v23 setShowMsgInLockScreen:1];
      [(FMDMessage *)v23 setDismissMsgOnUnlock:0];
      [(FMDMessage *)v23 setDismissMsgOnLock:0];
      commandParams25 = [(FMDCommandHandler *)self commandParams];
      v118 = [commandParams25 objectForKeyedSubscript:@"okButtonTitle"];
      [(FMDMessage *)v23 setDefaultButtonTitle:v118];

      commandParams26 = [(FMDCommandHandler *)self commandParams];
      v120 = [commandParams26 objectForKeyedSubscript:@"okButtonAction"];

      if (v120)
      {
        commandParams27 = [(FMDCommandHandler *)self commandParams];
        v122 = [commandParams27 objectForKeyedSubscript:@"okButtonURL"];

        [provider alertActionInfoForAction:v120 andURL:v122];
        v159[0] = _NSConcreteStackBlock;
        v159[1] = 3221225472;
        v159[2] = sub_1001630CC;
        v160 = v159[3] = &unk_1002CD4C8;
        v123 = v160;
        [(FMDMessage *)v23 setDefaultButtonAction:v159];
      }

      commandParams28 = [(FMDCommandHandler *)self commandParams];
      v125 = [commandParams28 objectForKeyedSubscript:@"cancelButtonTitle"];
      [(FMDMessage *)v23 setAlternateButtonTitle:v125];

      commandParams29 = [(FMDCommandHandler *)self commandParams];
      v127 = [commandParams29 objectForKeyedSubscript:@"cancelButtonAction"];

      if (v127)
      {
        commandParams30 = [(FMDCommandHandler *)self commandParams];
        v129 = [commandParams30 objectForKeyedSubscript:@"cancelButtonURL"];

        [provider alertActionInfoForAction:v127 andURL:v129];
        v157[0] = _NSConcreteStackBlock;
        v157[1] = 3221225472;
        v157[2] = sub_100163184;
        v158 = v157[3] = &unk_1002CD4C8;
        v130 = v158;
        [(FMDMessage *)v23 setAlternateButtonAction:v157];
      }

      v25 = v152;
    }

    commandParams31 = [(FMDCommandHandler *)self commandParams];
    v132 = [commandParams31 objectForKeyedSubscript:@"vibrate"];

    if ([v132 BOOLValue])
    {
      [(FMDMessage *)v23 setVibrate:1];
    }

    v133 = +[FMDLostModeManager sharedInstance];
    lostModeEnabled = [v133 lostModeEnabled];

    if (lostModeEnabled)
    {
      [(FMDMessage *)v23 setShowMessage:0];
    }

    if ([(FMDMessage *)v23 showMessage]|| [(FMDMessage *)v23 playSound])
    {
      [(FMDMessage *)v23 activate];
    }

    [(FMDCommandHandler *)self didHandleCommandWithAckData:0];
  }

LABEL_96:
}

- (void)sendAckWithCompletion:(id)completion
{
  completionCopy = completion;
  commandParams = [(FMDCommandHandler *)self commandParams];
  v6 = [commandParams objectForKeyedSubscript:@"ackURL"];

  provider = [(FMDCommandHandler *)self provider];
  v8 = provider;
  if (v6)
  {
    v9 = [NSURL URLWithString:v6];
    ackDataForCommand = [(FMDCommandHandler *)self ackDataForCommand];
    v11 = [ackDataForCommand objectForKeyedSubscript:@"status"];
    if (v11)
    {
      v12 = [ackDataForCommand objectForKeyedSubscript:@"status"];
      intValue = [v12 intValue];
    }

    else
    {
      intValue = 200;
    }

    v43 = [ackDataForCommand objectForKeyedSubscript:@"safetyAlertType"];
    v42 = [ackDataForCommand objectForKeyedSubscript:@"timeoutError"];
    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v14 = [commandParams2 objectForKey:@"udid"];
    fm_nullToNil = [v14 fm_nullToNil];

    v40 = fm_nullToNil;
    v41 = ackDataForCommand;
    if ([fm_nullToNil length])
    {
      v16 = [[FMDAccessoryIdentifier alloc] initWithString:fm_nullToNil];
      accessoryRegistry = [v8 accessoryRegistry];
      v18 = [accessoryRegistry accessoryForIdentifier:v16];
    }

    else
    {
      v18 = 0;
    }

    v19 = [FMDActingRequestDecorator alloc];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100163890;
    v47[3] = &unk_1002CDF18;
    v20 = v18;
    v48 = v20;
    v21 = v8;
    v49 = v21;
    v22 = [(FMDActingRequestDecorator *)v19 initWithDeviceContextGenerator:&stru_1002CF160 deviceInfoGenerator:v47 serverContextGenerator:0 requestHeaderGenerator:0];
    v23 = [FMDRequestAckMessage alloc];
    account = [v21 account];
    commandParams3 = [(FMDCommandHandler *)self commandParams];
    v26 = [(FMDRequestAckMessage *)v23 initWithAccount:account messageCommand:commandParams3 cmdStatusCode:intValue ackURL:v9];

    [(FMDRequestAckMessage *)v26 setTimeoutError:v42];
    [(FMDRequestAckMessage *)v26 setSafetyAlertType:v43];
    [(FMDRequest *)v26 setDecorator:v22];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10016392C;
    v45[3] = &unk_1002CD1D0;
    v46 = completionCopy;
    [(FMDRequest *)v26 setCompletionHandler:v45];
    if (v20)
    {
      v27 = [FMDNetworkAction alloc];
      v28 = [v21 serverInteractionControllerForAccessory:v20];
      v29 = [(FMDNetworkAction *)v27 initWithRequest:v26 andServerInteractionController:v28];

      v30 = +[FMDOperationManager sharedManager];
      accessoryIdentifier = [v20 accessoryIdentifier];
      [accessoryIdentifier stringValue];
      v39 = v20;
      v32 = v22;
      v33 = v9;
      v34 = v6;
      v35 = v8;
      v37 = v36 = completionCopy;
      [v30 addAction:v29 forIdentifier:v37];

      completionCopy = v36;
      v8 = v35;
      v6 = v34;
      v9 = v33;
      v22 = v32;
      v20 = v39;
    }

    else
    {
      [v21 enqueueRequest:v26];
    }
  }

  else
  {
    v9 = sub_100002880(provider);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not acking the message command because there is no ack URL", buf, 2u);
    }
  }
}

- (BOOL)shouldHonorSecureMessage
{
  v2 = +[FMDLostModeManager sharedInstance];
  lostModeEnabled = [v2 lostModeEnabled];

  return lostModeEnabled ^ 1;
}

- (BOOL)shouldShowLockScreenMessage
{
  v2 = MKBGetDeviceLockState();
  if (v2)
  {
    v3 = v2 == 3;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (void)showSecureMessage:(id)message andLockScreenMessage:(id)screenMessage
{
  messageCopy = message;
  screenMessageCopy = screenMessage;
  if (screenMessageCopy)
  {
    provider = [(FMDCommandHandler *)self provider];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [provider setPendingSecureMessage:messageCopy];
    }

    v8 = +[FMAlertManager sharedInstance];
    [v8 activateAlert:screenMessageCopy];
  }

  else
  {
    provider = +[FMAlertManager sharedInstance];
    [provider activateAlert:messageCopy];
  }
}

@end