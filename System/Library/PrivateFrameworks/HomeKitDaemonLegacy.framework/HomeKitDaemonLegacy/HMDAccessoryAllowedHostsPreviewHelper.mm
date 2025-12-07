@interface HMDAccessoryAllowedHostsPreviewHelper
+ (id)helperForHome:(id)home;
- (id)attributeDescriptions;
- (id)watchedAccessoryIdentifiersForFirewallRuleManager:(id)manager;
- (void)fetchAllowedHostsForAccessory:(id)accessory completion:(id)completion;
@end

@implementation HMDAccessoryAllowedHostsPreviewHelper

- (id)attributeDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  WeakRetained = objc_loadWeakRetained(&self->_home);
  v5 = [v3 initWithName:@"home" value:WeakRetained];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (id)watchedAccessoryIdentifiersForFirewallRuleManager:(id)manager
{
  v24 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  WeakRetained = objc_loadWeakRetained(&self->_home);
  if (WeakRetained && self->_firewallRuleManager == managerCopy)
  {
    os_unfair_lock_lock_with_options();
    v7 = self->_expires;
    os_unfair_lock_unlock(&self->_lock);
    if (v7)
    {
      [(NSDate *)v7 timeIntervalSinceNow];
      if (v8 <= 0.0)
      {
        v9 = objc_loadWeakRetained(&self->_home);
        if (v9)
        {
          os_unfair_lock_lock_with_options();
          v10 = objc_getAssociatedObject(v9, &HMDAccessoryAllowedHostsPreviewHelperForHome);
          if (v10 == self)
          {
            objc_setAssociatedObject(v9, &HMDAccessoryAllowedHostsPreviewHelperForHome, 0, 1);
          }

          os_unfair_lock_unlock(&HMDAccessoryAllowedHostsPreviewHelperForHome);
        }
      }
    }

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    accessories = [WeakRetained accessories];
    v13 = [accessories countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(accessories);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          if ([v16 supportsNetworkProtection])
          {
            metadataIdentifier = [v16 metadataIdentifier];
            if (metadataIdentifier)
            {
              [v11 addObject:metadataIdentifier];
            }
          }
        }

        v13 = [accessories countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    v6 = objc_msgSend_copy(v11);
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

- (void)fetchAllowedHostsForAccessory:(id)accessory completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  metadataIdentifier = [accessoryCopy metadataIdentifier];
  if (metadataIdentifier)
  {
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v10 = [mEMORY[0x277D0F8D0] preferenceForKey:@"engraveRulePreviewCacheTimeout"];
    numberValue = [v10 numberValue];
    integerValue = [numberValue integerValue];

    v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:integerValue];
    os_unfair_lock_lock_with_options();
    if (!self->_expires || [v13 compare:?] == 1)
    {
      objc_storeStrong(&self->_expires, v13);
    }

    os_unfair_lock_unlock(&self->_lock);
    firewallRuleManager = self->_firewallRuleManager;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __82__HMDAccessoryAllowedHostsPreviewHelper_fetchAllowedHostsForAccessory_completion___block_invoke;
    v16[3] = &unk_279735168;
    v18 = completionCopy;
    v16[4] = self;
    v17 = metadataIdentifier;
    [(HMDNetworkRouterFirewallRuleManager *)firewallRuleManager startupForClient:self completion:v16];
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(completionCopy + 2))(completionCopy, 0, v15);
  }
}

void __82__HMDAccessoryAllowedHostsPreviewHelper_fetchAllowedHostsForAccessory_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);
    v5 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __82__HMDAccessoryAllowedHostsPreviewHelper_fetchAllowedHostsForAccessory_completion___block_invoke_2;
    v6[3] = &unk_27972D2A0;
    v7 = *(a1 + 48);
    [v4 fetchRulesForAccessories:v5 completion:v6];
  }
}

void __82__HMDAccessoryAllowedHostsPreviewHelper_fetchAllowedHostsForAccessory_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 anyObject];
  if (v5)
  {
    v6 = [HMDAccessoryAllowedHost allowedHostsFromFirewallRuleConfiguration:v5];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

+ (id)helperForHome:(id)home
{
  homeCopy = home;
  os_unfair_lock_lock_with_options();
  v4 = objc_getAssociatedObject(homeCopy, &HMDAccessoryAllowedHostsPreviewHelperForHome);
  if (!v4)
  {
    v4 = [HMDAccessoryAllowedHostsPreviewHelper alloc];
    v5 = +[HMDNetworkRouterFirewallRuleManager sharedInstance];
    v6 = homeCopy;
    v7 = v5;
    if (v4)
    {
      v10.receiver = v4;
      v10.super_class = HMDAccessoryAllowedHostsPreviewHelper;
      v8 = objc_msgSendSuper2(&v10, sel_init);
      v4 = v8;
      if (v8)
      {
        objc_storeWeak(v8 + 1, v6);
        objc_storeStrong(&v4->_firewallRuleManager, v5);
      }
    }

    objc_setAssociatedObject(v6, &HMDAccessoryAllowedHostsPreviewHelperForHome, v4, 1);
  }

  os_unfair_lock_unlock(&HMDAccessoryAllowedHostsPreviewHelperForHome);

  return v4;
}

@end