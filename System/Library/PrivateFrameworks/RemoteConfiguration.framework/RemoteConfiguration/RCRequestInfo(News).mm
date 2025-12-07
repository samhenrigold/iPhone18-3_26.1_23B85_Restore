@interface RCRequestInfo(News)
@end

@implementation RCRequestInfo(News)

- (void)initWithRequestKey:()News responseKey:fallbackURL:requestType:additionalChangeTags:requestFeedType:cachePolicy:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "requestKey"];
  *buf = 136315906;
  v2 = "[RCRequestInfo(News) initWithRequestKey:responseKey:fallbackURL:requestType:additionalChangeTags:requestFeedType:cachePolicy:]";
  v3 = 2080;
  v4 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/RCRequestInfo+News.m";
  v5 = 1024;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);
}

- (void)initWithRequestKey:()News responseKey:fallbackURL:requestType:additionalChangeTags:requestFeedType:cachePolicy:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "responseKey"];
  *buf = 136315906;
  v2 = "[RCRequestInfo(News) initWithRequestKey:responseKey:fallbackURL:requestType:additionalChangeTags:requestFeedType:cachePolicy:]";
  v3 = 2080;
  v4 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/RCRequestInfo+News.m";
  v5 = 1024;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);
}

@end