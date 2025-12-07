@interface AMSUIWebPluginLoader
- (AMSUIWebClientContext)context;
- (AMSUIWebPluginLoader)initWithContext:(id)context;
- (NSArray)loadedPlugins;
- (id)_loadInstalledPlugins;
- (id)pluginForBundleIdentifier:(id)identifier;
@end

@implementation AMSUIWebPluginLoader

- (AMSUIWebPluginLoader)initWithContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = AMSUIWebPluginLoader;
  v5 = [(AMSUIWebPluginLoader *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, contextCopy);
    _loadInstalledPlugins = [(AMSUIWebPluginLoader *)v6 _loadInstalledPlugins];
    installedPluginURLs = v6->_installedPluginURLs;
    v6->_installedPluginURLs = _loadInstalledPlugins;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    loadedPluginsMap = v6->_loadedPluginsMap;
    v6->_loadedPluginsMap = v9;
  }

  return v6;
}

- (NSArray)loadedPlugins
{
  loadedPluginsMap = [(AMSUIWebPluginLoader *)self loadedPluginsMap];
  allValues = [loadedPluginsMap allValues];

  return allValues;
}

- (id)pluginForBundleIdentifier:(id)identifier
{
  v45 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  loadedPluginsMap = [(AMSUIWebPluginLoader *)self loadedPluginsMap];
  v6 = [loadedPluginsMap objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    loadedPluginsMap2 = [(AMSUIWebPluginLoader *)self loadedPluginsMap];
    v8 = [loadedPluginsMap2 objectForKeyedSubscript:identifierCopy];

    goto LABEL_40;
  }

  installedPluginURLs = [(AMSUIWebPluginLoader *)self installedPluginURLs];
  v10 = [installedPluginURLs objectForKeyedSubscript:identifierCopy];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:v10];
    mEMORY[0x1E698C968]2 = v11;
    if (v11)
    {
      if ([v11 load])
      {
        principalClass = [mEMORY[0x1E698C968]2 principalClass];
        if (principalClass)
        {
          v14 = principalClass;
          if (([(objc_class *)principalClass conformsToProtocol:&unk_1F39C5B68]& 1) != 0)
          {
            objc_initWeak(location, self);
            v15 = [v14 alloc];
            context = [(AMSUIWebPluginLoader *)self context];
            v36 = [context bag];
            context2 = [(AMSUIWebPluginLoader *)self context];
            account = [context2 account];
            context3 = [(AMSUIWebPluginLoader *)self context];
            clientInfo = [context3 clientInfo];
            currentProcess = clientInfo;
            if (!clientInfo)
            {
              currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
            }

            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __50__AMSUIWebPluginLoader_pluginForBundleIdentifier___block_invoke;
            v38[3] = &unk_1E7F24968;
            objc_copyWeak(&v39, location);
            v8 = [v15 initWithBag:v36 account:account clientInfo:currentProcess propertiesChangedHandler:v38];
            if (!clientInfo)
            {
            }

            loadedPluginsMap3 = [(AMSUIWebPluginLoader *)self loadedPluginsMap];
            [loadedPluginsMap3 setObject:v8 forKeyedSubscript:identifierCopy];

            objc_destroyWeak(&v39);
            objc_destroyWeak(location);
            goto LABEL_39;
          }

          mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
          if (!mEMORY[0x1E698C968])
          {
            mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
          }

          oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
          {
            v33 = objc_opt_class();
            v34 = AMSLogKey();
            *location = 138543874;
            *&location[4] = v33;
            v41 = 2114;
            v42 = v34;
            v43 = 2114;
            v44 = identifierCopy;
            _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Principal class doesn't conform to AMSUIWebPlugin. Bundle identifier: %{public}@", location, 0x20u);
          }
        }

        else
        {
          mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
          if (!mEMORY[0x1E698C968])
          {
            mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
          }

          oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
          {
            v31 = objc_opt_class();
            v32 = AMSLogKey();
            *location = 138543874;
            *&location[4] = v31;
            v41 = 2114;
            v42 = v32;
            v43 = 2114;
            v44 = identifierCopy;
            _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Principal class not found. Bundle identifier: %{public}@", location, 0x20u);
          }
        }
      }

      else
      {
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
        if (!mEMORY[0x1E698C968])
        {
          mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v30 = AMSLogKey();
          *location = 138543874;
          *&location[4] = v29;
          v41 = 2114;
          v42 = v30;
          v43 = 2114;
          v44 = identifierCopy;
          _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to load plugin. Bundle identifier: %{public}@", location, 0x20u);
        }
      }
    }

    else
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!mEMORY[0x1E698C968])
      {
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v27 = objc_opt_class();
        v28 = AMSLogKey();
        *location = 138543874;
        *&location[4] = v27;
        v41 = 2114;
        v42 = v28;
        v43 = 2114;
        v44 = identifierCopy;
        _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No plugin bundle found. Bundle identifier: %{public}@", location, 0x20u);
      }
    }
  }

  else
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = AMSLogKey();
      *location = 138543874;
      *&location[4] = v23;
      v41 = 2114;
      v42 = v24;
      v43 = 2114;
      v44 = identifierCopy;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No plugin found. Bundle identifier: %{public}@", location, 0x20u);
    }
  }

  v8 = 0;
LABEL_39:

LABEL_40:

  return v8;
}

void __50__AMSUIWebPluginLoader_pluginForBundleIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained context];
  v2 = [v1 dataProvider];
  v3 = [v2 syncProperties];
}

- (id)_loadInstalledPlugins
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithPath:@"/System/Library/AppleMediaServices/WebUI/"];
  v4 = [v3 pathsForResourcesOfType:@"bundle" inDirectory:@"PlugIns"];
  v5 = v4;
  if (v4)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithPath:*(*(&v20 + 1) + 8 * i)];
          bundleIdentifier = [v10 bundleIdentifier];
          bundleURL = [v10 bundleURL];
          v13 = bundleURL;
          if (bundleIdentifier)
          {
            v14 = bundleURL == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            [v2 setObject:bundleURL forKeyedSubscript:bundleIdentifier];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }
  }

  else
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138543618;
      v26 = v17;
      v27 = 2114;
      v28 = v18;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to find plugins bundle", buf, 0x16u);
    }
  }

  return v2;
}

- (AMSUIWebClientContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end