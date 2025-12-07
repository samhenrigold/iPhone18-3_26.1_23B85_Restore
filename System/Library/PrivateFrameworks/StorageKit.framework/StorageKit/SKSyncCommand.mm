@interface SKSyncCommand
- (BOOL)returnWithError:(id *)error;
- (void)onCallbackWithError:(id)error;
@end

@implementation SKSyncCommand

- (void)onCallbackWithError:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  [(SKSyncCommand *)self setError:errorCopy];
  if (errorCopy)
  {
    v5 = SKGetOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[SKSyncCommand onCallbackWithError:]";
      v8 = 2112;
      v9 = errorCopy;
      _os_log_impl(&dword_26BBB8000, v5, OS_LOG_TYPE_ERROR, "%s: Error details: %@", &v6, 0x16u);
    }
  }
}

- (BOOL)returnWithError:(id *)error
{
  error = [(SKSyncCommand *)self error];

  if (error && error)
  {
    *error = [(SKSyncCommand *)self error];
  }

  error2 = [(SKSyncCommand *)self error];
  v7 = error2 == 0;

  return v7;
}

@end