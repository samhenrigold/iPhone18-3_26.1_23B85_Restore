@interface UsagePoliciesHandler
- (BOOL)submitLanEventsFor:(id)for;
- (BOOL)updateBandsInUniqueMOsWithReason:(id)reason;
- (BOOL)updateTopUsedByUsage:(unint64_t)usage withReason:(id)reason;
- (BOOL)updateTopUsedByUsageWithReason:(id)reason;
- (UsagePoliciesHandler)initWithPersistentContainer:(id)container;
- (id)cumulativeUsage:(id)usage onField:(id)field;
- (id)lastUsagePolicyRunForTimespan:(unint64_t)timespan object:(id)object;
- (id)prefixForUniqueMOStatsFieldsforTimeSpan:(unint64_t)span;
- (id)updateUniqueMO:(id)o withConstraints:(id)constraints fromStats:(id)stats aggregatedOn:(id)on withTotal:(unint64_t)total timespan:(unint64_t)timespan prevPercentile:(unint64_t *)percentile;
- (id)usageForTimespan:(unint64_t)timespan by:(id)by around:(id)around;
- (int)checkMissingBandsIn:(BOOL)in[3] from:(int)from to:(int)to;
- (void)updatePoliciesTableWithReason:(id)reason dateLessThen:(id)then object:(id)object timeSpan:(unint64_t)span;
@end

@implementation UsagePoliciesHandler

- (UsagePoliciesHandler)initWithPersistentContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = UsagePoliciesHandler;
  v6 = [(UsagePoliciesHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, container);
    v7->_topLANUsagePercentile = 75;
  }

  return v7;
}

- (BOOL)updateTopUsedByUsageWithReason:(id)reason
{
  v16 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [&unk_1F483E5D8 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(&unk_1F483E5D8);
        }

        v8 &= -[UsagePoliciesHandler updateTopUsedByUsage:withReason:](self, "updateTopUsedByUsage:withReason:", [*(*(&v11 + 1) + 8 * i) unsignedIntegerValue], reasonCopy);
      }

      v6 = [&unk_1F483E5D8 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8 & 1;
}

- (BOOL)updateBandsInUniqueMOsWithReason:(id)reason
{
  v55 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v4 = +[LANMO entity];
  v53[0] = v4;
  v5 = +[NetworkMO entity];
  v53[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];

  obj = v6;
  v34 = [v6 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v34)
  {
    v33 = *v41;
    v8 = 1;
    *&v7 = 136446978;
    v30 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v40 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        container = self->_container;
        v39 = 0;
        v13 = [(WAPersistentContainer *)container fetchObjects:v10 withPredicate:0 withSorting:0 withPrefetchedProperties:0 withLimit:0 withError:&v39];
        v14 = v39;
        if (v14)
        {
          v15 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            name = [v10 name];
            *buf = v30;
            v46 = "[UsagePoliciesHandler updateBandsInUniqueMOsWithReason:]";
            v47 = 1024;
            v48 = 60;
            v49 = 2112;
            v50 = name;
            v51 = 2112;
            v52 = v14;
            _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_FAULT, "%{public}s::%d:unable to get all %@ objects: %@", buf, 0x26u);
          }

          v8 = 0;
        }

        else
        {
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v15 = v13;
          v16 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v36;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v36 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v8 &= [(WAPersistentContainer *)self->_container updateBandsInUniqueMO:*(*(&v35 + 1) + 8 * i), v30];
              }

              v17 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
            }

            while (v17);
          }
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v9 != v34);
      v21 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
      v34 = v21;
    }

    while (v21);
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  v22 = self->_container;
  v23 = +[PoliciesMO entity];
  date = [MEMORY[0x1E695DF00] date];
  v25 = [(WAPersistentContainer *)v22 newDatedEventObjectFor:v23 withDate:date];

  [v25 setPolicyType:@"UsagePoliciesHandler updateBandsInUniqueMOs"];
  [v25 setReasonForRunning:reasonCopy];
  [v25 setOutcome:v8 & 1];
  v26 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    policyType = [v25 policyType];
    date2 = [v25 date];
    *buf = 136446978;
    v46 = "[UsagePoliciesHandler updateBandsInUniqueMOsWithReason:]";
    v47 = 1024;
    v48 = 72;
    v49 = 2112;
    v50 = policyType;
    v51 = 2112;
    v52 = date2;
    _os_log_impl(&dword_1C8460000, v26, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Stored Policy (%@) run at (%@)", buf, 0x26u);
  }

  return v8 & 1;
}

- (BOOL)updateTopUsedByUsage:(unint64_t)usage withReason:(id)reason
{
  v135 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v117 = 0;
  usageCopy = usage;
  v5 = [UsageHelper classForTimeSpan:usage withError:&v117];
  v83 = v117;
  if (v83)
  {
    v76 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
    {
      v82 = [WADeviceAnalyticsClient timeSpanToString:usageCopy];
      *buf = 136446722;
      v121 = "[UsagePoliciesHandler updateTopUsedByUsage:withReason:]";
      v122 = 1024;
      v123 = 87;
      v124 = 2112;
      v125 = v82;
      _os_log_impl(&dword_1C8460000, v76, OS_LOG_TYPE_FAULT, "%{public}s::%d:unable to find Usage Entity class for %@", buf, 0x1Cu);
    }

    v86 = 0;
    v89 = 0;
    v99 = 0;
    v97 = v83;
    goto LABEL_80;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v76 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v121 = "[UsagePoliciesHandler updateTopUsedByUsage:withReason:]";
      v122 = 1024;
      v123 = 89;
      v124 = 2112;
      v125 = v5;
      _os_log_impl(&dword_1C8460000, v76, OS_LOG_TYPE_FAULT, "%{public}s::%d:Class %@ does not implement aggregateName", buf, 0x1Cu);
    }

    v86 = 0;
    v89 = 0;
    v99 = 0;
    v97 = 0;
    goto LABEL_80;
  }

  v99 = [(objc_class *)v5 performSelector:sel_aggregateName];
  v89 = [(objc_class *)v5 performSelector:sel_jumpBackOneSpan];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v6 = +[LANMO entity];
  v133[0] = v6;
  v7 = +[NetworkMO entity];
  v133[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:2];

  obj = v8;
  v88 = [v8 countByEnumeratingWithState:&v113 objects:v134 count:16];
  if (v88)
  {
    v94 = 0;
    v95 = 0;
    v93 = 0;
    v96 = 0;
    v97 = 0;
    v86 = 0;
    v87 = *v114;
    v9 = 0x1E830D000uLL;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v114 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v92 = v10;
        v11 = *(*(&v113 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        v112 = 0;
        v102 = [*(v9 + 656) constraintsForEntity:v11];
        v100 = v11;
        v12 = [(UsagePoliciesHandler *)self lastUsagePolicyRunForTimespan:usageCopy object:v11];
        v13 = v12;
        if (v12)
        {
          date_lt = [v12 date_lt];
          v15 = v13;
          v16 = [v89 compare:date_lt];

          v17 = v16 == 1;
          v13 = v15;
          if (!v17)
          {
            v57 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v59 = [WADeviceAnalyticsClient timeSpanToString:usageCopy];
              name = [v100 name];
              *buf = 136446978;
              v121 = "[UsagePoliciesHandler updateTopUsedByUsage:withReason:]";
              v122 = 1024;
              v123 = 102;
              v124 = 2112;
              v125 = v59;
              v126 = 2112;
              v127 = name;
              _os_log_impl(&dword_1C8460000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Last Complete %@ has already been used to update %@ - skipping", buf, 0x26u);

              v13 = v15;
            }

            goto LABEL_67;
          }
        }

        v90 = v13;
        v18 = [(UsagePoliciesHandler *)self usageForTimespan:usageCopy by:v102 around:v89];
        v19 = [(UsagePoliciesHandler *)self cumulativeUsage:v18 onField:v99];

        if (v19)
        {
          v20 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v21 = [WADeviceAnalyticsClient timeSpanToString:usageCopy];
            name2 = [v100 name];
            *buf = 136447234;
            v121 = "[UsagePoliciesHandler updateTopUsedByUsage:withReason:]";
            v122 = 1024;
            v123 = 106;
            v124 = 2112;
            v125 = v21;
            v126 = 2112;
            v127 = name2;
            v128 = 2112;
            v129 = v19;
            _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%@ Usage by %@: %@", buf, 0x30u);
          }

          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v57 = v19;
          v103 = [v57 countByEnumeratingWithState:&v108 objects:v132 count:16];
          if (!v103)
          {
LABEL_60:

            firstObject = [v57 firstObject];
            v9 = 0x1E830D000uLL;
            v54 = +[WAPersistentContainer defaultBinnedDateHigherEdgePropertyName];
            v55 = [firstObject objectForKeyedSubscript:v54];
            [(UsagePoliciesHandler *)self updatePoliciesTableWithReason:reasonCopy dateLessThen:v55 object:v100 timeSpan:usageCopy];

            v13 = v90;
            date = [v90 date];

            v86 = date;
LABEL_67:

            v64 = v92;
            goto LABEL_68;
          }

          v98 = *v109;
          while (2)
          {
            v23 = 0;
LABEL_17:
            if (*v109 != v98)
            {
              objc_enumerationMutation(v57);
            }

            v24 = *(*(&v108 + 1) + 8 * v23);
            v25 = v112;
            topLANUsagePercentile = [(UsagePoliciesHandler *)self topLANUsagePercentile];
            v27 = v57;
            lastObject = [v57 lastObject];
            v29 = [lastObject objectForKeyedSubscript:@"cumulative"];
            v30 = -[UsagePoliciesHandler updateUniqueMO:withConstraints:fromStats:aggregatedOn:withTotal:timespan:prevPercentile:](self, "updateUniqueMO:withConstraints:fromStats:aggregatedOn:withTotal:timespan:prevPercentile:", v100, v102, v24, v99, [v29 unsignedIntegerValue], usageCopy, &v112);

            if (!v30)
            {
              goto LABEL_66;
            }

            if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
            {
              v61 = WALogCategoryDeviceStoreHandle();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
              {
                entity = [v30 entity];
                v63 = objc_opt_class();
                *buf = 136446978;
                v121 = "[UsagePoliciesHandler updateTopUsedByUsage:withReason:]";
                v122 = 1024;
                v123 = 122;
                v124 = 2114;
                v125 = entity;
                v126 = 2112;
                v127 = v63;
                _os_log_impl(&dword_1C8460000, v61, OS_LOG_TYPE_FAULT, "%{public}s::%d:This function runs on entities whose class adopts DeploymentProtocol. %{public}@ (%@) does not", buf, 0x26u);
              }

LABEL_66:
              v57 = v27;

              v9 = 0x1E830D000;
              v13 = v90;
              goto LABEL_67;
            }

            v31 = v30;
            if (([(__CFString *)v31 isPublic]& 1) != 0 || ([(__CFString *)v31 isEnterprise]& 1) != 0 || [(__CFString *)v31 bssCount]>= 16)
            {
              v32 = WALogCategoryDeviceStoreHandle();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                if ([(__CFString *)v31 isPublic])
                {
                  v33 = @"Public";
                }

                else
                {
                  v33 = &stru_1F481C4A0;
                }

                if ([(__CFString *)v31 isEnterprise])
                {
                  v34 = @"Enterprise";
                }

                else
                {
                  v34 = &stru_1F481C4A0;
                }

                bssCount = [(__CFString *)v31 bssCount];
                *buf = 136447490;
                v36 = @"has more than MaxBssInDeployment bss";
                if (bssCount <= 15)
                {
                  v36 = &stru_1F481C4A0;
                }

                v121 = "[UsagePoliciesHandler updateTopUsedByUsage:withReason:]";
                v122 = 1024;
                v123 = 133;
                v124 = 2112;
                v125 = v31;
                v126 = 2112;
                v127 = v33;
                v128 = 2112;
                v129 = v34;
                v130 = 2112;
                v131 = v36;
                _os_log_impl(&dword_1C8460000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%@ is %@ %@ %@ -- ignoring for telemetry", buf, 0x3Au);
              }

              goto LABEL_35;
            }

            entity2 = [(__CFString *)v31 entity];
            v38 = +[LANMO entity];

            if (entity2 == v38 && v25 < topLANUsagePercentile)
            {
              v39 = v31;
              [(UsagePoliciesHandler *)self submitLanEventsFor:v39];
              container = self->_container;
              v107 = v97;
              v41 = [(WAPersistentContainer *)container networkCountForLAN:v39 withError:&v107];
              v42 = v107;

              v43 = v93;
              if (v41 > 1)
              {
                v43 = v93 + 1;
              }

              v93 = v43;
              if (v42)
              {
                v51 = WALogCategoryDeviceStoreHandle();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
                {
                  *buf = 136446978;
                  v121 = "[UsagePoliciesHandler updateTopUsedByUsage:withReason:]";
                  v122 = 1024;
                  v123 = 144;
                  v124 = 2112;
                  v125 = v39;
                  v126 = 2112;
                  v127 = v42;
                  _os_log_impl(&dword_1C8460000, v51, OS_LOG_TYPE_FAULT, "%{public}s::%d:networkCountForLAN:%@ --> %@", buf, 0x26u);
                }
              }

              ++v96;
            }

            else
            {
              v42 = v97;
            }

            entity3 = [(__CFString *)v31 entity];
            v45 = +[NetworkMO entity];

            if (entity3 == v45)
            {
              if (v25 < topLANUsagePercentile)
              {
                v32 = v31;
                ++v95;
                v46 = self->_container;
                v106 = v42;
                v47 = [(WAPersistentContainer *)v46 lansCountInNetwork:v32 withError:&v106];
                v48 = v106;

                v49 = v94;
                if (v47 > 1)
                {
                  v49 = v94 + 1;
                }

                v94 = v49;
                v97 = v48;
                if (v48)
                {
                  v50 = WALogCategoryDeviceStoreHandle();
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 136446978;
                    v121 = "[UsagePoliciesHandler updateTopUsedByUsage:withReason:]";
                    v122 = 1024;
                    v123 = 150;
                    v124 = 2112;
                    v125 = v32;
                    v126 = 2112;
                    v127 = v48;
                    _os_log_impl(&dword_1C8460000, v50, OS_LOG_TYPE_FAULT, "%{public}s::%d:lansCountInNetwork:%@ --> %@", buf, 0x26u);
                  }
                }

LABEL_35:
                v57 = v27;

LABEL_36:
                if (v103 == ++v23)
                {
                  v52 = [v57 countByEnumeratingWithState:&v108 objects:v132 count:16];
                  v103 = v52;
                  if (!v52)
                  {
                    goto LABEL_60;
                  }

                  continue;
                }

                goto LABEL_17;
              }

              v97 = v42;
            }

            else
            {
              v97 = v42;
            }

            break;
          }

          v57 = v27;
          goto LABEL_36;
        }

        v9 = 0x1E830D000;
        v64 = v92;
        v13 = v90;
LABEL_68:

        objc_autoreleasePoolPop(context);
        v10 = v64 + 1;
      }

      while (v10 != v88);
      v65 = [obj countByEnumeratingWithState:&v113 objects:v134 count:16];
      v88 = v65;
      if (!v65)
      {
        goto LABEL_74;
      }
    }
  }

  v86 = 0;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v96 = 0;
  v97 = 0;
LABEL_74:

  if (usageCopy == 2 && v96 && v95)
  {
    v66 = MEMORY[0x1E695DF90];
    v118[0] = @"lans";
    v105 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v96];
    v119[0] = v105;
    v118[1] = @"hasMultiSSID";
    v67 = [MEMORY[0x1E696AD98] numberWithBool:v93 != 0];
    v119[1] = v67;
    v118[2] = @"lansWithMultiSSID";
    v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v93];
    v119[2] = v68;
    v118[3] = @"networks";
    v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v95];
    v119[3] = v69;
    v118[4] = @"hasMultiLAN";
    v70 = [MEMORY[0x1E696AD98] numberWithBool:v94 != 0];
    v119[4] = v70;
    v118[5] = @"networksWithMultiLAN";
    v71 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v94];
    v119[5] = v71;
    v118[6] = @"secondsSinceLastRun";
    v72 = MEMORY[0x1E696AD98];
    [v86 timeIntervalSinceNow];
    v74 = [v72 numberWithUnsignedInteger:-v73];
    v119[6] = v74;
    v119[7] = MEMORY[0x1E695E118];
    v118[7] = @"ignorePublicNetworks";
    v118[8] = @"ignoreEnterpriseNetworks";
    v119[8] = MEMORY[0x1E695E118];
    v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v119 forKeys:v118 count:9];
    v76 = [v66 dictionaryWithDictionary:v75];

    v77 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:100 * v93 / v96];
    [v76 setObject:v77 forKeyedSubscript:@"lansWithMultiSSIDPerc"];

    v78 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:100 * v94 / v95];
    [v76 setObject:v78 forKeyedSubscript:@"networksWithMultiLANPerc"];

    v79 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v121 = "[UsagePoliciesHandler updateTopUsedByUsage:withReason:]";
      v122 = 1024;
      v123 = 191;
      v124 = 2112;
      v125 = @"com.apple.wifi.device.LANStats";
      v126 = 2112;
      v127 = v76;
      _os_log_impl(&dword_1C8460000, v79, OS_LOG_TYPE_DEBUG, "%{public}s::%d:submitting %@: %@", buf, 0x26u);
    }

    v80 = +[WAClient sharedClient];
    [v80 submitWiFiAnalytics:@"com.apple.wifi.device.LANStats" data:v76];

LABEL_80:
  }

  return v83 == 0;
}

- (id)lastUsagePolicyRunForTimespan:(unint64_t)timespan object:(id)object
{
  v35 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  container = [(UsagePoliciesHandler *)self container];
  v8 = [PoliciesUsageMO predicateForPolicyUsageForTimeSpan:timespan forEntity:objectCopy];

  v22 = 0;
  v9 = [container mostRecentPolicyFilteredBy:v8 withError:&v22];
  v10 = v22;

  v11 = 0;
  if (!v10 && v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v9;
      v13 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        timeSpan = [v12 timeSpan];
        object = [v12 object];
        date = [v12 date];
        date_lt = [v12 date_lt];
        *buf = 136447490;
        v24 = "[UsagePoliciesHandler lastUsagePolicyRunForTimespan:object:]";
        v25 = 1024;
        v26 = 208;
        v27 = 2112;
        v28 = timeSpan;
        v29 = 2112;
        v30 = object;
        v31 = 2112;
        v32 = date;
        v33 = 2112;
        v34 = date_lt;
      }

      v11 = v12;
    }

    else
    {
      v19 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v20 = objc_opt_class();
        *buf = 136446722;
        v24 = "[UsagePoliciesHandler lastUsagePolicyRunForTimespan:object:]";
        v25 = 1024;
        v26 = 206;
        v27 = 2112;
        v28 = v20;
        v21 = v20;
        _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_FAULT, "%{public}s::%d:class %@ is not a PoliciesUsageMO", buf, 0x1Cu);
      }

      v11 = 0;
    }
  }

  return v11;
}

- (id)usageForTimespan:(unint64_t)timespan by:(id)by around:(id)around
{
  v32 = *MEMORY[0x1E69E9840];
  byCopy = by;
  aroundCopy = around;
  v30 = 0;
  v10 = [UsageHelper classForTimeSpan:timespan withError:&v30];
  v11 = v30;
  v12 = [WAPersistentContainer dimensionsForUsageEntity:[(objc_class *)v10 performSelector:sel_entity]];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = byCopy;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [v12 objectForKeyedSubscript:*(*(&v26 + 1) + 8 * i)];
        [v18 useDimensionAsGroupBy];
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v15);
  }

  allValues = [v12 allValues];
  container = [(UsagePoliciesHandler *)self container];
  v25 = v11;
  v21 = [UsageMO usageOf:allValues timeSpan:timespan around:aroundCopy onContainer:container withError:&v25];
  v22 = v25;

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  return v23;
}

- (id)cumulativeUsage:(id)usage onField:(id)field
{
  v26 = *MEMORY[0x1E69E9840];
  usageCopy = usage;
  fieldCopy = field;
  if ([usageCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    context = objc_autoreleasePoolPush();
    v19 = usageCopy;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = usageCopy;
    v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:fieldCopy];
          v10 += [v14 unsignedIntegerValue];

          v15 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v13];
          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
          [v15 setObject:v16 forKeyedSubscript:@"cumulative"];

          [array addObject:v15];
        }

        v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    objc_autoreleasePoolPop(context);
    usageCopy = v19;
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)updateUniqueMO:(id)o withConstraints:(id)constraints fromStats:(id)stats aggregatedOn:(id)on withTotal:(unint64_t)total timespan:(unint64_t)timespan prevPercentile:(unint64_t *)percentile
{
  v93 = *MEMORY[0x1E69E9840];
  oCopy = o;
  constraintsCopy = constraints;
  statsCopy = stats;
  onCopy = on;
  v17 = objc_opt_new();
  v18 = [(UsagePoliciesHandler *)self prefixForUniqueMOStatsFieldsforTimeSpan:timespan];
  v65 = onCopy;
  v19 = [statsCopy objectForKeyedSubscript:onCopy];
  [v19 doubleValue];
  v21 = v20;

  v22 = [statsCopy objectForKeyedSubscript:@"cumulative"];
  [v22 doubleValue];
  v24 = v23;

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v25 = constraintsCopy;
  v26 = [v25 countByEnumeratingWithState:&v66 objects:v92 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v67;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v67 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v66 + 1) + 8 * i);
        v31 = [statsCopy objectForKeyedSubscript:v30];
        [v17 setObject:v31 forKeyedSubscript:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v66 objects:v92 count:16];
    }

    while (v27);
  }

  v32 = oCopy;
  v33 = [(WAPersistentContainer *)self->_container uniqueObjectFor:oCopy withConstraints:v17 allowCreate:0 prefetchProperties:0 withError:0];
  if (!v33)
  {
    v52 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
    {
      name = [oCopy name];
      *buf = 136446978;
      v71 = "[UsagePoliciesHandler updateUniqueMO:withConstraints:fromStats:aggregatedOn:withTotal:timespan:prevPercentile:]";
      v72 = 1024;
      v73 = 269;
      v74 = 2114;
      v75 = name;
      v76 = 2112;
      v77 = v17;
      _os_log_impl(&dword_1C8460000, v52, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unexpected: cannot find %{public}@ for constraints %@", buf, 0x26u);
    }

    goto LABEL_20;
  }

  v34 = v24 * 100.0;
  v35 = v21 * 100.0 / total;
  v36 = v34 / total;
  v37 = [statsCopy objectForKeyedSubscript:v65];
  v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Seconds", v18];
  [v33 setValue:v37 forKey:v38];

  v39 = [MEMORY[0x1E696AD98] numberWithDouble:v35];
  v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Percentage", v18];
  [v33 setValue:v39 forKey:v40];

  v41 = [statsCopy objectForKeyedSubscript:@"cumulative"];
  v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@CumulativeSeconds", v18];
  [v33 setValue:v41 forKey:v42];

  v43 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
  v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@CumulativePercentage", v18];
  [v33 setValue:v43 forKey:v44];

  if (!percentile)
  {
    v52 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v71 = "[UsagePoliciesHandler updateUniqueMO:withConstraints:fromStats:aggregatedOn:withTotal:timespan:prevPercentile:]";
      v72 = 1024;
      v73 = 277;
      _os_log_impl(&dword_1C8460000, v52, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unexpected: nil lastPercentile", buf, 0x12u);
    }

LABEL_20:

    v50 = 0;
    goto LABEL_13;
  }

  *percentile = v36;
  v45 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    loga = v45;
    v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Seconds", v18];
    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Seconds", v18];
    v60 = [v33 valueForKey:v58];
    v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@CumulativeSeconds", v18];
    v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@CumulativeSeconds", v18];
    v55 = [v33 valueForKey:v57];
    v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Percentage", v18];
    v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Percentage", v18];
    v46 = [v33 valueForKey:v56];
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@CumulativePercentage", v18];
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@CumulativePercentage", v18];
    v49 = [v33 valueForKey:v48];
    *buf = 136448770;
    v71 = "[UsagePoliciesHandler updateUniqueMO:withConstraints:fromStats:aggregatedOn:withTotal:timespan:prevPercentile:]";
    v72 = 1024;
    v73 = 284;
    v74 = 2112;
    v75 = v33;
    v76 = 2112;
    v77 = v63;
    v78 = 2112;
    v79 = v60;
    v80 = 2112;
    v81 = v59;
    v82 = 2112;
    v83 = v55;
    v84 = 2112;
    v85 = v54;
    v86 = 2112;
    v87 = v46;
    v88 = 2112;
    v89 = v47;
    v90 = 2112;
    v91 = v49;
    _os_log_impl(&dword_1C8460000, loga, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Updated %@ with %@(%@): %@(%@) and %@(%@): %@(%@)", buf, 0x6Cu);

    v32 = oCopy;
    v45 = loga;
  }

  v50 = v33;
LABEL_13:

  return v50;
}

- (BOOL)submitLanEventsFor:(id)for
{
  v76[3] = *MEMORY[0x1E69E9840];
  forCopy = for;
  if (!forCopy)
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v65 = "[UsagePoliciesHandler submitLanEventsFor:]";
      v66 = 1024;
      v67 = 300;
      v42 = "%{public}s::%d:nil lan";
      v43 = v7;
      v44 = OS_LOG_TYPE_FAULT;
      v45 = 18;
LABEL_31:
      _os_log_impl(&dword_1C8460000, v43, v44, v42, buf, v45);
    }

LABEL_22:
    v37 = 0;
    goto LABEL_23;
  }

  container = [(UsagePoliciesHandler *)self container];
  v61 = 0;
  v6 = [container bssidCountBy:&unk_1F483E5F0 inUniqueMO:forCopy withError:&v61];
  v7 = v61;

  if (v7)
  {
    v46 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v65 = "[UsagePoliciesHandler submitLanEventsFor:]";
      v66 = 1024;
      v67 = 303;
      v68 = 2112;
      v69 = forCopy;
      v70 = 2112;
      v71 = v7;
      _os_log_impl(&dword_1C8460000, v46, OS_LOG_TYPE_ERROR, "%{public}s::%d:unable to fetch bssidCountByBandInLAN:%@ %@", buf, 0x26u);
    }

    goto LABEL_22;
  }

  if (!v6)
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v65 = "[UsagePoliciesHandler submitLanEventsFor:]";
      v66 = 1024;
      v67 = 304;
      v68 = 2112;
      v69 = forCopy;
      v70 = 2112;
      v71 = 0;
      v42 = "%{public}s::%d:unable to fetch bssidCountByBandInLAN:%@ %@";
      v43 = v7;
      v44 = OS_LOG_TYPE_ERROR;
      v45 = 38;
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v75[0] = @"bssInLANCount";
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[__CFString bssCount](forCopy, "bssCount")}];
  v76[0] = v8;
  v75[1] = @"ssidInLANCount";
  v9 = MEMORY[0x1E696AD98];
  container = self->_container;
  v60 = 0;
  v11 = [(WAPersistentContainer *)container networkCountForLAN:forCopy withError:&v60];
  v7 = v60;
  v12 = [v9 numberWithUnsignedInteger:v11];
  v76[1] = v12;
  v75[2] = @"bandsInLANCount";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
  v76[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:3];

  if (v7)
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v65 = "[UsagePoliciesHandler submitLanEventsFor:]";
      v66 = 1024;
      v67 = 313;
      v68 = 2112;
      v69 = forCopy;
      v70 = 2112;
      v71 = v7;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_FAULT, "%{public}s::%d:networkCountForLAN:%@ --> %@", buf, 0x26u);
    }
  }

  v16 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446978;
    v65 = "[UsagePoliciesHandler submitLanEventsFor:]";
    v66 = 1024;
    v67 = 316;
    v68 = 2112;
    v69 = @"com.apple.wifi.lan";
    v70 = 2112;
    v71 = v14;
    _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:submitting %@: %@", buf, 0x26u);
  }

  v50 = forCopy;

  v17 = +[WAClient sharedClient];
  v47 = v14;
  [v17 submitWiFiAnalytics:@"com.apple.wifi.lan" data:v14];

  v59 = 0;
  v58 = 0;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v6;
  v51 = [obj countByEnumeratingWithState:&v54 objects:v74 count:16];
  v18 = 0;
  if (v51)
  {
    v19 = @"mostRecentBand";
    v49 = *v55;
    v20 = v7;
    while (2)
    {
      v21 = 0;
      do
      {
        if (*v55 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v54 + 1) + 8 * v21);
        v23 = [v22 objectForKeyedSubscript:v19];
        shortValue = [v23 shortValue];

        v52 = [(UsagePoliciesHandler *)self checkMissingBandsIn:&v58 from:v18 to:shortValue];
        selfCopy = self;
        container2 = [(UsagePoliciesHandler *)self container];
        v27 = [v22 objectForKeyedSubscript:v19];
        shortValue2 = [v27 shortValue];
        v53 = v20;
        v29 = v19;
        v30 = [container2 countNetworksHavingBand:shortValue2 inLan:v50 withError:&v53];
        v7 = v53;

        if (v7)
        {
          v38 = WALogCategoryDeviceStoreHandle();
          forCopy = v50;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = [v22 objectForKeyedSubscript:@"mostRecentBand"];
            v40 = +[WADeviceAnalyticsClient bandAsString:](WADeviceAnalyticsClient, "bandAsString:", [v39 shortValue]);
            *buf = 136447234;
            v65 = "[UsagePoliciesHandler submitLanEventsFor:]";
            v66 = 1024;
            v67 = 331;
            v68 = 2112;
            v69 = v50;
            v70 = 2112;
            v71 = v40;
            v72 = 2112;
            v73 = v7;
            _os_log_impl(&dword_1C8460000, v38, OS_LOG_TYPE_ERROR, "%{public}s::%d:unable to fetch networkCountInLan:%@ havingBand:%@ %@", buf, 0x30u);
          }

          goto LABEL_22;
        }

        v31 = +[WAClient sharedClient];
        v62[0] = @"band";
        v32 = [v22 objectForKeyedSubscript:v29];
        v63[0] = v32;
        v62[1] = @"bssInLANCount";
        v33 = +[(UniqueMO *)BSSMO];
        v34 = [v22 objectForKeyedSubscript:v33];
        v63[1] = v34;
        v62[2] = @"ssidInLANCount";
        v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
        v63[2] = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:3];
        [v31 submitWiFiAnalytics:@"com.apple.wifi.lan" data:v36];

        v20 = 0;
        *(&v58 + shortValue) = 1;
        ++v21;
        self = selfCopy;
        v19 = v29;
        v18 = v52;
      }

      while (v51 != v21);
      v20 = 0;
      v7 = 0;
      v51 = [obj countByEnumeratingWithState:&v54 objects:v74 count:16];
      if (v51)
      {
        continue;
      }

      break;
    }
  }

  [(UsagePoliciesHandler *)self checkMissingBandsIn:&v58 from:v18 to:3];
  v37 = 1;
  forCopy = v50;
LABEL_23:

  return v37;
}

- (int)checkMissingBandsIn:(BOOL)in[3] from:(int)from to:(int)to
{
  v5 = *&from;
  v14[3] = *MEMORY[0x1E69E9840];
  if (from < to)
  {
    v7 = &in[from];
    do
    {
      v8 = *v7++;
      if ((v8 & 1) == 0)
      {
        v9 = +[WAClient sharedClient];
        v13[0] = @"band";
        v10 = [MEMORY[0x1E696AD98] numberWithInt:v5];
        v14[0] = v10;
        v14[1] = &unk_1F483E1B8;
        v13[1] = @"bssInLANCount";
        v13[2] = @"ssidInLANCount";
        v14[2] = &unk_1F483E1B8;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
        [v9 submitWiFiAnalytics:@"com.apple.wifi.lan" data:v11];
      }

      v5 = (v5 + 1);
    }

    while (to != v5);
    LODWORD(v5) = to;
  }

  return v5;
}

- (void)updatePoliciesTableWithReason:(id)reason dateLessThen:(id)then object:(id)object timeSpan:(unint64_t)span
{
  v39 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  thenCopy = then;
  reasonCopy = reason;
  container = [(UsagePoliciesHandler *)self container];
  v14 = +[PoliciesUsageMO entity];
  date = [MEMORY[0x1E695DF00] date];
  v16 = [container newDatedEventObjectFor:v14 withDate:date];

  [v16 setPolicyType:@"updateTopUsedByUsage"];
  [v16 setReasonForRunning:reasonCopy];

  [v16 setDate_lt:thenCopy];
  name = [objectCopy name];

  [v16 setObject:name];
  v18 = [WADeviceAnalyticsClient timeSpanToString:span];
  [v16 setTimeSpan:v18];

  v19 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    policyType = [v16 policyType];
    date2 = [v16 date];
    object = [v16 object];
    timeSpan = [v16 timeSpan];
    date_lt = [v16 date_lt];
    v25 = 136447746;
    v26 = "[UsagePoliciesHandler updatePoliciesTableWithReason:dateLessThen:object:timeSpan:]";
    v27 = 1024;
    v28 = 372;
    v29 = 2112;
    v30 = policyType;
    v31 = 2112;
    v32 = date2;
    v33 = 2112;
    v34 = object;
    v35 = 2112;
    v36 = timeSpan;
    v37 = 2112;
    v38 = date_lt;
    _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Stored Policy (%@) run at (%@) with %@ %@ %@", &v25, 0x44u);
  }
}

- (id)prefixForUniqueMOStatsFieldsforTimeSpan:(unint64_t)span
{
  v11 = *MEMORY[0x1E69E9840];
  if (span - 1 >= 4)
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v8 = "[UsagePoliciesHandler prefixForUniqueMOStatsFieldsforTimeSpan:]";
      v9 = 1024;
      v10 = 397;
      _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_FAULT, "%{public}s::%d:FIXME", buf, 0x12u);
    }

    v3 = 0;
  }

  else
  {
    v3 = off_1E830EF10[span - 1];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"latestComplete%@Usage", v3];

  return v5;
}

@end