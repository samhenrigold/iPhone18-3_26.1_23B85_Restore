@interface CAFCarConfiguration
+ (BOOL)getBoolean:(id)boolean key:(id)key;
+ (id)getType:(id)type;
+ (id)getUUID:(id)d instanceID:(id)iD;
- (BOOL)updateConfiguration:(id)configuration;
- (BOOL)updateConfiguration:(id)configuration pluginConfig:(id)config;
- (CAFCarConfiguration)initWithCoder:(id)coder;
- (CAFCarConfiguration)initWithIdentifier:(id)identifier session:(id)session;
- (CAFCarConfiguration)initWithName:(id)name identifier:(id)identifier rightHandDrive:(BOOL)drive pluginCount:(unint64_t)count sessionAnalytics:(id)analytics;
- (CAFCarConfigurationDelegate)delegate;
- (NSString)description;
- (id)copyWithoutPlugins;
- (id)currentDescriptionForCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
- (void)setDelegate:(id)delegate;
@end

@implementation CAFCarConfiguration

- (CAFCarConfiguration)initWithIdentifier:(id)identifier session:(id)session
{
  identifierCopy = identifier;
  sessionCopy = session;
  v23.receiver = self;
  v23.super_class = CAFCarConfiguration;
  v9 = [(CAFCarConfiguration *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uniqueIdentifier, identifier);
    configuration = [sessionCopy configuration];
    name = [configuration name];
    name = v10->_name;
    v10->_name = name;

    configuration2 = [sessionCopy configuration];
    v10->_rightHandDrive = [configuration2 rightHandDrive];

    configuration3 = [sessionCopy configuration];
    v10->_pluginCount = [configuration3 vehicleDataPluginCount];

    v16 = [[CAFSessionAnalytics alloc] initWithSession:sessionCopy];
    sessionAnalytics = v10->_sessionAnalytics;
    v10->_sessionAnalytics = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pluginConfigs = v10->_pluginConfigs;
    v10->_pluginConfigs = v18;

    v20 = [[CAFCachedDescription alloc] initWithCacheable:v10];
    cachedDescription = v10->_cachedDescription;
    v10->_cachedDescription = v20;
  }

  return v10;
}

- (id)copyWithoutPlugins
{
  v3 = [CAFCarConfiguration alloc];
  name = [(CAFCarConfiguration *)self name];
  uniqueIdentifier = [(CAFCarConfiguration *)self uniqueIdentifier];
  rightHandDrive = [(CAFCarConfiguration *)self rightHandDrive];
  pluginCount = [(CAFCarConfiguration *)self pluginCount];
  sessionAnalytics = [(CAFCarConfiguration *)self sessionAnalytics];
  v9 = [(CAFCarConfiguration *)v3 initWithName:name identifier:uniqueIdentifier rightHandDrive:rightHandDrive pluginCount:pluginCount sessionAnalytics:sessionAnalytics];

  return v9;
}

- (CAFCarConfiguration)initWithName:(id)name identifier:(id)identifier rightHandDrive:(BOOL)drive pluginCount:(unint64_t)count sessionAnalytics:(id)analytics
{
  nameCopy = name;
  identifierCopy = identifier;
  analyticsCopy = analytics;
  v23.receiver = self;
  v23.super_class = CAFCarConfiguration;
  v16 = [(CAFCarConfiguration *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_name, name);
    objc_storeStrong(&v17->_uniqueIdentifier, identifier);
    v17->_rightHandDrive = drive;
    v17->_pluginCount = count;
    objc_storeStrong(&v17->_sessionAnalytics, analytics);
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pluginConfigs = v17->_pluginConfigs;
    v17->_pluginConfigs = v18;

    v20 = [[CAFCachedDescription alloc] initWithCacheable:v17];
    cachedDescription = v17->_cachedDescription;
    v17->_cachedDescription = v20;
  }

  return v17;
}

- (BOOL)updateConfiguration:(id)configuration pluginConfig:(id)config
{
  configCopy = config;
  configurationCopy = configuration;
  pluginConfigs = [(CAFCarConfiguration *)self pluginConfigs];
  [pluginConfigs setObject:configCopy forKeyedSubscript:configurationCopy];

  cachedDescription = [(CAFCarConfiguration *)self cachedDescription];
  [cachedDescription setNeedsRefreshDescription];

  v11 = CAFGeneralLogging(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CAFCarConfiguration updateConfiguration:pluginConfig:];
  }

  delegate = [(CAFCarConfiguration *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(CAFCarConfiguration *)self delegate];
    pluginConfigs2 = [(CAFCarConfiguration *)self pluginConfigs];
    [delegate2 car:self didUpdatePluginConfigs:pluginConfigs2];
  }

  return 1;
}

- (BOOL)updateConfiguration:(id)configuration
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__CAFCarConfiguration_updateConfiguration___block_invoke;
  v12[3] = &unk_27890F3C0;
  v12[4] = self;
  [configuration enumerateKeysAndObjectsUsingBlock:v12];
  cachedDescription = [(CAFCarConfiguration *)self cachedDescription];
  [cachedDescription setNeedsRefreshDescription];

  v6 = CAFGeneralLogging(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CAFCarConfiguration updateConfiguration:];
  }

  delegate = [(CAFCarConfiguration *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CAFCarConfiguration *)self delegate];
    pluginConfigs = [(CAFCarConfiguration *)self pluginConfigs];
    [delegate2 car:self didUpdatePluginConfigs:pluginConfigs];
  }

  return 1;
}

void __43__CAFCarConfiguration_updateConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v7 = v5;
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    objc_opt_class();
    v8 = v6;
    if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = [*(a1 + 32) pluginConfigs];
      [v9 setObject:v8 forKeyedSubscript:v7];
    }

    else
    {

      v8 = CAFGeneralLogging(v12);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __43__CAFCarConfiguration_updateConfiguration___block_invoke_cold_1(v7, v8);
      }
    }

    v11 = v7;
  }

  else
  {

    v11 = CAFGeneralLogging(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __43__CAFCarConfiguration_updateConfiguration___block_invoke_cold_2(v11);
    }
  }
}

- (NSString)description
{
  cachedDescription = [(CAFCarConfiguration *)self cachedDescription];
  v3 = [cachedDescription description];

  return v3;
}

+ (BOOL)getBoolean:(id)boolean key:(id)key
{
  v4 = [boolean objectForKeyedSubscript:key];
  v5 = v4;
  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)getType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  v4 = [typeCopy objectForKeyedSubscript:@"type"];

  v5 = v4;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [CAFCarConfiguration getTypeString:v6];

  return v7;
}

+ (id)getUUID:(id)d instanceID:(id)iD
{
  v11 = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  longLongValue = [d longLongValue];
  longLongValue2 = [iDCopy longLongValue];

  v10[0] = BYTE3(longLongValue);
  v10[1] = BYTE2(longLongValue);
  v10[2] = BYTE1(longLongValue);
  v10[3] = longLongValue;
  v10[4] = BYTE5(longLongValue);
  v10[5] = BYTE4(longLongValue);
  v10[6] = HIBYTE(longLongValue);
  v10[7] = BYTE6(longLongValue);
  v10[8] = HIBYTE(longLongValue2);
  v10[9] = BYTE6(longLongValue2);
  v10[10] = BYTE5(longLongValue2);
  v10[11] = BYTE4(longLongValue2);
  v10[12] = BYTE3(longLongValue2);
  v10[13] = BYTE2(longLongValue2);
  v10[14] = BYTE1(longLongValue2);
  v10[15] = longLongValue2;
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v10];

  return v8;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = CAFGeneralLogging(delegateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CAFCarConfiguration setDelegate:];
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
  cachedDescription = [(CAFCarConfiguration *)self cachedDescription];
  [cachedDescription setNeedsRefreshDescription];
}

- (CAFCarConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = CAFCarConfiguration;
  v5 = [(CAFCarConfiguration *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAFCarConfigurationNameKey"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAFCarConfigurationUniqueIdentifierKey"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAFCarConfigurationPluginCountKey"];
    v5->_pluginCount = [v10 unsignedIntValue];

    if ([coderCopy containsValueForKey:@"CAFCarConfigurationPluginConfigs"])
    {
      v11 = MEMORY[0x277CBEB98];
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = [v11 setWithObjects:{v12, v13, v14, v15, v16, objc_opt_class(), 0}];
      v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"CAFCarConfigurationPluginConfigs"];
      pluginConfigs = v5->_pluginConfigs;
      v5->_pluginConfigs = v18;
    }

    v5->_rightHandDrive = [coderCopy decodeBoolForKey:@"CAFCarConfigurationRightHandDrive"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAFCarConfigurationSessionAnalytics"];
    sessionAnalytics = v5->_sessionAnalytics;
    v5->_sessionAnalytics = v20;

    v22 = [[CAFCachedDescription alloc] initWithCacheable:v5];
    cachedDescription = v5->_cachedDescription;
    v5->_cachedDescription = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"CAFCarConfigurationNameKey"];
  [coderCopy encodeObject:self->_uniqueIdentifier forKey:@"CAFCarConfigurationUniqueIdentifierKey"];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_pluginCount];
  [coderCopy encodeObject:v4 forKey:@"CAFCarConfigurationPluginCountKey"];

  pluginConfigs = self->_pluginConfigs;
  if (pluginConfigs)
  {
    [coderCopy encodeObject:pluginConfigs forKey:@"CAFCarConfigurationPluginConfigs"];
  }

  [coderCopy encodeBool:self->_rightHandDrive forKey:@"CAFCarConfigurationRightHandDrive"];
  [coderCopy encodeObject:self->_sessionAnalytics forKey:@"CAFCarConfigurationSessionAnalytics"];
}

- (id)currentDescriptionForCache:(id)cache
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  delegate = [(CAFCarConfiguration *)self delegate];
  name = [(CAFCarConfiguration *)self name];
  uniqueIdentifier = [(CAFCarConfiguration *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  pluginConfigs = [(CAFCarConfiguration *)self pluginConfigs];
  v11 = [v4 stringWithFormat:@"<%@: %p delegate=%p name=%@ uniqueIdentifier=%@ pluginCount=%lu/%lu>", v5, self, delegate, name, uUIDString, objc_msgSend(pluginConfigs, "count"), -[CAFCarConfiguration pluginCount](self, "pluginCount")];

  return v11;
}

- (CAFCarConfigurationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateConfiguration:pluginConfig:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_7();
  _os_log_debug_impl(&dword_231618000, v0, OS_LOG_TYPE_DEBUG, "%s %@ updating delegate", v1, 0x16u);
}

- (void)updateConfiguration:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_7();
  _os_log_debug_impl(&dword_231618000, v0, OS_LOG_TYPE_DEBUG, "%s %@ updating delegate", v1, 0x16u);
}

void __43__CAFCarConfiguration_updateConfiguration___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_231618000, a2, OS_LOG_TYPE_ERROR, "Parsing configuration from pluginID: %@ failed for pluginConfig", &v2, 0xCu);
}

- (void)setDelegate:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_0_7();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&dword_231618000, v1, OS_LOG_TYPE_DEBUG, "%s %@ updating delegate to %p", v2, 0x20u);
}

@end