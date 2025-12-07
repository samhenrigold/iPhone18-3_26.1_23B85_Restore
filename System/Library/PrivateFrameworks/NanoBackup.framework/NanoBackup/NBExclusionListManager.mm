@interface NBExclusionListManager
- (NSSet)excludedPerGizmoDomains;
- (id)excludedKeysInDomain:(id)domain;
- (void)purgeCache;
- (void)readConfigurationIfNeeded;
@end

@implementation NBExclusionListManager

- (NSSet)excludedPerGizmoDomains
{
  [(NBExclusionListManager *)self readConfigurationIfNeeded];
  excludedPerGizmoDomains = self->_excludedPerGizmoDomains;

  return excludedPerGizmoDomains;
}

- (id)excludedKeysInDomain:(id)domain
{
  domainCopy = domain;
  [(NBExclusionListManager *)self readConfigurationIfNeeded];
  v5 = [(NSMutableDictionary *)self->_excludedPerGizmoDomainSettings objectForKeyedSubscript:domainCopy];

  return v5;
}

- (void)purgeCache
{
  self->_hasReadConfiguration = 0;
  excludedPerGizmoDomains = self->_excludedPerGizmoDomains;
  self->_excludedPerGizmoDomains = 0;

  excludedPerGizmoDomainSettings = self->_excludedPerGizmoDomainSettings;
  self->_excludedPerGizmoDomainSettings = 0;
}

- (void)readConfigurationIfNeeded
{
  v23 = *MEMORY[0x277D85DE8];
  if (!self->_hasReadConfiguration)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundlePath = [v3 bundlePath];
    v5 = [bundlePath stringByAppendingPathComponent:@"PerGizmoSettingsExclusionList.plist"];

    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5];
    if (v6)
    {
      v7 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:0];
      v8 = [v7 objectForKeyedSubscript:@"ExcludedDomains"];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        while (1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (!--v10)
          {
            v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
            if (!v10)
            {
              break;
            }
          }
        }
      }

      v12 = [MEMORY[0x277CBEB98] setWithArray:v8];
      excludedPerGizmoDomains = self->_excludedPerGizmoDomains;
      self->_excludedPerGizmoDomains = v12;

      v14 = [v7 objectForKeyedSubscript:@"ExcludedSettings"];
      v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v14, "count")}];
      excludedPerGizmoDomainSettings = self->_excludedPerGizmoDomainSettings;
      self->_excludedPerGizmoDomainSettings = v15;

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __51__NBExclusionListManager_readConfigurationIfNeeded__block_invoke;
      v17[3] = &unk_27992D620;
      v17[4] = self;
      [v14 enumerateKeysAndObjectsUsingBlock:v17];
    }

    self->_hasReadConfiguration = 1;
  }
}

void __51__NBExclusionListManager_readConfigurationIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    while (1)
    {
      if (*v12 != v9)
      {
        objc_enumerationMutation(v6);
      }

      if (!--v8)
      {
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  v10 = [MEMORY[0x277CBEB98] setWithArray:v6];
  [*(*(a1 + 32) + 24) setObject:v10 forKeyedSubscript:v5];
}

@end