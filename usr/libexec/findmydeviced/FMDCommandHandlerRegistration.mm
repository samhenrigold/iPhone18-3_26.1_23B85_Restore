@interface FMDCommandHandlerRegistration
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation FMDCommandHandlerRegistration

- (void)handleCommand
{
  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DD3D0;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
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
    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v11 = [commandParams2 objectForKey:@"udid"];
    fm_nullToNil = [v11 fm_nullToNil];

    v24 = completionCopy;
    if ([fm_nullToNil length])
    {
      v13 = [[FMDAccessoryIdentifier alloc] initWithString:fm_nullToNil];
      accessoryRegistry = [v8 accessoryRegistry];
      v15 = [accessoryRegistry accessoryForIdentifier:v13];
    }

    else
    {
      v15 = 0;
    }

    v16 = [FMDActingRequestDecorator alloc];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001DD924;
    v28[3] = &unk_1002CDF18;
    v29 = v15;
    v17 = v8;
    v30 = v17;
    v18 = v15;
    v19 = [(FMDActingRequestDecorator *)v16 initWithDeviceContextGenerator:&stru_1002D12C0 deviceInfoGenerator:v28 serverContextGenerator:0 requestHeaderGenerator:0];
    v20 = [FMDRequestAckRegister alloc];
    account = [v17 account];
    commandParams3 = [(FMDCommandHandler *)self commandParams];
    v23 = [(FMDRequestAckRegister *)v20 initWithAccount:account registerCommand:commandParams3 ackURL:v9];

    [(FMDRequest *)v23 setDecorator:v19];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001DD9C0;
    v26[3] = &unk_1002CD1D0;
    completionCopy = v24;
    v27 = v24;
    [(FMDRequest *)v23 setCompletionHandler:v26];
    [v17 enqueueRequest:v23];
  }

  else
  {
    v9 = sub_100002880(provider);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not acking the register command because there is no ack URL", buf, 2u);
    }
  }
}

@end