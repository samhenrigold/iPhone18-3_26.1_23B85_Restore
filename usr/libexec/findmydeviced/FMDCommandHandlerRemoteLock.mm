@interface FMDCommandHandlerRemoteLock
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation FMDCommandHandlerRemoteLock

- (void)handleCommand
{
  provider = [(FMDCommandHandler *)self provider];
  v8 = qword_100314CD0;
  commandParams = [(FMDCommandHandler *)self commandParams];
  v5 = [commandParams objectForKeyedSubscript:@"newPasscode"];

  [provider setPasscodeLock:v5 statusCode:&v8];
  v6 = +[NSMutableDictionary dictionary];
  v7 = [NSNumber numberWithInteger:v8];
  [v6 setObject:v7 forKeyedSubscript:@"status"];

  [(FMDCommandHandler *)self didHandleCommandWithAckData:v6];
}

- (void)sendAckWithCompletion:(id)completion
{
  completionCopy = completion;
  commandParams = [(FMDCommandHandler *)self commandParams];
  v6 = [commandParams objectForKeyedSubscript:@"ackURL"];

  provider = [(FMDCommandHandler *)self provider];
  ackDataForCommand = [(FMDCommandHandler *)self ackDataForCommand];
  v9 = [ackDataForCommand objectForKeyedSubscript:@"status"];
  intValue = [v9 intValue];

  if (v6)
  {
    v12 = intValue;
    v13 = [NSURL URLWithString:v6];
    v14 = [FMDRequestAckLock alloc];
    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v16 = [(FMDRequestAckLock *)v14 initWithProvider:provider lockCommand:commandParams2 cmdStatusCode:v12 ackURL:v13];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100146878;
    v18[3] = &unk_1002CD1D0;
    v19 = completionCopy;
    [(FMDRequest *)v16 setCompletionHandler:v18];
    [provider enqueueRequest:v16];
  }

  else
  {
    v13 = sub_100002880(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not acking the lock command because there is no ack URL", v17, 2u);
    }
  }
}

@end