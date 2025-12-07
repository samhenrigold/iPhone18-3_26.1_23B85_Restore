@interface DVTProviderLogger
- (DVTProviderLogger)initWithProviderName:(id)name;
- (NSArray)errors;
- (NSArray)warnings;
- (void)failWithReason:(id)reason;
- (void)warnWithMessage:(id)message;
@end

@implementation DVTProviderLogger

- (DVTProviderLogger)initWithProviderName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = DVTProviderLogger;
  v6 = [(DVTProviderLogger *)&v12 init];
  if (v6)
  {
    if (qword_27EE84200 != -1)
    {
      sub_24802C154();
    }

    objc_storeStrong(&v6->_log, qword_27EE841F8);
    objc_storeStrong(&v6->_providerName, name);
    v7 = objc_opt_new();
    errors = v6->_errors;
    v6->_errors = v7;

    v9 = objc_opt_new();
    warnings = v6->_warnings;
    v6->_warnings = v9;
  }

  return v6;
}

- (NSArray)errors
{
  v2 = [(NSMutableArray *)self->_errors copy];

  return v2;
}

- (NSArray)warnings
{
  v2 = [(NSMutableArray *)self->_warnings copy];

  return v2;
}

- (void)failWithReason:(id)reason
{
  v11[2] = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = MEMORY[0x277CCA9B8];
  v10[0] = *MEMORY[0x277CCA450];
  v10[1] = @"DVTKtraceSessionProviderName";
  providerName = self->_providerName;
  v11[0] = reasonCopy;
  v11[1] = providerName;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [v5 errorWithDomain:@"com.apple.dt.ktrace_recording.provider" code:1 userInfo:v7];

  [(NSMutableArray *)self->_errors addObject:v8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_24802C17C(reasonCopy, log);
  }
}

- (void)warnWithMessage:(id)message
{
  v13[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = MEMORY[0x277CCA9B8];
  v12[0] = *MEMORY[0x277CCA450];
  v12[1] = @"DVTKtraceSessionProviderName";
  providerName = self->_providerName;
  v13[0] = messageCopy;
  v13[1] = providerName;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v8 = [v5 errorWithDomain:@"com.apple.dt.ktrace_recording.provider" code:1 userInfo:v7];

  [(NSMutableArray *)self->_warnings addObject:v8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = messageCopy;
    _os_log_impl(&dword_247F67000, log, OS_LOG_TYPE_DEFAULT, "Provider warning: %{public}@", &v10, 0xCu);
  }
}

@end