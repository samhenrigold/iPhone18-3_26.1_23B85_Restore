@interface HVHarvestEligibility
+ (BOOL)searchableItemIsEligibleForDeferredHarvesting:(id)harvesting;
+ (BOOL)searchableItemIsEligibleForDissectorPipeline:(id)pipeline targetPluginsCustomAttributeName:(id)name;
+ (BOOL)searchableItemIsEligibleForHarvesting:(id)harvesting eligibleExceptForAge:(BOOL *)age;
+ (BOOL)searchableItemIsEligibleForHarvestingWithGetterBlock:(id)block bundleIdentifier:(id)identifier eligibleExceptForAge:(BOOL *)age;
@end

@implementation HVHarvestEligibility

+ (BOOL)searchableItemIsEligibleForHarvestingWithGetterBlock:(id)block bundleIdentifier:(id)identifier eligibleExceptForAge:(BOOL *)age
{
  blockCopy = block;
  identifierCopy = identifier;
  if (age)
  {
    *age = 0;
  }

  if (([self searchableItemIsStoredEncryptedWithGetterBlock:blockCopy bundleIdentifier:identifierCopy] & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __115__HVHarvestEligibility_searchableItemIsEligibleForHarvestingWithGetterBlock_bundleIdentifier_eligibleExceptForAge___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (searchableItemIsEligibleForHarvestingWithGetterBlock_bundleIdentifier_eligibleExceptForAge___pasOnceToken5 != -1)
    {
      dispatch_once(&searchableItemIsEligibleForHarvestingWithGetterBlock_bundleIdentifier_eligibleExceptForAge___pasOnceToken5, block);
    }

    v12 = searchableItemIsEligibleForHarvestingWithGetterBlock_bundleIdentifier_eligibleExceptForAge___pasExprOnceResult;
    if (identifierCopy && [identifierCopy length])
    {
      v13 = [v12 objectForKeyedSubscript:identifierCopy];
      if (!v13)
      {
        v14 = [v12 objectForKeyedSubscript:@"_thirdpartyonly_"];
        v15 = (v14)[2](v14, blockCopy, identifierCopy);

        v16 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v13 = [v12 objectForKeyedSubscript:@"_thirdpartyonly_"];
    }

    v16 = v13;
    v15 = (*(v13 + 16))(v13, blockCopy, identifierCopy);
LABEL_13:

    if (v15)
    {
      if (!age)
      {
LABEL_16:
        isEligible = [v15 isEligible];

        goto LABEL_17;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HVHarvestEligibility.m" lineNumber:136 description:@"result unexpectedly nil"];

      if (!age)
      {
        goto LABEL_16;
      }
    }

    *age = [v15 isEligibleExceptForAge];
    goto LABEL_16;
  }

  isEligible = 0;
LABEL_17:

  return isEligible;
}

void __115__HVHarvestEligibility_searchableItemIsEligibleForHarvestingWithGetterBlock_bundleIdentifier_eligibleExceptForAge___block_invoke(uint64_t a1)
{
  v8[8] = *MEMORY[0x277D85DE8];
  v1 = objc_autoreleasePoolPush();
  v7[0] = @"com.apple.mobilemail";
  v2 = objc_opt_self();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HVHarvestEligibility_mailAppItemEligibilityCheckBlock__block_invoke;
  v6[3] = &__block_descriptor_48_e71___HVEligibilityCheckResult_24__0_____CSSearchableItem____8__NSString_16l;
  v6[4] = sel_mailAppItemEligibilityCheckBlock;
  v6[5] = v2;
  v3 = MEMORY[0x238381E60](v6);
  v8[0] = v3;
  v7[1] = @"com.apple.MobileSMS";
  objc_opt_self();
  v8[1] = &__block_literal_global_47;
  v7[2] = @"com.apple.news";
  objc_opt_self();
  v8[2] = &__block_literal_global_49;
  v7[3] = @"com.apple.mobilesafari";
  objc_opt_self();
  v8[3] = &__block_literal_global_49;
  v7[4] = @"com.apple.mobilenotes";
  objc_opt_self();
  v8[4] = &__block_literal_global_49;
  v7[5] = @"com.apple.reminders";
  objc_opt_self();
  v8[5] = &__block_literal_global_49;
  v7[6] = @"com.apple.usernotificationsd";
  objc_opt_self();
  v8[6] = &__block_literal_global_49;
  v7[7] = @"_thirdpartyonly_";
  objc_opt_self();
  v8[7] = &__block_literal_global_56;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:8];
  v5 = searchableItemIsEligibleForHarvestingWithGetterBlock_bundleIdentifier_eligibleExceptForAge___pasExprOnceResult;
  searchableItemIsEligibleForHarvestingWithGetterBlock_bundleIdentifier_eligibleExceptForAge___pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v1);
}

HVEligibilityCheckResult *__51__HVHarvestEligibility_thirdPartyOnlyEligibleBlock__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if ([v5 hasPrefix:@"com.apple."])
  {
    v6 = hv_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_2321EC000, v6, OS_LOG_TYPE_DEFAULT, "HVHarvestEligibility: items from unsupported first-party bundle %@ are not eligible", &v12, 0xCu);
    }

    v7 = objc_opt_new();
    [v7 setIsEligible:0];
    [v7 setIsEligibleExceptForAge:0];
  }

  else
  {
    v8 = v4[2](v4);
    v9 = hv_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 uniqueIdentifier];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_2321EC000, v9, OS_LOG_TYPE_DEFAULT, "HVHarvestEligibility: item %@ from bundle %@ is eligible", &v12, 0x16u);
    }

    v7 = objc_opt_new();
    [v7 setIsEligible:1];
    [v7 setIsEligibleExceptForAge:0];
  }

  return v7;
}

HVEligibilityCheckResult *__60__HVHarvestEligibility_supportedFirstPartyItemEligibleBlock__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (([v5 hasPrefix:@"com.apple."] & 1) == 0)
  {
    __assert_rtn("+[HVHarvestEligibility supportedFirstPartyItemEligibleBlock]_block_invoke", "HVHarvestEligibility.m", 226, "[bundleIdentifier hasPrefix:@com.apple.]");
  }

  v6 = v4[2](v4);
  v7 = hv_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 uniqueIdentifier];
    v9 = [v6 bundleID];
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "HVHarvestEligibility: first-party item %@ from bundle %@ is eligible", &v12, 0x16u);
  }

  v10 = objc_opt_new();
  [v10 setIsEligible:1];
  [v10 setIsEligibleExceptForAge:0];

  return v10;
}

HVEligibilityCheckResult *__60__HVHarvestEligibility_messagesAppItemEligibilityCheckBlock__block_invoke()
{
  v0 = objc_opt_new();
  v1 = hv_default_log_handle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2321EC000, v1, OS_LOG_TYPE_INFO, "HVHarvestEligibility: skipping Messages item from Spotlight since Messages donations use a custom donation SPI.", v3, 2u);
  }

  [v0 setIsEligible:0];
  [v0 setIsEligibleExceptForAge:0];

  return v0;
}

HVEligibilityCheckResult *__56__HVHarvestEligibility_mailAppItemEligibilityCheckBlock__block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = (*(a2 + 16))(a2);
  v4 = objc_opt_new();
  v5 = [v3 attributeSet];
  v6 = [v5 contentType];

  if (v6)
  {
    v7 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v6];
    if (v7 && ([*MEMORY[0x277CE1D60] conformsToType:v7] & 1) != 0)
    {
      v8 = [v3 attributeSet];
      v9 = [v8 emailHeaders];

      v10 = [v3 attributeSet];
      v11 = [v10 mailboxIdentifiers];

      if (![HVSearchableItemHelper mailItemIsValid:v3 emailHeaders:v9 mailboxIdentifiers:v11]|| ![HVSearchableItemHelper mailItemIsFromSupportedAccount:v3])
      {
        v13 = hv_default_log_handle();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
LABEL_16:

          goto LABEL_17;
        }

        v14 = [v3 uniqueIdentifier];
        *buf = 138412290;
        v24 = v14;
        v15 = "HVHarvestEligibility: skipping invalid searchable item: %@";
LABEL_15:
        _os_log_impl(&dword_2321EC000, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);

        goto LABEL_16;
      }

      if (!v9)
      {
        v22 = [MEMORY[0x277CCA890] currentHandler];
        [v22 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"HVHarvestEligibility.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"emailHeaders"}];
      }

      v12 = +[HVContentAdmission suggestionsShouldShowPastEvents]|| [HVSearchableItemHelper mailItemIsRecent:v3 emailHeaders:v9];
      if ([HVSearchableItemHelper mailItemIsSPAM:v3 emailHeaders:v9 mailboxIdentifiers:v11]|| [HVSearchableItemHelper mailItemIsInDrafts:v3 mailboxIdentifiers:v11]|| [HVSearchableItemHelper mailItemIsInTrash:v3 mailboxIdentifiers:v11])
      {
        v17 = 1;
        if (v12)
        {
LABEL_26:
          if (!v17)
          {
            [v4 setIsEligible:1];
            goto LABEL_17;
          }

          v13 = hv_default_log_handle();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_16;
          }

          v14 = [v3 uniqueIdentifier];
          *buf = 138412290;
          v24 = v14;
          v15 = "HVHarvestEligibility: skipping ignorable searchable item: %@";
          goto LABEL_15;
        }
      }

      else
      {
        v17 = [HVSearchableItemHelper mailItemIsTooBig:v3];
        if (v12)
        {
          goto LABEL_26;
        }
      }

      v18 = hv_default_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v3 uniqueIdentifier];
        *buf = 138412290;
        v24 = v19;
        _os_log_impl(&dword_2321EC000, v18, OS_LOG_TYPE_DEFAULT, "HVHarvestEligibility: skipping ignorable searchable item: %@", buf, 0xCu);
      }

      if (!v17)
      {
        v20 = hv_default_log_handle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v3 uniqueIdentifier];
          *buf = 138412290;
          v24 = v21;
          _os_log_impl(&dword_2321EC000, v20, OS_LOG_TYPE_DEFAULT, "HVHarvestEligibility: item is not recent but otherwise eligible: %@", buf, 0xCu);
        }

        [v4 setIsEligibleExceptForAge:1];
      }

      goto LABEL_17;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = hv_default_log_handle();
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    goto LABEL_18;
  }

  v11 = [v3 uniqueIdentifier];
  *buf = 138412546;
  v24 = v11;
  v25 = 2112;
  v26 = v7;
  _os_log_impl(&dword_2321EC000, v9, OS_LOG_TYPE_INFO, "HVHarvestEligibility: skipping mail app item %@ with non-email type %@", buf, 0x16u);
LABEL_17:

LABEL_18:

  return v4;
}

+ (BOOL)searchableItemIsEligibleForHarvesting:(id)harvesting eligibleExceptForAge:(BOOL *)age
{
  harvestingCopy = harvesting;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__HVHarvestEligibility_searchableItemIsEligibleForHarvesting_eligibleExceptForAge___block_invoke;
  v10[3] = &unk_2789699B0;
  v11 = harvestingCopy;
  v7 = harvestingCopy;
  bundleID = [v7 bundleID];
  LOBYTE(age) = [self searchableItemIsEligibleForHarvestingWithGetterBlock:v10 bundleIdentifier:bundleID eligibleExceptForAge:age];

  return age;
}

+ (BOOL)searchableItemIsEligibleForDissectorPipeline:(id)pipeline targetPluginsCustomAttributeName:(id)name
{
  v27 = *MEMORY[0x277D85DE8];
  pipelineCopy = pipeline;
  nameCopy = name;
  bundleID = [pipelineCopy bundleID];
  v10 = [bundleID isEqualToString:@"com.apple.mobilemail"];

  if ((v10 & 1) == 0)
  {
    bundleID2 = [pipelineCopy bundleID];
    v13 = [bundleID2 isEqualToString:@"com.apple.MobileSMS"];

    if (!v13)
    {
      v11 = 0;
      goto LABEL_12;
    }

    v14 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:nameCopy];
    if (!v14)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HVHarvestEligibility.m" lineNumber:67 description:{@"initWithKeyName failed for expected valid key: %@", nameCopy}];
    }

    attributeSet = [pipelineCopy attributeSet];
    v16 = [attributeSet valueForCustomKey:v14];

    if (![v16 count])
    {
      domainIdentifier = [pipelineCopy domainIdentifier];

      if (domainIdentifier)
      {
        v11 = 1;
        goto LABEL_11;
      }

      v19 = hv_default_log_handle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        bundleID3 = [pipelineCopy bundleID];
        uniqueIdentifier = [pipelineCopy uniqueIdentifier];
        *buf = 138412546;
        v24 = bundleID3;
        v25 = 2112;
        v26 = uniqueIdentifier;
        _os_log_fault_impl(&dword_2321EC000, v19, OS_LOG_TYPE_FAULT, "Got a Message with a nil domainIdentifier (bundleID=%@, uniqueIdentifier=%@)", buf, 0x16u);
      }
    }

    v11 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v11 = 1;
LABEL_12:

  return v11;
}

+ (BOOL)searchableItemIsEligibleForDeferredHarvesting:(id)harvesting
{
  harvestingCopy = harvesting;
  if (searchableItemIsEligibleForDeferredHarvesting__onceToken != -1)
  {
    dispatch_once(&searchableItemIsEligibleForDeferredHarvesting__onceToken, &__block_literal_global_1642);
  }

  bundleID = [harvestingCopy bundleID];

  if (bundleID)
  {
    bundleID = searchableItemIsEligibleForDeferredHarvesting__bundleIds;
    bundleID2 = [harvestingCopy bundleID];
    LOBYTE(bundleID) = [bundleID containsObject:bundleID2];
  }

  return bundleID;
}

void __70__HVHarvestEligibility_searchableItemIsEligibleForDeferredHarvesting___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.news", @"com.apple.mobilesafari", @"com.apple.mobilenotes", @"com.apple.reminders", 0}];
  objc_autoreleasePoolPop(v0);
  v2 = searchableItemIsEligibleForDeferredHarvesting__bundleIds;
  searchableItemIsEligibleForDeferredHarvesting__bundleIds = v1;
}

@end