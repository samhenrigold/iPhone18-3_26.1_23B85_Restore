@interface HBXHealthAppPluginFactory
+ (Class)makeDataListDataProviderClassFromPluginName:(id)name displayType:(id)type hierarchical:(BOOL)hierarchical;
+ (id)_createPluginAddDataViewControllerProvidingFromPluginBundle:(id)bundle;
+ (id)_createPluginAppDelegateFromPluginBundle:(id)bundle;
+ (id)_createPluginDataListDataProviderProvidingFromPluginBundle:(id)bundle;
+ (id)_loadBundleForPluginPath:(id)path;
+ (id)_loadPluginBundleForDisplayType:(id)type;
+ (id)_makeDataListViewControllerProvidingForDisplayType:(id)type;
+ (id)_pluginPathForDisplayType:(id)type;
+ (id)_pluginsDirectoryPath;
+ (id)makeDataListViewControllerForHealthStore:(id)store displayType:(id)type predicate:(id)predicate;
@end

@implementation HBXHealthAppPluginFactory

+ (id)makeDataListViewControllerForHealthStore:(id)store displayType:(id)type predicate:(id)predicate
{
  storeCopy = store;
  typeCopy = type;
  predicateCopy = predicate;
  v10 = [HBXHealthAppPluginFactory _makeDataListViewControllerProvidingForDisplayType:typeCopy];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 makeDataListViewControllerForHealthStore:storeCopy displayType:typeCopy predicate:predicateCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_makeDataListViewControllerProvidingForDisplayType:(id)type
{
  v3 = [self _loadPluginBundleForDisplayType:type];
  if (v3)
  {
    v4 = [HBXHealthAppPluginFactory _createPluginAddDataViewControllerProvidingFromPluginBundle:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_loadPluginBundleForDisplayType:(id)type
{
  v3 = [self _pluginPathForDisplayType:type];
  if (v3)
  {
    v4 = [HBXHealthAppPluginFactory _loadBundleForPluginPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_pluginPathForDisplayType:(id)type
{
  displayTypeIdentifier = [type displayTypeIdentifier];
  if (displayTypeIdentifier == 257)
  {
    v5 = @"VisionHealthAppPlugin.healthplugin";
    goto LABEL_5;
  }

  if (displayTypeIdentifier == 273)
  {
    v5 = @"MedicationsHealthAppPlugin.healthplugin";
LABEL_5:
    _pluginsDirectoryPath = [self _pluginsDirectoryPath];
    v7 = [_pluginsDirectoryPath stringByAppendingPathComponent:v5];

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)_pluginsDirectoryPath
{
  v2 = +[HBXHealthAppPluginUtilities defaultUtilities];
  feedItemPluginsPath = [v2 feedItemPluginsPath];

  return feedItemPluginsPath;
}

+ (id)_loadBundleForPluginPath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:pathCopy];
  v6 = v5;
  if (v5)
  {
    v14 = 0;
    v7 = [v5 loadAndReturnError:&v14];
    v8 = v14;
    if (v7)
    {
      v9 = v6;
      goto LABEL_10;
    }

    _HKInitializeLogging();
    v10 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      *buf = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = pathCopy;
      v19 = 2114;
      v20 = v8;
      v13 = v12;
      _os_log_error_impl(&dword_251E85000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to load plugin bundle at path %{public}@ with error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(HBXHealthAppPluginFactory *)self _loadBundleForPluginPath:pathCopy];
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

+ (id)_createPluginAddDataViewControllerProvidingFromPluginBundle:(id)bundle
{
  v19 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  v4 = [HBXHealthAppPluginFactory _createPluginAppDelegateFromPluginBundle:bundleCopy];
  v5 = &unk_28646C340;
  if ([v4 conformsToProtocol:v5])
  {
    v6 = v4;
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = NSStringFromProtocol(v5);
      bundleIdentifier = [bundleCopy bundleIdentifier];
      v13 = 138543874;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = bundleIdentifier;
      _os_log_error_impl(&dword_251E85000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Plugin app delegate does not conform to %{public}@: %{public}@", &v13, 0x20u);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)_createPluginAppDelegateFromPluginBundle:(id)bundle
{
  bundleCopy = bundle;
  infoDictionary = [bundleCopy infoDictionary];
  v6 = [infoDictionary objectForKeyedSubscript:@"PluginAppDelegateClass"];

  if (v6)
  {
    v7 = objc_alloc_init(NSClassFromString(v6));
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(HBXHealthAppPluginFactory *)self _createPluginAppDelegateFromPluginBundle:bundleCopy];
    }

    v7 = 0;
  }

  return v7;
}

+ (Class)makeDataListDataProviderClassFromPluginName:(id)name displayType:(id)type hierarchical:(BOOL)hierarchical
{
  hierarchicalCopy = hierarchical;
  typeCopy = type;
  nameCopy = name;
  _pluginsDirectoryPath = [self _pluginsDirectoryPath];
  v11 = [_pluginsDirectoryPath stringByAppendingPathComponent:nameCopy];

  v12 = [self _loadBundleForPluginPath:v11];
  v13 = [HBXHealthAppPluginFactory _createPluginDataListDataProviderProvidingFromPluginBundle:v12];
  v14 = [v13 makeDataListDataProviderClassForDisplayType:typeCopy hierarchical:hierarchicalCopy];

  return v14;
}

+ (id)_createPluginDataListDataProviderProvidingFromPluginBundle:(id)bundle
{
  v19 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  v4 = [HBXHealthAppPluginFactory _createPluginAppDelegateFromPluginBundle:bundleCopy];
  v5 = &unk_28646C3F0;
  if ([v4 conformsToProtocol:v5])
  {
    v6 = v4;
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = NSStringFromProtocol(v5);
      bundleIdentifier = [bundleCopy bundleIdentifier];
      v13 = 138543874;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = bundleIdentifier;
      _os_log_error_impl(&dword_251E85000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Plugin app delegate does not conform to %{public}@: %{public}@", &v13, 0x20u);
    }

    v6 = 0;
  }

  return v6;
}

+ (void)_loadBundleForPluginPath:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  *v10 = 138543618;
  *&v10[4] = objc_opt_class();
  *&v10[12] = 2114;
  *&v10[14] = a2;
  v3 = *&v10[4];
  OUTLINED_FUNCTION_0(&dword_251E85000, v4, v5, "%{public}@: Failed to create plugin bundle at path: %{public}@", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

+ (void)_createPluginAppDelegateFromPluginBundle:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = v3;
  v5 = [a2 bundleIdentifier];
  *v12 = 138543618;
  *&v12[4] = v3;
  *&v12[12] = 2114;
  *&v12[14] = v5;
  OUTLINED_FUNCTION_0(&dword_251E85000, v6, v7, "%{public}@: Plugin does not declare an app delegate in its Info.plist: %{public}@", v8, v9, v10, v11, *v12, *&v12[8], *&v12[16]);
}

@end