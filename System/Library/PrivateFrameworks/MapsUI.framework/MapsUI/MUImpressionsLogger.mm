@interface MUImpressionsLogger
- (void)logImpressionElementDidEnter:(id)enter onDate:(id)date;
- (void)logImpressionElementDidExit:(id)exit usingEnterDate:(id)date exitDate:(id)exitDate;
@end

@implementation MUImpressionsLogger

- (void)logImpressionElementDidExit:(id)exit usingEnterDate:(id)date exitDate:(id)exitDate
{
  v10 = *MEMORY[0x1E69E9840];
  exitCopy = exit;
  v6 = MUGetMUImpressionsLoggerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    debugString = [exitCopy debugString];
    v8 = 138412290;
    v9 = debugString;
    _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_DEBUG, "Logging element did exit %@", &v8, 0xCu);
  }
}

- (void)logImpressionElementDidEnter:(id)enter onDate:(id)date
{
  v9 = *MEMORY[0x1E69E9840];
  enterCopy = enter;
  v5 = MUGetMUImpressionsLoggerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    debugString = [enterCopy debugString];
    v7 = 138412290;
    v8 = debugString;
    _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_DEBUG, "Logging element did enter %@", &v7, 0xCu);
  }
}

@end