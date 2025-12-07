@interface HDPluginManager
- (HDDaemon)daemon;
- (HDPluginManager)initWithDaemon:(id)daemon;
- (NSArray)allowablePluginDirectoryPaths;
- (NSArray)notificationInstructionCriteriaClasses;
- (id)_builtInPluginClasses;
- (id)_createPluginsFromClasses:(id)classes;
- (id)_internalPluginsDirectoryPaths;
- (id)_pluginClasses;
- (id)_pluginDirectoryPaths;
- (id)_pluginsDirectoryPath;
- (id)createExtensionsForDaemon:(id)daemon;
- (id)createExtensionsForProfile:(id)profile;
- (id)pluginsConformingToProtocol:(id)protocol;
- (void)notifyPluginsOfDatabaseObliteration;
@end

@implementation HDPluginManager

- (id)_builtInPluginClasses
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (HDPluginManager)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  if (!daemonCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDPluginManager.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"daemon != nil"}];
  }

  v13.receiver = self;
  v13.super_class = HDPluginManager;
  v6 = [(HDPluginManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_daemon, daemonCopy);
    _pluginClasses = [(HDPluginManager *)v7 _pluginClasses];
    v9 = [(HDPluginManager *)v7 _createPluginsFromClasses:_pluginClasses];
    plugins = v7->_plugins;
    v7->_plugins = v9;
  }

  return v7;
}

- (id)_pluginsDirectoryPath
{
  if (self)
  {
    self = [GSSystemRootDirectory() stringByAppendingPathComponent:@"/System/Library/Health/Plugins"];
    v1 = vars8;
  }

  return self;
}

- (id)_internalPluginsDirectoryPaths
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v1 = [GSSystemRootDirectory() stringByAppendingPathComponent:@"/AppleInternal/Library/Health/Plugins"];
    v4[0] = v1;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_pluginDirectoryPaths
{
  v3 = MEMORY[0x277CBEB18];
  _pluginsDirectoryPath = [(HDPluginManager *)self _pluginsDirectoryPath];
  v5 = [v3 arrayWithObject:_pluginsDirectoryPath];

  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    _internalPluginsDirectoryPaths = [(HDPluginManager *)self _internalPluginsDirectoryPaths];
    [v5 addObjectsFromArray:_internalPluginsDirectoryPaths];
  }

  return v5;
}

- (NSArray)allowablePluginDirectoryPaths
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _pluginsDirectoryPath = [(HDPluginManager *)self _pluginsDirectoryPath];
  [v3 addObject:_pluginsDirectoryPath];

  _internalPluginsDirectoryPaths = [(HDPluginManager *)self _internalPluginsDirectoryPaths];
  [v3 addObjectsFromArray:_internalPluginsDirectoryPaths];

  v6 = [GSSystemRootDirectory() stringByAppendingPathComponent:*MEMORY[0x277CCC640]];
  [v3 addObject:v6];

  return v3;
}

- (id)_pluginClasses
{
  v91 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _builtInPluginClasses = [(HDPluginManager *)self _builtInPluginClasses];
  v50 = v3;
  [v3 addObjectsFromArray:_builtInPluginClasses];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = [(HDPluginManager *)self _pluginDirectoryPaths];
  v52 = [obj countByEnumeratingWithState:&v67 objects:v80 count:16];
  if (v52)
  {
    v5 = MEMORY[0x277CCC2B0];
    v51 = *v68;
    selfCopy = self;
    do
    {
      v6 = 0;
      do
      {
        if (*v68 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v67 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        if (self)
        {
          *buf = &unk_283CC56F8;
          v9 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
        }

        else
        {
          v9 = 0;
        }

        v66 = 0;
        v62 = v9;
        v10 = v7;
        if (self)
        {
          v11 = objc_alloc_init(MEMORY[0x277CCAA00]);
          v12 = [v11 contentsOfDirectoryAtPath:v10 error:&v66];
          if (v12)
          {
            v54 = v11;
            v55 = v8;
            v56 = v6;
            v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            v53 = v12;
            v63 = v12;
            v13 = 0x277CCA000uLL;
            v65 = [v63 countByEnumeratingWithState:&v71 objects:v81 count:16];
            if (v65)
            {
              v14 = *v72;
              v58 = v10;
              v61 = *v72;
              do
              {
                v15 = 0;
                do
                {
                  if (*v72 != v14)
                  {
                    objc_enumerationMutation(v63);
                  }

                  v16 = *(*(&v71 + 1) + 8 * v15);
                  v17 = objc_autoreleasePoolPush();
                  pathExtension = [v16 pathExtension];
                  v19 = [pathExtension isEqualToString:@"bundle"];

                  if (v19)
                  {
                    v20 = [v10 stringByAppendingPathComponent:v16];
                    v21 = v62;
                    v22 = v20;
                    v23 = [objc_alloc(*(v13 + 2264)) initWithPath:v22];
                    if (v23)
                    {
                      processHasLoadedUIKit = [MEMORY[0x277CCDD30] processHasLoadedUIKit];
                      v79 = 0;
                      v25 = [v23 loadAndReturnError:&v79];
                      v64 = v79;
                      if (v25)
                      {
                        if ((processHasLoadedUIKit & 1) == 0)
                        {
                          if ([MEMORY[0x277CCDD30] processHasLoadedUIKit])
                          {
                            _HKInitializeLogging();
                            v26 = *v5;
                            if (os_log_type_enabled(*v5, OS_LOG_TYPE_FAULT))
                            {
                              *buf = 138543362;
                              *&buf[4] = v22;
                              _os_log_fault_impl(&dword_228986000, v26, OS_LOG_TYPE_FAULT, "**** IMPROPER LOADING OF UIKIT BY HEALTHD PLUGIN *** (%{public}@)", buf, 0xCu);
                            }
                          }
                        }

                        v60 = v21;
                        principalClass = [v23 principalClass];
                        if (!principalClass)
                        {
                          _HKInitializeLogging();
                          v28 = *v5;
                          if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138543362;
                            *&buf[4] = v22;
                            _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "Error: failed to get principal class from bundle %{public}@", buf, 0xCu);
                          }
                        }

                        v29 = v5;
                        v77 = 0u;
                        v78 = 0u;
                        v75 = 0u;
                        v76 = 0u;
                        v30 = v60;
                        v31 = [v30 countByEnumeratingWithState:&v75 objects:buf count:16];
                        if (v31)
                        {
                          v32 = v31;
                          v33 = *v76;
                          while (2)
                          {
                            for (i = 0; i != v32; ++i)
                            {
                              if (*v76 != v33)
                              {
                                objc_enumerationMutation(v30);
                              }

                              if ([principalClass conformsToProtocol:*(*(&v75 + 1) + 8 * i)])
                              {
                                _HKInitializeLogging();
                                v5 = v29;
                                v39 = *v29;
                                if (os_log_type_enabled(*v29, OS_LOG_TYPE_DEBUG))
                                {
                                  *v82 = 138543362;
                                  v83 = v22;
                                  _os_log_debug_impl(&dword_228986000, v39, OS_LOG_TYPE_DEBUG, "Loaded bundle %{public}@", v82, 0xCu);
                                }

                                v36 = principalClass;

                                v13 = 0x277CCA000;
                                v10 = v58;
                                v21 = v60;
                                goto LABEL_45;
                              }
                            }

                            v32 = [v30 countByEnumeratingWithState:&v75 objects:buf count:16];
                            if (v32)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        _HKInitializeLogging();
                        v5 = v29;
                        v35 = *v29;
                        v13 = 0x277CCA000;
                        v21 = v60;
                        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                        {
                          v57 = @"<>";
                          if (principalClass)
                          {
                            v57 = NSStringFromClass(principalClass);
                          }

                          v41 = [v30 hk_map:&__block_literal_global_138];
                          *v82 = 138543874;
                          v83 = v22;
                          v84 = 2114;
                          v85 = v57;
                          v86 = 2114;
                          v87 = v41;
                          _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "Error: failed to load bundle %{public}@: principal class %{public}@ doesn't conform to any of: %{public}@", v82, 0x20u);
                          if (principalClass)
                          {
                          }
                        }

                        v36 = 0;
                      }

                      else
                      {
                        _HKInitializeLogging();
                        v38 = *v5;
                        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138543618;
                          *&buf[4] = v22;
                          v89 = 2114;
                          v90 = v64;
                          _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "Error: failed to load bundle %{public}@: %{public}@", buf, 0x16u);
                        }

                        v36 = 0;
                      }

                      v10 = v58;
LABEL_45:
                    }

                    else
                    {
                      _HKInitializeLogging();
                      v37 = *v5;
                      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543362;
                        *&buf[4] = v22;
                        _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "Error: failed to instantiate bundle %{public}@", buf, 0xCu);
                      }

                      v36 = 0;
                    }

                    v40 = v36;
                    if (v36)
                    {
                      [v59 addObject:v36];
                    }

                    v14 = v61;
                  }

                  objc_autoreleasePoolPop(v17);
                  ++v15;
                }

                while (v15 != v65);
                v42 = [v63 countByEnumeratingWithState:&v71 objects:v81 count:16];
                v65 = v42;
              }

              while (v42);
            }

            self = selfCopy;
            v8 = v55;
            v6 = v56;
            v43 = v59;
            v12 = v53;
            v11 = v54;
          }

          else
          {
            v43 = 0;
          }
        }

        else
        {
          v43 = 0;
        }

        v44 = v66;
        if (v43)
        {
          [v50 addObjectsFromArray:v43];
        }

        else if (([v44 hk_isCocoaNoSuchFileError] & 1) == 0)
        {
          _HKInitializeLogging();
          v45 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = v10;
            v89 = 2114;
            v90 = v44;
            _os_log_error_impl(&dword_228986000, v45, OS_LOG_TYPE_ERROR, "Failed to load plugins at %{public}@: %{public}@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v6 != v52);
      v46 = [obj countByEnumeratingWithState:&v67 objects:v80 count:16];
      v52 = v46;
    }

    while (v46);
  }

  return v50;
}

- (id)_createPluginsFromClasses:(id)classes
{
  classesCopy = classes;
  daemon = [(HDPluginManager *)self daemon];
  v6 = &unk_283CC56F8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__HDPluginManager__createPluginsFromClasses___block_invoke;
  v11[3] = &unk_278624070;
  v13 = daemon;
  v14 = sel_shouldLoadPluginForDaemon_;
  v12 = v6;
  v7 = daemon;
  v8 = v6;
  v9 = [classesCopy hk_map:v11];

  return v9;
}

id __45__HDPluginManager__createPluginsFromClasses___block_invoke(void *a1, objc_class *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(objc_class *)a2 conformsToProtocol:a1[4]])
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([(objc_class *)a2 shouldLoadPluginForDaemon:a1[5]]& 1) != 0)
    {
      v4 = objc_alloc_init(a2);
      goto LABEL_8;
    }

    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = NSStringFromClass(a2);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "Will NOT load %@", &v9, 0xCu);
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (id)createExtensionsForDaemon:(id)daemon
{
  v20 = *MEMORY[0x277D85DE8];
  daemonCopy = daemon;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_plugins;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 extensionForHealthDaemon:{daemonCopy, v15}];
        if (v12)
        {
          pluginIdentifier = [v11 pluginIdentifier];
          [v5 setObject:v12 forKeyedSubscript:pluginIdentifier];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)createExtensionsForProfile:(id)profile
{
  v20 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_plugins;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 extensionForProfile:{profileCopy, v15}];
        if (v12)
        {
          pluginIdentifier = [v11 pluginIdentifier];
          [v5 setObject:v12 forKeyedSubscript:pluginIdentifier];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)notifyPluginsOfDatabaseObliteration
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_plugins;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 handleDatabaseObliteration];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)pluginsConformingToProtocol:(id)protocol
{
  v21 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  if (!self->_plugins)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDPluginManager.m" lineNumber:155 description:@"Plugins not loaded when looking up plugins for protocol. Plugins should have been loaded during init; what happened?"];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_plugins;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 conformsToProtocol:{protocolCopy, v16}])
        {
          pluginIdentifier = [v12 pluginIdentifier];
          [v6 setObject:v12 forKeyedSubscript:pluginIdentifier];
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

- (NSArray)notificationInstructionCriteriaClasses
{
  v20[2] = *MEMORY[0x277D85DE8];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v4 = [v3 mutableCopy];
  v5 = [(HDPluginManager *)self pluginsConformingToProtocol:&unk_283D714F8];
  allValues = [v5 allValues];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = allValues;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        notificationInstructionCriteriaClasses = [*(*(&v15 + 1) + 8 * i) notificationInstructionCriteriaClasses];
        [v4 addObjectsFromArray:notificationInstructionCriteriaClasses];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = objc_msgSend_copy(v4);

  return v13;
}

@end