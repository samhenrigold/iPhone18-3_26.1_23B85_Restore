@interface NEAppPushProvider
- (NEAppPushProvider)init;
- (void)reportIncomingCallWithUserInfo:(NSDictionary *)userInfo;
- (void)reportPushToTalkMessageWithUserInfo:(NSDictionary *)userInfo;
- (void)unmatchEthernet;
@end

@implementation NEAppPushProvider

- (void)unmatchEthernet
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "%@: requesting to stop for Ethernet", &v5, 0xCu);
  }

  context = [(NEProvider *)self context];
  [context unmatchEthernet];
}

- (NEAppPushProvider)init
{
  v3.receiver = self;
  v3.super_class = NEAppPushProvider;
  return [(NEProvider *)&v3 init];
}

- (void)reportPushToTalkMessageWithUserInfo:(NSDictionary *)userInfo
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = userInfo;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@: reporting PushToTalk message", &v7, 0xCu);
  }

  context = [(NEProvider *)self context];
  [context reportPushToTalkMessage:v4];
}

- (void)reportIncomingCallWithUserInfo:(NSDictionary *)userInfo
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = userInfo;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@: reporting incoming call", &v7, 0xCu);
  }

  context = [(NEProvider *)self context];
  [context reportIncomingCall:v4];
}

@end