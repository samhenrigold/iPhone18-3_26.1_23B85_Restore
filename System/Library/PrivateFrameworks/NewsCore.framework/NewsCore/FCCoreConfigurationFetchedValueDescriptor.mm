@interface FCCoreConfigurationFetchedValueDescriptor
- (BOOL)isValue:(id)value equalToValue:(id)toValue;
- (FCCoreConfigurationFetchedValueDescriptor)init;
- (FCCoreConfigurationFetchedValueDescriptor)initWithConfigurationManager:(id)manager;
- (id)fastCachedValue;
- (void)fetchValueWithCachePolicy:(unint64_t)policy qualityOfService:(int64_t)service completion:(id)completion;
@end

@implementation FCCoreConfigurationFetchedValueDescriptor

- (id)fastCachedValue
{
  configurationManager = [(FCCoreConfigurationFetchedValueDescriptor *)self configurationManager];
  configuration = [configurationManager configuration];

  return configuration;
}

- (FCCoreConfigurationFetchedValueDescriptor)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCCoreConfigurationFetchedValueDescriptor init]";
    v10 = 2080;
    v11 = "FCCoreConfigurationFetchedValueDescriptor.m";
    v12 = 1024;
    v13 = 25;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCCoreConfigurationFetchedValueDescriptor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCCoreConfigurationFetchedValueDescriptor)initWithConfigurationManager:(id)manager
{
  v19 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  if (!managerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configurationManager"];
    *buf = 136315906;
    v12 = "[FCCoreConfigurationFetchedValueDescriptor initWithConfigurationManager:]";
    v13 = 2080;
    v14 = "FCCoreConfigurationFetchedValueDescriptor.m";
    v15 = 1024;
    v16 = 30;
    v17 = 2114;
    v18 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v10.receiver = self;
  v10.super_class = FCCoreConfigurationFetchedValueDescriptor;
  v6 = [(FCFetchedValueDescriptor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configurationManager, manager);
  }

  return v7;
}

- (void)fetchValueWithCachePolicy:(unint64_t)policy qualityOfService:(int64_t)service completion:(id)completion
{
  completionCopy = completion;
  configurationManager = [(FCCoreConfigurationFetchedValueDescriptor *)self configurationManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __99__FCCoreConfigurationFetchedValueDescriptor_fetchValueWithCachePolicy_qualityOfService_completion___block_invoke;
  v9[3] = &unk_1E7C39EA8;
  v10 = completionCopy;
  v8 = completionCopy;
  [configurationManager fetchConfigurationIfNeededWithCompletion:v9];
}

- (BOOL)isValue:(id)value equalToValue:(id)toValue
{
  v18 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  toValueCopy = toValue;
  if (!valueCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "left"];
    *buf = 136315906;
    v11 = "[FCCoreConfigurationFetchedValueDescriptor isValue:equalToValue:]";
    v12 = 2080;
    v13 = "FCCoreConfigurationFetchedValueDescriptor.m";
    v14 = 1024;
    v15 = 65;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (toValueCopy)
    {
      goto LABEL_6;
    }
  }

  else if (toValueCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "right"];
    *buf = 136315906;
    v11 = "[FCCoreConfigurationFetchedValueDescriptor isValue:equalToValue:]";
    v12 = 2080;
    v13 = "FCCoreConfigurationFetchedValueDescriptor.m";
    v14 = 1024;
    v15 = 66;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:

  return valueCopy == toValueCopy;
}

@end