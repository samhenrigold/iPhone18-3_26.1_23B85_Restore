@interface AFPluginManager
+ (id)pluginManagerForPath:(id)path domainKeys:(id)keys factoryInitializationBlock:(id)block;
- (AFPluginManager)initWithPath:(id)path domainKeys:(id)keys factoryInitializationBlock:(id)block;
- (id)description;
- (void)_loadBundlesIfNeeded;
- (void)_registerBundle:(id)bundle;
- (void)enumerateFactoryInstancesForDomainKey:(id)key groupIdentifier:(id)identifier classIdentifier:(id)classIdentifier usingBlock:(id)block;
- (void)preloadBundles;
@end

@implementation AFPluginManager

- (id)description
{
  v6.receiver = self;
  v6.super_class = AFPluginManager;
  v3 = [(AFPluginManager *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" Bundle Path: %@, Bundles: %@", self->_path, self->_domainKeys];

  return v4;
}

- (void)_registerBundle:(id)bundle
{
  v47 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v5 = bundleCopy;
  if (bundleCopy)
  {
    principalClass = [bundleCopy principalClass];
    if (principalClass)
    {
      v7 = principalClass;
      v8 = objc_alloc_init(AFPluginBundle);
      [(AFPluginBundle *)v8 setFactoryClass:v7];
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = self->_domainKeys;
      v30 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v30)
      {
        v28 = *v38;
        v29 = v5;
        do
        {
          v9 = 0;
          do
          {
            if (*v38 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v31 = v9;
            v10 = *(*(&v37 + 1) + 8 * v9);
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            infoDictionary = [v5 infoDictionary];
            v12 = [infoDictionary objectForKey:v10];

            v32 = v12;
            v13 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v34;
              do
              {
                v16 = 0;
                do
                {
                  if (*v34 != v15)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v17 = [*(*(&v33 + 1) + 8 * v16) componentsSeparatedByString:@"#"];
                  firstObject = [v17 firstObject];
                  if ([v17 count] >= 2)
                  {
                    v19 = [v17 objectAtIndex:1];
                    if (v19)
                    {
                      v20 = v19;
                      [(AFPluginBundle *)v8 registerClassIdentifier:v19 forDomain:v10 inGroup:firstObject];
                    }
                  }

                  v21 = [(NSMutableDictionary *)self->_domainKeyDictionary objectForKeyedSubscript:v10];
                  v22 = [v21 objectForKeyedSubscript:firstObject];

                  if (!v22)
                  {
                    domainKeyDictionary = self->_domainKeyDictionary;
                    if (domainKeyDictionary)
                    {
                      v22 = [(NSMutableDictionary *)domainKeyDictionary objectForKeyedSubscript:v10];

                      if (v22)
                      {
                        v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
                        v24 = [(NSMutableDictionary *)self->_domainKeyDictionary objectForKeyedSubscript:v10];
                        [v24 setObject:v22 forKeyedSubscript:firstObject];
                      }
                    }

                    else
                    {
                      v22 = 0;
                    }
                  }

                  [v22 addObject:v8];

                  ++v16;
                }

                while (v14 != v16);
                v25 = [v32 countByEnumeratingWithState:&v33 objects:v41 count:16];
                v14 = v25;
              }

              while (v25);
            }

            v9 = v31 + 1;
            v5 = v29;
          }

          while (v31 + 1 != v30);
          v30 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v30);
      }
    }

    else
    {
      v26 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v44 = "[AFPluginManager _registerBundle:]";
        v45 = 2112;
        v46 = v5;
        _os_log_impl(&dword_1912FE000, v26, OS_LOG_TYPE_INFO, "%s Siri plugin does not specify an NSPrincipalClass, unable to load: %@", buf, 0x16u);
      }
    }
  }
}

- (void)_loadBundlesIfNeeded
{
  v28 = *MEMORY[0x1E69E9840];
  if (!self->_hasLoadedBundles)
  {
    self->_hasLoadedBundles = 1;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    path = self->_path;
    v16 = 0;
    v15 = defaultManager;
    v5 = [defaultManager contentsOfDirectoryAtPath:path error:&v16];
    v6 = v16;
    v7 = [v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [(NSString *)self->_path stringByAppendingPathComponent:*(*(&v17 + 1) + 8 * i)];
          v12 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithPath:v11];
          if (v12)
          {
            v13 = v6 == 0;
          }

          else
          {
            v13 = 0;
          }

          if (v13)
          {
            [(AFPluginManager *)self _registerBundle:v12];
          }

          else
          {
            v14 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v22 = "[AFPluginManager _loadBundlesIfNeeded]";
              v23 = 2112;
              v24 = v11;
              v25 = 2112;
              v26 = v6;
              _os_log_error_impl(&dword_1912FE000, v14, OS_LOG_TYPE_ERROR, "%s Error loading bundle at path %@:%@", buf, 0x20u);
            }
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
      }

      while (v8);
    }
  }
}

- (void)preloadBundles
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AFPluginManager preloadBundles]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(AFPluginManager *)self _loadBundlesIfNeeded];
}

- (void)enumerateFactoryInstancesForDomainKey:(id)key groupIdentifier:(id)identifier classIdentifier:(id)classIdentifier usingBlock:(id)block
{
  v54 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  identifierCopy = identifier;
  classIdentifierCopy = classIdentifier;
  blockCopy = block;
  v13 = blockCopy;
  if (identifierCopy && keyCopy && blockCopy)
  {
    [(AFPluginManager *)self _loadBundlesIfNeeded];
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    v15 = [(NSMutableDictionary *)self->_domainKeyDictionary objectForKeyedSubscript:keyCopy];
    v16 = [v15 objectForKeyedSubscript:identifierCopy];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v45;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v44 + 1) + 8 * i);
          if ([v22 supportsClassIdentifier:classIdentifierCopy forDomainKey:keyCopy groupIdentifier:identifierCopy])
          {
            [orderedSet addObject:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v19);
    }

    [orderedSet addObjectsFromArray:v17];
    v43 = 0;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = orderedSet;
    v23 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
    if (v23)
    {
      v25 = v23;
      v26 = *v40;
      *&v24 = 136315394;
      v36 = v24;
      do
      {
        v27 = 0;
        do
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v39 + 1) + 8 * v27);
          factoryInstance = [v28 factoryInstance];
          if (factoryInstance)
          {
            v30 = factoryInstance;
          }

          else
          {
            v30 = (*(self->_factoryInitializationBlock + 2))(self->_factoryInitializationBlock, [v28 factoryClass]);
            [v28 setFactoryInstance:v30];
            if (!v30)
            {
              v31 = AFSiriLogContextConnection;
              if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
              {
                v32 = v31;
                factoryClass = [v28 factoryClass];
                *buf = v36;
                v49 = "[AFPluginManager enumerateFactoryInstancesForDomainKey:groupIdentifier:classIdentifier:usingBlock:]";
                v50 = 2114;
                v51 = factoryClass;
                v34 = factoryClass;
                _os_log_error_impl(&dword_1912FE000, v32, OS_LOG_TYPE_ERROR, "%s Unable to create an instance of plugin NSPrincipalClass %{public}@", buf, 0x16u);
              }

              v30 = 0;
              goto LABEL_22;
            }
          }

          (v13)[2](v13, v30, &v43);
          if (v43 == 1)
          {

            goto LABEL_30;
          }

LABEL_22:

          ++v27;
        }

        while (v25 != v27);
        v35 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
        v25 = v35;
      }

      while (v35);
    }

LABEL_30:
  }
}

- (AFPluginManager)initWithPath:(id)path domainKeys:(id)keys factoryInitializationBlock:(id)block
{
  v35 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  keysCopy = keys;
  blockCopy = block;
  v33.receiver = self;
  v33.super_class = AFPluginManager;
  v11 = [(AFPluginManager *)&v33 init];
  if (v11)
  {
    v12 = [pathCopy copy];
    path = v11->_path;
    v11->_path = v12;

    v14 = [keysCopy copy];
    domainKeys = v11->_domainKeys;
    v11->_domainKeys = v14;

    v28 = pathCopy;
    if (blockCopy)
    {
      v16 = MEMORY[0x193AFB7B0](blockCopy);
    }

    else
    {
      v16 = &__block_literal_global_26563;
    }

    factoryInitializationBlock = v11->_factoryInitializationBlock;
    v11->_factoryInitializationBlock = v16;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    domainKeyDictionary = v11->_domainKeyDictionary;
    v11->_domainKeyDictionary = dictionary;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = v11->_domainKeys;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v30;
      do
      {
        v24 = 0;
        do
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v29 + 1) + 8 * v24);
          dictionary2 = [MEMORY[0x1E695DF90] dictionary];
          [(NSMutableDictionary *)v11->_domainKeyDictionary setObject:dictionary2 forKeyedSubscript:v25];

          ++v24;
        }

        while (v22 != v24);
        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v22);
    }

    pathCopy = v28;
  }

  return v11;
}

id __70__AFPluginManager_initWithPath_domainKeys_factoryInitializationBlock___block_invoke(uint64_t a1, objc_class *a2)
{
  v2 = objc_alloc_init(a2);

  return v2;
}

+ (id)pluginManagerForPath:(id)path domainKeys:(id)keys factoryInitializationBlock:(id)block
{
  blockCopy = block;
  keysCopy = keys;
  pathCopy = path;
  v11 = [[self alloc] initWithPath:pathCopy domainKeys:keysCopy factoryInitializationBlock:blockCopy];

  return v11;
}

@end