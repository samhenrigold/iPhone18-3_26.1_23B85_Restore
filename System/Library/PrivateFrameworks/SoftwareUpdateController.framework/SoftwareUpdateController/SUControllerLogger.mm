@interface SUControllerLogger
+ (id)sharedLogger;
- (SUControllerLogger)init;
- (void)logAtLevel:(int64_t)level label:(const char *)label format:(id)format;
@end

@implementation SUControllerLogger

+ (id)sharedLogger
{
  if (sharedLogger_loggerOnce != -1)
  {
    +[SUControllerLogger sharedLogger];
  }

  v3 = sharedLogger_logger;

  return v3;
}

uint64_t __34__SUControllerLogger_sharedLogger__block_invoke()
{
  sharedLogger_logger = objc_alloc_init(SUControllerLogger);

  return MEMORY[0x2821F96F8]();
}

- (SUControllerLogger)init
{
  v11.receiver = self;
  v11.super_class = SUControllerLogger;
  v2 = [(SUControllerLogger *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_logLevel = 2;
    v4 = os_log_create("com.apple.sucontroller", "Info");
    logInfo = v3->_logInfo;
    v3->_logInfo = v4;

    v6 = os_log_create("com.apple.sucontroller", "Notice");
    logNotice = v3->_logNotice;
    v3->_logNotice = v6;

    v8 = os_log_create("com.apple.sucontroller", "Error");
    logError = v3->_logError;
    v3->_logError = v8;
  }

  return v3;
}

- (void)logAtLevel:(int64_t)level label:(const char *)label format:(id)format
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v10 = [[v8 alloc] initWithFormat:formatCopy arguments:&v21];

  if (level == 1)
  {
    logNotice = self->_logNotice;
    if (!os_log_type_enabled(logNotice, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *buf = 136446466;
    labelCopy2 = label;
    v18 = 2114;
    v19 = v10;
    v13 = logNotice;
    v14 = OS_LOG_TYPE_DEFAULT;
LABEL_9:
    _os_log_impl(&dword_26AB15000, v13, v14, "%{public}s: %{public}@", buf, 0x16u);
    goto LABEL_10;
  }

  if (level)
  {
    logInfo = self->_logInfo;
    if (!os_log_type_enabled(logInfo, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    *buf = 136446466;
    labelCopy2 = label;
    v18 = 2114;
    v19 = v10;
    v13 = logInfo;
    v14 = OS_LOG_TYPE_INFO;
    goto LABEL_9;
  }

  logError = self->_logError;
  if (os_log_type_enabled(logError, OS_LOG_TYPE_ERROR))
  {
    [SUControllerLogger logAtLevel:label label:v10 format:logError];
  }

LABEL_10:
}

- (void)logAtLevel:(uint64_t)a1 label:(uint64_t)a2 format:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136446466;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_26AB15000, log, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@", &v3, 0x16u);
}

@end