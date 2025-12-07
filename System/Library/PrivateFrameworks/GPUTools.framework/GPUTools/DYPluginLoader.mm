@interface DYPluginLoader
+ (BOOL)loadPluginWithBundle:(id)bundle;
+ (id)loadGPUToolsPluginsInMainBundleOnly:(BOOL)only;
+ (id)loadLatestPlatformSupportPlugInWithProvider:(id)provider baseExtension:(id)extension;
+ (id)loadPluginsInDirectory:(id)directory pathExtension:(id)extension;
+ (id)loadPluginsInDirectory:(id)directory pathExtension:(id)extension matchingRegex:(id)regex;
+ (id)loadPluginsWithProvider:(id)provider pathExtension:(id)extension;
+ (id)loadPluginsWithProvider:(id)provider pathExtension:(id)extension matchingRegex:(id)regex;
+ (id)sharedPluginLoader;
- (BOOL)_loadBundle:(id)bundle;
- (DYPluginLoader)init;
- (id)_loadPluginsInDirectory:(id)directory pathExtension:(id)extension matchingRegex:(id)regex;
- (id)_loadPluginsWithProvider:(id)provider pathExtension:(id)extension matchingRegex:(id)regex;
- (id)loadLatestPlatformSupportPlugInWithProvider:(id)provider baseExtension:(id)extension preferredPluginExtension:(id)pluginExtension;
- (void)dealloc;
@end

@implementation DYPluginLoader

+ (id)sharedPluginLoader
{
  if (sharedPluginLoader_registry_once != -1)
  {
    +[DYPluginLoader sharedPluginLoader];
  }

  return sharedPluginLoader_loader;
}

uint64_t __36__DYPluginLoader_sharedPluginLoader__block_invoke(uint64_t a1, uint64_t a2)
{
  result = objc_opt_new();
  sharedPluginLoader_loader = result;
  return result;
}

+ (id)loadGPUToolsPluginsInMainBundleOnly:(BOOL)only
{
  onlyCopy = only;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (!v5)
  {
    +[DYPluginLoader loadGPUToolsPluginsInMainBundleOnly:];
  }

  v6 = [[DYStandardPluginDirectoryProvider alloc] initWithBundle:v5 includeDeveloperDirectory:!onlyCopy includeBundleDirectory:0];
  v7 = [self loadPluginsWithProvider:v6 pathExtension:@"gtplugin"];

  return v7;
}

+ (BOOL)loadPluginWithBundle:(id)bundle
{
  sharedPluginLoader = [self sharedPluginLoader];

  return [sharedPluginLoader _loadBundle:bundle];
}

+ (id)loadPluginsWithProvider:(id)provider pathExtension:(id)extension
{
  sharedPluginLoader = [self sharedPluginLoader];

  return [sharedPluginLoader _loadPluginsWithProvider:provider pathExtension:extension matchingRegex:0];
}

+ (id)loadLatestPlatformSupportPlugInWithProvider:(id)provider baseExtension:(id)extension
{
  if (getenv("GT_DEVELOPER_DIR"))
  {
    v7 = @"_osx";
  }

  else
  {
    v7 = @"_ios";
  }

  v8 = [extension stringByAppendingString:v7];
  sharedPluginLoader = [self sharedPluginLoader];

  return [sharedPluginLoader loadLatestPlatformSupportPlugInWithProvider:provider baseExtension:extension preferredPluginExtension:v8];
}

- (id)loadLatestPlatformSupportPlugInWithProvider:(id)provider baseExtension:(id)extension preferredPluginExtension:(id)pluginExtension
{
  v9 = [MEMORY[0x277CBEB58] set];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __101__DYPluginLoader_loadLatestPlatformSupportPlugInWithProvider_baseExtension_preferredPluginExtension___block_invoke;
  v17[3] = &unk_279309EF0;
  v17[4] = v9;
  v17[5] = extension;
  v17[8] = &v18;
  v17[9] = &v24;
  v17[6] = @"GPUToolsPlatformSupport-";
  v17[7] = pluginExtension;
  [provider enumerateDirectories:v17];
  v10 = v19[5];
  if (v10 && (v11 = [v10 lastPathComponent]) != 0 && (-[NSMutableSet containsObject:](self->_loadedPluginNames, "containsObject:", v11) & 1) == 0 && (v12 = objc_msgSend(MEMORY[0x277CCA8D8], "bundleWithURL:", v19[5])) != 0 && -[DYPluginLoader _loadBundle:](self, "_loadBundle:", v12))
  {
    v13 = [objc_msgSend(objc_msgSend(v11 "stringByDeletingPathExtension")];
  }

  else
  {
    v13 = 0;
  }

  fileSystemRepresentation = [v19[5] fileSystemRepresentation];
  uTF8String = [v25[5] UTF8String];
  DYLog(*MEMORY[0x277D0B238], "Loaded latest platform-support plug-in '%s' with version %s", fileSystemRepresentation, uTF8String);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
  return v13;
}

void __101__DYPluginLoader_loadLatestPlatformSupportPlugInWithProvider_baseExtension_preferredPluginExtension___block_invoke(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v5 = *MEMORY[0x277CBE868];
  v15 = v4;
  v6 = [v4 contentsOfDirectoryAtURL:a2 includingPropertiesForKeys:objc_msgSend(MEMORY[0x277CBEA60] options:"arrayWithObjects:" error:{*MEMORY[0x277CBE8E8], *MEMORY[0x277CBE868], 0), 0, 0}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v16 = *MEMORY[0x277CBED58];
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v17 = 0;
        [v11 getResourceValue:&v17 forKey:v5 error:0];
        v12 = [v11 lastPathComponent];
        if (([*(a1 + 32) containsObject:v12] & 1) == 0 && objc_msgSend(objc_msgSend(v12, "pathExtension"), "hasPrefix:", *(a1 + 40)) && objc_msgSend(v12, "hasPrefix:", *(a1 + 48)) && objc_msgSend(v17, "BOOLValue"))
        {
          v13 = [(__CFDictionary *)CFBundleCopyInfoDictionaryForURL(v11) objectForKeyedSubscript:v16];
          if (*(*(*(a1 + 64) + 8) + 40))
          {
            v28 = 0u;
            v29 = 0u;
            _LSGetVersionFromString();
            v26 = 0u;
            v27 = 0u;
            _LSGetVersionFromString();
            v24 = v28;
            v25 = v29;
            v22 = v26;
            v23 = v27;
            v14 = _LSVersionNumberCompare();
            if (v14 == 1 || !v14 && [objc_msgSend(v12 "pathExtension")])
            {

              *(*(*(a1 + 64) + 8) + 40) = v11;
              goto LABEL_16;
            }
          }

          else
          {
            *(*(*(a1 + 64) + 8) + 40) = v11;
LABEL_16:
            *(*(*(a1 + 72) + 8) + 40) = [v13 copy];
          }

          [*(a1 + 32) addObject:v12];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v30 count:16];
    }

    while (v8);
  }
}

+ (id)loadPluginsWithProvider:(id)provider pathExtension:(id)extension matchingRegex:(id)regex
{
  sharedPluginLoader = [self sharedPluginLoader];

  return [sharedPluginLoader _loadPluginsWithProvider:provider pathExtension:extension matchingRegex:regex];
}

+ (id)loadPluginsInDirectory:(id)directory pathExtension:(id)extension matchingRegex:(id)regex
{
  sharedPluginLoader = [self sharedPluginLoader];

  return [sharedPluginLoader _loadPluginsInDirectory:directory pathExtension:extension matchingRegex:regex];
}

+ (id)loadPluginsInDirectory:(id)directory pathExtension:(id)extension
{
  sharedPluginLoader = [self sharedPluginLoader];

  return [sharedPluginLoader _loadPluginsInDirectory:directory pathExtension:extension matchingRegex:0];
}

- (DYPluginLoader)init
{
  v4.receiver = self;
  v4.super_class = DYPluginLoader;
  v2 = [(DYPluginLoader *)&v4 init];
  if (v2)
  {
    v2->_loadedPluginNames = objc_opt_new();
    v2->_loading = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYPluginLoader;
  [(DYPluginLoader *)&v3 dealloc];
}

- (BOOL)_loadBundle:(id)bundle
{
  v34 = *MEMORY[0x277D85DE8];
  if (!bundle)
  {
    [DYPluginLoader _loadBundle:];
  }

  v32 = 0;
  v5 = CFBundleCopyInfoDictionaryForURL([bundle bundleURL]);
  if (!v5)
  {
    DYLog(*MEMORY[0x277D0B240], "failed to copy info dictionary");
    return 0;
  }

  v6 = v5;
  v7 = [bundle URLForResource:@"PlugIn" withExtension:@"plist"];
  if (!v7)
  {
    DYLog(*MEMORY[0x277D0B240], "failed to get PlugIn.plist from bundle");
    return 0;
  }

  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v7 options:0 error:&v32];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAC58] propertyListWithData:v8 options:0 format:0 error:&v32];
    if (!v9)
    {
      v10 = *MEMORY[0x277D0B240];
      [objc_msgSend(bundle "bundlePath")];
      [objc_msgSend(v32 "localizedDescription")];
      DYLog(v10, "failed to parse plug-in plist: %s: %s");
      return 0;
    }
  }

  else
  {
    v9 = 0;
  }

  if (_loadBundle__onceToken != -1)
  {
    [DYPluginLoader _loadBundle:];
  }

  if (([bundle loadAndReturnError:&v32] & 1) == 0)
  {
    executablePath = [bundle executablePath];
    if (executablePath)
    {
      v24 = dlopen_preflight([executablePath fileSystemRepresentation]);
      v25 = *MEMORY[0x277D0B240];
      [objc_msgSend(bundle "bundlePath")];
      [objc_msgSend(v32 "localizedDescription")];
      if (v24)
      {
        DYLog(v25, "failed to load: %s: %s");
      }

      else
      {
        dlerror();
        DYLog(v25, "failed to load: %s: %s\n%s");
      }
    }

    else
    {
      v26 = *MEMORY[0x277D0B240];
      [objc_msgSend(bundle "bundlePath")];
      DYLog(v26, "failed to load: %s: Missing executable");
    }

    return 0;
  }

  v11 = [(__CFDictionary *)v6 objectForKey:@"NSPrincipalClass"];
  if (v11)
  {
    v12 = v11;
    if (![bundle principalClass])
    {
      DYLog(*MEMORY[0x277D0B240], "failed to get principal class: plug-in=%s, class=%s", [objc_msgSend(bundle "bundlePath")], objc_msgSend(v12, "UTF8String"));
      [bundle unload];
      return 0;
    }
  }

  if (v9)
  {
    v13 = +[DYExtensionRegistry sharedExtensionRegistry];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = [v9 objectForKey:@"extensions"];
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = [[DYExtension alloc] _initWithDictionary:v19 bundle:bundle];
          if (!v20)
          {
            v27 = *MEMORY[0x277D0B240];
            [objc_msgSend(v19 "description")];
            DYLog(v27, "failed to create extension: %s");
            return 0;
          }

          v21 = v20;
          [v13 registerExtension:v20];
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }
  }

  -[NSMutableSet addObject:](self->_loadedPluginNames, "addObject:", [objc_msgSend(bundle "bundleURL")]);
  return 1;
}

uint64_t __30__DYPluginLoader__loadBundle___block_invoke()
{
  v0 = getenv("LD_LIBRARY_PATH");
  v1 = getenv("DEVELOPER_DIR");
  if (v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v1];
  }

  else
  {
    if (GetXcodeSelectDeveloperPath_onceToken != -1)
    {
      __30__DYPluginLoader__loadBundle___block_invoke_cold_1();
    }

    if (GetXcodeSelectDeveloperPath__XCSelectXCodePath && (v3 = [MEMORY[0x277CCAA00] defaultManager], objc_msgSend(v3, "fileExistsAtPath:", GetXcodeSelectDeveloperPath__XCSelectXCodePath)))
    {
      v2 = GetXcodeSelectDeveloperPath__XCSelectXCodePath;
    }

    else
    {
      v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.dt.Xcode"];
      if (!v4 || (v2 = [objc_msgSend(v4 "bundlePath")], (objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), "fileExistsAtPath:", v2) & 1) == 0))
      {
        v2 = @"/Applications/Xcode.app/Contents/Developer/";
        if (![objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
        {
          v2 = 0;
        }
      }
    }
  }

  if (v0 && *v0)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%@/../SharedFrameworks/", v0, v2];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/../SharedFrameworks/", v2, v8];
  }

  v6 = [v5 UTF8String];

  return setenv("LD_LIBRARY_PATH", v6, 1);
}

- (id)_loadPluginsInDirectory:(id)directory pathExtension:(id)extension matchingRegex:(id)regex
{
  v29 = *MEMORY[0x277D85DE8];
  v21 = [MEMORY[0x277CBEB58] set];
  v9 = objc_opt_new();
  v10 = *MEMORY[0x277CBE868];
  v20 = v9;
  v11 = [v9 contentsOfDirectoryAtURL:directory includingPropertiesForKeys:objc_msgSend(MEMORY[0x277CBEA60] options:"arrayWithObjects:" error:{*MEMORY[0x277CBE8E8], *MEMORY[0x277CBE868], 0), 0, 0}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v22 = *MEMORY[0x277D0B240];
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * v15);
        v23 = 0;
        [v16 getResourceValue:&v23 forKey:v10 error:0];
        if ([objc_msgSend(v16 "pathExtension")] && objc_msgSend(v23, "BOOLValue") && (!regex || objc_msgSend(regex, "numberOfMatchesInString:options:range:", objc_msgSend(v16, "lastPathComponent"), 0, 0, objc_msgSend(objc_msgSend(v16, "lastPathComponent"), "length"))) && (-[NSMutableSet containsObject:](self->_loadedPluginNames, "containsObject:", objc_msgSend(v16, "lastPathComponent")) & 1) == 0)
        {
          v17 = [MEMORY[0x277CCA8D8] bundleWithURL:v16];
          if (v17)
          {
            v18 = v17;
            if ([(DYPluginLoader *)self _loadBundle:v17])
            {
              [v21 addObject:{objc_msgSend(objc_msgSend(v18, "bundleURL"), "lastPathComponent")}];
            }
          }

          else
          {
            DYLog(v22, "failed to create bundle for plug-in: %s", [objc_msgSend(v16 "path")]);
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  return v21;
}

- (id)_loadPluginsWithProvider:(id)provider pathExtension:(id)extension matchingRegex:(id)regex
{
  if (!provider)
  {
    [DYPluginLoader _loadPluginsWithProvider:pathExtension:matchingRegex:];
  }

  if (!extension)
  {
    [DYPluginLoader _loadPluginsWithProvider:pathExtension:matchingRegex:];
  }

  v9 = [MEMORY[0x277CBEB58] set];
  v10 = v9;
  if (!self->_loading)
  {
    self->_loading = 1;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__DYPluginLoader__loadPluginsWithProvider_pathExtension_matchingRegex___block_invoke;
    v12[3] = &unk_279309F18;
    v12[4] = v9;
    v12[5] = self;
    v12[6] = extension;
    v12[7] = regex;
    [provider enumerateDirectories:v12];
    self->_loading = 0;
  }

  return v10;
}

uint64_t __71__DYPluginLoader__loadPluginsWithProvider_pathExtension_matchingRegex___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _loadPluginsInDirectory:a2 pathExtension:*(a1 + 48) matchingRegex:*(a1 + 56)];

  return [v2 unionSet:v3];
}

@end