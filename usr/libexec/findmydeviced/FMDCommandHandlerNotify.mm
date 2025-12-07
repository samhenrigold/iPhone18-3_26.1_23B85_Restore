@interface FMDCommandHandlerNotify
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation FMDCommandHandlerNotify

- (void)handleCommand
{
  commandParams = [(FMDCommandHandler *)self commandParams];
  v4 = [commandParams objectForKeyedSubscript:@"title"];

  commandParams2 = [(FMDCommandHandler *)self commandParams];
  v6 = [commandParams2 objectForKeyedSubscript:@"body"];

  commandParams3 = [(FMDCommandHandler *)self commandParams];
  v8 = [commandParams3 objectForKeyedSubscript:@"category"];

  commandParams4 = [(FMDCommandHandler *)self commandParams];
  v10 = [commandParams4 objectForKeyedSubscript:@"deviceId"];

  if (v4)
  {
    if (v6)
    {
      if (v8)
      {
        if (v10)
        {
          v12 = objc_alloc_init(FMDUserNotificationContent);
          [(FMDUserNotificationContent *)v12 setTitle:v4];
          [(FMDUserNotificationContent *)v12 setBody:v6];
          [(FMDUserNotificationContent *)v12 setCategoryIdentifier:v8];
          [(FMDUserNotificationContent *)v12 setDeviceId:v10];
          v13 = +[FMDFMIPManager sharedInstance];
          [v13 addNotificationRequest:v12 completion:&stru_1002CEFD0];

          [(FMDCommandHandler *)self didHandleCommandWithAckData:0];
          goto LABEL_13;
        }

        v14 = 3;
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_100002880(v11);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notify command failed; missing : %lu", &v16, 0xCu);
  }

  [(FMDCommandHandler *)self didHandleCommandWithAckData:0];
LABEL_13:
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

    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v14 = [commandParams2 objectForKey:@"udid"];
    fm_nullToNil = [v14 fm_nullToNil];

    v28 = ackDataForCommand;
    v29 = completionCopy;
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
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10015810C;
    v33[3] = &unk_1002CDF18;
    v34 = v18;
    v20 = v8;
    v35 = v20;
    v21 = v18;
    v22 = [(FMDActingRequestDecorator *)v19 initWithDeviceContextGenerator:&stru_1002CEFF0 deviceInfoGenerator:v33 serverContextGenerator:0 requestHeaderGenerator:0];
    v23 = [FMDRequestAckNotify alloc];
    account = [v20 account];
    commandParams3 = [(FMDCommandHandler *)self commandParams];
    v26 = [(FMDRequestAckNotify *)v23 initWithAccount:account messageCommand:commandParams3 cmdStatusCode:intValue ackURL:v9];

    [(FMDRequest *)v26 setDecorator:v22];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1001581A8;
    v31[3] = &unk_1002CD1D0;
    completionCopy = v29;
    v32 = v29;
    [(FMDRequest *)v26 setCompletionHandler:v31];
    [v20 enqueueRequest:v26];
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

@end