@interface ICNAIdentityManager
+ (id)newSalt;
+ (id)saltedID:(id)d withSalt:(id)salt;
+ (id)sharedManager;
- (ICNAIdentityManager)init;
- (NSString)identityTimestampYYYYMM;
- (NSString)privateUserID;
- (NSString)userID;
- (id)saltedID:(id)d forClass:(Class)class;
- (id)todayTimestampYYYYMM:(id)m;
- (unint64_t)startMonth;
- (unint64_t)startYear;
- (void)_keyValueStoreDidChangeExternally:(id)externally;
- (void)debug_clearIdentifiers;
- (void)debug_dumpIdentifiers;
- (void)debug_forceRegenerateIdentifiers;
- (void)loadIdentifiersAndRegenerateIfNecessary;
- (void)loadIdentifiersFromKVSAndForceRegenerateIdentity:(BOOL)identity;
@end

@implementation ICNAIdentityManager

+ (id)sharedManager
{
  if (sharedManager_s_onceToken != -1)
  {
    +[ICNAIdentityManager sharedManager];
  }

  v3 = sharedManager_s_instance;

  return v3;
}

uint64_t __36__ICNAIdentityManager_sharedManager__block_invoke()
{
  sharedManager_s_instance = objc_alloc_init(ICNAIdentityManager);

  return MEMORY[0x2821F96F8]();
}

- (ICNAIdentityManager)init
{
  v10.receiver = self;
  v10.super_class = ICNAIdentityManager;
  v2 = [(ICNAIdentityManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.notes.analytics.saltManager", v3);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v4;

    v6 = v2->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__ICNAIdentityManager_init__block_invoke;
    block[3] = &unk_2799AF130;
    v9 = v2;
    dispatch_sync(v6, block);
  }

  return v2;
}

uint64_t __27__ICNAIdentityManager_init__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CCAD80]) _initWithStoreIdentifier:@"com.apple.notes.analytics" usingEndToEndEncryption:1];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:sel__keyValueStoreDidChangeExternally_ name:*MEMORY[0x277CCA7C0] object:*(*(a1 + 32) + 72)];

  v6 = *(a1 + 32);

  return [v6 loadIdentifiersFromKVSAndForceRegenerateIdentity:0];
}

- (void)loadIdentifiersAndRegenerateIfNecessary
{
  accessQueue = [(ICNAIdentityManager *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ICNAIdentityManager_loadIdentifiersAndRegenerateIfNecessary__block_invoke;
  block[3] = &unk_2799AF130;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

uint64_t __62__ICNAIdentityManager_loadIdentifiersAndRegenerateIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) encryptedKVStore];
  [v2 synchronize];

  v3 = *(a1 + 32);

  return [v3 loadIdentifiersFromKVSAndForceRegenerateIdentity:0];
}

- (NSString)userID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  accessQueue = [(ICNAIdentityManager *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(ICNAIdentityManager *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__ICNAIdentityManager_userID__block_invoke;
  v7[3] = &unk_2799AF158;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (NSString)privateUserID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  accessQueue = [(ICNAIdentityManager *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(ICNAIdentityManager *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ICNAIdentityManager_privateUserID__block_invoke;
  v7[3] = &unk_2799AF158;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)todayTimestampYYYYMM:(id)m
{
  mCopy = m;
  if (!mCopy)
  {
    mCopy = [MEMORY[0x277CBEAA8] date];
  }

  v4 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setCalendar:v4];
  [v5 setDateFormat:@"yyyyMM"];
  v6 = [v5 stringFromDate:mCopy];

  return v6;
}

- (NSString)identityTimestampYYYYMM
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  accessQueue = [(ICNAIdentityManager *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(ICNAIdentityManager *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ICNAIdentityManager_identityTimestampYYYYMM__block_invoke;
  v7[3] = &unk_2799AF158;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (unint64_t)startYear
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue = [(ICNAIdentityManager *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(ICNAIdentityManager *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__ICNAIdentityManager_startYear__block_invoke;
  v7[3] = &unk_2799AF158;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unint64_t)startMonth
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue = [(ICNAIdentityManager *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(ICNAIdentityManager *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__ICNAIdentityManager_startMonth__block_invoke;
  v7[3] = &unk_2799AF158;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)saltedID:(id)d forClass:(Class)class
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  accessQueue = [(ICNAIdentityManager *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(ICNAIdentityManager *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ICNAIdentityManager_saltedID_forClass___block_invoke;
  block[3] = &unk_2799AF6D8;
  block[4] = self;
  block[5] = &v12;
  block[6] = class;
  dispatch_sync(accessQueue2, block);

  v9 = [objc_opt_class() saltedID:dCopy withSalt:v13[5]];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __41__ICNAIdentityManager_saltedID_forClass___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) salts];
  v2 = NSStringFromClass(*(a1 + 48));
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)debug_forceRegenerateIdentifiers
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)debug_clearIdentifiers
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __45__ICNAIdentityManager_debug_clearIdentifiers__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUserID:0];
  [*(a1 + 32) setPrivateUserID:0];
  [*(a1 + 32) setSalts:0];
  [*(a1 + 32) setIdentityTimestampYYYYMM:0];
  [*(a1 + 32) setStartYear:0];
  [*(a1 + 32) setStartMonth:0];
  v2 = [*(a1 + 32) encryptedKVStore];
  [v2 removeObjectForKey:@"identityManager"];

  v3 = [*(a1 + 32) encryptedKVStore];
  [v3 synchronize];

  v4 = *(a1 + 32);

  return [v4 setCurrentDateForTesting:0];
}

- (void)debug_dumpIdentifiers
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    userID = [(ICNAIdentityManager *)self userID];
    v5 = userID;
    if (userID)
    {
      v6 = userID;
    }

    else
    {
      v6 = @"nil";
    }

    v20[0] = v6;
    v19[1] = @"privateUserID";
    privateUserID = [(ICNAIdentityManager *)self privateUserID];
    v8 = privateUserID;
    if (privateUserID)
    {
      v9 = privateUserID;
    }

    else
    {
      v9 = @"nil";
    }

    v20[1] = v9;
    v19[2] = @"salts";
    salts = [(ICNAIdentityManager *)self salts];
    v11 = salts;
    if (salts)
    {
      v12 = salts;
    }

    else
    {
      v12 = @"nil";
    }

    v20[2] = v12;
    v19[3] = @"identityTimestampYYYYMM";
    identityTimestampYYYYMM = [(ICNAIdentityManager *)self identityTimestampYYYYMM];
    v14 = identityTimestampYYYYMM;
    if (identityTimestampYYYYMM)
    {
      v15 = identityTimestampYYYYMM;
    }

    else
    {
      v15 = @"nil";
    }

    v20[3] = v15;
    v19[4] = @"startYear";
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICNAIdentityManager startYear](self, "startYear")}];
    v20[4] = v16;
    v19[5] = @"startMonth";
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICNAIdentityManager startMonth](self, "startMonth")}];
    v20[5] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
    *buf = 138412290;
    v22 = v18;
    _os_log_debug_impl(&dword_25C6BF000, v3, OS_LOG_TYPE_DEBUG, "Identifiers: %@", buf, 0xCu);
  }
}

- (void)loadIdentifiersFromKVSAndForceRegenerateIdentity:(BOOL)identity
{
  accessQueue = [(ICNAIdentityManager *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (!self->_encryptedKVStore)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((_encryptedKVStore) != nil)" functionName:"-[ICNAIdentityManager loadIdentifiersFromKVSAndForceRegenerateIdentity:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "_encryptedKVStore"}];
  }

  currentDateForTesting = [(ICNAIdentityManager *)self currentDateForTesting];
  v7 = currentDateForTesting;
  if (currentDateForTesting)
  {
    date = currentDateForTesting;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  v9 = date;

  v10 = [(NSUbiquitousKeyValueStore *)self->_encryptedKVStore dictionaryForKey:@"identityManager"];
  v11 = [v10 mutableCopy];

  v12 = v11 == 0;
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v13 = [v11 objectForKey:@"startYear"];
  self->_startYear = [v13 unsignedIntegerValue];

  v14 = [v11 objectForKey:@"startMonth"];
  self->_startMonth = [v14 unsignedIntegerValue];

  if (!self->_startMonth || !self->_startYear)
  {
    v15 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [ICNAIdentityManager loadIdentifiersFromKVSAndForceRegenerateIdentity:];
    }

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v17 = [currentCalendar components:12 fromDate:v9];

    self->_startYear = [v17 year];
    self->_startMonth = [v17 month];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_startYear];
    [v11 setObject:v18 forKey:@"startYear"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_startMonth];
    [v11 setObject:v19 forKey:@"startMonth"];

    v12 = 1;
  }

  v20 = [(ICNAIdentityManager *)self todayTimestampYYYYMM:v9];
  v21 = [v11 objectForKey:@"userID"];
  userID = self->_userID;
  self->_userID = v21;

  v23 = [v11 objectForKey:@"privateUserID"];
  privateUserID = self->_privateUserID;
  self->_privateUserID = v23;

  v25 = [v11 objectForKey:@"salts"];
  p_salts = &self->_salts;
  salts = self->_salts;
  self->_salts = v25;

  v28 = [v11 objectForKey:@"identityTimestampYYYYMM"];
  identityTimestampYYYYMM = self->_identityTimestampYYYYMM;
  self->_identityTimestampYYYYMM = v28;

  if (![(NSString *)self->_identityTimestampYYYYMM isEqualToString:v20]|| identity || !self->_userID || !self->_privateUserID || (v30 = *p_salts) == 0)
  {
    self->_identifierResetOccurred = 1;
    v39 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [ICNAIdentityManager loadIdentifiersFromKVSAndForceRegenerateIdentity:];
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v42 = self->_userID;
    self->_userID = uUIDString;

    [v11 setObject:self->_userID forKey:@"userID"];
    v43 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      [ICNAIdentityManager loadIdentifiersFromKVSAndForceRegenerateIdentity:];
    }

    uUID2 = [MEMORY[0x277CCAD78] UUID];
    uUIDString2 = [uUID2 UUIDString];
    v46 = self->_privateUserID;
    self->_privateUserID = uUIDString2;

    [v11 setObject:self->_privateUserID forKey:@"privateUserID"];
    v47 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      [ICNAIdentityManager loadIdentifiersFromKVSAndForceRegenerateIdentity:];
    }

    v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
    newSalt = [objc_opt_class() newSalt];
    v50 = objc_opt_class();
    v51 = NSStringFromClass(v50);
    [v48 setObject:newSalt forKeyedSubscript:v51];

    newSalt2 = [objc_opt_class() newSalt];
    v53 = objc_opt_class();
    v54 = NSStringFromClass(v53);
    [v48 setObject:newSalt2 forKeyedSubscript:v54];

    newSalt3 = [objc_opt_class() newSalt];
    v56 = objc_opt_class();
    v57 = NSStringFromClass(v56);
    [v48 setObject:newSalt3 forKeyedSubscript:v57];

    newSalt4 = [objc_opt_class() newSalt];
    v59 = objc_opt_class();
    v60 = NSStringFromClass(v59);
    [v48 setObject:newSalt4 forKeyedSubscript:v60];

    newSalt5 = [objc_opt_class() newSalt];
    v62 = objc_opt_class();
    v63 = NSStringFromClass(v62);
    [v48 setObject:newSalt5 forKeyedSubscript:v63];

    newSalt6 = [objc_opt_class() newSalt];
    v65 = objc_opt_class();
    v66 = NSStringFromClass(v65);
    [v48 setObject:newSalt6 forKeyedSubscript:v66];

    newSalt7 = [objc_opt_class() newSalt];
    v68 = objc_opt_class();
    v69 = NSStringFromClass(v68);
    [v48 setObject:newSalt7 forKeyedSubscript:v69];

    newSalt8 = [objc_opt_class() newSalt];
    v71 = objc_opt_class();
    v72 = NSStringFromClass(v71);
    [v48 setObject:newSalt8 forKeyedSubscript:v72];

    newSalt9 = [objc_opt_class() newSalt];
    v74 = objc_opt_class();
    v75 = NSStringFromClass(v74);
    [v48 setObject:newSalt9 forKeyedSubscript:v75];

    newSalt10 = [objc_opt_class() newSalt];
    v77 = objc_opt_class();
    v78 = NSStringFromClass(v77);
    [v48 setObject:newSalt10 forKeyedSubscript:v78];

    newSalt11 = [objc_opt_class() newSalt];
    v80 = objc_opt_class();
    v81 = NSStringFromClass(v80);
    [v48 setObject:newSalt11 forKeyedSubscript:v81];

    newSalt12 = [objc_opt_class() newSalt];
    v83 = objc_opt_class();
    v84 = NSStringFromClass(v83);
    [v48 setObject:newSalt12 forKeyedSubscript:v84];

    newSalt13 = [objc_opt_class() newSalt];
    v86 = objc_opt_class();
    v87 = NSStringFromClass(v86);
    [v48 setObject:newSalt13 forKeyedSubscript:v87];

    newSalt14 = [objc_opt_class() newSalt];
    v89 = objc_opt_class();
    v90 = NSStringFromClass(v89);
    [v48 setObject:newSalt14 forKeyedSubscript:v90];

    v91 = [v48 copy];
    v92 = self->_salts;
    self->_salts = v91;

    [v11 setObject:self->_salts forKey:@"salts"];
    v93 = v20;
    v94 = self->_identityTimestampYYYYMM;
    self->_identityTimestampYYYYMM = v93;
    v95 = @"identityTimestampYYYYMM";
    p_salts = &self->_identityTimestampYYYYMM;
    goto LABEL_28;
  }

  v127 = v9;
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  v33 = [v30 objectForKeyedSubscript:v32];
  if (v33)
  {
    v34 = v33;
    v35 = *p_salts;
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = [v35 objectForKeyedSubscript:v37];

    if (v38)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v99 = [(NSDictionary *)self->_salts mutableCopy];
  newSalt15 = [objc_opt_class() newSalt];
  v101 = objc_opt_class();
  v102 = NSStringFromClass(v101);
  [v99 setObject:newSalt15 forKeyedSubscript:v102];

  newSalt16 = [objc_opt_class() newSalt];
  v104 = objc_opt_class();
  v105 = NSStringFromClass(v104);
  [v99 setObject:newSalt16 forKeyedSubscript:v105];

  v106 = [v99 copy];
  v107 = self->_salts;
  self->_salts = v106;

  [v11 setObject:self->_salts forKey:@"salts"];
  v12 = 1;
LABEL_35:
  v108 = *p_salts;
  v109 = objc_opt_class();
  v110 = NSStringFromClass(v109);
  v111 = [v108 objectForKeyedSubscript:v110];

  if (!v111)
  {
    v112 = [(NSDictionary *)self->_salts mutableCopy];
    newSalt17 = [objc_opt_class() newSalt];
    v114 = objc_opt_class();
    v115 = NSStringFromClass(v114);
    [v112 setObject:newSalt17 forKeyedSubscript:v115];

    v116 = [v112 copy];
    v117 = self->_salts;
    self->_salts = v116;

    [v11 setObject:self->_salts forKey:@"salts"];
    v12 = 1;
  }

  v118 = *p_salts;
  v119 = objc_opt_class();
  v120 = NSStringFromClass(v119);
  v121 = [v118 objectForKeyedSubscript:v120];

  v9 = v127;
  if (!v121)
  {
    v48 = [(NSDictionary *)self->_salts mutableCopy];
    newSalt18 = [objc_opt_class() newSalt];
    v124 = objc_opt_class();
    v125 = NSStringFromClass(v124);
    [v48 setObject:newSalt18 forKeyedSubscript:v125];

    v126 = [v48 copy];
    v94 = self->_salts;
    self->_salts = v126;
    v95 = @"salts";
LABEL_28:

    [v11 setObject:*p_salts forKey:v95];
    goto LABEL_29;
  }

  if (!v12)
  {
    v122 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
    {
      [ICNAIdentityManager loadIdentifiersFromKVSAndForceRegenerateIdentity:v11];
    }

    goto LABEL_32;
  }

LABEL_29:
  v96 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
  {
    [ICNAIdentityManager loadIdentifiersFromKVSAndForceRegenerateIdentity:v11];
  }

  encryptedKVStore = self->_encryptedKVStore;
  v98 = [v11 copy];
  [(NSUbiquitousKeyValueStore *)encryptedKVStore setDictionary:v98 forKey:@"identityManager"];

  [(NSUbiquitousKeyValueStore *)self->_encryptedKVStore synchronize];
LABEL_32:
}

- (void)_keyValueStoreDidChangeExternally:(id)externally
{
  externallyCopy = externally;
  object = [externallyCopy object];
  encryptedKVStore = self->_encryptedKVStore;

  v7 = os_log_create("com.apple.notes", "Analytics");
  v8 = v7;
  if (object != encryptedKVStore)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICNAIdentityManager _keyValueStoreDidChangeExternally:];
    }

    goto LABEL_16;
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ICNAIdentityManager _keyValueStoreDidChangeExternally:externallyCopy];
  }

  userInfo = [externallyCopy userInfo];
  v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7B0]];
  integerValue = [v11 integerValue];

  userInfo2 = [externallyCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA7B8]];

  if (integerValue < 2)
  {
    if (![v8 containsObject:@"identityManager"])
    {
      goto LABEL_16;
    }

    accessQueue = [(ICNAIdentityManager *)self accessQueue];
    v15 = accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__ICNAIdentityManager__keyValueStoreDidChangeExternally___block_invoke;
    block[3] = &unk_2799AF130;
    block[4] = self;
    v16 = block;
    goto LABEL_12;
  }

  if (integerValue != 2)
  {
    if (integerValue != 3)
    {
      goto LABEL_16;
    }

    accessQueue = [(ICNAIdentityManager *)self accessQueue];
    v15 = accessQueue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__ICNAIdentityManager__keyValueStoreDidChangeExternally___block_invoke_72;
    v18[3] = &unk_2799AF130;
    v18[4] = self;
    v16 = v18;
LABEL_12:
    dispatch_async(accessQueue, v16);

    goto LABEL_16;
  }

  v17 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    [ICNAIdentityManager _keyValueStoreDidChangeExternally:];
  }

LABEL_16:
}

uint64_t __57__ICNAIdentityManager__keyValueStoreDidChangeExternally___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __57__ICNAIdentityManager__keyValueStoreDidChangeExternally___block_invoke_cold_1();
  }

  return [*(a1 + 32) loadIdentifiersFromKVSAndForceRegenerateIdentity:0];
}

uint64_t __57__ICNAIdentityManager__keyValueStoreDidChangeExternally___block_invoke_72(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __57__ICNAIdentityManager__keyValueStoreDidChangeExternally___block_invoke_72_cold_1();
  }

  return [*(a1 + 32) loadIdentifiersFromKVSAndForceRegenerateIdentity:1];
}

+ (id)saltedID:(id)d withSalt:(id)salt
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (salt)
  {
    v6 = [salt dataUsingEncoding:4];
    v7 = v6;
    v8 = 0;
    if (dCopy && v6)
    {
      memset(&v13, 0, sizeof(v13));
      CCHmacInit(&v13, 2u, [v6 bytes:0], [v6 length]);
      uTF8String = [dCopy UTF8String];
      v10 = strlen(uTF8String);
      CCHmacUpdate(&v13, uTF8String, v10);
      memset(macOut, 0, sizeof(macOut));
      CCHmacFinal(&v13, macOut);
      v11 = [MEMORY[0x277CBEA90] dataWithBytes:macOut length:32];
      v8 = [v11 base64EncodedStringWithOptions:0];
    }
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICNAIdentityManager saltedID:dCopy withSalt:v7];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)newSalt
{
  v7 = *MEMORY[0x277D85DE8];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x200uLL, bytes))
  {
    return 0;
  }

  v3 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:512];
  v4 = [v3 base64EncodedDataWithOptions:0];
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];

  return v2;
}

- (void)loadIdentifiersFromKVSAndForceRegenerateIdentity:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loadIdentifiersFromKVSAndForceRegenerateIdentity:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 ic_md5];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)loadIdentifiersFromKVSAndForceRegenerateIdentity:(void *)a1 .cold.6(void *a1)
{
  v1 = [a1 ic_md5];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_keyValueStoreDidChangeExternally:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_keyValueStoreDidChangeExternally:(void *)a1 .cold.2(void *a1)
{
  v6 = [a1 userInfo];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __57__ICNAIdentityManager__keyValueStoreDidChangeExternally___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__ICNAIdentityManager__keyValueStoreDidChangeExternally___block_invoke_72_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)saltedID:(void *)a1 withSalt:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = [a1 length];
  _os_log_error_impl(&dword_25C6BF000, a2, OS_LOG_TYPE_ERROR, "Salt is nil when trying to salt identifier length=%lu", &v3, 0xCu);
}

@end