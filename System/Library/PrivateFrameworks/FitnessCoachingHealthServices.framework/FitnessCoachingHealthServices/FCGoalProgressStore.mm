@interface FCGoalProgressStore
- (FCGoalProgressStore)initWithProfile:(id)profile;
- (id)_legacyDefaultsDomain;
- (id)_userDefaultsDomain;
- (id)currentConfiguration;
- (id)lastFiredEventDateForIdentifier:(id)identifier;
- (id)scheduledEventIdentifiers;
- (void)clearScheduledEventIdentifiers;
- (void)storeCurrentConfiguration:(id)configuration;
- (void)storeFiredEventDate:(id)date identifier:(id)identifier;
- (void)storeScheduledEventIdentifiers:(id)identifiers;
@end

@implementation FCGoalProgressStore

- (FCGoalProgressStore)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = FCGoalProgressStore;
  v5 = [(FCGoalProgressStore *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (void)storeCurrentConfiguration:(id)configuration
{
  transportData = [configuration transportData];
  _userDefaultsDomain = [(FCGoalProgressStore *)self _userDefaultsDomain];
  v7 = 0;
  [_userDefaultsDomain setData:transportData forKey:@"goalProgressConfigurationData" error:&v7];
  v6 = v7;
  if (v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      [FCGoalProgressStore storeCurrentConfiguration:];
    }
  }
}

- (id)currentConfiguration
{
  _userDefaultsDomain = [(FCGoalProgressStore *)self _userDefaultsDomain];
  v7 = 0;
  v3 = [_userDefaultsDomain dataForKey:@"goalProgressConfigurationData" error:&v7];
  v4 = v7;
  if (v4)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      [FCGoalProgressStore currentConfiguration];
    }

    goto LABEL_4;
  }

  if (!v3)
  {
LABEL_4:
    v5 = 0;
    goto LABEL_7;
  }

  v5 = [objc_alloc(MEMORY[0x277D09CB0]) initWithTransportData:v3];
LABEL_7:

  return v5;
}

- (void)storeFiredEventDate:(id)date identifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  identifierCopy = identifier;
  _legacyDefaultsDomain = [(FCGoalProgressStore *)self _legacyDefaultsDomain];
  v11 = 0;
  [_legacyDefaultsDomain setDate:dateCopy forKey:identifierCopy error:&v11];
  v9 = v11;
  if (v9)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v13 = dateCopy;
      v14 = 2112;
      v15 = identifierCopy;
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&dword_24B55B000, v10, OS_LOG_TYPE_ERROR, "Failed to store goal progress event date %@ identifier %@, error %@", buf, 0x20u);
    }
  }
}

- (id)lastFiredEventDateForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _legacyDefaultsDomain = [(FCGoalProgressStore *)self _legacyDefaultsDomain];
  v10 = 0;
  v6 = [_legacyDefaultsDomain dateForKey:identifierCopy error:&v10];
  v7 = v10;
  if (v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      [FCGoalProgressStore lastFiredEventDateForIdentifier:];
    }

    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (void)storeScheduledEventIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _userDefaultsDomain = [(FCGoalProgressStore *)self _userDefaultsDomain];
  allObjects = [identifiersCopy allObjects];
  v8 = 0;
  [_userDefaultsDomain setPropertyListValue:allObjects forKey:@"goalProgressScheduledEventIdentifiers" error:&v8];
  v7 = v8;

  if (v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      [FCGoalProgressStore storeScheduledEventIdentifiers:];
    }
  }
}

- (void)clearScheduledEventIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB98]);
  [(FCGoalProgressStore *)self storeScheduledEventIdentifiers:v3];
}

- (id)scheduledEventIdentifiers
{
  _userDefaultsDomain = [(FCGoalProgressStore *)self _userDefaultsDomain];
  v7 = 0;
  v3 = [_userDefaultsDomain propertyListValueForKey:@"goalProgressScheduledEventIdentifiers" error:&v7];
  v4 = v7;
  if (v4)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      [FCGoalProgressStore scheduledEventIdentifiers];
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] setWithArray:v3];
  }

  return v5;
}

- (id)_userDefaultsDomain
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__FCGoalProgressStore__userDefaultsDomain__block_invoke;
  block[3] = &unk_27900B3B0;
  block[4] = self;
  if (_userDefaultsDomain_onceToken_0 != -1)
  {
    dispatch_once(&_userDefaultsDomain_onceToken_0, block);
  }

  return _userDefaultsDomain_defaultsDomain_0;
}

void __42__FCGoalProgressStore__userDefaultsDomain__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D10718]);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [v2 initWithCategory:1 domainName:@"com.apple.fitnesscoaching.goalProgress" profile:WeakRetained];
  v4 = _userDefaultsDomain_defaultsDomain_0;
  _userDefaultsDomain_defaultsDomain_0 = v3;
}

- (id)_legacyDefaultsDomain
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__FCGoalProgressStore__legacyDefaultsDomain__block_invoke;
  block[3] = &unk_27900B3B0;
  block[4] = self;
  if (_legacyDefaultsDomain_onceToken != -1)
  {
    dispatch_once(&_legacyDefaultsDomain_onceToken, block);
  }

  return _legacyDefaultsDomain_defaultsDomain;
}

void __44__FCGoalProgressStore__legacyDefaultsDomain__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D10718]);
  v3 = *MEMORY[0x277D10460];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4 = [v2 initWithCategory:1 domainName:v3 profile:WeakRetained];
  v5 = _legacyDefaultsDomain_defaultsDomain;
  _legacyDefaultsDomain_defaultsDomain = v4;
}

@end