@interface DEDEnhancedLoggingNotifier
- (DEDEnhancedLoggingNotifier)init;
- (void)presentNotificationForSession:(id)session;
@end

@implementation DEDEnhancedLoggingNotifier

- (DEDEnhancedLoggingNotifier)init
{
  v6.receiver = self;
  v6.super_class = DEDEnhancedLoggingNotifier;
  v2 = [(DEDEnhancedLoggingNotifier *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D076B0]);
    statusProvider = v2->_statusProvider;
    v2->_statusProvider = v3;
  }

  return v2;
}

- (void)presentNotificationForSession:(id)session
{
  v9 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = LogEnhancedLoggingNotifier(sessionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = sessionCopy;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Notifying enhancedloggingd for bug session [%{public}@]", &v7, 0xCu);
  }

  statusProvider = [(DEDEnhancedLoggingNotifier *)self statusProvider];
  [statusProvider collectionDidCompleteWithSessionIdentifier:sessionCopy];
}

@end