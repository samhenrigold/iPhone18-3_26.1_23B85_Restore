@interface CWFAssetCreatorFromRoot
- (CWFAssetCreatorFromRoot)initWithPaths:(id)paths;
- (id)availableForUseAttributes;
- (id)loadTopLevelInfoPlistFromPaths:(id)paths;
- (id)newerVersionAttributes;
@end

@implementation CWFAssetCreatorFromRoot

- (CWFAssetCreatorFromRoot)initWithPaths:(id)paths
{
  v40 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v33.receiver = self;
  v33.super_class = CWFAssetCreatorFromRoot;
  v5 = [(CWFAssetCreatorFromRoot *)&v33 init];
  if (!v5)
  {
    v28 = CWFGetOTAOSLog();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 136446722;
    v35 = "[CWFAssetCreatorFromRoot initWithPaths:]";
    v36 = 1024;
    v37 = 27;
    v38 = 2080;
    v39 = "[CWFAssetCreatorFromRoot initWithPaths:]";
    v29 = "%{public}s::%d:%s: Failed to init";
    v30 = v28;
    v31 = OS_LOG_TYPE_ERROR;
    goto LABEL_4;
  }

  v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [(CWFAssetCreatorFromRoot *)v5 setFormatter:v6];

  v7 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  formatter = [(CWFAssetCreatorFromRoot *)v5 formatter];
  [formatter setLocale:v7];

  v9 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"UTC"];
  formatter2 = [(CWFAssetCreatorFromRoot *)v5 formatter];
  [formatter2 setTimeZone:v9];

  formatter3 = [(CWFAssetCreatorFromRoot *)v5 formatter];
  [formatter3 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];

  [(CWFAssetCreatorFromRoot *)v5 setAvailableForUse:0];
  v12 = [(CWFAssetCreatorFromRoot *)v5 loadTopLevelInfoPlistFromPaths:pathsCopy];
  [(CWFAssetCreatorFromRoot *)v5 setInfoPlist:v12];

  infoPlist = [(CWFAssetCreatorFromRoot *)v5 infoPlist];
  v14 = [infoPlist objectForKey:@"CFBundleName"];
  [(CWFAssetCreatorFromRoot *)v5 setAssetSpecifier:v14];

  v15 = MEMORY[0x1E696AEC0];
  infoPlist2 = [(CWFAssetCreatorFromRoot *)v5 infoPlist];
  v17 = [infoPlist2 objectForKey:@"CFBundleVersion"];
  v18 = [v15 stringWithFormat:@"%@.01.0001, 0", v17];
  [(CWFAssetCreatorFromRoot *)v5 setAssetVersion:v18];

  v19 = objc_opt_new();
  [(CWFAssetCreatorFromRoot *)v5 setRootCatalogInfo:v19];

  rootCatalogInfo = [(CWFAssetCreatorFromRoot *)v5 rootCatalogInfo];
  date = [MEMORY[0x1E695DF00] date];
  [rootCatalogInfo setValue:date forKey:@"lastTimeChecked"];

  rootCatalogInfo2 = [(CWFAssetCreatorFromRoot *)v5 rootCatalogInfo];
  creationDate = [(CWFAssetCreatorFromRoot *)v5 creationDate];
  [rootCatalogInfo2 setValue:creationDate forKey:@"postedDate"];

  rootCatalogInfo3 = [(CWFAssetCreatorFromRoot *)v5 rootCatalogInfo];
  formatter4 = [(CWFAssetCreatorFromRoot *)v5 formatter];
  creationDate2 = [(CWFAssetCreatorFromRoot *)v5 creationDate];
  v27 = [formatter4 stringFromDate:creationDate2];
  [rootCatalogInfo3 setValue:v27 forKey:@"RootAssetID"];

  v28 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v35 = "[CWFAssetCreatorFromRoot initWithPaths:]";
    v36 = 1024;
    v37 = 50;
    v38 = 2080;
    v39 = "[CWFAssetCreatorFromRoot initWithPaths:]";
    v29 = "%{public}s::%d:%s: Done";
    v30 = v28;
    v31 = OS_LOG_TYPE_DEFAULT;
LABEL_4:
    _os_log_impl(&dword_1E0BBF000, v30, v31, v29, buf, 0x1Cu);
  }

LABEL_5:

  return v5;
}

- (id)loadTopLevelInfoPlistFromPaths:(id)paths
{
  v41 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v5 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = pathsCopy;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        lastPathComponent = [v11 lastPathComponent];
        v13 = [lastPathComponent isEqualToString:@"Info.plist"];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v8);
  }

  [v5 sortUsingComparator:&unk_1F5B89C10];
  v14 = MEMORY[0x1E695DF20];
  firstObject = [v5 firstObject];
  v16 = [v14 dictionaryWithContentsOfFile:firstObject];

  firstObject2 = [v5 firstObject];

  if (firstObject2)
  {
    v18 = MEMORY[0x1E695DFF8];
    firstObject3 = [v5 firstObject];
    stringByDeletingLastPathComponent = [firstObject3 stringByDeletingLastPathComponent];
    v21 = [v18 fileURLWithPath:stringByDeletingLastPathComponent];
    [(CWFAssetCreatorFromRoot *)self setLocalContentURL:v21];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    firstObject4 = [v5 firstObject];
    v24 = [defaultManager attributesOfItemAtPath:firstObject4 error:0];

    v25 = [v24 objectForKeyedSubscript:*MEMORY[0x1E696A308]];
    [(CWFAssetCreatorFromRoot *)self setCreationDate:v25];

    [(CWFAssetCreatorFromRoot *)self setAvailableForUse:1];
  }

  else
  {
    [(CWFAssetCreatorFromRoot *)self setAvailableForUse:0];
  }

  v26 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446978;
    v33 = "[CWFAssetCreatorFromRoot loadTopLevelInfoPlistFromPaths:]";
    v34 = 1024;
    v35 = 89;
    v36 = 2080;
    v37 = "[CWFAssetCreatorFromRoot loadTopLevelInfoPlistFromPaths:]";
    v38 = 2112;
    v39 = v16;
    _os_log_impl(&dword_1E0BBF000, v26, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%s: Found Info.plist with data: %@", buf, 0x26u);
  }

  return v16;
}

- (id)availableForUseAttributes
{
  infoPlist = [(CWFAssetCreatorFromRoot *)self infoPlist];
  v3 = [infoPlist objectForKeyedSubscript:@"MobileAssetProperties"];

  return v3;
}

- (id)newerVersionAttributes
{
  infoPlist = [(CWFAssetCreatorFromRoot *)self infoPlist];
  v3 = [infoPlist objectForKeyedSubscript:@"MobileAssetProperties"];

  return v3;
}

@end