@interface DKReporterRegistry
- (DKReporterRegistry)init;
- (NSSet)components;
- (NSSet)generators;
- (id)generatorForComponentIdentity:(id)identity;
- (void)addExtensionAdapter:(id)adapter;
- (void)enumerateExtensionAdaptersWithBlock:(id)block;
@end

@implementation DKReporterRegistry

- (DKReporterRegistry)init
{
  v8.receiver = self;
  v8.super_class = DKReporterRegistry;
  v2 = [(DKReporterRegistry *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    generatorLookup = v2->_generatorLookup;
    v2->_generatorLookup = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    componentDedup = v2->_componentDedup;
    v2->_componentDedup = dictionary2;
  }

  return v2;
}

- (id)generatorForComponentIdentity:(id)identity
{
  identityCopy = identity;
  generatorLookup = [(DKReporterRegistry *)self generatorLookup];
  v6 = [generatorLookup objectForKeyedSubscript:identityCopy];

  return v6;
}

- (NSSet)components
{
  v2 = MEMORY[0x277CBEB98];
  componentDedup = [(DKReporterRegistry *)self componentDedup];
  allValues = [componentDedup allValues];
  v5 = [v2 setWithArray:allValues];

  return v5;
}

- (NSSet)generators
{
  v2 = MEMORY[0x277CBEB98];
  generatorLookup = [(DKReporterRegistry *)self generatorLookup];
  allValues = [generatorLookup allValues];
  v5 = [v2 setWithArray:allValues];

  return v5;
}

- (void)addExtensionAdapter:(id)adapter
{
  v30 = *MEMORY[0x277D85DE8];
  adapterCopy = adapter;
  extensionAttributes = [adapterCopy extensionAttributes];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  manifest = [extensionAttributes manifest];
  v7 = [manifest countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(manifest);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        componentDedup = [(DKReporterRegistry *)selfCopy componentDedup];
        v12 = [componentDedup objectForKeyedSubscript:v10];

        if (v12)
        {
          if ([v10 isNewerThan:v12])
          {
            componentDedup2 = [(DKReporterRegistry *)selfCopy componentDedup];
            [componentDedup2 removeObjectForKey:v12];

            generatorLookup = [(DKReporterRegistry *)selfCopy generatorLookup];
            [generatorLookup removeObjectForKey:v12];
          }

          else
          {
            generatorLookup = DiagnosticsKitLogHandleForCategory(1);
            if (os_log_type_enabled(generatorLookup, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v24 = v12;
              v25 = 2112;
              v26 = v10;
              v27 = 2112;
              v28 = adapterCopy;
              _os_log_impl(&dword_248B9D000, generatorLookup, OS_LOG_TYPE_DEFAULT, "Replacing component [%@] with newer [%@] from [%@]", buf, 0x20u);
            }
          }
        }

        componentDedup3 = [(DKReporterRegistry *)selfCopy componentDedup];
        [componentDedup3 setObject:v10 forKeyedSubscript:v10];

        generatorLookup2 = [(DKReporterRegistry *)selfCopy generatorLookup];
        [generatorLookup2 setObject:adapterCopy forKeyedSubscript:v10];

        v17 = DiagnosticsKitLogHandleForCategory(1);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v24 = v10;
          v25 = 2112;
          v26 = adapterCopy;
          _os_log_impl(&dword_248B9D000, v17, OS_LOG_TYPE_DEFAULT, "Registered component [%@] from [%@]", buf, 0x16u);
        }
      }

      v7 = [manifest countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
}

- (void)enumerateExtensionAdaptersWithBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  generators = [(DKReporterRegistry *)self generators];
  v6 = [generators countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(generators);
        }

        blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [generators countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end