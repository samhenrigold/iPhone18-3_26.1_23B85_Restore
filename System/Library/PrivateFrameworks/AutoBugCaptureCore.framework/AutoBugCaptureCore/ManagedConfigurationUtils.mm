@interface ManagedConfigurationUtils
+ (id)sharedInstance;
- (ManagedConfigurationUtils)init;
- (void)dealloc;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation ManagedConfigurationUtils

+ (id)sharedInstance
{
  if (sharedInstance_pred != -1)
  {
    +[ManagedConfigurationUtils sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __43__ManagedConfigurationUtils_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ManagedConfigurationUtils);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (ManagedConfigurationUtils)init
{
  v10.receiver = self;
  v10.super_class = ManagedConfigurationUtils;
  v2 = [(ManagedConfigurationUtils *)&v10 init];
  if (v2)
  {
    v3 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 4);
    v2->_managedConfigurationDylibHandle = v3;
    if (v3)
    {
      Class = objc_getClass("MCProfileConnection");
      sMCProfileConnectionClass = Class;
      if (Class)
      {
        class = [(objc_class *)Class sharedConnection];
        [class addObserver:v2];
        v6 = [class installedProfileIdentifiersWithFilterFlags:1];
        [(ManagedConfigurationUtils *)v2 setInstalledVisibleProfileIdentifiers:v6];

        [(ManagedConfigurationUtils *)v2 setDiagnosticsAndUsageEnabled:[class effectiveBoolValueForSetting:@"allowDiagnosticSubmission"]== 1];
LABEL_10:

        return v2;
      }

      class = symptomsLogHandle(0);
      if (!os_log_type_enabled(class, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *v9 = 0;
      v7 = "Couldn't load MCProfileConnection";
    }

    else
    {
      class = symptomsLogHandle(0);
      if (!os_log_type_enabled(class, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *v9 = 0;
      v7 = "Couldn't load ManagedConfiguration framework";
    }

    _os_log_impl(&dword_241804000, class, OS_LOG_TYPE_ERROR, v7, v9, 2u);
    goto LABEL_10;
  }

  return v2;
}

- (void)dealloc
{
  sharedConnection = [sMCProfileConnectionClass sharedConnection];
  [sharedConnection removeObserver:self];

  managedConfigurationDylibHandle = self->_managedConfigurationDylibHandle;
  if (managedConfigurationDylibHandle)
  {
    dlclose(managedConfigurationDylibHandle);
  }

  v5.receiver = self;
  v5.super_class = ManagedConfigurationUtils;
  [(ManagedConfigurationUtils *)&v5 dealloc];
}

- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)notification userInfo:(id)info
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [notification installedProfileIdentifiersWithFilterFlags:{1, info}];
  v6 = symptomsLogHandle(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEBUG, "Received ProfileListChangedNotification with installed visible profiles: %@", &v10, 0xCu);
  }

  installedVisibleProfileIdentifiers = [(ManagedConfigurationUtils *)self installedVisibleProfileIdentifiers];
  v8 = [installedVisibleProfileIdentifiers isEqualToArray:v5];

  if ((v8 & 1) == 0)
  {
    v9 = [v5 copy];
    [(ManagedConfigurationUtils *)self setInstalledVisibleProfileIdentifiers:v9];
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [notification effectiveBoolValueForSetting:{@"allowDiagnosticSubmission", info}];
  v6 = v5;
  v7 = symptomsLogHandle(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"OFF";
    if (v6 == 1)
    {
      v8 = @"ON";
    }

    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "MCProfile Settings Changed, we must check the value for allowDiagnosticSubmission. It's %@", &v9, 0xCu);
  }

  if ((v6 == 1) != [(ManagedConfigurationUtils *)self diagnosticsAndUsageEnabled])
  {
    [(ManagedConfigurationUtils *)self setDiagnosticsAndUsageEnabled:v6 == 1];
  }
}

@end