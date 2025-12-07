@interface HMDNetworkRouterFirewallRuleManagerUtils
+ (id)dumpTLVsFromJSONData:(id)data error:(id *)error;
@end

@implementation HMDNetworkRouterFirewallRuleManagerUtils

+ (id)dumpTLVsFromJSONData:(id)data error:(id *)error
{
  v70 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v44 = [HMDNetworkRouterFirewallRuleManagerOverrideParser parseFromData:?];
  if (v44)
  {
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__167559;
    v57 = __Block_byref_object_dispose__167560;
    v58 = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __71__HMDNetworkRouterFirewallRuleManagerUtils_dumpTLVsFromJSONData_error___block_invoke;
    v50[3] = &unk_27867C898;
    v52 = &v53;
    v41 = v4;
    v51 = v41;
    [v44 enumerateKeysAndObjectsUsingBlock:v50];
    v5 = v54[5];
    if (v5)
    {
      if (error)
      {
        v6 = v5;
LABEL_12:
        v7 = 0;
        *error = v6;
LABEL_39:

        _Block_object_dispose(&v53, 8);
        goto LABEL_40;
      }
    }

    else
    {
      if (![v41 hmf_isEmpty])
      {
        if ([v41 count] >= 2)
        {
          v11 = objc_autoreleasePoolPush();
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = HMFGetLogIdentifier();
            v14 = [v41 count];
            *buf = 138543618;
            v67 = v13;
            v68 = 2048;
            v69 = v14;
            _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Multiple declarations (%lu) found, choosing the first", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v11);
        }

        firstObject = [v41 firstObject];
        ruleConfigurations = [firstObject ruleConfigurations];
        if ([ruleConfigurations hmf_isEmpty])
        {
          v15 = objc_autoreleasePoolPush();
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = HMFGetLogIdentifier();
            *buf = 138543362;
            v67 = v17;
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@No rule configurations were found", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v15);
          if (error)
          {
            [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
            *error = v7 = 0;
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          v40 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(ruleConfigurations, "count")}];
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          obj = ruleConfigurations;
          v18 = [obj countByEnumeratingWithState:&v46 objects:v65 count:16];
          if (v18)
          {
            v39 = *v47;
            while (2)
            {
              v38 = v18;
              for (i = 0; i != v38; ++i)
              {
                if (*v47 != v39)
                {
                  objc_enumerationMutation(obj);
                }

                v20 = *(*(&v46 + 1) + 8 * i);
                v42 = [HMDNetworkRouterWANFirewallConfiguration configurationFromFirewallRuleConfiguration:v20];
                v21 = [HMDNetworkRouterLANFirewallConfiguration configurationFromFirewallRuleConfiguration:v20];
                v22 = [v42 serializeWithError:error];
                if (!v22)
                {
                  goto LABEL_36;
                }

                v23 = [v21 serializeWithError:error];
                if (!v23)
                {

LABEL_36:
                  v7 = 0;
                  goto LABEL_37;
                }

                v63[0] = @"wan";
                v24 = [v22 hmf_hexadecimalStringWithOptions:2];
                v63[1] = @"lan";
                v64[0] = v24;
                v25 = [v23 hmf_hexadecimalStringWithOptions:2];
                v64[1] = v25;
                v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
                accessoryIdentifier = [v20 accessoryIdentifier];
                firmwareVersion = [accessoryIdentifier firmwareVersion];
                versionString = [firmwareVersion versionString];
                [v40 setObject:v26 forKeyedSubscript:versionString];
              }

              v18 = [obj countByEnumeratingWithState:&v46 objects:v65 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          obj = [firstObject baseAccessoryIdentifier];
          productGroup = [obj productGroup];
          v61 = productGroup;
          productNumber = [obj productNumber];
          v59 = productNumber;
          v32 = objc_msgSend_copy(v40);
          v60 = v32;
          v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          v62 = v33;
          v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];

          v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v42 options:3 error:error];
LABEL_37:
        }

        goto LABEL_39;
      }

      v8 = objc_autoreleasePoolPush();
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543362;
        v67 = v10;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@No network declarations were found", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      if (error)
      {
        v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        goto LABEL_12;
      }
    }

    v7 = 0;
    goto LABEL_39;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_40:

  return v7;
}

void __71__HMDNetworkRouterFirewallRuleManagerUtils_dumpTLVsFromJSONData_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v8 objectForKeyedSubscript:@"networkDeclarations"];

  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"networkDeclarations"];
    v11 = [[HMDNetworkRouterFirewallRuleCloudNetworkDeclarations alloc] initWithBaseAccessoryIdentifier:v7 data:v10 allowUnzippedData:1];
    if (v11)
    {
      [*(a1 + 32) addObject:v11];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v14;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Invalid declarations found", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      *a4 = 1;
    }
  }
}

@end