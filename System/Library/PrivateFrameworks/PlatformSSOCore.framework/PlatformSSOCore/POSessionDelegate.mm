@interface POSessionDelegate
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
@end

@implementation POSessionDelegate

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  protectionSpace = [challenge protectionSpace];
  serverTrust = [protectionSpace serverTrust];

  v9 = +[POCoreConfigurationUtil platformSSODevModeEnabled];
  if (v9)
  {
    v10 = PO_LOG_POLoginConfiguration(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [POSessionDelegate URLSession:v10 didReceiveChallenge:? completionHandler:?];
    }

    v11 = [objc_alloc(MEMORY[0x277CCACF0]) initWithTrust:serverTrust];
    handlerCopy[2](handlerCopy, 0, v11);
  }

  else
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }
}

@end