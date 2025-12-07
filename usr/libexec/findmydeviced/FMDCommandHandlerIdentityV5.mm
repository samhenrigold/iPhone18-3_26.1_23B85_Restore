@interface FMDCommandHandlerIdentityV5
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation FMDCommandHandlerIdentityV5

- (void)handleCommand
{
  v3 = +[FMXPCTransactionManager sharedInstance];
  [v3 beginTransaction:@"kFMDCommandHandlerIdentityV5TransactionName"];

  v4 = +[FMDStartupRegisterManager sharedInstance];
  [v4 eventDidOccur:11];

  commandParams = [(FMDCommandHandler *)self commandParams];
  v6 = [commandParams objectForKeyedSubscript:@"timeoutInSec"];
  if (v6)
  {
    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v8 = [commandParams2 objectForKeyedSubscript:@"timeoutInSec"];
    integerValue = [v8 integerValue];
  }

  else
  {
    integerValue = 60;
  }

  commandParams3 = [(FMDCommandHandler *)self commandParams];
  v11 = [commandParams3 objectForKeyedSubscript:@"id"];

  v12 = [[FMDIdentityInfo alloc] initWithVersion:5 timeoutIntervalInSec:integerValue commandID:v11];
  v13 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017E630;
  block[3] = &unk_1002CD478;
  block[4] = self;
  v19 = v12;
  v14 = v12;
  dispatch_after(v13, &_dispatch_main_q, block);
  v16 = sub_100002880(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Scheduled identityV5", v17, 2u);
  }

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
    v10 = [FMDRequestAckIdentity alloc];
    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v12 = [(FMDRequestAckIdentity *)v10 initWithProvider:v8 identityCommand:commandParams2 commandFailureReason:0 ackURL:v9];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10017E840;
    v14[3] = &unk_1002CD1D0;
    v15 = completionCopy;
    [(FMDRequest *)v12 setCompletionHandler:v14];
    [v8 enqueueRequest:v12];
  }

  else
  {
    v9 = sub_100002880(provider);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not acking the identity command because there is no ack URL", v13, 2u);
    }
  }
}

@end