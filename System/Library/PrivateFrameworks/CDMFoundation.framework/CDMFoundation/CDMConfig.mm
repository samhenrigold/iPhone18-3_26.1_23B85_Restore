@interface CDMConfig
+ (id)defaultEnabledServiceGraph;
- (CDMConfig)initWithMaxConcurrentCount:(unsigned int)count;
- (NSString)defaultLocaleIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CDMConfig

- (NSString)defaultLocaleIdentifier
{
  v2 = +[CDMPlatformUtils normalizedAssistantLocaleIdentifier];
  if (!v2)
  {
    v2 = @"en_US";
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    v5 = [(NSOrderedSet *)self->_availableServiceGraphs copy];
    v6 = v4[1];
    v4[1] = v5;
  }

  return v4;
}

- (CDMConfig)initWithMaxConcurrentCount:(unsigned int)count
{
  v16 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CDMConfig;
  v4 = [(CDMConfig *)&v11 init];
  if (v4)
  {
    if (!count)
    {
      count = +[CDMUserDefaultsUtils readGraphRunnerMaxConcurrentCount];
      v5 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v13 = "[CDMConfig initWithMaxConcurrentCount:]";
        v14 = 1024;
        countCopy = count;
        _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s initWithDefaultMaxConcurrentCount=%d", buf, 0x12u);
      }
    }

    v4->_maxConcurrentCount = count;
    v6 = MEMORY[0x1E695DFB8];
    v7 = [&unk_1F5819C88 copy];
    v8 = [v6 orderedSetWithArray:v7];
    availableServiceGraphs = v4->_availableServiceGraphs;
    v4->_availableServiceGraphs = v8;
  }

  return v4;
}

+ (id)defaultEnabledServiceGraph
{
  v2 = [&unk_1F5819C88 copy];

  return v2;
}

@end