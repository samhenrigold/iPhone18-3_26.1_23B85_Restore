@interface DEDBugSession(DaemonTasks)
- (void)hasStaleDirectory;
@end

@implementation DEDBugSession(DaemonTasks)

- (void)hasStaleDirectory
{
  v10 = *MEMORY[0x277D85DE8];
  identifier = [self identifier];
  v6 = 138543618;
  v7 = identifier;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_248AD7000, a3, OS_LOG_TYPE_ERROR, "Error getting [%{public}@] directory metadata with error: [%{public}@]", &v6, 0x16u);
}

@end