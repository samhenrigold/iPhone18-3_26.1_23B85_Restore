@interface FMDCommandHandlerDataUpdate
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation FMDCommandHandlerDataUpdate

- (void)handleCommand
{
  commandParams = [(FMDCommandHandler *)self commandParams];
  v4 = [commandParams objectForKey:off_100313188];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = +[FMDExtConfigurationRegistry sharedInstance];
    configurations = [v6 configurations];
    allKeys = [configurations allKeys];

    [v6 fetchSupportedAccessoryTypes];
    [v6 fetchConfigForAccessoryTypes:allKeys];
  }

  commandParams2 = [(FMDCommandHandler *)self commandParams];
  v10 = [commandParams2 objectForKey:off_100313160];
  bOOLValue2 = [v10 BOOLValue];

  if (bOOLValue2)
  {
    commandParams3 = [(FMDCommandHandler *)self commandParams];
    v13 = [commandParams3 objectForKey:off_100313158];

    commandParams4 = [(FMDCommandHandler *)self commandParams];
    v15 = [commandParams4 objectForKey:off_100313168];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = +[FMDServiceProvider activeServiceProvider];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        detachNotificationManager = [v16 detachNotificationManager];
        [detachNotificationManager updateAccessoryIds:v13 version:v15 withCompletion:0];
      }
    }
  }

  commandParams5 = [(FMDCommandHandler *)self commandParams];
  v19 = [commandParams5 objectForKey:off_100313178];
  bOOLValue3 = [v19 BOOLValue];

  v22 = sub_100002880(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_10022BD8C(self, v22);
  }

  if (bOOLValue3)
  {
    commandParams6 = [(FMDCommandHandler *)self commandParams];
    v24 = [commandParams6 objectForKey:off_100313170];

    commandParams7 = [(FMDCommandHandler *)self commandParams];
    v26 = [commandParams7 objectForKey:off_100313180];

    v27 = +[FMDMagSafeDataStore sharedInstance];
    readLostModeAccessoriesListVersion = [v27 readLostModeAccessoriesListVersion];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) != 0 && (isKindOfClass = [v26 isEqualToString:readLostModeAccessoriesListVersion], (isKindOfClass & 1) == 0))
    {
      v57 = readLostModeAccessoriesListVersion;
      v32 = sub_100002880(isKindOfClass);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        sub_10022BE24(v26, v24, v32);
      }

      v33 = +[FMDMagSafeDataStore sharedInstance];
      v34 = [v33 writeLostModeInfo:v24 version:v26];

      v30 = +[FMDServiceProvider activeServiceProvider];
      accessoryRegistry = [v30 accessoryRegistry];
      [accessoryRegistry allAccessories];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v35 = v61 = 0u;
      v36 = [v35 countByEnumeratingWithState:&v58 objects:v70 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v59;
        while (2)
        {
          for (i = 0; i != v37; i = i + 1)
          {
            if (*v59 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v58 + 1) + 8 * i);
            if ([v40 connectionState] == 1)
            {
              accessoryIdentifier = [v40 accessoryIdentifier];
              v42 = [v24 containsObject:accessoryIdentifier];

              if (v42)
              {
                v43 = +[NSNotificationCenter defaultCenter];
                [v43 postNotificationName:@"com.apple.accessories.connection.passedMFi4Auth" object:0];

                goto LABEL_29;
              }
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v58 objects:v70 count:16];
          if (v37)
          {
            continue;
          }

          break;
        }
      }

LABEL_29:

      readLostModeAccessoriesListVersion = v57;
    }

    else
    {
      v30 = sub_100002880(isKindOfClass);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v63 = v24;
        v64 = 2112;
        v65 = objc_opt_class();
        v66 = 2112;
        v67 = readLostModeAccessoriesListVersion;
        v68 = 2112;
        v69 = v26;
        v31 = v65;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "lostModeInfo got unexpected info = %@, %@, cachedVersion = %@, newVersion = %@", buf, 0x2Au);
      }
    }
  }

  commandParams8 = [(FMDCommandHandler *)self commandParams];
  v45 = [commandParams8 objectForKey:off_100313198];

  commandParams9 = [(FMDCommandHandler *)self commandParams];
  v47 = commandParams9;
  if (!v45)
  {
    v51 = [commandParams9 objectForKey:off_100313190];

    if (!v51)
    {
LABEL_45:

      goto LABEL_46;
    }

    v53 = +[FMDLocalActivationLockInfoManager sharedInstance];
    v54 = v53;
    goto LABEL_40;
  }

  v48 = [commandParams9 objectForKey:off_100313198];
  bOOLValue4 = [v48 BOOLValue];

  if (bOOLValue4)
  {
    commandParams10 = [(FMDCommandHandler *)self commandParams];
    v51 = [commandParams10 objectForKey:off_100313190];

    v52 = v51 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && [v51 length] != 0;
    v53 = +[FMDLocalActivationLockInfoManager sharedInstance];
    v54 = v53;
    if (!v52)
    {
      v55 = sub_100002880(v53);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Clearing maskedAppleID via dataUpdate command", buf, 2u);
      }

      [v54 clearMaskedAppleIDValue];
      goto LABEL_44;
    }

LABEL_40:
    [v53 updateMaskedAppleID:v51];
LABEL_44:

    goto LABEL_45;
  }

LABEL_46:
  [(FMDCommandHandler *)self didHandleCommandWithAckData:0];
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
    v10 = [FMDRequestAckDataUpdate alloc];
    account = [v8 account];
    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v13 = [(FMDRequestAckDataUpdate *)v10 initWithAccount:account dataUpdateCommand:commandParams2 ackURL:v9];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100190990;
    v15[3] = &unk_1002CD1D0;
    v16 = completionCopy;
    [(FMDRequest *)v13 setCompletionHandler:v15];
    [v8 enqueueRequest:v13];
  }

  else
  {
    v9 = sub_100002880(provider);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not acking the dataUpdate command because there is no ack URL", v14, 2u);
    }
  }
}

@end