@interface MSServerSideConfigManager
+ (double)doubleValueForParameter:(id)parameter forPersonID:(id)d defaultValue:(double)value;
+ (id)configManagerForPersonID:(id)d;
+ (id)objectForKey:(id)key forPersonID:(id)d defaultValue:(id)value;
+ (int)intValueForParameter:(id)parameter forPersonID:(id)d defaultValue:(int)value;
+ (int64_t)longLongValueForParameter:(id)parameter forPersonID:(id)d defaultValue:(int64_t)value;
+ (int64_t)longValueForParameter:(id)parameter forPersonID:(id)d defaultValue:(int64_t)value;
+ (void)abortAllActivities;
+ (void)forgetPersonID:(id)d;
- (MSServerSideConfigManager)initWithPersonID:(id)d baseURL:(id)l;
- (NSDictionary)config;
- (void)abort;
- (void)dealloc;
- (void)refreshConfiguration;
- (void)serverSideConfigProtocol:(id)protocol didFinishWithConfiguration:(id)configuration error:(id)error;
- (void)serverSideConfigProtocol:(id)protocol didReceiveAuthenticationError:(id)error;
- (void)setConfig:(id)config;
@end

@implementation MSServerSideConfigManager

- (void)serverSideConfigProtocol:(id)protocol didReceiveAuthenticationError:(id)error
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    mSVerboseDescription = [error MSVerboseDescription];
    v9 = 138543362;
    v10 = mSVerboseDescription;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to retrieve configuration due to authentication error: %{public}@", &v9, 0xCu);
  }

  daemon = self->_daemon;
  personID = [(MSServerSideConfigManager *)self personID];
  [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationFailureForPersonID:personID];

  [(MSDaemon *)self->_daemon releaseBusy];
  self->_state = 0;
}

- (void)serverSideConfigProtocol:(id)protocol didFinishWithConfiguration:(id)configuration error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  configurationCopy = configuration;
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    mSVerboseDescription = [errorCopy MSVerboseDescription];
    v14 = 138543618;
    v15 = configurationCopy;
    v16 = 2114;
    v17 = mSVerboseDescription;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Finished retrieving server-side configuration: %{public}@, error: %{public}@", &v14, 0x16u);
  }

  if (!errorCopy)
  {
    daemon = self->_daemon;
    personID = [(MSServerSideConfigManager *)self personID];
    [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationSuccessForPersonID:personID];

    [(MSServerSideConfigManager *)self setConfig:configurationCopy];
  }

  [(MSDaemon *)self->_daemon releaseBusy];
  self->_state = 0;
}

- (void)abort
{
  if (self->_state == 2)
  {
    [(MSServerSideConfigProtocol *)self->_protocol abort];
    [(MSDaemon *)self->_daemon releaseBusy];
  }

  self->_state = 0;
}

- (void)refreshConfiguration
{
  state = self->_state;
  if (state != 1)
  {
    if (state)
    {
      return;
    }

    [(MSDaemon *)self->_daemon retainBusy];
    self->_state = 1;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Refreshing server-side configuration.", v4, 2u);
  }

  self->_state = 2;
  [(MSServerSideConfigProtocol *)self->_protocol queryConfiguration];
}

- (void)setConfig:(id)config
{
  v21 = *MEMORY[0x277D85DE8];
  configCopy = config;
  config = self->_config;
  if (!config || ![(NSDictionary *)config isEqualToDictionary:configCopy])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v8 = defaultManager;
    if (configCopy)
    {
      stringByDeletingLastPathComponent = [(NSString *)self->_configPath stringByDeletingLastPathComponent];
      [v8 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

      v18 = 0;
      v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:configCopy requiringSecureCoding:1 error:&v18];
      v11 = v18;
      if (!v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to archive config, error: %@", buf, 0xCu);
      }

      if (([v10 writeToFile:self->_configPath atomically:1] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Cannot save config.", buf, 2u);
      }
    }

    else
    {
      [defaultManager removeItemAtPath:self->_configPath error:0];
    }

    objc_storeStrong(&self->_config, config);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = MEMORY[0x277CBEAC0];
    personID = [(MSServerSideConfigManager *)self personID];
    v15 = [v13 dictionaryWithObjectsAndKeys:{personID, @"personID", 0}];
    [defaultCenter postNotificationName:@"MSServerSideConfigChanged" object:self userInfo:v15];

    daemon = self->_daemon;
    personID2 = [(MSServerSideConfigManager *)self personID];
    [(MSMediaStreamDaemon *)daemon didReceiveNewServerSideConfigurationForPersonID:personID2];
  }
}

- (NSDictionary)config
{
  config = self->_config;
  if (config || ([MEMORY[0x277CCAAC8] MSSafeUnarchiveObjectWithFile:self->_configPath outError:0], v4 = objc_claimAutoreleasedReturnValue(), v5 = self->_config, self->_config = v4, v5, (config = self->_config) != 0))
  {
    dictionary = config;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
  }

  return dictionary;
}

- (void)dealloc
{
  [(MSServerSideConfigManager *)self abort];
  v3.receiver = self;
  v3.super_class = MSServerSideConfigManager;
  [(MSServerSideConfigManager *)&v3 dealloc];
}

- (MSServerSideConfigManager)initWithPersonID:(id)d baseURL:(id)l
{
  dCopy = d;
  lCopy = l;
  v16.receiver = self;
  v16.super_class = MSServerSideConfigManager;
  v9 = [(MSServerSideConfigManager *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_personID, d);
    v11 = [[MSServerSideConfigProtocol alloc] initWithPersonID:dCopy baseURL:lCopy];
    protocol = v10->_protocol;
    v10->_protocol = v11;

    [(MSServerSideConfigProtocol *)v10->_protocol setDelegate:v10];
    v13 = MSPathServerSideConfigPathForPersonID(dCopy);
    configPath = v10->_configPath;
    v10->_configPath = v13;
  }

  return v10;
}

+ (id)objectForKey:(id)key forPersonID:(id)d defaultValue:(id)value
{
  v24 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  dCopy = d;
  valueCopy = value;
  v10 = MSPlatform();
  theDaemon = [v10 theDaemon];
  v12 = [theDaemon serverSideConfigurationForPersonID:dCopy];
  v13 = [v12 objectForKey:keyCopy];

  v14 = valueCopy;
  if (v13)
  {
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    v14 = v13;
    if (v15)
    {
      v18 = 138412802;
      v19 = dCopy;
      v20 = 2114;
      v21 = keyCopy;
      v22 = 2114;
      v23 = v13;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "PersonID %@ using server-side value for key %{public}@. Value: %{public}@", &v18, 0x20u);
      v14 = v13;
    }
  }

  v16 = v14;

  return v16;
}

+ (int64_t)longLongValueForParameter:(id)parameter forPersonID:(id)d defaultValue:(int64_t)value
{
  v20 = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  dCopy = d;
  v9 = MSPlatform();
  theDaemon = [v9 theDaemon];
  v11 = [theDaemon serverSideConfigurationForPersonID:dCopy];
  v12 = [v11 objectForKey:parameterCopy];

  if (v12)
  {
    if (objc_opt_respondsToSelector())
    {
      value = [v12 longLongValue];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v14 = 138412802;
        v15 = dCopy;
        v16 = 2114;
        v17 = parameterCopy;
        v18 = 2048;
        valueCopy = value;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "PersonID %@ using server-side value for parameter %{public}@. Value: %lld", &v14, 0x20u);
      }
    }
  }

  return value;
}

+ (int64_t)longValueForParameter:(id)parameter forPersonID:(id)d defaultValue:(int64_t)value
{
  v20 = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  dCopy = d;
  v9 = MSPlatform();
  theDaemon = [v9 theDaemon];
  v11 = [theDaemon serverSideConfigurationForPersonID:dCopy];
  v12 = [v11 objectForKey:parameterCopy];

  if (v12)
  {
    if (objc_opt_respondsToSelector())
    {
      value = [v12 longValue];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v14 = 138412802;
        v15 = dCopy;
        v16 = 2114;
        v17 = parameterCopy;
        v18 = 2048;
        valueCopy = value;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "PersonID %@ using server-side value for parameter %{public}@. Value: %ld", &v14, 0x20u);
      }
    }
  }

  return value;
}

+ (double)doubleValueForParameter:(id)parameter forPersonID:(id)d defaultValue:(double)value
{
  v21 = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  dCopy = d;
  v9 = MSPlatform();
  theDaemon = [v9 theDaemon];
  v11 = [theDaemon serverSideConfigurationForPersonID:dCopy];
  v12 = [v11 objectForKey:parameterCopy];

  if (v12)
  {
    if (objc_opt_respondsToSelector())
    {
      [v12 doubleValue];
      value = v13;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v15 = 138412802;
        v16 = dCopy;
        v17 = 2114;
        v18 = parameterCopy;
        v19 = 2048;
        valueCopy = value;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "PersonID %@ using server-side value for parameter %{public}@. Value: %f", &v15, 0x20u);
      }
    }
  }

  return value;
}

+ (int)intValueForParameter:(id)parameter forPersonID:(id)d defaultValue:(int)value
{
  v20 = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  dCopy = d;
  v9 = MSPlatform();
  theDaemon = [v9 theDaemon];
  v11 = [theDaemon serverSideConfigurationForPersonID:dCopy];
  v12 = [v11 objectForKey:parameterCopy];

  if (v12)
  {
    if (objc_opt_respondsToSelector())
    {
      value = [v12 intValue];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v14 = 138412802;
        v15 = dCopy;
        v16 = 2114;
        v17 = parameterCopy;
        v18 = 1024;
        valueCopy = value;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "PersonID %@ using server-side value for parameter %{public}@. Value: %d", &v14, 0x1Cu);
      }
    }
  }

  return value;
}

+ (void)forgetPersonID:(id)d
{
  dCopy = d;
  v3 = [_configManagerByID objectForKey:?];
  v4 = v3;
  if (v3)
  {
    [v3 abort];
    [_configManagerByID removeObjectForKey:dCopy];
  }
}

+ (void)abortAllActivities
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [_configManagerByID allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v7 + 1) + 8 * v6++) abort];
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (id)configManagerForPersonID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = _configManagerByID;
    if (!_configManagerByID)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v6 = _configManagerByID;
      _configManagerByID = v5;

      v4 = _configManagerByID;
    }

    v7 = [v4 objectForKey:dCopy];
    if (!v7)
    {
      v8 = [MSServerSideConfigManager alloc];
      v9 = MSPlatform();
      v10 = [v9 baseURLForPersonID:dCopy];
      v7 = [(MSServerSideConfigManager *)v8 initWithPersonID:dCopy baseURL:v10];

      [_configManagerByID setObject:v7 forKey:dCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end