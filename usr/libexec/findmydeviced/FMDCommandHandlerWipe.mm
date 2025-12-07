@interface FMDCommandHandlerWipe
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation FMDCommandHandlerWipe

- (void)handleCommand
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FMDCommandHandler *)self fm_logID];
    *buf = 138412290;
    v46 = fm_logID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: Handling a Remote Wipe command from server...", buf, 0xCu);
  }

  v5 = +[NSMutableDictionary dictionary];
  v6 = +[NSMutableDictionary dictionary];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  commandParams = [(FMDCommandHandler *)self commandParams];
  v8 = [commandParams countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      v11 = 0;
      do
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(commandParams);
        }

        v12 = *(*(&v39 + 1) + 8 * v11);
        commandParams2 = [(FMDCommandHandler *)self commandParams];
        v14 = [commandParams2 objectForKeyedSubscript:v12];

        if (CFPropertyListIsValid(v14, kCFPropertyListBinaryFormat_v1_0))
        {
          [v6 setObject:v14 forKeyedSubscript:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [commandParams countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v9);
  }

  [v5 setObject:v6 forKeyedSubscript:@"commandParams"];
  provider = [(FMDCommandHandler *)self provider];
  account = [provider account];
  authId = [account authId];
  [v5 setObject:authId forKeyedSubscript:@"authId"];

  commandParams3 = [(FMDCommandHandler *)self commandParams];
  v19 = [commandParams3 objectForKeyedSubscript:@"mode"];

  if (+[FMDPreferencesMgr simulateWipe](FMDPreferencesMgr, "simulateWipe") || [v19 isEqualToString:@"fake"])
  {
    [v5 setObject:@"fake" forKeyedSubscript:@"wipeMode"];
  }

  commandParams4 = [(FMDCommandHandler *)self commandParams];
  v21 = [commandParams4 objectForKeyedSubscript:@"maxDelayInSecs"];
  [v21 doubleValue];
  v23 = v22;

  commandParams5 = [(FMDCommandHandler *)self commandParams];
  v25 = [commandParams5 objectForKeyedSubscript:@"message"];

  commandParams6 = [(FMDCommandHandler *)self commandParams];
  v27 = [commandParams6 objectForKeyedSubscript:@"ownerNbr"];

  v29 = sub_100002880(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v46 = v25;
    v47 = 2112;
    v48 = v27;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Lock screen message : %@, phone number : %@", buf, 0x16u);
  }

  v30 = [(__CFString *)v25 length];
  if (v30 || (v30 = [(__CFString *)v27 length]) != 0)
  {
    v31 = sub_100002880(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Saving lock screen info to be preserved across wipe", buf, 2u);
    }

    v43[0] = @"lostModeEnabled";
    v43[1] = @"lostModeMessage";
    v32 = &stru_1002DCE08;
    if (v25)
    {
      v33 = v25;
    }

    else
    {
      v33 = &stru_1002DCE08;
    }

    v44[0] = &__kCFBooleanTrue;
    v44[1] = v33;
    v43[2] = @"lostModeOwnerNumber";
    if (v27)
    {
      v32 = v27;
    }

    v44[2] = v32;
    v34 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:3];
    [FMDPreferencesMgr setFMIPWipeLostModeInfo:v34];
  }

  [FMDPreferencesMgr setWipeInfo:v5];
  [FMDPreferencesMgr setWipeState:1];
  [(FMDCommandHandler *)self provider];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10013EA8C;
  v36[3] = &unk_1002CDE08;
  v37 = v36[4] = self;
  v38 = v23;
  v35 = v37;
  [FMDDispatchTransaction dispatchTransactionAsync:&_dispatch_main_q transactionName:@"FMDCommandHandlerWipeDispatchAction" block:v36];
}

- (void)sendAckWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 1);
  }
}

@end