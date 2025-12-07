@interface RBDomainAttributeManagerDataProvider
- (BOOL)_checkConflictingAttributes:(uint64_t)attributes error:;
- (RBDomainAttributeManagerDataProvider)initWithDictionary:(id)dictionary;
- (RBDomainAttributeManagerDataProvider)initWithPath:(id)path;
- (RBDomainAttributeTemplate)_templateWithDomain:name:dictionary:errors:;
- (RBDomainAttributeTemplate)_validatedDomainAttributeTemplateFromDomainAttributeTemplate:dependenciesByFullyQualifiedName:errors:;
- (id)_additionalRestrictionsFromDictionary:forDomainAttributeWithDomain:name:errors:;
- (id)_attributeTemplateForItem:(uint64_t)item domain:(uint64_t)domain name:(void *)name errors:;
- (id)_attributeTemplateGroupsFromArray:(uint64_t)array forDomainAttributeWithDomain:(uint64_t)domain name:(NSObject *)name errors:;
- (id)_attributeTemplatesFromArray:forDomainAttributeWithDomain:name:errors:;
- (id)_bundlePropertiesFromDictionary:forDomainAttributeWithDomain:name:errors:;
- (id)_legalClassNames;
- (id)_legalPropertyNamesByClassName;
- (id)_restrictionFromDictionary:(void *)dictionary forDomainAttributeWithDomain:(void *)domain name:(void *)name errors:;
- (id)_templatesByDomainWithErrors:(uint64_t)errors;
- (id)_templatesWithDomain:(void *)domain fromDictionary:(void *)dictionary errors:;
- (id)_templatesWithDomain:(void *)domain fromFilename:(void *)filename dirpath:(void *)dirpath errors:;
- (id)_validatedAttributeTemplateFromAttributeTemplate:(void *)template domainAttributeTemplate:(void *)attributeTemplate dependenciesByFullyQualifiedName:(void *)name errors:;
- (id)_validatedTemplatesByDomainWithErrors:(id)errors;
- (id)templatesByDomain;
- (id)validDomains;
- (id)validationErrors;
- (uint64_t)_isPropertyLegalForClassName:(uint64_t)name propertyName:(uint64_t)propertyName value:(uint64_t)value error:;
- (void)_configureTemplate:(uint64_t)template fromInfo:(uint64_t)info forDomain:(void *)domain name:(char)name allowRestrictions:(void *)restrictions errors:;
- (void)_isAttributeClassNameLegal:(void *)result;
- (void)_preAttributeTemplateFromAttributeTemplate:(void *)template domainAttributeTemplate:(void *)attributeTemplate generateDependenciesByFullyQualifiedName:;
- (void)_preDomainAttributeTemplateFromDomainAttributeTemplate:(void *)template generateDependenciesByFullyQualifiedName:;
- (void)_templatesWithDomain:(void *)domain fromFilename:(void *)filename errors:;
@end

@implementation RBDomainAttributeManagerDataProvider

- (RBDomainAttributeManagerDataProvider)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = RBDomainAttributeManagerDataProvider;
  v5 = [(RBDomainAttributeManagerDataProvider *)&v9 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    path = v5->_path;
    v5->_path = v6;
  }

  return v5;
}

- (RBDomainAttributeManagerDataProvider)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = RBDomainAttributeManagerDataProvider;
  v6 = [(RBDomainAttributeManagerDataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawTemplates, dictionary);
  }

  return v7;
}

- (id)validationErrors
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(RBDomainAttributeManagerDataProvider *)self _validatedTemplatesByDomainWithErrors:array];

  return array;
}

- (id)validDomains
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(RBDomainAttributeManagerDataProvider *)self _templatesByDomainWithErrors:array];
  allKeys = [v4 allKeys];

  return allKeys;
}

void __78__RBDomainAttributeManagerDataProvider__validatedTemplatesByDomainWithErrors___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__RBDomainAttributeManagerDataProvider__validatedTemplatesByDomainWithErrors___block_invoke_2;
  v5[3] = &unk_279B33F68;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a3 enumerateKeysAndObjectsUsingBlock:v5];
}

void __78__RBDomainAttributeManagerDataProvider__validatedTemplatesByDomainWithErrors___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionary];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __78__RBDomainAttributeManagerDataProvider__validatedTemplatesByDomainWithErrors___block_invoke_4;
  v14 = &unk_279B33FB8;
  v9 = *(a1 + 40);
  v15 = *(a1 + 32);
  v16 = v9;
  v17 = *(a1 + 48);
  v18 = v8;
  v10 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:&v11];

  [*(a1 + 56) setObject:v10 forKeyedSubscript:{v7, v11, v12, v13, v14, v15}];
}

void __78__RBDomainAttributeManagerDataProvider__validatedTemplatesByDomainWithErrors___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v4 = [RBDomainAttributeManagerDataProvider _validatedDomainAttributeTemplateFromDomainAttributeTemplate:dependenciesByFullyQualifiedName:errors:];
  if (v4)
  {
    [*(a1 + 56) setObject:v4 forKeyedSubscript:v5];
  }
}

void __69__RBDomainAttributeManagerDataProvider__templatesByDomainWithErrors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = a2;
  v8 = [(RBDomainAttributeManagerDataProvider *)v5 _templatesWithDomain:v7 fromDictionary:a3 errors:v6];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
}

void __108__RBDomainAttributeManagerDataProvider__configureTemplate_fromInfo_forDomain_name_allowRestrictions_errors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA470];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RB Domain template %@ malformed: %@", *(a1 + 32), *(a1 + 40)];
    v30[0] = v8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v14 = v12;
    v15 = 2;
LABEL_8:
    v16 = [v14 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:v15 userInfo:v13];

    [*(a1 + 48) addObject:v16];
LABEL_9:

    goto LABEL_10;
  }

  if (([v5 isEqualToString:@"Attributes"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"AttributeGroups") & 1) == 0)
  {
    if ([v5 isEqualToString:@"Restriction"])
    {
      if (*(a1 + 80) != 1)
      {
        v7 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA470];
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RB Domain template %@ contains unexpected restriction with key : %@", *(a1 + 32), v5];
        v28 = v8;
        v9 = MEMORY[0x277CBEAC0];
        v10 = &v28;
        v11 = &v27;
LABEL_29:
        v13 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
        v14 = v7;
        v15 = 4;
        goto LABEL_8;
      }
    }

    else
    {
      if ([v5 isEqualToString:@"RequiredTargetBundleProperties"])
      {
        v16 = [RBDomainAttributeManagerDataProvider _bundlePropertiesFromDictionary:forDomainAttributeWithDomain:name:errors:];
        [*(a1 + 72) setTargetBundleProperties:v16];
        goto LABEL_9;
      }

      if (![v5 isEqualToString:@"Selector"])
      {
        if ([v5 isEqualToString:@"RequiredOriginatorEntitlements"])
        {
          if (*(a1 + 80) == 1)
          {
            v16 = [RBEntitlementPredicate predicateForObject:v6 forDomain:*(a1 + 32) attribute:*(a1 + 64) errors:*(a1 + 48)];
            [*(a1 + 72) setOriginatorEntitlements:v16];
            goto LABEL_9;
          }

          v7 = MEMORY[0x277CCA9B8];
          v23 = *MEMORY[0x277CCA470];
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RB Domain template %@ contains unexpected restriction with key : %@", *(a1 + 32), v5];
          v24 = v8;
          v9 = MEMORY[0x277CBEAC0];
          v10 = &v24;
          v11 = &v23;
        }

        else if ([v5 isEqualToString:@"RequiredTargetEntitlements"])
        {
          if (*(a1 + 80) == 1)
          {
            v16 = [RBEntitlementPredicate predicateForObject:v6 forDomain:*(a1 + 32) attribute:*(a1 + 64) errors:*(a1 + 48)];
            [*(a1 + 72) setTargetEntitlements:v16];
            goto LABEL_9;
          }

          v7 = MEMORY[0x277CCA9B8];
          v21 = *MEMORY[0x277CCA470];
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RB Domain template %@ contains unexpected restriction with key : %@", *(a1 + 32), v5];
          v22 = v8;
          v9 = MEMORY[0x277CBEAC0];
          v10 = &v22;
          v11 = &v21;
        }

        else if ([v5 isEqualToString:@"AdditionalRestrictions"])
        {
          if (*(a1 + 80) == 1)
          {
            v16 = [RBDomainAttributeManagerDataProvider _additionalRestrictionsFromDictionary:forDomainAttributeWithDomain:name:errors:];
            [*(a1 + 72) setAdditionalRestrictions:v16];
            goto LABEL_9;
          }

          v7 = MEMORY[0x277CCA9B8];
          v19 = *MEMORY[0x277CCA470];
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RB Domain template %@ contains unexpected restriction with key : %@", *(a1 + 32), v5];
          v20 = v8;
          v9 = MEMORY[0x277CBEAC0];
          v10 = &v20;
          v11 = &v19;
        }

        else
        {
          if ([v5 isEqualToString:@"EndowmentNamespace"])
          {
            goto LABEL_10;
          }

          v7 = MEMORY[0x277CCA9B8];
          v17 = *MEMORY[0x277CCA470];
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RB Domain template %@ contains unrecognized key: %@", *(a1 + 32), v5];
          v18 = v8;
          v9 = MEMORY[0x277CBEAC0];
          v10 = &v18;
          v11 = &v17;
        }

        goto LABEL_29;
      }

      if (*(a1 + 80))
      {
        v7 = MEMORY[0x277CCA9B8];
        v25 = *MEMORY[0x277CCA470];
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RB Domain template %@ contains unexpected selector", *(a1 + 32)];
        v26 = v8;
        v9 = MEMORY[0x277CBEAC0];
        v10 = &v26;
        v11 = &v25;
        goto LABEL_29;
      }
    }

    v16 = [(RBDomainAttributeManagerDataProvider *)*(a1 + 56) _restrictionFromDictionary:v6 forDomainAttributeWithDomain:*(a1 + 32) name:*(a1 + 64) errors:*(a1 + 48)];
    [*(a1 + 72) setRestriction:v16];
    goto LABEL_9;
  }

LABEL_10:
}

- (id)_restrictionFromDictionary:(void *)dictionary forDomainAttributeWithDomain:(void *)domain name:(void *)name errors:
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a2;
  dictionaryCopy = dictionary;
  domainCopy = domain;
  nameCopy = name;
  v13 = 0;
  if (self && v9)
  {
    v17 = 0;
    v13 = [RBDomainRestriction domainRestrictionForDictionary:v9 withError:&v17];
    v14 = v17;
    if (v14)
    {
      v15 = rbs_general_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v19 = dictionaryCopy;
        v20 = 2114;
        v21 = domainCopy;
        v22 = 2114;
        v23 = v14;
        _os_log_error_impl(&dword_262485000, v15, OS_LOG_TYPE_ERROR, "Domain %{public}@ attribute %{public}@ contains restriction that failed to resolve with error: %{public}@", buf, 0x20u);
      }

      [nameCopy addObject:v14];
    }
  }

  return v13;
}

void __113__RBDomainAttributeManagerDataProvider__bundlePropertiesFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 56) setObject:v6 forKeyedSubscript:v5];
  }

  else
  {
    v7 = rbs_general_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __113__RBDomainAttributeManagerDataProvider__bundlePropertiesFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke_cold_1();
    }

    if (*(a1 + 48))
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains bundle property name of wrong type: %@", *(a1 + 32), *(a1 + 40), v5, *MEMORY[0x277CCA470]];
      v13[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v11 = [v8 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v10];

      [*(a1 + 48) addObject:v11];
    }
  }
}

void __119__RBDomainAttributeManagerDataProvider__additionalRestrictionsFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 56) setObject:v6 forKeyedSubscript:v5];
      goto LABEL_13;
    }

    v13 = rbs_general_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __119__RBDomainAttributeManagerDataProvider__additionalRestrictionsFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke_cold_2();
    }

    if (*(a1 + 48))
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains entitlement value of wrong type: %@", *(a1 + 32), *(a1 + 40), v6, *MEMORY[0x277CCA470]];
      v17 = v9;
      v10 = MEMORY[0x277CBEAC0];
      v11 = &v17;
      v12 = &v16;
      goto LABEL_12;
    }
  }

  else
  {
    v7 = rbs_general_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __119__RBDomainAttributeManagerDataProvider__additionalRestrictionsFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke_cold_1();
    }

    if (*(a1 + 48))
    {
      v8 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA470];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains entitlement name of wrong type: %@", *(a1 + 32), *(a1 + 40), v5];
      v19[0] = v9;
      v10 = MEMORY[0x277CBEAC0];
      v11 = v19;
      v12 = &v18;
LABEL_12:
      v14 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
      v15 = [v8 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v14];

      [*(a1 + 48) addObject:v15];
    }
  }

LABEL_13:
}

void __136__RBDomainAttributeManagerDataProvider__preDomainAttributeTemplateFromDomainAttributeTemplate_generateDependenciesByFullyQualifiedName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 attributes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __136__RBDomainAttributeManagerDataProvider__preDomainAttributeTemplateFromDomainAttributeTemplate_generateDependenciesByFullyQualifiedName___block_invoke_2;
  v5[3] = &unk_279B34080;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 enumerateObjectsUsingBlock:v5];
}

void __141__RBDomainAttributeManagerDataProvider__validatedDomainAttributeTemplateFromDomainAttributeTemplate_dependenciesByFullyQualifiedName_errors___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(RBAttributeTemplateGroup);
  v5 = [v3 originatorEntitlements];
  [(RBAttributeTemplateGroup *)v4 setOriginatorEntitlements:v5];

  v6 = [v3 targetBundleProperties];
  [(RBAttributeTemplateGroup *)v4 setTargetBundleProperties:v6];

  v7 = [v3 targetEntitlements];
  [(RBAttributeTemplateGroup *)v4 setTargetEntitlements:v7];

  v8 = [v3 additionalRestrictions];
  [(RBAttributeTemplateGroup *)v4 setAdditionalRestrictions:v8];

  v9 = [v3 restriction];
  [(RBAttributeTemplateGroup *)v4 setRestriction:v9];

  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [v3 attributes];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __141__RBDomainAttributeManagerDataProvider__validatedDomainAttributeTemplateFromDomainAttributeTemplate_dependenciesByFullyQualifiedName_errors___block_invoke_2;
  v18[3] = &unk_279B340D0;
  v17 = *(a1 + 32);
  v12 = *(&v17 + 1);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  v19 = v17;
  v20 = v15;
  v21 = v10;
  v16 = v10;
  [v11 enumerateObjectsUsingBlock:v18];

  [(RBAttributeTemplateGroup *)v4 setAttributes:v16];
  [*(a1 + 64) addObject:v4];
}

uint64_t __141__RBDomainAttributeManagerDataProvider__validatedDomainAttributeTemplateFromDomainAttributeTemplate_dependenciesByFullyQualifiedName_errors___block_invoke_2(void **a1, void *a2)
{
  v3 = [(RBDomainAttributeManagerDataProvider *)a1[4] _validatedAttributeTemplateFromAttributeTemplate:a2 domainAttributeTemplate:a1[5] dependenciesByFullyQualifiedName:a1[6] errors:a1[7]];
  if (v3)
  {
    [a1[8] addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __56__RBDomainAttributeManagerDataProvider__legalClassNames__block_invoke()
{
  _MergedGlobals_1 = [MEMORY[0x277CBEB98] setWithObjects:{@"RBSAcquisitionCompletionAttribute", @"RBSCPUAccessGrant", @"RBSSuspendableCPUGrant", @"RBSCarPlayModeGrant", @"RBSCoalitionLevelGrant", @"RBSCPUMaximumUsageLimitation", @"RBSCPUMinimumUsageGrant", @"RBSDefineRelativeStartTimeGrant", @"RBSDomainAttribute", @"RBSDebugGrant", @"RBSDurationAttribute", @"RBSGPUAccessGrant", @"RBSJetsamPriorityGrant", @"RBSBaseMemoryGrant", @"RBSLaunchGrant", @"RBSPreserveBaseMemoryGrant", @"RBSPreventIdleSleepGrant", @"RBSPreventResourceUsageInvalidationAttribute", @"RBSResistTerminationGrant", @"RBSRunningReasonAttribute", @"RBSTagAttribute", @"RBSAppNapEnableGrant", @"RBSAppNapInactiveGrant", @"RBSAppNapPreventBackgroundSocketsGrant", @"RBSAppNapPreventDiskThrottleGrant", @"RBSAppNapPreventLowPriorityCPUGrant", @"RBSAppNapPreventSuppressedCPUGrant", @"RBSAppNapPreventTimerThrottleGrant", @"RBSMimicTaskSuspensionAttribute", @"RBSForceRoleManageAttribute", @"RBSEndowmentGrant", @"RBSSubordinateProcessAttribute", @"RBSSavedEndowmentGrant", @"RBSConditionAttribute", @"RBSInvalidateUnderConditionAttribute", @"RBSPersistentAttribute", 0}];

  return MEMORY[0x2821F96F8]();
}

void __70__RBDomainAttributeManagerDataProvider__legalPropertyNamesByClassName__block_invoke()
{
  v90[19] = *MEMORY[0x277D85DE8];
  v89[0] = @"RBSAcquisitionCompletionAttribute";
  v89[1] = @"RBSCoalitionLevelGrant";
  v90[0] = &unk_28751B338;
  v90[1] = &unk_28751B360;
  v89[2] = @"RBSCPUAccessGrant";
  v89[3] = @"RBSSuspendableCPUGrant";
  v90[2] = &unk_28751B388;
  v90[3] = &unk_28751B3B0;
  v89[4] = @"RBSCPUMaximumUsageLimitation";
  v87[0] = @"Duration";
  v48 = [MEMORY[0x277CBEB68] null];
  v86 = v48;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
  v88[0] = v47;
  v87[1] = @"Percentage";
  v46 = [MEMORY[0x277CBEB68] null];
  v85 = v46;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
  v88[1] = v45;
  v88[2] = &unk_28751B508;
  v87[2] = @"Role";
  v87[3] = @"ViolationPolicy";
  v88[3] = &unk_28751B520;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:4];
  v90[4] = v44;
  v89[5] = @"RBSCPUMinimumUsageGrant";
  v83[0] = @"Duration";
  v43 = [MEMORY[0x277CBEB68] null];
  v82 = v43;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
  v84[0] = v42;
  v83[1] = @"Percentage";
  v41 = [MEMORY[0x277CBEB68] null];
  v81 = v41;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
  v83[2] = @"Role";
  v84[1] = v40;
  v84[2] = &unk_28751B538;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:3];
  v90[5] = v39;
  v89[6] = @"RBSDurationAttribute";
  v80[0] = &unk_28751B550;
  v79[0] = @"EndPolicy";
  v79[1] = @"WarningDuration";
  v38 = [MEMORY[0x277CBEB68] null];
  v78 = v38;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
  v80[1] = v37;
  v79[2] = @"InvalidationDuration";
  v36 = [MEMORY[0x277CBEB68] null];
  v77 = v36;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
  v79[3] = @"StartPolicy";
  v80[2] = v35;
  v80[3] = &unk_28751B568;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:4];
  v90[6] = v34;
  v89[7] = @"RBSDomainAttribute";
  v75[0] = @"Domain";
  v33 = [MEMORY[0x277CBEB68] null];
  v74 = v33;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
  v76[0] = v32;
  v75[1] = @"Name";
  v31 = [MEMORY[0x277CBEB68] null];
  v73 = v31;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
  v76[1] = v30;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
  v90[7] = v29;
  v89[8] = @"RBSJetsamPriorityGrant";
  v71 = @"Band";
  v28 = [MEMORY[0x277CBEB68] null];
  v70 = v28;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
  v72 = v27;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
  v90[8] = v26;
  v89[9] = @"RBSBaseMemoryGrant";
  v68[0] = @"Category";
  v25 = [MEMORY[0x277CBEB68] null];
  v67 = v25;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
  v68[1] = @"Strength";
  v69[0] = v24;
  v69[1] = &unk_28751B580;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];
  v90[9] = v23;
  v90[10] = &unk_28751B3D8;
  v89[10] = @"RBSResistTerminationGrant";
  v89[11] = @"RBSRunningReasonAttribute";
  v65 = @"RunningReason";
  v22 = [MEMORY[0x277CBEB68] null];
  v64 = v22;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
  v66 = v21;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
  v90[11] = v20;
  v89[12] = @"RBSTagAttribute";
  v62 = @"Tag";
  v19 = [MEMORY[0x277CBEB68] null];
  v61 = v19;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
  v63 = v18;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  v90[12] = v17;
  v90[13] = &unk_28751B400;
  v89[13] = @"RBSAppNapPreventTimerThrottleGrant";
  v89[14] = @"RBSEndowmentGrant";
  v90[14] = &unk_28751B428;
  v89[15] = @"RBSSavedEndowmentGrant";
  v59[0] = @"Namespace";
  v16 = [MEMORY[0x277CBEB68] null];
  v58 = v16;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
  v59[1] = @"Key";
  v60[0] = v15;
  v14 = [MEMORY[0x277CBEB68] null];
  v57 = v14;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
  v60[1] = v13;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
  v90[15] = v12;
  v90[16] = &unk_28751B450;
  v89[16] = @"RBSGPUAccessGrant";
  v89[17] = @"RBSConditionAttribute";
  v55[0] = @"Condition";
  v11 = [MEMORY[0x277CBEB68] null];
  v54 = v11;
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
  v55[1] = @"Value";
  v56[0] = v0;
  v1 = [MEMORY[0x277CBEB68] null];
  v53 = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
  v56[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
  v90[17] = v3;
  v89[18] = @"RBSInvalidateUnderConditionAttribute";
  v51[0] = @"Condition";
  v4 = [MEMORY[0x277CBEB68] null];
  v50 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v51[1] = @"MinValue";
  v52[0] = v5;
  v6 = [MEMORY[0x277CBEB68] null];
  v49 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  v52[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
  v90[18] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:19];
  v10 = qword_2814AA108;
  qword_2814AA108 = v9;
}

- (id)_validatedTemplatesByDomainWithErrors:(id)errors
{
  v3 = a2;
  if (errors)
  {
    v4 = [(RBDomainAttributeManagerDataProvider *)errors _templatesByDomainWithErrors:v3];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__RBDomainAttributeManagerDataProvider__validatedTemplatesByDomainWithErrors___block_invoke;
    v16[3] = &unk_279B33F90;
    v16[4] = errors;
    v7 = dictionary2;
    v17 = v7;
    [v4 enumerateKeysAndObjectsUsingBlock:v16];
    OUTLINED_FUNCTION_0_2();
    v12[1] = 3221225472;
    v12[2] = __78__RBDomainAttributeManagerDataProvider__validatedTemplatesByDomainWithErrors___block_invoke_3;
    v12[3] = &unk_279B33FE0;
    v12[4] = errors;
    v13 = v7;
    v14 = v3;
    v8 = dictionary;
    v15 = v8;
    v9 = v7;
    [v4 enumerateKeysAndObjectsUsingBlock:v12];
    v10 = v15;
    errors = v8;
  }

  return errors;
}

- (id)_templatesByDomainWithErrors:(uint64_t)errors
{
  v139[1] = *MEMORY[0x277D85DE8];
  v111 = a2;
  if (errors)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v4 = dictionary;
    if (!*(errors + 8))
    {
      v18 = *(errors + 16);
      v112[0] = MEMORY[0x277D85DD0];
      v112[1] = 3221225472;
      v112[2] = __69__RBDomainAttributeManagerDataProvider__templatesByDomainWithErrors___block_invoke;
      v112[3] = &unk_279B34008;
      v113 = dictionary;
      errorsCopy = errors;
      v115 = v111;
      [v18 enumerateKeysAndObjectsUsingBlock:v112];

      v19 = v113;
LABEL_52:

      goto LABEL_53;
    }

    v5 = rbs_general_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(errors + 8);
      *buf = 138543362;
      v128 = v6;
      _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_DEFAULT, "Loading Domain Attributes from: %{public}@", buf, 0xCu);
    }

    stringByDeletingLastPathComponent = [*(errors + 8) stringByDeletingLastPathComponent];
    v8 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"domains.plist"];

    v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v8];
    v10 = MEMORY[0x277CCA470];
    v108 = v4;
    v104 = v9;
    v105 = v8;
    if (v9)
    {
      v11 = RBSArrayForKey();
      if (v11)
      {
        v110 = [MEMORY[0x277CBEB98] setWithArray:v11];
        if (v110)
        {
LABEL_20:

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          errorsCopy2 = errors;
          v28 = *(errors + 8);
          v125 = 0;
          v29 = [defaultManager contentsOfDirectoryAtPath:v28 error:&v125];
          v103 = v125;

          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v30 = v29;
          v31 = [v30 countByEnumeratingWithState:&v121 objects:v133 count:16];
          if (v31)
          {
            v33 = v31;
            v34 = *v122;
            v35 = *v10;
            *&v32 = 138543362;
            v106 = v32;
            do
            {
              v36 = 0;
              v37 = v110;
              do
              {
                if (*v122 != v34)
                {
                  objc_enumerationMutation(v30);
                }

                v38 = *(*(&v121 + 1) + 8 * v36);
                stringByDeletingPathExtension = [v38 stringByDeletingPathExtension];
                if ([v37 containsObject:v38])
                {
                  v52 = [(RBDomainAttributeManagerDataProvider *)errorsCopy2 _templatesWithDomain:stringByDeletingPathExtension fromFilename:v38 errors:v111];
                  [v108 setObject:v52 forKeyedSubscript:stringByDeletingPathExtension];
                }

                else
                {
                  v40 = rbs_general_log();
                  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_FAULT);
                  if (v41)
                  {
                    OUTLINED_FUNCTION_18_1(v41, v42, v43, v44, v45, v46, v47, v48, v99, v100, v101, v103, v104, v105, v106);
                    *(v53 + 212) = v38;
                    _os_log_fault_impl(&dword_262485000, v40, OS_LOG_TYPE_FAULT, "Unknown RunningBoard domain file found: %{public}@", buf, 0xCu);
                  }

                  v49 = MEMORY[0x277CCA9B8];
                  v131 = v35;
                  v99 = stringByDeletingPathExtension;
                  v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ not allowed"];
                  v132 = v50;
                  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
                  v52 = [v49 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:4 userInfo:v51];

                  [v111 addObject:v52];
                  v37 = v110;
                }

                ++v36;
              }

              while (v33 != v36);
              v54 = [v30 countByEnumeratingWithState:&v121 objects:v133 count:16];
              v33 = v54;
            }

            while (v54);
          }

          if (os_variant_has_internal_content())
          {
            v55 = [*(errorsCopy2 + 8) stringByReplacingOccurrencesOfString:@"System/Library/LifecyclePolicy" withString:@"AppleInternal/LifecyclePolicy"];
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            v120 = v103;
            v57 = [defaultManager2 contentsOfDirectoryAtPath:v55 error:&v120];
            v102 = v120;

            v58 = rbs_general_log();
            v4 = v108;
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              v59 = [v57 count];
              *buf = 134218242;
              v128 = v59;
              v129 = 2114;
              v130 = v55;
              _os_log_impl(&dword_262485000, v58, OS_LOG_TYPE_DEFAULT, "Loading %lu Internal Domains from %{public}@", buf, 0x16u);
            }

            v118 = 0u;
            v119 = 0u;
            v116 = 0u;
            v117 = 0u;
            v30 = v57;
            v60 = [v30 countByEnumeratingWithState:&v116 objects:v126 count:16];
            if (v60)
            {
              v62 = v60;
              v63 = *v117;
              *&v61 = 138543362;
              v107 = v61;
              do
              {
                for (i = 0; i != v62; ++i)
                {
                  if (*v117 != v63)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v65 = *(*(&v116 + 1) + 8 * i);
                  stringByDeletingPathExtension2 = [v65 stringByDeletingPathExtension];
                  v67 = [v108 objectForKeyedSubscript:stringByDeletingPathExtension2];

                  v68 = rbs_general_log();
                  v69 = os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);
                  if (v67)
                  {
                    if (!v69)
                    {
                      goto LABEL_47;
                    }

                    OUTLINED_FUNCTION_18_1(v69, v70, v71, v72, v73, v74, v75, v76, v99, v100, v102, v103, v104, v105, v107);
                    *(v80 + 212) = stringByDeletingPathExtension2;
                    v78 = v68;
                    v79 = "Replacing domain %{public}@ with internal version";
                  }

                  else
                  {
                    if (!v69)
                    {
                      goto LABEL_47;
                    }

                    OUTLINED_FUNCTION_18_1(v69, v70, v71, v72, v73, v74, v75, v76, v99, v100, v102, v103, v104, v105, v107);
                    *(v77 + 212) = stringByDeletingPathExtension2;
                    v78 = v68;
                    v79 = "Adding internal domain %{public}@";
                  }

                  _os_log_impl(&dword_262485000, v78, OS_LOG_TYPE_DEFAULT, v79, buf, 0xCu);
LABEL_47:

                  v81 = [(RBDomainAttributeManagerDataProvider *)errorsCopy2 _templatesWithDomain:stringByDeletingPathExtension2 fromFilename:v65 dirpath:v55 errors:v111];
                  [v108 setObject:v81 forKeyedSubscript:stringByDeletingPathExtension2];
                }

                v62 = [v30 countByEnumeratingWithState:&v116 objects:v126 count:16];
              }

              while (v62);
            }

            v82 = v102;
          }

          else
          {
            v4 = v108;
            v82 = v103;
          }

          v19 = v110;
          goto LABEL_52;
        }

        v12 = rbs_general_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          OUTLINED_FUNCTION_16_1();
          _os_log_fault_impl(v94, v95, v96, v97, v98, 2u);
        }

        v13 = MEMORY[0x277CCA9B8];
        v138 = *v10;
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not create domain set from plist"];
        v139[0] = v14;
        v15 = MEMORY[0x277CBEAC0];
        v16 = v139;
        v17 = &v138;
      }

      else
      {
        v24 = rbs_general_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          OUTLINED_FUNCTION_16_1();
          _os_log_fault_impl(v89, v90, v91, v92, v93, 2u);
        }

        v13 = MEMORY[0x277CCA9B8];
        v136 = *v10;
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domains array missing"];
        v137 = v14;
        v15 = MEMORY[0x277CBEAC0];
        v16 = &v137;
        v17 = &v136;
      }

      v25 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
      v26 = [v13 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v25];

      [v111 addObject:v26];
    }

    else
    {
      v20 = rbs_general_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v128 = v8;
        OUTLINED_FUNCTION_16_1();
        _os_log_fault_impl(v84, v85, v86, v87, v88, 0xCu);
      }

      v21 = MEMORY[0x277CCA9B8];
      v134 = *v10;
      v99 = v8;
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domains plist failure: %@"];
      v135 = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
      v11 = [v21 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v23];

      [v111 addObject:v11];
    }

    v110 = 0;
    goto LABEL_20;
  }

  v4 = 0;
LABEL_53:

  return v4;
}

- (id)templatesByDomain
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(RBDomainAttributeManagerDataProvider *)self _validatedTemplatesByDomainWithErrors:array];

  return v4;
}

- (void)_preDomainAttributeTemplateFromDomainAttributeTemplate:(void *)template generateDependenciesByFullyQualifiedName:
{
  v5 = a2;
  templateCopy = template;
  if (self)
  {
    attributeGroups = [v5 attributeGroups];
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_31_0();
    v9 = __136__RBDomainAttributeManagerDataProvider__preDomainAttributeTemplateFromDomainAttributeTemplate_generateDependenciesByFullyQualifiedName___block_invoke;
    v10 = &unk_279B340A8;
    selfCopy = self;
    v12 = v5;
    v13 = templateCopy;
    [attributeGroups enumerateObjectsUsingBlock:v8];
  }
}

- (RBDomainAttributeTemplate)_validatedDomainAttributeTemplateFromDomainAttributeTemplate:dependenciesByFullyQualifiedName:errors:
{
  OUTLINED_FUNCTION_11_1();
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v8 = v1;
  if (v4)
  {
    v9 = objc_alloc_init(RBDomainAttributeTemplate);
    [(RBDomainAttributeTemplate *)v6 name];
    objc_claimAutoreleasedReturnValue();
    v10 = OUTLINED_FUNCTION_20_1();
    [(RBDomainAttributeTemplate *)v10 setName:v11];

    [(RBDomainAttributeTemplate *)v6 domain];
    objc_claimAutoreleasedReturnValue();
    v12 = OUTLINED_FUNCTION_20_1();
    [(RBDomainAttributeTemplate *)v12 setDomain:v13];

    [v6 originatorEntitlements];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_18() setOriginatorEntitlements:?];

    [(RBDomainAttributeTemplate *)v6 endowmentNamespace];
    objc_claimAutoreleasedReturnValue();
    v14 = OUTLINED_FUNCTION_20_1();
    [(RBDomainAttributeTemplate *)v14 setEndowmentNamespace:v15];

    [v6 targetBundleProperties];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_18() setTargetBundleProperties:?];

    [v6 targetEntitlements];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_18() setTargetEntitlements:?];

    [v6 additionalRestrictions];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_18() setAdditionalRestrictions:?];

    [v6 restriction];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_18() setRestriction:?];

    array = [MEMORY[0x277CBEB18] array];
    attributeGroups = [v6 attributeGroups];
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_31_0();
    v21 = __141__RBDomainAttributeManagerDataProvider__validatedDomainAttributeTemplateFromDomainAttributeTemplate_dependenciesByFullyQualifiedName_errors___block_invoke;
    v22 = &unk_279B340F8;
    v23 = v4;
    v24 = v6;
    v25 = v7;
    v26 = v8;
    v27 = array;
    v18 = array;
    [attributeGroups enumerateObjectsUsingBlock:v20];

    [(RBDomainAttributeTemplate *)v9 setAttributeGroups:v18];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_templatesWithDomain:(void *)domain fromFilename:(void *)filename errors:
{
  if (self)
  {
    self = [(RBDomainAttributeManagerDataProvider *)self _templatesWithDomain:a2 fromFilename:domain dirpath:self[1] errors:filename];
    v4 = vars8;
  }

  return self;
}

- (id)_templatesWithDomain:(void *)domain fromFilename:(void *)filename dirpath:(void *)dirpath errors:
{
  v9 = a2;
  domainCopy = domain;
  dirpathCopy = dirpath;
  if (self)
  {
    v12 = [filename stringByAppendingPathComponent:domainCopy];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v12];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_31_0();
    v19 = __89__RBDomainAttributeManagerDataProvider__templatesWithDomain_fromFilename_dirpath_errors___block_invoke;
    v20 = &unk_279B34058;
    selfCopy = self;
    v22 = v9;
    v23 = dirpathCopy;
    v15 = dictionary;
    v24 = v15;
    v25 = domainCopy;
    [v13 enumerateKeysAndObjectsUsingBlock:v18];
    v16 = v25;
    self = v15;
  }

  return self;
}

- (id)_templatesWithDomain:(void *)domain fromDictionary:(void *)dictionary errors:
{
  v7 = a2;
  dictionaryCopy = dictionary;
  if (self)
  {
    v9 = MEMORY[0x277CBEB38];
    domainCopy = domain;
    dictionary = [v9 dictionary];
    OUTLINED_FUNCTION_0_2();
    v15[1] = 3221225472;
    v15[2] = __83__RBDomainAttributeManagerDataProvider__templatesWithDomain_fromDictionary_errors___block_invoke;
    v15[3] = &unk_279B33888;
    v15[4] = self;
    v16 = v7;
    v17 = dictionaryCopy;
    v12 = dictionary;
    v18 = v12;
    [domainCopy enumerateKeysAndObjectsUsingBlock:v15];

    v13 = v18;
    self = v12;
  }

  return self;
}

- (id)_attributeTemplateForItem:(uint64_t)item domain:(uint64_t)domain name:(void *)name errors:
{
  OUTLINED_FUNCTION_11_1();
  v9 = v8;
  v113 = *MEMORY[0x277D85DE8];
  v11 = v10;
  v12 = v5;
  v92 = v6;
  nameCopy = name;
  if (!v9)
  {
    v30 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = rbs_general_log();
    v32 = OUTLINED_FUNCTION_27(v31);
    if (v32)
    {
      OUTLINED_FUNCTION_5_6(5.8383e-34, v32, v33, v34, v35, v36, v37, v38, v39, v75, v76, v77, v78, v79, v81, v83, v84, v85, v87, v89, nameCopy, v92);
      v112 = v11;
      OUTLINED_FUNCTION_14_1(&dword_262485000, v60, v61, "Domain %{public}@ attribute %{public}@ contains subattribute template of wrong type: %{public}@");
    }

    v40 = MEMORY[0x277CCA9B8];
    v105 = *MEMORY[0x277CCA470];
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains subattribute template of wrong type: %@", v12, v92, v11];
    v106 = v41;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
    v13 = [v40 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v42];

    [nameCopy addObject:v13];
    v30 = 0;
    goto LABEL_12;
  }

  v13 = [v11 objectForKeyedSubscript:@"Class"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = rbs_assertion_log();
    v15 = OUTLINED_FUNCTION_27(v14);
    if (v15)
    {
      OUTLINED_FUNCTION_5_6(5.8383e-34, v15, v16, v17, v18, v19, v20, v21, v22, v75, v76, v77, v78, v79, v81, v83, v84, v85, v87, v89, nameCopy, v92);
      v112 = v13;
      OUTLINED_FUNCTION_14_1(&dword_262485000, v62, v63, "Domain %{public}@ attribute %{public}@ contains subattribute with class name of wrong type: %{public}@");
    }

    v23 = MEMORY[0x277CCA9B8];
    v103 = *MEMORY[0x277CCA470];
    v24 = [OUTLINED_FUNCTION_29_1() stringWithFormat:@"Domain %@ attribute %@ contains subattribute with class name of wrong type: %@"];
    v104 = v24;
    v25 = MEMORY[0x277CBEAC0];
    v26 = &v104;
    v27 = &v103;
LABEL_7:
    v28 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
    v29 = [v23 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v28];

    [nameCopy addObject:v29];
    v30 = 0;
    goto LABEL_8;
  }

  if (([(RBDomainAttributeManagerDataProvider *)v9 _isAttributeClassNameLegal:v13]& 1) == 0)
  {
    v64 = rbs_assertion_log();
    v65 = OUTLINED_FUNCTION_27(v64);
    if (v65)
    {
      OUTLINED_FUNCTION_5_6(5.8383e-34, v65, v66, v67, v68, v69, v70, v71, v72, v75, v76, v77, v78, v79, v81, v83, v84, v85, v87, v89, nameCopy, v92);
      v112 = v13;
      OUTLINED_FUNCTION_14_1(&dword_262485000, v73, v74, "Domain %{public}@ attribute %{public}@ contains subattribute property with an unsupported class name: %{public}@");
    }

    v23 = MEMORY[0x277CCA9B8];
    v101 = *MEMORY[0x277CCA470];
    v24 = [OUTLINED_FUNCTION_29_1() stringWithFormat:@"Domain %@ attribute %@ contains subattribute property with an unsupported class name: %@"];
    v102 = v24;
    v25 = MEMORY[0x277CBEAC0];
    v26 = &v102;
    v27 = &v101;
    goto LABEL_7;
  }

  v88 = v9;
  v90 = v13;
  [MEMORY[0x277CBEB38] dictionary];
  v82 = v80 = v11;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v44 = v11;
  v45 = [v44 countByEnumeratingWithState:&v94 objects:v100 count:16];
  if (!v45)
  {
    goto LABEL_35;
  }

  v46 = v45;
  v47 = *v95;
  v48 = *MEMORY[0x277CCA470];
  v86 = v12;
  do
  {
    v49 = 0;
    do
    {
      if (*v95 != v47)
      {
        objc_enumerationMutation(v44);
      }

      v50 = *(*(&v94 + 1) + 8 * v49);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v50 isEqualToString:@"Class"])
        {
          goto LABEL_30;
        }

        v51 = [v44 objectForKeyedSubscript:v50];
        v93 = 0;
        v52 = [(RBDomainAttributeManagerDataProvider *)v88 _isPropertyLegalForClassName:v90 propertyName:v50 value:v51 error:&v93];
        v53 = v93;

        if (v52)
        {
          v54 = [v44 objectForKeyedSubscript:v50];
          [v82 setObject:v54 forKeyedSubscript:v50];
        }

        else
        {
          [nameCopy addObject:v53];
        }

        v12 = v86;
      }

      else
      {
        v55 = rbs_assertion_log();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v108 = v12;
          v109 = 2114;
          v110 = v92;
          v111 = 2114;
          v112 = v50;
          _os_log_error_impl(&dword_262485000, v55, OS_LOG_TYPE_ERROR, "Domain %{public}@ attribute %{public}@ contains subattribute property of wrong type: %{public}@", buf, 0x20u);
        }

        v56 = MEMORY[0x277CCA9B8];
        v98 = v48;
        v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains subattribute template of wrong type: %@", v12, v92, v44];
        v99 = v57;
        v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
        v53 = [v56 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v58];

        [nameCopy addObject:v53];
      }

LABEL_30:
      ++v49;
    }

    while (v46 != v49);
    v59 = [v44 countByEnumeratingWithState:&v94 objects:v100 count:16];
    v46 = v59;
  }

  while (v59);
LABEL_35:

  v13 = v90;
  v29 = v82;
  v30 = [RBAttributeFactory attributeForClass:v90 andProperties:v82 errors:nameCopy];
  v11 = v80;
LABEL_8:

LABEL_12:
LABEL_13:

  return v30;
}

- (void)_isAttributeClassNameLegal:(void *)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    _legalClassNames = [(RBDomainAttributeManagerDataProvider *)v2 _legalClassNames];
    v5 = [_legalClassNames containsObject:v3];

    return v5;
  }

  return result;
}

- (uint64_t)_isPropertyLegalForClassName:(uint64_t)name propertyName:(uint64_t)propertyName value:(uint64_t)value error:
{
  OUTLINED_FUNCTION_11_1();
  v9 = v8;
  v40[1] = *MEMORY[0x277D85DE8];
  v11 = v10;
  v12 = v5;
  v13 = v6;
  if (!v9)
  {
    value = 0;
    goto LABEL_13;
  }

  _legalPropertyNamesByClassName = [(RBDomainAttributeManagerDataProvider *)v9 _legalPropertyNamesByClassName];
  v15 = [_legalPropertyNamesByClassName objectForKeyedSubscript:v11];
  v16 = [v15 objectForKeyedSubscript:v12];
  v17 = v16;
  if (!v16)
  {
    v21 = rbs_assertion_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v34 = v12;
      v35 = 2114;
      v36 = v11;
      OUTLINED_FUNCTION_11_0(&dword_262485000, v21, v22, "Unknown property %{public}@ of attribute class %{public}@", buf);
    }

    if (!value)
    {
      goto LABEL_12;
    }

    v23 = MEMORY[0x277CCA9B8];
    v39 = *MEMORY[0x277CCA470];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown property %@ of attribute class %@", v12, v11];
    v40[0] = v24;
    v25 = MEMORY[0x277CBEAC0];
    v26 = v40;
    v27 = &v39;
LABEL_11:
    v28 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
    *value = [v23 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:3 userInfo:v28];

    value = 0;
    goto LABEL_12;
  }

  if (([v16 containsObject:v13] & 1) == 0 && objc_msgSend(v17, "count") != 1)
  {
    firstObject = [v17 firstObject];
    null = [MEMORY[0x277CBEB68] null];
    v20 = [firstObject isEqual:null];

    if ((v20 & 1) == 0)
    {
      v30 = rbs_assertion_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v34 = v13;
        v35 = 2114;
        v36 = v12;
        v37 = 2114;
        v38 = v11;
        _os_log_error_impl(&dword_262485000, v30, OS_LOG_TYPE_ERROR, "Unknown value %{public}@ for property %{public}@ of attribute class %{public}@", buf, 0x20u);
      }

      if (!value)
      {
        goto LABEL_12;
      }

      v23 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CCA470];
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown value %@ for property %@ of attribute class %@", v13, v12, v11];
      v32 = v24;
      v25 = MEMORY[0x277CBEAC0];
      v26 = &v32;
      v27 = &v31;
      goto LABEL_11;
    }
  }

  value = 1;
LABEL_12:

LABEL_13:
  return value;
}

- (id)_attributeTemplatesFromArray:forDomainAttributeWithDomain:name:errors:
{
  OUTLINED_FUNCTION_3_7();
  v62[1] = *MEMORY[0x277D85DE8];
  v5 = v4;
  v6 = v0;
  v7 = v1;
  v8 = v2;
  if (v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    if (v5)
    {
      v10 = objc_opt_class();
      if (OUTLINED_FUNCTION_25_1(v10))
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v45 = v5;
        v11 = v5;
        v12 = [v11 countByEnumeratingWithState:&v46 objects:v52 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v47;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v47 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [(RBDomainAttributeManagerDataProvider *)v3 _attributeTemplateForItem:v6 domain:v7 name:v8 errors:?];
              if (v16)
              {
                [array addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v46 objects:v52 count:16];
          }

          while (v13);
        }

        if ([array count])
        {
          v5 = v45;
          goto LABEL_23;
        }

        v28 = rbs_general_log();
        if (OUTLINED_FUNCTION_24(v28))
        {
          OUTLINED_FUNCTION_7_5(5.8382e-34);
          OUTLINED_FUNCTION_19_1();
          _os_log_error_impl(v40, v41, v42, v43, v44, 0x16u);
        }

        v29 = MEMORY[0x277CCA9B8];
        v50 = *MEMORY[0x277CCA470];
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains no subattributes", v6, v7];
        v51 = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v26 = [v29 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v20];
        v5 = v45;
        goto LABEL_22;
      }

      v23 = rbs_general_log();
      if (OUTLINED_FUNCTION_24(v23))
      {
        v55 = 138543874;
        v56 = v6;
        v57 = 2114;
        v58 = v7;
        v59 = 2114;
        v60 = v5;
        OUTLINED_FUNCTION_19_1();
        _os_log_error_impl(v35, v36, v37, v38, v39, 0x20u);
      }

      v24 = MEMORY[0x277CCA9B8];
      v53 = *MEMORY[0x277CCA470];
      OUTLINED_FUNCTION_30_1();
      v19 = [v25 stringWithFormat:@"Domain %@ attribute %@ contains subattributes data of wrong type: %@"];
      v54 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v21 = v24;
      v22 = 2;
    }

    else
    {
      v17 = rbs_general_log();
      if (OUTLINED_FUNCTION_24(v17))
      {
        v55 = 138543618;
        v56 = v6;
        v57 = 2112;
        v58 = v7;
        OUTLINED_FUNCTION_19_1();
        _os_log_error_impl(v30, v31, v32, v33, v34, 0x16u);
      }

      v18 = MEMORY[0x277CCA9B8];
      v61 = *MEMORY[0x277CCA470];
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains no subattributes", v6, v7];
      v62[0] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];
      v21 = v18;
      v22 = 1;
    }

    v26 = [v21 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:v22 userInfo:v20];
LABEL_22:

    [v8 addObject:v26];
    goto LABEL_23;
  }

  array = 0;
LABEL_23:

  return array;
}

- (void)_configureTemplate:(uint64_t)template fromInfo:(uint64_t)info forDomain:(void *)domain name:(char)name allowRestrictions:(void *)restrictions errors:
{
  OUTLINED_FUNCTION_11_1();
  v13 = v12;
  v15 = v14;
  v16 = v7;
  v17 = v8;
  domainCopy = domain;
  restrictionsCopy = restrictions;
  if (v13)
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_31_0();
    v21 = __108__RBDomainAttributeManagerDataProvider__configureTemplate_fromInfo_forDomain_name_allowRestrictions_errors___block_invoke;
    v22 = &unk_279B34030;
    v23 = v17;
    v24 = v16;
    nameCopy = name;
    v25 = restrictionsCopy;
    v26 = v13;
    v27 = domainCopy;
    v28 = v15;
    [v24 enumerateKeysAndObjectsUsingBlock:v20];
  }
}

- (id)_bundlePropertiesFromDictionary:forDomainAttributeWithDomain:name:errors:
{
  OUTLINED_FUNCTION_3_7();
  v6 = v5;
  v7 = v0;
  v8 = v1;
  v9 = v2;
  if (v3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if (!v6)
    {
      goto LABEL_10;
    }

    v11 = objc_opt_class();
    if (OUTLINED_FUNCTION_25_1(v11))
    {
      OUTLINED_FUNCTION_2_13();
      v40 = v7;
      v43 = v8;
      v46 = v9;
      v12 = dictionary;
      OUTLINED_FUNCTION_26_1(v12, v13, v14, v15, v16, v17, v18, v19, v31, v32, v33, v34, v35, 3221225472, __113__RBDomainAttributeManagerDataProvider__bundlePropertiesFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke, &unk_279B33888, v40, v43, v46, v48);

      v20 = v41;
LABEL_9:

      goto LABEL_10;
    }

    v21 = rbs_general_log();
    if (OUTLINED_FUNCTION_24(v21))
    {
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_13_1(&dword_262485000, v25, v26, "Domain %{public}@ attribute %{public}@ contains bundle properties of wrong type: %{public}@", v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v42, v45, v48, v50, v51);
    }

    if (v9)
    {
      OUTLINED_FUNCTION_30_1();
      [v22 stringWithFormat:@"Domain %@ attribute %@ contains bundle property of wrong type: %@"];
      objc_claimAutoreleasedReturnValue();
      v23 = [OUTLINED_FUNCTION_6_4() dictionaryWithObjects:? forKeys:? count:?];
      v20 = [OUTLINED_FUNCTION_17_1() errorWithDomain:? code:? userInfo:?];

      [OUTLINED_FUNCTION_15_1() addObject:?];
      goto LABEL_9;
    }
  }

  else
  {
    dictionary = 0;
  }

LABEL_10:

  return dictionary;
}

- (id)_additionalRestrictionsFromDictionary:forDomainAttributeWithDomain:name:errors:
{
  OUTLINED_FUNCTION_3_7();
  v6 = v5;
  v7 = v0;
  v8 = v1;
  v9 = v2;
  if (v3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if (!v6)
    {
      goto LABEL_10;
    }

    v11 = objc_opt_class();
    if (OUTLINED_FUNCTION_25_1(v11))
    {
      OUTLINED_FUNCTION_2_13();
      v40 = v7;
      v43 = v8;
      v46 = v9;
      v12 = dictionary;
      OUTLINED_FUNCTION_26_1(v12, v13, v14, v15, v16, v17, v18, v19, v31, v32, v33, v34, v35, 3221225472, __119__RBDomainAttributeManagerDataProvider__additionalRestrictionsFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke, &unk_279B33888, v40, v43, v46, v48);

      v20 = v41;
LABEL_9:

      goto LABEL_10;
    }

    v21 = rbs_general_log();
    if (OUTLINED_FUNCTION_24(v21))
    {
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_13_1(&dword_262485000, v25, v26, "Domain %{public}@ attribute %{public}@ contains additionalRestrictions of wrong type: %{public}@", v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v42, v45, v48, v50, v51);
    }

    if (v9)
    {
      OUTLINED_FUNCTION_30_1();
      [v22 stringWithFormat:@"Domain %@ attribute %@ contains additionalRestrictions of wrong type: %@"];
      objc_claimAutoreleasedReturnValue();
      v23 = [OUTLINED_FUNCTION_6_4() dictionaryWithObjects:? forKeys:? count:?];
      v20 = [OUTLINED_FUNCTION_17_1() errorWithDomain:? code:? userInfo:?];

      [OUTLINED_FUNCTION_15_1() addObject:?];
      goto LABEL_9;
    }
  }

  else
  {
    dictionary = 0;
  }

LABEL_10:

  return dictionary;
}

- (BOOL)_checkConflictingAttributes:(uint64_t)attributes error:
{
  if (result)
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:a2];
    v5 = [RBAssertionDescriptorValidator checkConflictingAttributes:v4 error:attributes];

    return v5;
  }

  return result;
}

- (id)_attributeTemplateGroupsFromArray:(uint64_t)array forDomainAttributeWithDomain:(uint64_t)domain name:(NSObject *)name errors:
{
  OUTLINED_FUNCTION_11_1();
  v9 = v8;
  v70[1] = *MEMORY[0x277D85DE8];
  v11 = v10;
  v12 = v5;
  v13 = v6;
  nameCopy = name;
  v48 = v9;
  if (v9)
  {
    array = [MEMORY[0x277CBEB18] array];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v15 = v11;
        v16 = [v15 countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (v16)
        {
          v17 = v16;
          obj = v15;
          v42 = v11;
          v18 = *v53;
          v19 = *MEMORY[0x277CCA470];
          do
          {
            v20 = 0;
            do
            {
              if (*v53 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v52 + 1) + 8 * v20);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v26 = [v21 objectForKeyedSubscript:@"Attributes"];
                name = [RBDomainAttributeManagerDataProvider _attributeTemplatesFromArray:forDomainAttributeWithDomain:name:errors:];

                if (name)
                {
                  v51 = 0;
                  v27 = [(RBDomainAttributeManagerDataProvider *)v48 _checkConflictingAttributes:name error:&v51];
                  v47 = v51;
                  if (!v27)
                  {
                    log = rbs_general_log();
                    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v64 = v12;
                      v65 = 2112;
                      v66 = v47;
                      _os_log_error_impl(&dword_262485000, log, OS_LOG_TYPE_ERROR, "Conflicting attributes found in Domain: %@ with error: %@", buf, 0x16u);
                    }

                    v43 = MEMORY[0x277CCA9B8];
                    v56 = v19;
                    loga = [MEMORY[0x277CCACA8] stringWithFormat:@"Error in Domain %@: %@", v12, v47];
                    v57 = loga;
                    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
                    v44 = [v43 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:5 userInfo:v28];

                    [nameCopy addObject:v44];
                  }

                  v29 = objc_alloc_init(RBAttributeTemplateGroup);
                  [(RBAttributeTemplateGroup *)v29 setAttributes:name];
                  [(RBDomainAttributeManagerDataProvider *)v48 _configureTemplate:v29 fromInfo:v21 forDomain:v12 name:v13 allowRestrictions:0 errors:nameCopy];
                  [array addObject:v29];
                }
              }

              else
              {
                v22 = rbs_general_log();
                if (OUTLINED_FUNCTION_27(v22))
                {
                  *buf = 138543874;
                  v64 = v12;
                  v65 = 2114;
                  v66 = v13;
                  v67 = 2114;
                  v68 = v21;
                  _os_log_error_impl(&dword_262485000, name, OS_LOG_TYPE_ERROR, "Domain %{public}@ attribute %{public}@ contains attribute group of wrong type: %{public}@", buf, 0x20u);
                }

                v23 = MEMORY[0x277CCA9B8];
                v58 = v19;
                v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains attribute group of wrong type: %@", v12, v13, v21];
                v59 = v24;
                v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
                name = [v23 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v25];

                [nameCopy addObject:name];
              }

              ++v20;
            }

            while (v17 != v20);
            v30 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
            v17 = v30;
          }

          while (v30);
          v11 = v42;
          v15 = obj;
        }

        goto LABEL_30;
      }

      v37 = rbs_general_log();
      if (OUTLINED_FUNCTION_27(v37))
      {
        OUTLINED_FUNCTION_7_5(5.8383e-34);
        v67 = v41;
        v68 = v11;
        _os_log_error_impl(&dword_262485000, name, OS_LOG_TYPE_ERROR, "Domain %{public}@ attribute %{public}@ contains attribute groups data of wrong type: %{public}@", buf, 0x20u);
      }

      v38 = MEMORY[0x277CCA9B8];
      v61 = *MEMORY[0x277CCA470];
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains attribute groups data of wrong type: %@", v12, v13, v11];
      v62 = v33;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v35 = v38;
      v36 = 2;
    }

    else
    {
      v31 = rbs_general_log();
      if (OUTLINED_FUNCTION_27(v31))
      {
        OUTLINED_FUNCTION_7_5(5.8382e-34);
        OUTLINED_FUNCTION_11_0(&dword_262485000, name, v40, "Domain %{public}@ attribute %{public}@ contains no attribute groups", buf);
      }

      v32 = MEMORY[0x277CCA9B8];
      v69 = *MEMORY[0x277CCA470];
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains no subattributes", v12, v13];
      v70[0] = v33;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:&v69 count:1];
      v35 = v32;
      v36 = 1;
    }

    v15 = [v35 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:v36 userInfo:v34];

    [nameCopy addObject:v15];
LABEL_30:

    goto LABEL_31;
  }

  array = 0;
LABEL_31:

  return array;
}

- (RBDomainAttributeTemplate)_templateWithDomain:name:dictionary:errors:
{
  OUTLINED_FUNCTION_3_7();
  v41 = *MEMORY[0x277D85DE8];
  v5 = v4;
  v6 = v0;
  v7 = v1;
  v8 = v2;
  if (!v3)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = rbs_general_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v38 = v6;
        v39 = 2114;
        v40 = v7;
        OUTLINED_FUNCTION_11_0(&dword_262485000, v9, v10, "Domain attribute templates for %{public}@ is not a dictionary: %{public}@", buf);
      }

      if (v8)
      {
        v11 = MEMORY[0x277CCA9B8];
        v33 = *MEMORY[0x277CCA470];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain attribute templates for %@ is not a dictionary: %@", v6, v7];
        v34 = v12;
        v13 = MEMORY[0x277CBEAC0];
        v14 = &v34;
        v15 = &v33;
LABEL_12:
        v18 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
        firstObject = [v11 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v18];

        [v8 addObject:firstObject];
        v20 = 0;
LABEL_13:

        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v20 = objc_alloc_init(RBDomainAttributeTemplate);
    [(RBDomainAttributeTemplate *)v20 setName:v6];
    [(RBDomainAttributeTemplate *)v20 setDomain:v5];
    [(RBDomainAttributeManagerDataProvider *)v3 _configureTemplate:v20 fromInfo:v7 forDomain:v5 name:v6 allowRestrictions:1 errors:v8];
    v22 = RBSArrayForKey();
    firstObject = [v22 firstObject];

    if (firstObject)
    {
      v24 = rbs_general_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_262485000, v24, OS_LOG_TYPE_FAULT, "Domain attribute specified with legacy array EndowmentNamespace", buf, 2u);
      }

      v25 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CCA470];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain attribute specified with legacy array EndowmentNamespace"];
      v32 = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v28 = [v25 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:3 userInfo:v27];

      [v8 addObject:v28];
      v23 = firstObject;
    }

    else
    {
      v23 = RBSStringForKey();
      if (!v23)
      {
        goto LABEL_25;
      }
    }

    [(RBDomainAttributeTemplate *)v20 setEndowmentNamespace:v23];

LABEL_25:
    v29 = [v7 objectForKeyedSubscript:@"AttributeGroups"];
    v30 = [(RBDomainAttributeManagerDataProvider *)v3 _attributeTemplateGroupsFromArray:v29 forDomainAttributeWithDomain:v5 name:v6 errors:v8];

    if (v30)
    {
      [OUTLINED_FUNCTION_15_1() setAttributeGroups:?];
    }

    else
    {

      v20 = 0;
    }

    goto LABEL_13;
  }

  v16 = rbs_general_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v38 = v5;
    v39 = 2114;
    v40 = v6;
    OUTLINED_FUNCTION_11_0(&dword_262485000, v16, v17, "Domain %{public}@ attribute name is not a string: %{public}@", buf);
  }

  if (v8)
  {
    v11 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA470];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute name is not a string: %@", v5, v6];
    v36 = v12;
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v36;
    v15 = &v35;
    goto LABEL_12;
  }

LABEL_14:
  v20 = 0;
LABEL_15:

  return v20;
}

void __89__RBDomainAttributeManagerDataProvider__templatesWithDomain_fromFilename_dirpath_errors___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  OUTLINED_FUNCTION_23_1();
  v6 = [RBDomainAttributeManagerDataProvider _templateWithDomain:name:dictionary:errors:];
  v7 = v6;
  if (v6)
  {
    v8 = [(RBDomainAttributeTemplate *)v6 name];
    OUTLINED_FUNCTION_32_0(v8);
  }

  else
  {
    v3 = rbs_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 64);
      v11 = 138543618;
      v12 = v2;
      v13 = 2114;
      v14 = v10;
      OUTLINED_FUNCTION_11_0(&dword_262485000, v3, v9, "Error extracting domain attribute template with name %{public}@ from file %{public}@", &v11);
    }
  }
}

void __83__RBDomainAttributeManagerDataProvider__templatesWithDomain_fromDictionary_errors___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  OUTLINED_FUNCTION_23_1();
  v5 = [RBDomainAttributeManagerDataProvider _templateWithDomain:name:dictionary:errors:];
  v6 = v5;
  if (v5)
  {
    v7 = [(RBDomainAttributeTemplate *)v5 name];
    OUTLINED_FUNCTION_32_0(v7);
  }

  else
  {
    v8 = rbs_general_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v2;
      _os_log_error_impl(&dword_262485000, v8, OS_LOG_TYPE_ERROR, "Error extracting domain attribute template with name %{public}@", &v9, 0xCu);
    }
  }
}

- (void)_preAttributeTemplateFromAttributeTemplate:(void *)template domainAttributeTemplate:(void *)attributeTemplate generateDependenciesByFullyQualifiedName:
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  attributeTemplateCopy = attributeTemplate;
  if (self)
  {
    templateCopy = template;
    domain = [(RBDomainAttributeTemplate *)templateCopy domain];
    name = [(RBDomainAttributeTemplate *)templateCopy name];

    v12 = [domain stringByAppendingPathExtension:name];

    v13 = objc_opt_class();
    if (OUTLINED_FUNCTION_25_1(v13))
    {
      v14 = v7;
      domain2 = [v14 domain];
      name2 = [v14 name];
      v17 = [OUTLINED_FUNCTION_15_1() stringByAppendingPathExtension:?];
      if ([v17 isEqualToString:v12])
      {
        v18 = rbs_assertion_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = 138543362;
          v20 = v12;
          _os_log_error_impl(&dword_262485000, v18, OS_LOG_TYPE_ERROR, "Domain attribute %{public}@ attempts to include itself", &v19, 0xCu);
        }
      }

      else
      {
        v18 = [attributeTemplateCopy objectForKeyedSubscript:v12];
        if (!v18)
        {
          v18 = [MEMORY[0x277CBEB58] set];
          [attributeTemplateCopy setObject:v18 forKeyedSubscript:v12];
        }

        [v18 addObject:v17];
      }
    }
  }
}

- (id)_validatedAttributeTemplateFromAttributeTemplate:(void *)template domainAttributeTemplate:(void *)attributeTemplate dependenciesByFullyQualifiedName:(void *)name errors:
{
  v39[1] = *MEMORY[0x277D85DE8];
  v9 = a2;
  attributeTemplateCopy = attributeTemplate;
  nameCopy = name;
  if (self)
  {
    templateCopy = template;
    domain = [(RBDomainAttributeTemplate *)templateCopy domain];
    name = [(RBDomainAttributeTemplate *)templateCopy name];

    v15 = [OUTLINED_FUNCTION_15_1() stringByAppendingPathExtension:?];

    v16 = objc_opt_class();
    if (OUTLINED_FUNCTION_25_1(v16))
    {
      v17 = v9;
      domain2 = [v17 domain];
      name2 = [v17 name];
      v20 = [domain2 stringByAppendingPathExtension:name2];
      if ([v20 isEqualToString:v15])
      {
        v21 = rbs_assertion_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v35 = v15;
          _os_log_error_impl(&dword_262485000, v21, OS_LOG_TYPE_ERROR, "Domain attribute %{public}@ attempts to include itself", buf, 0xCu);
        }

        if (!nameCopy)
        {
          goto LABEL_14;
        }

        v22 = MEMORY[0x277CCA9B8];
        v38 = *MEMORY[0x277CCA470];
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain attribute %@ attempts to include itself", v15];
        v39[0] = v23;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_12_0();
        v24 = [v22 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:3 userInfo:domain2];

        OUTLINED_FUNCTION_24_1();
        v20 = v31;

        [nameCopy addObject:v24];
LABEL_13:

LABEL_14:
        self = 0;
LABEL_17:

        goto LABEL_18;
      }

      v24 = [attributeTemplateCopy objectForKeyedSubscript:v20];
      if ([v24 containsObject:v15])
      {
        v25 = rbs_assertion_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v35 = v15;
          v36 = 2114;
          v37 = v20;
          OUTLINED_FUNCTION_11_0(&dword_262485000, v25, v26, "Detected cycle between domain attributes %{public}@ and %{public}@", buf);
        }

        if (nameCopy)
        {
          v27 = MEMORY[0x277CCA9B8];
          v32 = *MEMORY[0x277CCA470];
          v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Detected cycle between domain attributes %@ and %@", v15, v20];
          v33 = v30;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_12_0();
          v28 = [v27 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:3 userInfo:domain2];

          OUTLINED_FUNCTION_24_1();
          v20 = v31;

          [nameCopy addObject:v28];
        }

        goto LABEL_13;
      }
    }

    self = [v9 copy];
    goto LABEL_17;
  }

LABEL_18:

  return self;
}

- (id)_legalPropertyNamesByClassName
{
  if (self)
  {
    if (qword_2814AA110 != -1)
    {
      dispatch_once(&qword_2814AA110, &__block_literal_global_263);
    }

    self = qword_2814AA108;
    v1 = vars8;
  }

  return self;
}

- (id)_legalClassNames
{
  if (self)
  {
    if (qword_2814AA100 != -1)
    {
      dispatch_once(&qword_2814AA100, &__block_literal_global_25);
    }

    self = _MergedGlobals_1;
    v1 = vars8;
  }

  return self;
}

void __113__RBDomainAttributeManagerDataProvider__bundlePropertiesFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_22_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_13(&dword_262485000, v0, v1, "Domain %{public}@ attribute %{public}@ contains bundle property name of wrong type: %{public}@");
}

void __119__RBDomainAttributeManagerDataProvider__additionalRestrictionsFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_22_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_13(&dword_262485000, v0, v1, "Domain %{public}@ attribute %{public}@ contains additional restriction of wrong type: %{public}@");
}

void __119__RBDomainAttributeManagerDataProvider__additionalRestrictionsFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_22_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_13(&dword_262485000, v0, v1, "Domain %{public}@ attribute %{public}@ contains dditional restriction value of wrong type: %{public}@");
}

@end