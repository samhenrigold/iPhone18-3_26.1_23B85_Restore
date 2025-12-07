@interface PSUICoreTelephonyCapabilitiesCache
+ (id)sharedInstance;
- (BOOL)canSetCapabilityForContext:(id)context cache:(id)cache;
- (BOOL)canSetCapabilityVoLTE:(id)e;
- (BOOL)canSetCapabilityVoNR:(id)r;
- (BOOL)canSetNetworkSlicing:(id)slicing;
- (BOOL)canSetSatelliteCapability:(id)capability;
- (BOOL)canSetTurnOffCellular:(id)cellular;
- (BOOL)cannotChangeVoLTESettingCallCarrier:(id)carrier;
- (BOOL)capabilityEnabledForContext:(id)context cache:(id)cache;
- (BOOL)capabilityEnabledVoLTE:(id)e;
- (BOOL)capabilityEnabledVoNR:(id)r;
- (BOOL)fetchDeviceAndPlan5GSupport:(id)support;
- (BOOL)getCapabilityInfo:(id)info forContext:(id)context cache:(id)cache;
- (BOOL)getNetworkSlicing:(id)slicing;
- (BOOL)getSatelliteCapability:(id)capability;
- (BOOL)getTurnOffCellular:(id)cellular;
- (BOOL)isVoLTEStillProvisioningForContext:(id)context;
- (PSUICoreTelephonyCapabilitiesCache)init;
- (id)getCapabilityInfoObject:(id)object forContext:(id)context cache:(id)cache;
- (id)initPrivate;
- (id)networkSlicingCategories:(id)categories;
- (void)clearCache;
- (void)context:(id)context capabilitiesChanged:(id)changed;
- (void)fetchCanSetCapabilityWithCache:(id)cache forContext:(id)context;
- (void)fetchCapabilityEnabledWithCache:(id)cache forContext:(id)context;
- (void)setCapabilityEnabledForContext:(id)context cache:(id)cache enabled:(BOOL)enabled info:(id)info;
- (void)setCapabilityInfoObject:(id)object forKey:(id)key forContext:(id)context cache:(id)cache;
- (void)setCapabilityVoLTE:(id)e enabled:(BOOL)enabled;
- (void)setCapabilityVoNR:(id)r enabled:(BOOL)enabled;
- (void)setNetworkSlicing:(id)slicing enabled:(BOOL)enabled category:(id)category;
- (void)setNetworkSlicingCategories:(id)categories forContext:(id)context;
- (void)setSatelliteCapability:(id)capability enabled:(BOOL)enabled;
- (void)setTurnOffCellular:(id)cellular enabled:(BOOL)enabled;
@end

@implementation PSUICoreTelephonyCapabilitiesCache

+ (id)sharedInstance
{
  if (qword_28156A680 != -1)
  {
    dispatch_once(&qword_28156A680, &__block_literal_global_0);
  }

  v3 = _MergedGlobals_57;

  return v3;
}

uint64_t __52__PSUICoreTelephonyCapabilitiesCache_sharedInstance__block_invoke()
{
  _MergedGlobals_57 = [[PSUICoreTelephonyCapabilitiesCache alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v21.receiver = self;
  v21.super_class = PSUICoreTelephonyCapabilitiesCache;
  v2 = [(PSUICoreTelephonyCapabilitiesCache *)&v21 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CC37B0]);
    v4 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"capabilities_cache"];
    v5 = [v3 initWithQueue:v4];
    client = v2->_client;
    v2->_client = v5;

    [(CoreTelephonyClient *)v2->_client setDelegate:v2];
    mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
    simStatusCache = v2->_simStatusCache;
    v2->_simStatusCache = mEMORY[0x277D4D868];

    v9 = [CTCapability alloc];
    v10 = [(CTCapability *)v9 initWithCapabilityName:*MEMORY[0x277CC37F8]];
    [(PSUICoreTelephonyCapabilitiesCache *)v2 setVolteCapability:v10];

    v11 = [CTCapability alloc];
    v12 = [(CTCapability *)v11 initWithCapabilityName:*MEMORY[0x277CC3800]];
    [(PSUICoreTelephonyCapabilitiesCache *)v2 setVonrCapability:v12];

    v13 = [CTCapability alloc];
    v14 = [(CTCapability *)v13 initWithCapabilityName:*MEMORY[0x277CC3840]];
    [(PSUICoreTelephonyCapabilitiesCache *)v2 setTurnOffCellularCapability:v14];

    v15 = [CTCapability alloc];
    v16 = [(CTCapability *)v15 initWithCapabilityName:*MEMORY[0x277CC3828]];
    [(PSUICoreTelephonyCapabilitiesCache *)v2 setNetworkSlicingCapability:v16];

    v17 = [CTCapability alloc];
    v18 = [(CTCapability *)v17 initWithCapabilityName:*MEMORY[0x277CC3830]];
    [(PSUICoreTelephonyCapabilitiesCache *)v2 setSatelliteCapability:v18];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v2;
}

- (PSUICoreTelephonyCapabilitiesCache)init
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "[PSUICoreTelephonyCapabilitiesCache init]";
    _os_log_error_impl(&dword_2658DE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unsupported initializer called: %s", &v2, 0xCu);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)fetchCanSetCapabilityWithCache:(id)cache forContext:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  contextCopy = context;
  getLogger = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = contextCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Executing can set capability fetch for %@", buf, 0xCu);
  }

  v21 = 0;
  client = self->_client;
  capabilityName = [cacheCopy capabilityName];
  v20 = 0;
  v11 = [(CoreTelephonyClient *)client context:contextCopy canSetCapability:capabilityName allowed:&v21 with:&v20];
  v12 = v20;

  if (v11)
  {
    getLogger2 = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = contextCopy;
      v24 = 2112;
      v25 = v11;
      _os_log_error_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_ERROR, "Can set fetch for %@ failed: %@", buf, 0x16u);
    }

    bOOLValue = 0;
  }

  else
  {
    v15 = [v12 objectForKey:*MEMORY[0x277CC3838]];
    bOOLValue = [v15 BOOLValue];

    getLogger2 = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      *buf = 138413058;
      if (v21)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v23 = contextCopy;
      if (bOOLValue)
      {
        v16 = @"YES";
      }

      v24 = 2112;
      v25 = v17;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Can set fetch for %@, Allowed: %@, Enabled: %@, %@", buf, 0x2Au);
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  slotID = [contextCopy slotID];
  [cacheCopy acceptCapabilityforSlotID:slotID status:bOOLValue canSet:v21 info:v12];
  objc_sync_exit(selfCopy);
}

- (BOOL)canSetCapabilityForContext:(id)context cache:(id)cache
{
  contextCopy = context;
  cacheCopy = cache;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(contextCopy, "slotID")}];
  capabilityFetched = [cacheCopy capabilityFetched];
  v10 = [capabilityFetched objectForKeyedSubscript:v8];
  v11 = [v10 isEqual:MEMORY[0x277CBEC38]];

  if ((v11 & 1) == 0)
  {
    [(PSUICoreTelephonyCapabilitiesCache *)self fetchCanSetCapabilityWithCache:cacheCopy forContext:contextCopy];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = [cacheCopy getCapabilityForSlotID:{objc_msgSend(contextCopy, "slotID")}];
  objc_sync_exit(selfCopy);

  return v13;
}

- (BOOL)getCapabilityInfo:(id)info forContext:(id)context cache:(id)cache
{
  v5 = [(PSUICoreTelephonyCapabilitiesCache *)self getCapabilityInfoObject:info forContext:context cache:cache];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (id)getCapabilityInfoObject:(id)object forContext:(id)context cache:(id)cache
{
  objectCopy = object;
  contextCopy = context;
  cacheCopy = cache;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(contextCopy, "slotID")}];
  capabilityFetched = [cacheCopy capabilityFetched];
  v13 = [capabilityFetched objectForKeyedSubscript:v11];
  v14 = [v13 isEqual:MEMORY[0x277CBEC38]];

  if ((v14 & 1) == 0)
  {
    [(PSUICoreTelephonyCapabilitiesCache *)self fetchCanSetCapabilityWithCache:cacheCopy forContext:contextCopy];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = [cacheCopy getCapabilityInfoObject:objectCopy forSlotID:{objc_msgSend(contextCopy, "slotID")}];
  objc_sync_exit(selfCopy);

  return v16;
}

- (void)setCapabilityInfoObject:(id)object forKey:(id)key forContext:(id)context cache:(id)cache
{
  objectCopy = object;
  keyCopy = key;
  contextCopy = context;
  cacheCopy = cache;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [cacheCopy setCapabilityInfoObject:objectCopy forKey:keyCopy forSlotID:{objc_msgSend(contextCopy, "slotID")}];
  objc_sync_exit(selfCopy);
}

- (void)fetchCapabilityEnabledWithCache:(id)cache forContext:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  contextCopy = context;
  getLogger = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Executing capability enabled fetch", buf, 2u);
  }

  v21 = 0;
  client = self->_client;
  capabilityName = [cacheCopy capabilityName];
  v20 = 0;
  v11 = [(CoreTelephonyClient *)client context:contextCopy getCapability:capabilityName status:&v21 with:&v20];
  v12 = v20;

  if (v11)
  {
    getLogger2 = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = contextCopy;
      v24 = 2112;
      v25 = v11;
      _os_log_error_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_ERROR, "Capability enabled fetch failed for %@: %@", buf, 0x16u);
    }

    bOOLValue = 0;
  }

  else
  {
    v15 = [v12 objectForKey:*MEMORY[0x277CC3818]];
    bOOLValue = [v15 BOOLValue];

    getLogger2 = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      *buf = 138413058;
      if (bOOLValue)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v23 = contextCopy;
      v24 = 2112;
      if (v21)
      {
        v16 = @"YES";
      }

      v25 = v17;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Fetch for capability for %@, Allowed: %@, Enabled: %@, %@", buf, 0x2Au);
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  slotID = [contextCopy slotID];
  [cacheCopy acceptCapabilityforSlotID:slotID status:v21 canSet:bOOLValue info:v12];
  objc_sync_exit(selfCopy);
}

- (BOOL)capabilityEnabledForContext:(id)context cache:(id)cache
{
  contextCopy = context;
  cacheCopy = cache;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(contextCopy, "slotID")}];
  enabledFetched = [cacheCopy enabledFetched];
  v10 = [enabledFetched objectForKeyedSubscript:v8];
  v11 = [v10 isEqual:MEMORY[0x277CBEC38]];

  if ((v11 & 1) == 0)
  {
    [(PSUICoreTelephonyCapabilitiesCache *)self fetchCapabilityEnabledWithCache:cacheCopy forContext:contextCopy];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = [cacheCopy getEnabledForSlotID:{objc_msgSend(contextCopy, "slotID")}];
  objc_sync_exit(selfCopy);

  return v13;
}

- (void)setCapabilityEnabledForContext:(id)context cache:(id)cache enabled:(BOOL)enabled info:(id)info
{
  enabledCopy = enabled;
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  cacheCopy = cache;
  infoCopy = info;
  getLogger = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    if (enabledCopy)
    {
      v14 = @"YES";
    }

    v20 = 138412546;
    v21 = contextCopy;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Setting capability for %@ to %@", &v20, 0x16u);
  }

  client = self->_client;
  capabilityName = [cacheCopy capabilityName];
  v17 = [(CoreTelephonyClient *)client context:contextCopy setCapability:capabilityName enabled:enabledCopy with:infoCopy];

  getLogger2 = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
  selfCopy = getLogger2;
  if (v17)
  {
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412546;
      v21 = contextCopy;
      v22 = 2112;
      v23 = v17;
      _os_log_error_impl(&dword_2658DE000, &selfCopy->super, OS_LOG_TYPE_ERROR, "Set capability for context %@ failed: %@", &v20, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_2658DE000, &selfCopy->super, OS_LOG_TYPE_DEFAULT, "Set succeeded", &v20, 2u);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    [cacheCopy setEnabled:enabledCopy forSlotID:{objc_msgSend(contextCopy, "slotID")}];
    objc_sync_exit(selfCopy);
  }
}

- (BOOL)canSetCapabilityVoLTE:(id)e
{
  eCopy = e;
  volteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self canSetCapabilityForContext:eCopy cache:volteCapability];

  return self;
}

- (BOOL)cannotChangeVoLTESettingCallCarrier:(id)carrier
{
  v4 = *MEMORY[0x277CC3820];
  carrierCopy = carrier;
  volteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self getCapabilityInfo:v4 forContext:carrierCopy cache:volteCapability];

  return self;
}

- (BOOL)isVoLTEStillProvisioningForContext:(id)context
{
  v4 = *MEMORY[0x277CC3810];
  contextCopy = context;
  volteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self getCapabilityInfo:v4 forContext:contextCopy cache:volteCapability];

  return self;
}

- (BOOL)capabilityEnabledVoLTE:(id)e
{
  eCopy = e;
  volteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self capabilityEnabledForContext:eCopy cache:volteCapability];

  return self;
}

- (void)setCapabilityVoLTE:(id)e enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  eCopy = e;
  volteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
  [(PSUICoreTelephonyCapabilitiesCache *)self setCapabilityEnabledForContext:eCopy cache:volteCapability enabled:enabledCopy info:0];
}

- (BOOL)fetchDeviceAndPlan5GSupport:(id)support
{
  v19 = *MEMORY[0x277D85DE8];
  supportCopy = support;
  client = self->_client;
  v14 = 0;
  v6 = [(CoreTelephonyClient *)client getSupports5G:supportCopy error:&v14];
  v7 = v14;
  getLogger = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
  v9 = getLogger;
  if (v7)
  {
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "Fetch failed: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [v6 BOOLValue];
    v11 = @"NO";
    if (bOOLValue)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v16 = supportCopy;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "Fetch succeeded: %@, %@", buf, 0x16u);
  }

  bOOLValue2 = [v6 BOOLValue];
  return bOOLValue2;
}

- (BOOL)canSetCapabilityVoNR:(id)r
{
  rCopy = r;
  vonrCapability = [(PSUICoreTelephonyCapabilitiesCache *)self vonrCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self canSetCapabilityForContext:rCopy cache:vonrCapability];

  return self;
}

- (BOOL)capabilityEnabledVoNR:(id)r
{
  rCopy = r;
  vonrCapability = [(PSUICoreTelephonyCapabilitiesCache *)self vonrCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self capabilityEnabledForContext:rCopy cache:vonrCapability];

  return self;
}

- (void)setCapabilityVoNR:(id)r enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  rCopy = r;
  vonrCapability = [(PSUICoreTelephonyCapabilitiesCache *)self vonrCapability];
  [(PSUICoreTelephonyCapabilitiesCache *)self setCapabilityEnabledForContext:rCopy cache:vonrCapability enabled:enabledCopy info:0];
}

- (BOOL)canSetTurnOffCellular:(id)cellular
{
  cellularCopy = cellular;
  turnOffCellularCapability = [(PSUICoreTelephonyCapabilitiesCache *)self turnOffCellularCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self canSetCapabilityForContext:cellularCopy cache:turnOffCellularCapability];

  return self;
}

- (BOOL)getTurnOffCellular:(id)cellular
{
  cellularCopy = cellular;
  turnOffCellularCapability = [(PSUICoreTelephonyCapabilitiesCache *)self turnOffCellularCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self capabilityEnabledForContext:cellularCopy cache:turnOffCellularCapability];

  return self;
}

- (void)setTurnOffCellular:(id)cellular enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  cellularCopy = cellular;
  turnOffCellularCapability = [(PSUICoreTelephonyCapabilitiesCache *)self turnOffCellularCapability];
  [(PSUICoreTelephonyCapabilitiesCache *)self setCapabilityEnabledForContext:cellularCopy cache:turnOffCellularCapability enabled:enabledCopy info:0];
}

- (BOOL)canSetNetworkSlicing:(id)slicing
{
  slicingCopy = slicing;
  networkSlicingCapability = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self canSetCapabilityForContext:slicingCopy cache:networkSlicingCapability];

  return self;
}

- (BOOL)getNetworkSlicing:(id)slicing
{
  slicingCopy = slicing;
  networkSlicingCapability = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self capabilityEnabledForContext:slicingCopy cache:networkSlicingCapability];

  return self;
}

- (void)setNetworkSlicing:(id)slicing enabled:(BOOL)enabled category:(id)category
{
  enabledCopy = enabled;
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277CC3B30];
  v14[0] = category;
  v8 = MEMORY[0x277CBEAC0];
  categoryCopy = category;
  slicingCopy = slicing;
  v11 = [v8 dictionaryWithObjects:v14 forKeys:&v13 count:1];

  networkSlicingCapability = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
  [(PSUICoreTelephonyCapabilitiesCache *)self setCapabilityEnabledForContext:slicingCopy cache:networkSlicingCapability enabled:enabledCopy info:v11];
}

- (id)networkSlicingCategories:(id)categories
{
  v4 = *MEMORY[0x277CC3B28];
  categoriesCopy = categories;
  networkSlicingCapability = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
  v7 = [(PSUICoreTelephonyCapabilitiesCache *)self getCapabilityInfoObject:v4 forContext:categoriesCopy cache:networkSlicingCapability];

  return v7;
}

- (void)setNetworkSlicingCategories:(id)categories forContext:(id)context
{
  v6 = *MEMORY[0x277CC3B28];
  contextCopy = context;
  categoriesCopy = categories;
  networkSlicingCapability = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
  [(PSUICoreTelephonyCapabilitiesCache *)self setCapabilityInfoObject:categoriesCopy forKey:v6 forContext:contextCopy cache:networkSlicingCapability];
}

- (BOOL)canSetSatelliteCapability:(id)capability
{
  capabilityCopy = capability;
  satelliteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self satelliteCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self canSetCapabilityForContext:capabilityCopy cache:satelliteCapability];

  return self;
}

- (BOOL)getSatelliteCapability:(id)capability
{
  capabilityCopy = capability;
  satelliteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self satelliteCapability];
  LOBYTE(self) = [(PSUICoreTelephonyCapabilitiesCache *)self capabilityEnabledForContext:capabilityCopy cache:satelliteCapability];

  return self;
}

- (void)setSatelliteCapability:(id)capability enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  capabilityCopy = capability;
  satelliteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self satelliteCapability];
  [(PSUICoreTelephonyCapabilitiesCache *)self setCapabilityEnabledForContext:capabilityCopy cache:satelliteCapability enabled:enabledCopy info:0];
}

- (void)context:(id)context capabilitiesChanged:(id)changed
{
  v50 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  changedCopy = changed;
  getLogger = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138412546;
    v47 = contextCopy;
    v48 = 2112;
    v49 = changedCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "capabilitiesChanged: %@, %@", &v46, 0x16u);
  }

  v9 = [changedCopy objectForKey:*MEMORY[0x277CC37F8]];
  v10 = v9;
  v11 = MEMORY[0x277CC3818];
  v12 = MEMORY[0x277CC3838];
  if (v9)
  {
    v13 = [v9 objectForKey:*MEMORY[0x277CC3818]];
    bOOLValue = [v13 BOOLValue];

    v15 = [v10 objectForKey:*v12];
    bOOLValue2 = [v15 BOOLValue];

    volteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
    [volteCapability acceptCapabilityforSlotID:objc_msgSend(contextCopy status:"slotID") canSet:bOOLValue2 info:{bOOLValue, v10}];
  }

  v18 = [changedCopy objectForKey:*MEMORY[0x277CC3800]];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 objectForKey:*v11];
    bOOLValue3 = [v20 BOOLValue];

    v22 = [v19 objectForKey:*v12];
    bOOLValue4 = [v22 BOOLValue];

    vonrCapability = [(PSUICoreTelephonyCapabilitiesCache *)self vonrCapability];
    [vonrCapability acceptCapabilityforSlotID:objc_msgSend(contextCopy status:"slotID") canSet:bOOLValue4 info:{bOOLValue3, v19}];
  }

  v25 = [changedCopy objectForKey:*MEMORY[0x277CC3840]];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 objectForKey:*v11];
    bOOLValue5 = [v27 BOOLValue];

    v29 = [v26 objectForKey:*v12];
    bOOLValue6 = [v29 BOOLValue];

    turnOffCellularCapability = [(PSUICoreTelephonyCapabilitiesCache *)self turnOffCellularCapability];
    [turnOffCellularCapability acceptCapabilityforSlotID:objc_msgSend(contextCopy status:"slotID") canSet:bOOLValue6 info:{bOOLValue5, v26}];
  }

  v32 = [changedCopy objectForKey:*MEMORY[0x277CC3828]];
  v33 = v32;
  if (v32)
  {
    v34 = [v32 objectForKey:*v11];
    bOOLValue7 = [v34 BOOLValue];

    v36 = [v33 objectForKey:*v12];
    bOOLValue8 = [v36 BOOLValue];

    networkSlicingCapability = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
    [networkSlicingCapability acceptCapabilityforSlotID:objc_msgSend(contextCopy status:"slotID") canSet:bOOLValue8 info:{bOOLValue7, v33}];
  }

  v39 = [changedCopy objectForKey:*MEMORY[0x277CC3830]];
  v40 = v39;
  if (v39)
  {
    v41 = [v39 objectForKey:*v11];
    bOOLValue9 = [v41 BOOLValue];

    v43 = [v40 objectForKey:*v12];
    bOOLValue10 = [v43 BOOLValue];

    satelliteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self satelliteCapability];
    [satelliteCapability acceptCapabilityforSlotID:objc_msgSend(contextCopy status:"slotID") canSet:bOOLValue10 info:{bOOLValue9, v40}];
  }
}

- (void)clearCache
{
  getLogger = [(PSUICoreTelephonyCapabilitiesCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Clearing capabilities cache", v9, 2u);
  }

  volteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self volteCapability];
  [volteCapability reset];

  vonrCapability = [(PSUICoreTelephonyCapabilitiesCache *)self vonrCapability];
  [vonrCapability reset];

  turnOffCellularCapability = [(PSUICoreTelephonyCapabilitiesCache *)self turnOffCellularCapability];
  [turnOffCellularCapability reset];

  networkSlicingCapability = [(PSUICoreTelephonyCapabilitiesCache *)self networkSlicingCapability];
  [networkSlicingCapability reset];

  satelliteCapability = [(PSUICoreTelephonyCapabilitiesCache *)self satelliteCapability];
  [satelliteCapability reset];
}

@end