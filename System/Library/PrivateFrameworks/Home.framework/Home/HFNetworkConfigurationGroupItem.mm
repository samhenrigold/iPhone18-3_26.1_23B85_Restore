@interface HFNetworkConfigurationGroupItem
- (HFNetworkConfigurationGroupItem)init;
- (HFNetworkConfigurationGroupItem)initWithGroup:(id)group valueSource:(id)source;
- (NSSet)profiles;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithValueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HFNetworkConfigurationGroupItem

- (HFNetworkConfigurationGroupItem)initWithGroup:(id)group valueSource:(id)source
{
  groupCopy = group;
  sourceCopy = source;
  v16.receiver = self;
  v16.super_class = HFNetworkConfigurationGroupItem;
  v9 = [(HFItemGroupItem *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_group, group);
    objc_storeStrong(&v10->_valueSource, source);
    profiles = [(HFNetworkConfigurationGroupItem *)v10 profiles];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__HFNetworkConfigurationGroupItem_initWithGroup_valueSource___block_invoke;
    v14[3] = &unk_277DFC308;
    v15 = sourceCopy;
    v12 = [profiles na_map:v14];
    [(HFItemGroupItem *)v10 setItems:v12];
  }

  return v10;
}

HFNetworkConfigurationItem *__61__HFNetworkConfigurationGroupItem_initWithGroup_valueSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(HFAccessoryProfileItem *)[HFNetworkConfigurationItem alloc] initWithProfile:v3 valueSource:*(a1 + 32)];

  return v4;
}

- (HFNetworkConfigurationGroupItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithGroup_valueSource_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFNetworkConfigurationGroupItem.m" lineNumber:39 description:{@"%s is unavailable; use %@ instead", "-[HFNetworkConfigurationGroupItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  valueSource = [(HFNetworkConfigurationGroupItem *)self valueSource];
  v5 = [(HFNetworkConfigurationGroupItem *)self copyWithValueSource:valueSource];

  return v5;
}

- (NSSet)profiles
{
  v2 = MEMORY[0x277CBEB98];
  group = [(HFNetworkConfigurationGroupItem *)self group];
  hf_networkConfigurationProfiles = [group hf_networkConfigurationProfiles];
  v5 = [v2 setWithArray:hf_networkConfigurationProfiles];

  return v5;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v8.receiver = self;
  v8.super_class = HFNetworkConfigurationGroupItem;
  v4 = [(HFItemGroupItem *)&v8 _subclass_updateWithOptions:options];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HFNetworkConfigurationGroupItem__subclass_updateWithOptions___block_invoke;
  v7[3] = &unk_277DF43A8;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

id __63__HFNetworkConfigurationGroupItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v97 = *MEMORY[0x277D85DE8];
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) group];
  v5 = [v4 hf_home];

  if (!v5)
  {
    v6 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v71 = *(a1 + 32);
      v72 = [v71 group];
      v73 = [v72 hf_title];
      v74 = [*(a1 + 32) group];
      *buf = 134218498;
      v88 = v71;
      v89 = 2112;
      v90 = v73;
      v91 = 2112;
      v92 = v74;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "<HFNetworkConfigurationGroupItem %p (%@)>: Nil home for HMAccessoryNetworkProtectionGroup %@", buf, 0x20u);
    }
  }

  v7 = [v3 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  v8 = [v7 mutableCopy];

  v9 = [*(a1 + 32) group];
  [v8 addObject:v9];

  [v8 na_safeAddObject:v5];
  v85 = v8;
  [v3 setObject:v8 forKeyedSubscript:@"dependentHomeKitObjects"];
  v10 = [*(a1 + 32) group];
  v11 = [v10 hf_title];
  [v3 setObject:v11 forKeyedSubscript:@"title"];

  v12 = [*(a1 + 32) group];
  v13 = [v12 manufacturer];

  if (!v13)
  {
    v14 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v75 = *(a1 + 32);
      v76 = [v75 group];
      v77 = [v76 hf_title];
      v78 = [*(a1 + 32) group];
      *buf = 134218498;
      v88 = v75;
      v89 = 2112;
      v90 = v77;
      v91 = 2112;
      v92 = v78;
      _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "<HFNetworkConfigurationGroupItem %p (%@)>: Nil manufacturer for HMAccessoryNetworkProtectionGroup %@", buf, 0x20u);
    }
  }

  v15 = MEMORY[0x277CD1650];
  v16 = [*(a1 + 32) group];
  v17 = [v16 category];
  v18 = [v17 categoryType];
  v19 = [v15 hf_userFriendlyLocalizedCapitalizedDescription:v18];

  if (!v19)
  {
    v20 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v79 = *(a1 + 32);
      v80 = [v79 group];
      v81 = [v80 hf_title];
      v82 = [*(a1 + 32) group];
      *buf = 134218498;
      v88 = v79;
      v89 = 2112;
      v90 = v81;
      v91 = 2112;
      v92 = v82;
      _os_log_error_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_ERROR, "<HFNetworkConfigurationGroupItem %p (%@)>: Nil category for HMAccessoryNetworkProtectionGroup %@", buf, 0x20u);
    }
  }

  v21 = 0x277CD1000;
  v22 = MEMORY[0x277CD1CA8];
  v23 = [*(a1 + 32) group];
  v24 = [v22 hf_localizedTitleForTargetProtectionMode:{objc_msgSend(v23, "targetProtectionMode")}];
  [v3 setObject:v24 forKeyedSubscript:@"description"];

  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"shouldHideForNonAdminUsers"];
  v25 = MEMORY[0x277CCABB0];
  v26 = [*(a1 + 32) group];
  v27 = [v25 numberWithInteger:{objc_msgSend(v26, "targetProtectionMode")}];
  [v3 setObject:v27 forKeyedSubscript:@"HFResultNetworkConfigurationTargetProtectionMode"];

  v28 = MEMORY[0x277CCABB0];
  v29 = [*(a1 + 32) group];
  v30 = [v28 numberWithInteger:{objc_msgSend(v29, "hf_displayCurrentProtectionMode")}];
  [v3 setObject:v30 forKeyedSubscript:@"HFResultNetworkConfigurationCurrentProtectionMode"];

  v31 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v84 = v5;
    v32 = *(a1 + 32);
    v83 = [v32 group];
    v33 = [v83 hf_title];
    v34 = [v3 objectForKeyedSubscript:@"HFResultNetworkConfigurationTargetProtectionMode"];
    v35 = [v34 unsignedLongValue];
    v36 = [v3 objectForKeyedSubscript:@"HFResultNetworkConfigurationCurrentProtectionMode"];
    v37 = [v36 unsignedLongValue];
    v38 = [*(a1 + 32) group];
    *buf = 134219010;
    v88 = v32;
    v5 = v84;
    v89 = 2112;
    v90 = v33;
    v91 = 2048;
    v92 = v35;
    v93 = 2048;
    v94 = v37;
    v95 = 2112;
    v96 = v38;
    _os_log_impl(&dword_20D9BF000, v31, OS_LOG_TYPE_DEFAULT, "<HFNetworkConfigurationGroupItem %p (%@)>: Protection mode to display (target %lu, current %lu) for HMAccessoryNetworkProtectionGroup %@", buf, 0x34u);

    v21 = 0x277CD1000;
  }

  v39 = 0x277CCA000uLL;
  v40 = MEMORY[0x277CCABB0];
  v41 = [*(a1 + 32) profiles];
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __63__HFNetworkConfigurationGroupItem__subclass_updateWithOptions___block_invoke_14;
  v86[3] = &unk_277DFC330;
  v86[4] = *(a1 + 32);
  v42 = [v40 numberWithBool:{objc_msgSend(v41, "na_any:", v86)}];
  [v3 setObject:v42 forKeyedSubscript:@"HFResultNetworkConfigurationProtectionModeMismatch"];

  v43 = MEMORY[0x277CCABB0];
  v44 = MEMORY[0x277CD1CA8];
  v45 = [*(a1 + 32) group];
  v46 = [v43 numberWithInt:{objc_msgSend(v44, "hf_targetProtectionModeIsValid:", objc_msgSend(v45, "targetProtectionMode")) ^ 1}];
  [v3 setObject:v46 forKeyedSubscript:@"HFResultNetworkConfigurationInvalid"];

  v47 = [v3 objectForKeyedSubscript:@"HFResultNetworkConfigurationInvalid"];
  LODWORD(v44) = [v47 BOOLValue];

  if (v44)
  {
    v48 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v66 = *(a1 + 32);
      v67 = [v66 group];
      v68 = [v67 hf_title];
      v69 = [*(a1 + 32) group];
      v21 = [v69 targetProtectionMode];
      v70 = [*(a1 + 32) group];
      *buf = 134218754;
      v88 = v66;
      v89 = 2112;
      v90 = v68;
      v91 = 2048;
      v92 = v21;
      v93 = 2112;
      v94 = v70;
      _os_log_error_impl(&dword_20D9BF000, v48, OS_LOG_TYPE_ERROR, "<HFNetworkConfigurationGroupItem %p (%@)>: Invalid targetProtectionMode %lu for HMAccessoryNetworkProtectionGroup %@", buf, 0x2Au);

      v39 = 0x277CCA000;
    }
  }

  v49 = [*(v39 + 2992) numberWithInt:{objc_msgSend(v5, "hf_isNetworkProtectionSupportedForAccessories") ^ 1}];
  [v3 setObject:v49 forKeyedSubscript:@"HFResultNetworkConfigurationUnsupported"];

  v50 = [*(v39 + 2992) numberWithInt:{objc_msgSend(v5, "hf_isNetworkProtectionEnabled") ^ 1}];
  [v3 setObject:v50 forKeyedSubscript:@"HFResultNetworkConfigurationDisabled"];

  v51 = [*(a1 + 32) profiles];
  v52 = [HFNetworkConfigurationAllowedHostGroup groupsForNetworkConfigurationProfiles:v51];
  [v3 setObject:v52 forKeyedSubscript:@"HFResultNetworkConfigurationAllowedHostGroups"];

  v53 = *(v39 + 2992);
  v54 = [*(a1 + 32) profiles];
  v55 = [v53 numberWithBool:{objc_msgSend(v54, "na_any:", &__block_literal_global_117)}];
  [v3 setObject:v55 forKeyedSubscript:@"HFResultNetworkConfigurationDisplayAllowedHostException"];

  v56 = *(v39 + 2992);
  v57 = [v3 objectForKeyedSubscript:@"HFResultNetworkConfigurationAllowedHostGroups"];
  v58 = [v57 count];
  if (v58)
  {
    v21 = [*(a1 + 32) profiles];
    v59 = [v21 count] > 1;
  }

  else
  {
    v59 = 0;
  }

  v60 = [v56 numberWithInt:v59];
  [v3 setObject:v60 forKeyedSubscript:@"HFResultNetworkConfigurationDisplayAllowedHostMismatch"];

  if (v58)
  {
  }

  v61 = *(v39 + 2992);
  v62 = [*(a1 + 32) profiles];
  v63 = [v61 numberWithBool:{objc_msgSend(v62, "na_any:", &__block_literal_global_19_3)}];
  [v3 setObject:v63 forKeyedSubscript:@"HFResultNetworkConfigurationDisplayAccessViolation"];

  v64 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v64;
}

uint64_t __63__HFNetworkConfigurationGroupItem__subclass_updateWithOptions___block_invoke_14(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CD1CA8];
  v5 = [v3 currentProtectionMode];
  v6 = [*(a1 + 32) group];
  v7 = [v4 hf_currentProtectionMode:v5 isValidForTargetProtectionMode:{objc_msgSend(v6, "targetProtectionMode")}];

  if ((v7 & 1) == 0)
  {
    v8 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = [v10 group];
      v12 = [v11 hf_title];
      v13 = [*(a1 + 32) group];
      v14 = 134219010;
      v15 = v10;
      v16 = 2112;
      v17 = v12;
      v18 = 2048;
      v19 = [v13 targetProtectionMode];
      v20 = 2048;
      v21 = [v3 currentProtectionMode];
      v22 = 2112;
      v23 = v3;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "<HFNetworkConfigurationGroupItem %p (%@)>: Protection mode mismatch (target %lu != current %lu) for HMNetworkConfigurationProfile %@", &v14, 0x34u);
    }
  }

  return v7 ^ 1u;
}

BOOL __63__HFNetworkConfigurationGroupItem__subclass_updateWithOptions___block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 targetProtectionMode])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 currentProtectionMode] == 4;
  }

  return v3;
}

- (id)copyWithValueSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc(objc_opt_class());
  group = [(HFNetworkConfigurationGroupItem *)self group];
  v7 = [v5 initWithGroup:group valueSource:sourceCopy];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

@end