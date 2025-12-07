@interface WKWallpaperRepresentingCollectionsManager
+ (WKWallpaperRepresentingCollectionsManager)defaultManager;
- (WKWallpaperRepresentingCollectionsManager)initWithDownloadManager:(id)manager;
- (id)wallpaperCollectionAtIndex:(int64_t)index;
- (id)wallpaperCollectionWithIdentifier:(id)identifier;
- (int64_t)numberOfWallpaperCollections;
- (void)_loadCollections;
- (void)_loadSystemWallpaperCollections;
@end

@implementation WKWallpaperRepresentingCollectionsManager

- (WKWallpaperRepresentingCollectionsManager)initWithDownloadManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = WKWallpaperRepresentingCollectionsManager;
  v6 = [(WKWallpaperRepresentingCollectionsManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__downloadManager, manager);
    array = [MEMORY[0x1E695DF70] array];
    wallpaperCollections = v7->__wallpaperCollections;
    v7->__wallpaperCollections = array;

    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    wallpaperCollectionLookupTable = v7->__wallpaperCollectionLookupTable;
    v7->__wallpaperCollectionLookupTable = weakToWeakObjectsMapTable;

    [(WKWallpaperRepresentingCollectionsManager *)v7 _loadCollections];
  }

  return v7;
}

- (void)_loadCollections
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = WKLogForCategory(4uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v9 = v5;
    v10 = 2082;
    v11 = "[WKWallpaperRepresentingCollectionsManager _loadCollections]";
    _os_log_impl(&dword_1E4A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}s start.", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__WKWallpaperRepresentingCollectionsManager__loadCollections__block_invoke;
  aBlock[3] = &unk_1E8767070;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  [(WKWallpaperRepresentingCollectionsManager *)self _loadSystemWallpaperCollections];
  v6[2](v6);
}

void __61__WKWallpaperRepresentingCollectionsManager__loadCollections__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = WKLogForCategory(4uLL);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = objc_opt_class();
    v3 = NSStringFromClass(v2);
    v4 = 138543618;
    v5 = v3;
    v6 = 2082;
    v7 = "[WKWallpaperRepresentingCollectionsManager _loadCollections]_block_invoke";
    _os_log_impl(&dword_1E4A23000, v1, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}s complete.", &v4, 0x16u);
  }
}

- (void)_loadSystemWallpaperCollections
{
  v119 = *MEMORY[0x1E69E9840];
  v2 = WKLogForCategory(4uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v114 = "[WKWallpaperRepresentingCollectionsManager _loadSystemWallpaperCollections]";
    _os_log_impl(&dword_1E4A23000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: start.", buf, 0xCu);
  }

  v90 = MGCopyAnswer();
  v3 = WKLogForCategory(4uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v114 = v5;
    v115 = 2114;
    v116 = v90;
    _os_log_impl(&dword_1E4A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Resolving default wallpaper collections for device name '%{public}@'", buf, 0x16u);
  }

  v7 = WKWallpapersBaseURL(v6);
  v91 = [v7 URLByAppendingPathComponent:@"Collections"];

  v8 = MEMORY[0x1E696AEC0];
  lowercaseString = [v90 lowercaseString];
  v10 = [v8 stringWithFormat:@"Collections~%@.plist", lowercaseString];
  v92 = [v91 URLByAppendingPathComponent:v10];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v92 path];
  LOBYTE(v10) = [defaultManager fileExistsAtPath:path];

  if ((v10 & 1) == 0)
  {
    v13 = [v91 URLByAppendingPathComponent:@"Collections.plist"];

    v92 = v13;
  }

  v14 = WKLogForCategory(4uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    path2 = [v92 path];
    *buf = 138543618;
    v114 = v16;
    v115 = 2114;
    v116 = path2;
    _os_log_impl(&dword_1E4A23000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Resolved to default wallpaper collections file at path '%{public}@'", buf, 0x16u);
  }

  v87 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v92];
  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v109 = 0;
  v88 = [defaultManager2 contentsOfDirectoryAtURL:v91 includingPropertiesForKeys:0 options:0 error:&v109];
  v89 = v109;

  if (v89)
  {
    log = WKLogForCategory(4uLL);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      path3 = [v91 path];
      *buf = 138543874;
      v114 = v20;
      v115 = 2114;
      v116 = path3;
      v117 = 2114;
      v118 = v89;
      _os_log_error_impl(&dword_1E4A23000, log, OS_LOG_TYPE_ERROR, "%{public}@: Unable to load contents of directory at path '%{public}@'. Error '%{public}@'.", buf, 0x20u);
    }

    goto LABEL_55;
  }

  log = [MEMORY[0x1E695DF90] dictionary];
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v22 = v88;
  v23 = [v22 countByEnumeratingWithState:&v105 objects:v112 count:16];
  if (v23)
  {
    v24 = *v106;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v106 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v105 + 1) + 8 * i);
        path4 = [v26 path];
        lowercaseString2 = [(WKWallpaperRepresentingCollection *)path4 lowercaseString];
        if (![lowercaseString2 hasSuffix:@"wallpapercollection"])
        {
          goto LABEL_23;
        }

        v29 = [WKWallpaperRepresentingCollection shouldLoadWallpaperCollectionAtURL:v26];

        if (!v29)
        {
          continue;
        }

        v30 = [WKWallpaperRepresentingCollection alloc];
        _downloadManager = [(WKWallpaperRepresentingCollectionsManager *)self _downloadManager];
        path4 = [(WKWallpaperRepresentingCollection *)v30 initWithURL:v26 downloadManager:_downloadManager];

        if (path4)
        {
          v32 = WKLogForCategory(4uLL);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [(WKWallpaperRepresentingCollection *)path4 identifier];
            uUIDString = [identifier UUIDString];
            displayName = [(WKWallpaperRepresentingCollection *)path4 displayName];
            *buf = 136315650;
            v114 = "[WKWallpaperRepresentingCollectionsManager _loadSystemWallpaperCollections]";
            v115 = 2114;
            v116 = uUIDString;
            v117 = 2114;
            v118 = displayName;
            _os_log_impl(&dword_1E4A23000, v32, OS_LOG_TYPE_DEFAULT, "%s: Loaded wallpaper collection (identifier: '%{public}@', displayName: '%{public}@').", buf, 0x20u);
          }

          lowercaseString2 = [(WKWallpaperRepresentingCollection *)path4 identifier];
          uUIDString2 = [lowercaseString2 UUIDString];
          [log setObject:path4 forKeyedSubscript:uUIDString2];

LABEL_23:
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v105 objects:v112 count:16];
    }

    while (v23);
  }

  v37 = WKAppleInternalWallpapersBaseURL();
  v86 = [v37 URLByAppendingPathComponent:@"Collections"];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice sf_isInternalInstall])
  {
    v38 = WKAppleInternalWallpapersBaseURL();
    if (v38)
    {
      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      path5 = [v86 path];
      v41 = [defaultManager3 fileExistsAtPath:path5];

      if (!v41)
      {
        v89 = 0;
        goto LABEL_35;
      }

      defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
      v104 = 0;
      currentDevice = [defaultManager4 contentsOfDirectoryAtURL:v86 includingPropertiesForKeys:0 options:0 error:&v104];
      v89 = v104;

      if (v89)
      {
        v43 = WKLogForCategory(4uLL);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          path6 = [v86 path];
          *buf = 138543874;
          v114 = v45;
          v115 = 2114;
          v116 = path6;
          v117 = 2114;
          v118 = v89;
          _os_log_error_impl(&dword_1E4A23000, v43, OS_LOG_TYPE_ERROR, "%{public}@: Unable to load internal contents of directory at path '%{public}@'. Error '%{public}@'.", buf, 0x20u);
        }

LABEL_72:

        goto LABEL_34;
      }

      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v43 = currentDevice;
      v72 = [v43 countByEnumeratingWithState:&v100 objects:v111 count:16];
      if (!v72)
      {
        goto LABEL_72;
      }

      v73 = *v101;
LABEL_59:
      v74 = 0;
      while (1)
      {
        if (*v101 != v73)
        {
          objc_enumerationMutation(v43);
        }

        v75 = *(*(&v100 + 1) + 8 * v74);
        path7 = [v75 path];
        lowercaseString3 = [(WKWallpaperRepresentingCollection *)path7 lowercaseString];
        if (![lowercaseString3 hasSuffix:@"wallpapercollection"])
        {
          goto LABEL_68;
        }

        v78 = [WKWallpaperRepresentingCollection shouldLoadWallpaperCollectionAtURL:v75];

        if (v78)
        {
          break;
        }

LABEL_70:
        if (v72 == ++v74)
        {
          v72 = [v43 countByEnumeratingWithState:&v100 objects:v111 count:16];
          if (!v72)
          {
            goto LABEL_72;
          }

          goto LABEL_59;
        }
      }

      v79 = [WKWallpaperRepresentingCollection alloc];
      _downloadManager2 = [(WKWallpaperRepresentingCollectionsManager *)self _downloadManager];
      path7 = [(WKWallpaperRepresentingCollection *)v79 initWithURL:v75 downloadManager:_downloadManager2];

      if (path7)
      {
        v81 = WKLogForCategory(4uLL);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          identifier2 = [(WKWallpaperRepresentingCollection *)path7 identifier];
          uUIDString3 = [identifier2 UUIDString];
          displayName2 = [(WKWallpaperRepresentingCollection *)path7 displayName];
          *buf = 136315650;
          v114 = "[WKWallpaperRepresentingCollectionsManager _loadSystemWallpaperCollections]";
          v115 = 2114;
          v116 = uUIDString3;
          v117 = 2114;
          v118 = displayName2;
          _os_log_impl(&dword_1E4A23000, v81, OS_LOG_TYPE_DEFAULT, "%s: Loaded internal wallpaper collection (identifier: '%{public}@', displayName: '%{public}@').", buf, 0x20u);
        }

        lowercaseString3 = [(WKWallpaperRepresentingCollection *)path7 identifier];
        uUIDString4 = [lowercaseString3 UUIDString];
        [log setObject:path7 forKeyedSubscript:uUIDString4];

LABEL_68:
      }

      goto LABEL_70;
    }
  }

  v89 = 0;
LABEL_34:

LABEL_35:
  objc_opt_class();
  v47 = [v87 objectForKeyedSubscript:@"order"];
  if (objc_opt_isKindOfClass())
  {
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  v49 = v48;

  if (!v49)
  {
    v50 = MEMORY[0x1E695DF30];
    v51 = MEMORY[0x1E696AEC0];
    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    v55 = path8 = [v92 path];
    v56 = [v50 exceptionWithName:*MEMORY[0x1E695D940] reason:v55 userInfo:0];

    [v56 raise];
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v57 = v49;
  v58 = [v57 countByEnumeratingWithState:&v96 objects:v110 count:16];
  if (v58)
  {
    v59 = *v97;
    do
    {
      for (j = 0; j != v58; ++j)
      {
        if (*v97 != v59)
        {
          objc_enumerationMutation(v57);
        }

        v61 = *(*(&v96 + 1) + 8 * j);
        v62 = [log objectForKeyedSubscript:v61];
        v63 = v62;
        if (v62 && [v62 numberOfWallpapers] >= 1)
        {
          v64 = WKLogForCategory(4uLL);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            identifier3 = [v63 identifier];
            uUIDString5 = [identifier3 UUIDString];
            displayName3 = [v63 displayName];
            *buf = 136315650;
            v114 = "[WKWallpaperRepresentingCollectionsManager _loadSystemWallpaperCollections]";
            v115 = 2114;
            v116 = uUIDString5;
            v117 = 2114;
            v118 = displayName3;
            _os_log_impl(&dword_1E4A23000, v64, OS_LOG_TYPE_DEFAULT, "%s: Adding wallpaper collection (identifier: '%{public}@', displayName: '%{public}@').", buf, 0x20u);
          }

          _wallpaperCollections = [(WKWallpaperRepresentingCollectionsManager *)self _wallpaperCollections];
          [_wallpaperCollections na_safeAddObject:v63];

          _wallpaperCollectionLookupTable = [(WKWallpaperRepresentingCollectionsManager *)self _wallpaperCollectionLookupTable];
          identifier4 = [v63 identifier];
          [_wallpaperCollectionLookupTable setObject:v63 forKey:identifier4];
        }

        else
        {
          _wallpaperCollectionLookupTable = WKLogForCategory(4uLL);
          if (os_log_type_enabled(_wallpaperCollectionLookupTable, OS_LOG_TYPE_DEFAULT))
          {
            displayName4 = [v63 displayName];
            *buf = 136315650;
            v114 = "[WKWallpaperRepresentingCollectionsManager _loadSystemWallpaperCollections]";
            v115 = 2114;
            v116 = v61;
            v117 = 2114;
            v118 = displayName4;
            _os_log_impl(&dword_1E4A23000, _wallpaperCollectionLookupTable, OS_LOG_TYPE_DEFAULT, "%s: Skipping empty wallpaper collection (identifier: '%{public}@', displayName: '%{public}@').", buf, 0x20u);
          }
        }
      }

      v58 = [v57 countByEnumeratingWithState:&v96 objects:v110 count:16];
    }

    while (v58);
  }

LABEL_55:
  __76__WKWallpaperRepresentingCollectionsManager__loadSystemWallpaperCollections__block_invoke();
}

void __76__WKWallpaperRepresentingCollectionsManager__loadSystemWallpaperCollections__block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = WKLogForCategory(4uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446210;
    v2 = "[WKWallpaperRepresentingCollectionsManager _loadSystemWallpaperCollections]_block_invoke";
    _os_log_impl(&dword_1E4A23000, v0, OS_LOG_TYPE_DEFAULT, "%{public}s: complete.", &v1, 0xCu);
  }
}

+ (WKWallpaperRepresentingCollectionsManager)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[WKWallpaperRepresentingCollectionsManager defaultManager];
  }

  v3 = defaultManager__defaultWallpaperCollectionsManager;

  return v3;
}

void __59__WKWallpaperRepresentingCollectionsManager_defaultManager__block_invoke()
{
  v0 = [WKWallpaperRepresentingCollectionsManager alloc];
  v3 = +[WKWallpaperBundleDownloadManager defaultManager];
  v1 = [(WKWallpaperRepresentingCollectionsManager *)v0 initWithDownloadManager:v3];
  v2 = defaultManager__defaultWallpaperCollectionsManager;
  defaultManager__defaultWallpaperCollectionsManager = v1;
}

- (int64_t)numberOfWallpaperCollections
{
  _wallpaperCollections = [(WKWallpaperRepresentingCollectionsManager *)self _wallpaperCollections];
  v3 = [_wallpaperCollections count];

  return v3;
}

- (id)wallpaperCollectionAtIndex:(int64_t)index
{
  _wallpaperCollections = [(WKWallpaperRepresentingCollectionsManager *)self _wallpaperCollections];
  v5 = [_wallpaperCollections objectAtIndexedSubscript:index];

  return v5;
}

- (id)wallpaperCollectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _wallpaperCollectionLookupTable = [(WKWallpaperRepresentingCollectionsManager *)self _wallpaperCollectionLookupTable];
  v6 = [_wallpaperCollectionLookupTable objectForKey:identifierCopy];

  return v6;
}

@end