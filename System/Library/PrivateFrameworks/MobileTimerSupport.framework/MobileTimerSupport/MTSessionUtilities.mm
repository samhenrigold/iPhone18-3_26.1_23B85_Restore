@interface MTSessionUtilities
+ (void)logDebug:(id)debug;
+ (void)logError:(id)error;
+ (void)logInfo:(id)info;
@end

@implementation MTSessionUtilities

+ (void)logInfo:(id)info
{
  v10 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = infoCopy;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ INFO: %{public}@", &v6, 0x16u);
  }
}

+ (void)logError:(id)error
{
  errorCopy = error;
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[MTSessionUtilities logError:];
  }
}

+ (void)logDebug:(id)debug
{
  debugCopy = debug;
  v4 = MTLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = MTLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[MTSessionUtilities logDebug:];
    }
  }
}

+ (void)logError:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_22D741000, v0, OS_LOG_TYPE_ERROR, "%{public}@ ERROR: %{public}@", v1, 0x16u);
}

+ (void)logDebug:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_22D741000, v0, OS_LOG_TYPE_DEBUG, "%{public}@ DEBUG: %{public}@", v1, 0x16u);
}

@end