@interface SSPurchase(Migration)
- (void)mk_setMigrationUserAgent;
@end

@implementation SSPurchase(Migration)

- (void)mk_setMigrationUserAgent
{
  v10 = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D69A80] currentDevice];
  userAgent = [currentDevice userAgent];
  v4 = [@"matd/1.0 " stringByAppendingString:userAgent];

  [self setDefaultUserAgent:v4];
  v5 = +[MKLog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "%@ sets a new user agent. user_agent=%@", &v6, 0x16u);
  }
}

@end