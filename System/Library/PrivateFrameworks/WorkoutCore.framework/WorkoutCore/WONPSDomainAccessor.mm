@interface WONPSDomainAccessor
- (BOOL)BOOLForKey:(id)key;
- (BOOL)_FIBoolForPerGizmoDomainAndKey:(id)key defaultValue:(BOOL)value;
- (BOOL)isWorkoutExtendedModeSupported;
- (WONPSDomainAccessor)init;
- (id)dataForPerGizmoDomainAndKey:(id)key;
- (id)valueForKey:(id)key;
- (void)pairedDeviceStateChanged;
- (void)removeDataPerGizmoDomainAndKey:(id)key;
- (void)setupNotificationObservers;
- (void)writeBoolPerGizmoDomainAndKey:(id)key value:(BOOL)value;
- (void)writeDataPerGizmoDomainAndKey:(id)key data:(id)data;
@end

@implementation WONPSDomainAccessor

- (WONPSDomainAccessor)init
{
  v10 = a2;
  v11 = 0;
  v9.receiver = self;
  v9.super_class = WONPSDomainAccessor;
  v8 = [(WONPSDomainAccessor *)&v9 init];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    v2 = objc_alloc(MEMORY[0x277D095A0]);
    v3 = [v2 initWithDomain:*MEMORY[0x277D09618]];
    domainAccessor = v11->_domainAccessor;
    v11->_domainAccessor = v3;
    *&v5 = MEMORY[0x277D82BD8](domainAccessor).n128_u64[0];
    [(WONPSDomainAccessor *)v11 setupNotificationObservers];
  }

  v7 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (BOOL)isWorkoutExtendedModeSupported
{
  selfCopy = self;
  location[1] = a2;
  location[0] = FIGetActivePairedDevice();
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C26AD300-9198-11EC-8BC2-0800200C9A66"];
  v4 = [location[0] supportsCapability:?];
  v6 = [(WONPSDomainAccessor *)selfCopy _FIBoolForPerGizmoDomainAndKey:@"WorkoutExtendedModeForceHardwareSupportEnabled" defaultValue:0, MEMORY[0x277D82BD8](v3).n128_f64[0]];
  v5 = 1;
  if ((v4 & 1) == 0)
  {
    v5 = v6;
  }

  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)_FIBoolForPerGizmoDomainAndKey:(id)key defaultValue:(BOOL)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  valueCopy = value;
  valueCopy2 = value;
  synchronize = [(FINPSDomainAccessorWrapper *)selfCopy->_domainAccessor synchronize];
  if (synchronize)
  {
    NSLog(&cfstr_Wonpsdomainacc_0.isa, synchronize);
  }

  v7 = [(FINPSDomainAccessorWrapper *)selfCopy->_domainAccessor objectForKey:location[0]];
  if (v7)
  {
    valueCopy2 = [v7 BOOLValue];
  }

  v5 = valueCopy2;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&synchronize, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (id)valueForKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  synchronize = [(FINPSDomainAccessorWrapper *)selfCopy->_domainAccessor synchronize];
  if (synchronize)
  {
    NSLog(&cfstr_Wonpsdomainacc_0.isa, synchronize);
  }

  v4 = [(FINPSDomainAccessorWrapper *)selfCopy->_domainAccessor objectForKey:location[0]];
  objc_storeStrong(&synchronize, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)BOOLForKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  synchronize = [(FINPSDomainAccessorWrapper *)selfCopy->_domainAccessor synchronize];
  if (synchronize)
  {
    NSLog(&cfstr_Wonpsdomainacc_0.isa, synchronize);
  }

  v4 = [(FINPSDomainAccessorWrapper *)selfCopy->_domainAccessor BOOLForKey:location[0]];
  objc_storeStrong(&synchronize, 0);
  objc_storeStrong(location, 0);
  return v4;
}

- (void)removeDataPerGizmoDomainAndKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  [(FINPSDomainAccessorWrapper *)selfCopy->_domainAccessor setObject:0 forKey:location[0]];
  synchronize = [(FINPSDomainAccessorWrapper *)selfCopy->_domainAccessor synchronize];
  if (synchronize)
  {
    NSLog(&cfstr_Wonpsdomainacc_0.isa, synchronize);
  }

  objc_storeStrong(&synchronize, 0);
  objc_storeStrong(location, 0);
}

- (id)dataForPerGizmoDomainAndKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  synchronize = [(FINPSDomainAccessorWrapper *)selfCopy->_domainAccessor synchronize];
  if (synchronize)
  {
    NSLog(&cfstr_Wonpsdomainacc_0.isa, synchronize);
  }

  v5 = [(FINPSDomainAccessorWrapper *)selfCopy->_domainAccessor objectForKey:location[0]];
  if (v5)
  {
    v9 = MEMORY[0x277D82BE0](v5);
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&synchronize, 0);
  objc_storeStrong(location, 0);
  v3 = v9;

  return v3;
}

- (void)writeDataPerGizmoDomainAndKey:(id)key data:(id)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v9 = 0;
  objc_storeStrong(&v9, data);
  [(FINPSDomainAccessorWrapper *)selfCopy->_domainAccessor setObject:v9 forKey:location[0]];
  synchronize = [(FINPSDomainAccessorWrapper *)selfCopy->_domainAccessor synchronize];
  if (synchronize)
  {
    NSLog(&cfstr_Wonpsdomainacc_0.isa, synchronize);
  }

  else
  {
    v6 = objc_opt_new();
    v4 = *MEMORY[0x277D09618];
    v5 = [MEMORY[0x277CBEB98] setWithObject:location[0]];
    [v6 synchronizeNanoDomain:v4 keys:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&synchronize, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)writeBoolPerGizmoDomainAndKey:(id)key value:(BOOL)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  valueCopy = value;
  [(FINPSDomainAccessorWrapper *)selfCopy->_domainAccessor setBool:value forKey:location[0]];
  synchronize = [(FINPSDomainAccessorWrapper *)selfCopy->_domainAccessor synchronize];
  if (synchronize)
  {
    NSLog(&cfstr_Wonpsdomainacc_0.isa, synchronize);
  }

  else
  {
    v6 = objc_opt_new();
    v4 = *MEMORY[0x277D09618];
    v5 = [MEMORY[0x277CBEB98] setWithObject:location[0]];
    [v6 synchronizeNanoDomain:v4 keys:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&synchronize, 0);
  objc_storeStrong(location, 0);
}

- (void)setupNotificationObservers
{
  v14[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v11[1] = a2;
  v11[0] = [MEMORY[0x277CCAB98] defaultCenter];
  v14[0] = *MEMORY[0x277D2BC68];
  v14[1] = *MEMORY[0x277D2BC78];
  v14[2] = *MEMORY[0x277D2BC48];
  v14[3] = *MEMORY[0x277D2BC50];
  location = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location);
  v7 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v7)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v7;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(__b[1] + 8 * v4);
      [v11[0] addObserver:selfCopy selector:sel_pairedDeviceStateChanged name:v9 object:0];
      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v11, 0);
}

- (void)pairedDeviceStateChanged
{
  selfCopy = self;
  v13[1] = a2;
  NSLog(&cfstr_Wonpsdomainacc_1.isa);
  v2 = objc_alloc(MEMORY[0x277D095A0]);
  v3 = [v2 initWithDomain:*MEMORY[0x277D09618]];
  domainAccessor = selfCopy->_domainAccessor;
  selfCopy->_domainAccessor = v3;
  MEMORY[0x277D82BD8](domainAccessor);
  v6 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __47__WONPSDomainAccessor_pairedDeviceStateChanged__block_invoke;
  v12 = &unk_277D88890;
  v13[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v13, 0);
}

double __47__WONPSDomainAccessor_pairedDeviceStateChanged__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"WONPSDomainAccessorDidRefreshNotification" object:*(a1 + 32)];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

@end