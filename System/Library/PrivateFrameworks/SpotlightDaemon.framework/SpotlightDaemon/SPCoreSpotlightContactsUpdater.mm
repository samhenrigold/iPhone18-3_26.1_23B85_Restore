@interface SPCoreSpotlightContactsUpdater
+ (id)sharedInstance;
- (SPCoreSpotlightContactsUpdater)init;
- (id)updatedCountsFromExisting:(id)existing result:(int64_t *)result shouldUpdateMonth:(BOOL)month;
- (void)updateContactCounts:(id)counts;
@end

@implementation SPCoreSpotlightContactsUpdater

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[SPCoreSpotlightContactsUpdater sharedInstance];
  }

  v3 = sharedInstance_updater;

  return v3;
}

uint64_t __48__SPCoreSpotlightContactsUpdater_sharedInstance__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = sharedInstance_updater;
  sharedInstance_updater = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

- (SPCoreSpotlightContactsUpdater)init
{
  v3.receiver = self;
  v3.super_class = SPCoreSpotlightContactsUpdater;
  return [(SPCoreSpotlightContactsUpdater *)&v3 init];
}

- (id)updatedCountsFromExisting:(id)existing result:(int64_t *)result shouldUpdateMonth:(BOOL)month
{
  monthCopy = month;
  v21[4] = *MEMORY[0x277D85DE8];
  existingCopy = existing;
  if ([existingCopy count] == 4)
  {
    v7 = [existingCopy objectAtIndexedSubscript:3];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    v9 = [existingCopy objectAtIndexedSubscript:2];
    unsignedIntegerValue2 = [v9 unsignedIntegerValue];

    v11 = [existingCopy objectAtIndexedSubscript:1];
    unsignedIntegerValue3 = [v11 unsignedIntegerValue];

    v13 = [existingCopy objectAtIndexedSubscript:0];
    unsignedIntegerValue4 = [v13 unsignedIntegerValue];

    if (monthCopy)
    {
      v15 = unsignedIntegerValue2 >> 2;
    }

    else
    {
      v15 = 0;
    }

    v21[0] = &unk_2846C96C8;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue3 - ((4 * (unsignedIntegerValue3 / 7)) >> 2) + unsignedIntegerValue4];
    v21[1] = v16;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2 - v15 + unsignedIntegerValue3 / 7];
    v21[2] = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15 + unsignedIntegerValue];
    v21[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)updateContactCounts:(id)counts
{
  v48 = *MEMORY[0x277D85DE8];
  countsCopy = counts;
  v3 = objc_opt_new();
  [v3 setInternal:1];
  v27 = *MEMORY[0x277CC2C18];
  v4 = *MEMORY[0x277CC2C18];
  v37[0] = *MEMORY[0x277CC3208];
  v37[1] = v4;
  v25 = *MEMORY[0x277CC2C28];
  v5 = *MEMORY[0x277CC2C28];
  v38 = *MEMORY[0x277CC2E20];
  v26 = v38;
  v39 = v5;
  v7 = *MEMORY[0x277CC2C30];
  v40 = *MEMORY[0x277CC2E30];
  v6 = v40;
  v41 = v7;
  v9 = *MEMORY[0x277CC2C10];
  v42 = *MEMORY[0x277CC2E38];
  v8 = v42;
  v43 = v9;
  v11 = *MEMORY[0x277CC2C20];
  v44 = *MEMORY[0x277CC2E18];
  v10 = v44;
  v45 = v11;
  v13 = *MEMORY[0x277CC26B8];
  v46 = *MEMORY[0x277CC2E28];
  v12 = v46;
  v47 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:12];
  [v3 setFetchAttributes:v14];

  v36 = @"com.apple.MobileAddressBook";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  [v3 setBundleIDs:v15];

  fetchAttributes = [v3 fetchAttributes];
  v17 = [fetchAttributes count];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=*", v27, v26, v25, v6, v7, v8, v9, v10, v11, v12, *MEMORY[0x277CC26B0], *MEMORY[0x277CC26B0]];
  v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  v20 = logForCSLogCategoryDefault(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v35 = countsCopy;
    _os_log_impl(&dword_231A35000, v20, OS_LOG_TYPE_INFO, "3 Enter group %p", buf, 0xCu);
  }

  if (countsCopy)
  {
    dispatch_group_enter(countsCopy);
  }

  v21 = +[SPCoreSpotlightIndexer sharedInstance];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __54__SPCoreSpotlightContactsUpdater_updateContactCounts___block_invoke;
  v30[3] = &unk_2789373C0;
  v33 = v17;
  v30[4] = self;
  v31 = v19;
  v22 = countsCopy;
  v32 = v22;
  v23 = v19;
  v24 = [v21 startQuery:v18 withContext:v3 handler:v30];

  if (countsCopy && !v24)
  {
    dispatch_group_leave(v22);
  }
}

void __54__SPCoreSpotlightContactsUpdater_updateContactCounts___block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a6;
  v10 = v9;
  if (a2 == 1)
  {
    v18 = logForCSLogCategoryDefault(v9);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 48);
      *buf = 134217984;
      v26 = v19;
      _os_log_impl(&dword_231A35000, v18, OS_LOG_TYPE_INFO, "3 Leave group %p", buf, 0xCu);
    }

    dispatch_group_leave(*(a1 + 48));
  }

  else if (!a2)
  {
    v11 = objc_opt_new();
    v12 = *(a1 + 56);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __54__SPCoreSpotlightContactsUpdater_updateContactCounts___block_invoke_2;
    v22[3] = &unk_278937398;
    v13 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v23 = v13;
    v14 = v11;
    v24 = v14;
    v15 = logForCSLogCategoryDefault([a5 enumerateQueryResults:v12 stringCache:0 usingBlock:v22]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 48);
      *buf = 134217984;
      v26 = v16;
      _os_log_impl(&dword_231A35000, v15, OS_LOG_TYPE_INFO, "4 Enter group %p", buf, 0xCu);
    }

    dispatch_group_enter(*(a1 + 48));
    v17 = +[SPCoreSpotlightIndexer sharedInstance];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54__SPCoreSpotlightContactsUpdater_updateContactCounts___block_invoke_17;
    v20[3] = &unk_2789348E8;
    v21 = *(a1 + 48);
    [v17 indexSearchableItems:v14 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:0 forBundleID:@"com.apple.MobileAddressBook" options:0 completionHandler:v20];
  }
}

void __54__SPCoreSpotlightContactsUpdater_updateContactCounts___block_invoke_2(uint64_t a1, id *a2)
{
  v77[1] = *MEMORY[0x277D85DE8];
  v46 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v53 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v52 = a2[7];
  v51 = a2[8];
  v50 = a2[9];
  v49 = a2[10];
  v48 = a2[11];
  [v48 timeIntervalSinceNow];
  v10 = v9;
  v11 = v9 > 604800.0;
  v12 = objc_alloc_init(MEMORY[0x277CC34B8]);
  v45 = v4;
  v13 = [*(a1 + 32) updatedCountsFromExisting:v4 result:0 shouldUpdateMonth:v11];
  v44 = v5;
  v14 = [*(a1 + 32) updatedCountsFromExisting:v5 result:0 shouldUpdateMonth:v11];
  if ([v13 count])
  {
    v76 = *MEMORY[0x277CC2C18];
    v77[0] = v13;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:&v76 count:1];
    [v12 addAttributesFromDictionary:v15];
  }

  if ([v14 count])
  {
    v74 = *MEMORY[0x277CC2E20];
    v75 = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    [v12 addAttributesFromDictionary:v16];
  }

  v17 = v6;
  v18 = [*(a1 + 32) updatedCountsFromExisting:v6 result:0 shouldUpdateMonth:v10 > 604800.0];
  v47 = [*(a1 + 32) updatedCountsFromExisting:v53 result:0 shouldUpdateMonth:v10 > 604800.0];
  if ([v18 count])
  {
    v72 = *MEMORY[0x277CC2C28];
    v73 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    [v12 addAttributesFromDictionary:v19];
  }

  if ([v47 count])
  {
    v70 = *MEMORY[0x277CC2E30];
    v71 = v47;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    [v12 addAttributesFromDictionary:v20];
  }

  v42 = v7;
  v21 = [*(a1 + 32) updatedCountsFromExisting:v7 result:0 shouldUpdateMonth:v10 > 604800.0];
  v41 = v8;
  v22 = [*(a1 + 32) updatedCountsFromExisting:v8 result:0 shouldUpdateMonth:v10 > 604800.0];
  if ([v21 count])
  {
    v68 = *MEMORY[0x277CC2C30];
    v69 = v21;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    [v12 addAttributesFromDictionary:v23];
  }

  v39 = v14;
  v40 = v13;
  if ([v22 count])
  {
    v66 = *MEMORY[0x277CC2E38];
    v67 = v22;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    [v12 addAttributesFromDictionary:v24];
  }

  v25 = [*(a1 + 32) updatedCountsFromExisting:v52 result:0 shouldUpdateMonth:v10 > 604800.0];
  v26 = [*(a1 + 32) updatedCountsFromExisting:v51 result:0 shouldUpdateMonth:v10 > 604800.0];
  if ([v25 count])
  {
    v64 = *MEMORY[0x277CC2C10];
    v65 = v25;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    [v12 addAttributesFromDictionary:v27];
  }

  v43 = v17;
  if ([v26 count])
  {
    v62 = *MEMORY[0x277CC2E18];
    v63 = v26;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    [v12 addAttributesFromDictionary:v28];
  }

  v29 = [*(a1 + 32) updatedCountsFromExisting:v50 result:0 shouldUpdateMonth:v10 > 604800.0];
  v30 = [*(a1 + 32) updatedCountsFromExisting:v49 result:0 shouldUpdateMonth:v10 > 604800.0];
  if ([v29 count])
  {
    v60 = *MEMORY[0x277CC2C20];
    v61 = v29;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    [v12 addAttributesFromDictionary:v31];
  }

  if ([v30 count])
  {
    v58 = *MEMORY[0x277CC2E28];
    v59 = v30;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    [v12 addAttributesFromDictionary:v32];
  }

  if (!v48 || v10 > 604800.0)
  {
    v33 = *(a1 + 40);
    v56 = *MEMORY[0x277CC26B8];
    v57 = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    [v12 addAttributesFromDictionary:v34];
  }

  v35 = *(a1 + 40);
  v54 = *MEMORY[0x277CC26B0];
  v55 = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  [v12 addAttributesFromDictionary:v36];

  v37 = objc_alloc_init(MEMORY[0x277CC34B0]);
  [v37 setUniqueIdentifier:v46];
  [v37 setIsUpdate:1];
  [v37 setAttributeSet:v12];
  [*(a1 + 48) addObject:v37];
}

void __54__SPCoreSpotlightContactsUpdater_updateContactCounts___block_invoke_17(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "4 Leave group %p", &v4, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

@end