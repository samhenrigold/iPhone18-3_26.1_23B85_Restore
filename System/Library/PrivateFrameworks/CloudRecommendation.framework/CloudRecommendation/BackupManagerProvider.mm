@interface BackupManagerProvider
- (BackupManagerProvider)initWithAccount:(id)account;
@end

@implementation BackupManagerProvider

- (BackupManagerProvider)initWithAccount:(id)account
{
  accountCopy = account;
  v13.receiver = self;
  v13.super_class = BackupManagerProvider;
  v5 = [(BackupManagerProvider *)&v13 init];
  if (v5)
  {
    v12 = 0;
    v6 = [objc_alloc(MEMORY[0x277D28A40]) initWithAccount:accountCopy delegate:0 eventQueue:0 error:&v12];
    v7 = v12;
    backupManager = v5->_backupManager;
    v5->_backupManager = v6;

    if (v7)
    {
      v10 = _CELogSystem(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(BackupManagerProvider *)v7 initWithAccount:v10];
      }
    }
  }

  return v5;
}

- (void)initWithAccount:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[BackupManagerProvider initWithAccount:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_2439E1000, a2, OS_LOG_TYPE_ERROR, "%s unable to init MBManager with error: %@", &v2, 0x16u);
}

@end