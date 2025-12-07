@interface ELSDefaults
+ (id)sharedInstance;
- (ELSDefaults)init;
- (unint64_t)_getCloudKitEnvironment;
@end

@implementation ELSDefaults

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ELSDefaults sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __29__ELSDefaults_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(ELSDefaults);

  return MEMORY[0x2821F96F8]();
}

- (ELSDefaults)init
{
  v5.receiver = self;
  v5.super_class = ELSDefaults;
  v2 = [(ELSDefaults *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_cloudKitEnvironment = [(ELSDefaults *)v2 _getCloudKitEnvironment];
  }

  return v3;
}

- (unint64_t)_getCloudKitEnvironment
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.enhanced-logging-state"];
  v3 = [v2 valueForKey:@"environment"];
  if (v3)
  {
    v4 = ELSLogHandleForCategory(11);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_24A07C000, v4, OS_LOG_TYPE_DEFAULT, "Using CloudKit environment set in user defaults: %@", &v11, 0xCu);
    }

    integerValue = [v3 integerValue];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AppleServiceToolkit"];
    v7 = [v6 integerForKey:@"Server"];
    v8 = ELSLogHandleForCategory(11);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_24A07C000, v8, OS_LOG_TYPE_DEFAULT, "Using UAT CloudKit environment", &v11, 2u);
      }

      integerValue = 1;
    }

    else
    {
      if (v9)
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_24A07C000, v8, OS_LOG_TYPE_DEFAULT, "Using production CloudKit environment", &v11, 2u);
      }

      integerValue = 0;
    }
  }

  return integerValue;
}

@end