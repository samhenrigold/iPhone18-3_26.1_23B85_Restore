@interface AppCache
+ (id)appCacheWithRecords:(id)records identifier:(id)identifier groupIdentifiers:(id)identifiers dataContainerURL:(id)l userManagedAssetsURL:(id)rL personaUniqueString:(id)string cacheDeleteVolume:(id)volume isDataseparated:(BOOL)self0 isPlaceholder:(BOOL)self1 isPlugin:(BOOL)self2 telemetry:(id)self3;
+ (id)appCacheWithRecords:(id)records identifier:(id)identifier groupIdentifiers:(id)identifiers dataContainerURL:(id)l userManagedAssetsURL:(id)rL personaUniqueString:(id)string isDataseparated:(BOOL)dataseparated isPlaceholder:(BOOL)self0 isPlugin:(BOOL)self1 telemetry:(id)self2;
+ (void)enumerateAppCachesOnVolume:(id)volume options:(int)options telemetry:(id)telemetry block:(id)block;
+ (void)enumerateGroupCachesOnVolume:(id)volume block:(id)block;
+ (void)enumerateWithContainerQuery:(id)query container_class:(unint64_t)container_class options:(int)options telemetry:(id)telemetry block:(id)block;
- (AppCache)initWithBundleRecords:(id)records identifier:(id)identifier groupIdentifiers:(id)identifiers dataContainerURL:(id)l userManagedAssetsURL:(id)rL personaUniqueString:(id)string cacheDeleteVolume:(id)volume isDataseparated:(BOOL)self0 isPlaceholder:(BOOL)self1 isPlugin:(BOOL)self2 telemetry:(id)self3;
- (BOOL)moveCacheAside:(id)aside;
- (BOOL)validate;
- (id)cachePath;
- (id)description;
- (id)tmpPath;
- (int)urgency;
- (int64_t)three_days_ago;
- (unint64_t)caches:(BOOL)caches purge:(BOOL)purge;
- (unint64_t)clearCaches:(BOOL)caches;
- (unint64_t)tmp:(BOOL)tmp purge:(BOOL)purge all:(BOOL)all;
- (void)addBundleRecord:(id)record;
- (void)addBundleRecords:(id)records;
- (void)invalidate;
- (void)setLastUsedTime:(id)time;
@end

@implementation AppCache

- (id)description
{
  v32 = MEMORY[0x1E696AEC0];
  identifier = [(AppCache *)self identifier];
  urgency = [(AppCache *)self urgency];
  lastUsed = [(AppCache *)self lastUsed];
  v5 = humanReadableNumber([(AppCache *)self caches:0 purge:0]);
  v6 = humanReadableNumber([(AppCache *)self tmp:0 purge:0 all:0]);
  lastKnownFreespace = [(AppCache *)self lastKnownFreespace];
  v38 = humanReadableNumber([lastKnownFreespace unsignedLongLongValue]);
  bundleIdentifiers = [(AppCache *)self bundleIdentifiers];
  allObjects = [bundleIdentifiers allObjects];
  v37 = [allObjects componentsJoinedByString:{@", "}];
  personaUniqueString = [(AppCache *)self personaUniqueString];
  v35 = lastUsed;
  v36 = identifier;
  v34 = v5;
  if (personaUniqueString)
  {
    personaUniqueString2 = [(AppCache *)self personaUniqueString];
  }

  else
  {
    personaUniqueString2 = @"none";
  }

  if ([(AppCache *)self isDataseparated])
  {
    v9 = " Dataseparated ";
  }

  else
  {
    v9 = "";
  }

  if ([(AppCache *)self isPlaceholder])
  {
    v10 = " Placeholder ";
  }

  else
  {
    v10 = "";
  }

  dataContainerURL = [(AppCache *)self dataContainerURL];
  fileSystemRepresentation = [dataContainerURL fileSystemRepresentation];
  userManagedAssetsURL = [(AppCache *)self userManagedAssetsURL];
  if (userManagedAssetsURL)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@", user managed assets: %s", -[NSURL fileSystemRepresentation](self->_userManagedAssetsURL, "fileSystemRepresentation")];
    v27 = fileSystemRepresentation;
    v23 = v9;
    v25 = v10;
    v21 = v6;
    v15 = v6;
    v16 = v34;
    v17 = v35;
    v18 = v36;
    v19 = [v32 stringWithFormat:@"identifier: %@, urgency: %d, lastUsed: %@, cacheSize: %@, tmpSize: %@, freespace: %@ bundleRecords: [ %@ ], persona: %@%s%s, data container: %s%@", v36, urgency, v35, v34, v21, v38, v37, personaUniqueString2, v23, v25, v27, v14];
  }

  else
  {
    v28 = fileSystemRepresentation;
    v24 = v9;
    v26 = v10;
    v22 = v6;
    v15 = v6;
    v16 = v34;
    v17 = v35;
    v18 = v36;
    v19 = [v32 stringWithFormat:@"identifier: %@, urgency: %d, lastUsed: %@, cacheSize: %@, tmpSize: %@, freespace: %@ bundleRecords: [ %@ ], persona: %@%s%s, data container: %s%@", v36, urgency, v35, v34, v22, v38, v37, personaUniqueString2, v24, v26, v28, &stru_1F3876480];
  }

  if (personaUniqueString)
  {
  }

  return v19;
}

- (AppCache)initWithBundleRecords:(id)records identifier:(id)identifier groupIdentifiers:(id)identifiers dataContainerURL:(id)l userManagedAssetsURL:(id)rL personaUniqueString:(id)string cacheDeleteVolume:(id)volume isDataseparated:(BOOL)self0 isPlaceholder:(BOOL)self1 isPlugin:(BOOL)self2 telemetry:(id)self3
{
  v57 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  lCopy = l;
  rLCopy = rL;
  stringCopy = string;
  volumeCopy = volume;
  telemetryCopy = telemetry;
  v52.receiver = self;
  v52.super_class = AppCache;
  v23 = [(AppCache *)&v52 init];
  v24 = v23;
  if (!v23)
  {
    goto LABEL_15;
  }

  if (!recordsCopy || !identifierCopy)
  {
    v30 = CDGetLogHandle("client");
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
LABEL_14:

LABEL_15:
      v34 = 0;
      goto LABEL_16;
    }

    *buf = 67109120;
    v54 = 97;
    v31 = "%d AppCache: cannot create an AppCache without an identifier and LSRecord(s)!";
    v32 = v30;
    v33 = 8;
LABEL_28:
    _os_log_error_impl(&dword_1BA7F1000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
    goto LABEL_14;
  }

  if (lCopy)
  {
    objc_storeStrong(&v23->_dataContainerURL, l);
  }

  dataContainerURL = v24->_dataContainerURL;
  if (!dataContainerURL)
  {
    v30 = CDGetLogHandle("client");
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 67109378;
    v54 = 94;
    v55 = 2112;
    v56 = identifierCopy;
    v31 = "%d AppCache: cannot create an AppCache for %@ without dataContainerURL";
    v32 = v30;
    v33 = 18;
    goto LABEL_28;
  }

  if (volumeCopy)
  {
    if (!initWithBundleRecords_identifier_groupIdentifiers_dataContainerURL_userManagedAssetsURL_personaUniqueString_cacheDeleteVolume_isDataseparated_isPlaceholder_isPlugin_telemetry__cdVolFreespace)
    {
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(volumeCopy, "freespace")}];
      v27 = initWithBundleRecords_identifier_groupIdentifiers_dataContainerURL_userManagedAssetsURL_personaUniqueString_cacheDeleteVolume_isDataseparated_isPlaceholder_isPlugin_telemetry__cdVolFreespace;
      initWithBundleRecords_identifier_groupIdentifiers_dataContainerURL_userManagedAssetsURL_personaUniqueString_cacheDeleteVolume_isDataseparated_isPlaceholder_isPlugin_telemetry__cdVolFreespace = v26;
    }

    v28 = volumeCopy;
    cdVol = v24->_cdVol;
    v24->_cdVol = v28;
  }

  else
  {
    cdVol = [MEMORY[0x1E696AEC0] stringWithUTF8String:{-[NSURL fileSystemRepresentation](dataContainerURL, "fileSystemRepresentation")}];
    v36 = [CacheDeleteVolume volumeWithPath:cdVol];
    v37 = v24->_cdVol;
    v24->_cdVol = v36;
  }

  if (!v24->_cdVol)
  {
    goto LABEL_15;
  }

  if (!plugin)
  {
    objc_storeStrong(&v24->_userManagedAssetsURL, rL);
  }

  v38 = [recordsCopy mutableCopy];
  bundleIdentifiers = v24->_bundleIdentifiers;
  v24->_bundleIdentifiers = v38;

  v40 = identifiersCopy;
  if (identifiersCopy)
  {
    v40 = [identifiersCopy mutableCopy];
  }

  groupContainerIdentifiers = v24->_groupContainerIdentifiers;
  v24->_groupContainerIdentifiers = v40;

  objc_storeStrong(&v24->_identifier, identifier);
  objc_storeStrong(&v24->_personaUniqueString, string);
  v24->_isPlaceholder = placeholder;
  v24->_isPlugin = plugin;
  v42 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[AppCache tmp:purge:all:](v24, "tmp:purge:all:", 0, 0, 0)}];
  lastKnownTmpSize = v24->_lastKnownTmpSize;
  v24->_lastKnownTmpSize = v42;

  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[AppCache caches:purge:](v24, "caches:purge:", 0, 0)}];
  lastKnownCacheSize = v24->_lastKnownCacheSize;
  v24->_lastKnownCacheSize = v44;

  if (initWithBundleRecords_identifier_groupIdentifiers_dataContainerURL_userManagedAssetsURL_personaUniqueString_cacheDeleteVolume_isDataseparated_isPlaceholder_isPlugin_telemetry__cdVolFreespace)
  {
    v46 = initWithBundleRecords_identifier_groupIdentifiers_dataContainerURL_userManagedAssetsURL_personaUniqueString_cacheDeleteVolume_isDataseparated_isPlaceholder_isPlugin_telemetry__cdVolFreespace;
  }

  else
  {
    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CacheDeleteVolume freespace](v24->_cdVol, "freespace")}];
  }

  lastKnownFreespace = v24->_lastKnownFreespace;
  v24->_lastKnownFreespace = v46;

  objc_storeStrong(&v24->_telemetry, telemetry);
  v24->_timestamp = nan("");
  v34 = v24;
LABEL_16:

  return v34;
}

+ (id)appCacheWithRecords:(id)records identifier:(id)identifier groupIdentifiers:(id)identifiers dataContainerURL:(id)l userManagedAssetsURL:(id)rL personaUniqueString:(id)string isDataseparated:(BOOL)dataseparated isPlaceholder:(BOOL)self0 isPlugin:(BOOL)self1 telemetry:(id)self2
{
  v39 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  lCopy = l;
  rLCopy = rL;
  stringCopy = string;
  telemetryCopy = telemetry;
  if (!identifierCopy)
  {
    v26 = CDGetLogHandle("client");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "AppCache: identifier is required";
LABEL_10:
      v29 = v26;
      v30 = 2;
LABEL_11:
      _os_log_error_impl(&dword_1BA7F1000, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
    }

LABEL_13:
    v24 = 0;
    goto LABEL_14;
  }

  if (!lCopy)
  {
    v26 = CDGetLogHandle("client");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "AppCache: dataContainerURL is required";
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  BYTE2(v32) = plugin;
  LOWORD(v32) = __PAIR16__(placeholder, dataseparated);
  v24 = [AppCache initWithBundleRecords:"initWithBundleRecords:identifier:groupIdentifiers:dataContainerURL:userManagedAssetsURL:personaUniqueString:cacheDeleteVolume:isDataseparated:isPlaceholder:isPlugin:telemetry:" identifier:recordsCopy groupIdentifiers:identifierCopy dataContainerURL:identifiersCopy userManagedAssetsURL:lCopy personaUniqueString:rLCopy cacheDeleteVolume:stringCopy isDataseparated:0 isPlaceholder:v32 isPlugin:telemetryCopy telemetry:?];
  v25 = CDGetLogHandle("client");
  v26 = v25;
  if (!v24)
  {
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 138412290;
    v36 = identifierCopy;
    v28 = "AppCache: unable to create AppCache for %@";
    v29 = v26;
    v30 = 12;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(AppCache *)v24 identifier];
    lastKnownCacheSize = [(AppCache *)v24 lastKnownCacheSize];
    v33 = humanReadableNumber([lastKnownCacheSize unsignedLongLongValue]);
    *buf = 138412546;
    v36 = identifier;
    v37 = 2112;
    v38 = v33;
    _os_log_impl(&dword_1BA7F1000, v26, OS_LOG_TYPE_DEFAULT, "AppCache: created an app cache - identifier: %@, cacheSize: %@", buf, 0x16u);
  }

LABEL_14:

  return v24;
}

+ (id)appCacheWithRecords:(id)records identifier:(id)identifier groupIdentifiers:(id)identifiers dataContainerURL:(id)l userManagedAssetsURL:(id)rL personaUniqueString:(id)string cacheDeleteVolume:(id)volume isDataseparated:(BOOL)self0 isPlaceholder:(BOOL)self1 isPlugin:(BOOL)self2 telemetry:(id)self3
{
  v41 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  lCopy = l;
  rLCopy = rL;
  stringCopy = string;
  volumeCopy = volume;
  telemetryCopy = telemetry;
  if (!identifierCopy)
  {
    v28 = CDGetLogHandle("client");
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      v26 = 0;
      v25 = recordsCopy;
      goto LABEL_10;
    }

    *buf = 0;
    v30 = "AppCache: identifier is required";
LABEL_17:
    _os_log_error_impl(&dword_1BA7F1000, v28, OS_LOG_TYPE_ERROR, v30, buf, 2u);
    goto LABEL_9;
  }

  if (!lCopy)
  {
    v28 = CDGetLogHandle("client");
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v30 = "AppCache: dataContainerURL is required";
    goto LABEL_17;
  }

  BYTE2(v32) = plugin;
  LOWORD(v32) = __PAIR16__(placeholder, dataseparated);
  v25 = recordsCopy;
  v26 = [AppCache initWithBundleRecords:"initWithBundleRecords:identifier:groupIdentifiers:dataContainerURL:userManagedAssetsURL:personaUniqueString:cacheDeleteVolume:isDataseparated:isPlaceholder:isPlugin:telemetry:" identifier:recordsCopy groupIdentifiers:identifierCopy dataContainerURL:identifiersCopy userManagedAssetsURL:lCopy personaUniqueString:rLCopy cacheDeleteVolume:stringCopy isDataseparated:volumeCopy isPlaceholder:v32 isPlugin:telemetryCopy telemetry:?];
  v27 = CDGetLogHandle("client");
  v28 = v27;
  if (v26)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      [(AppCache *)v26 identifier];
      v29 = v35 = identifiersCopy;
      lastKnownCacheSize = [(AppCache *)v26 lastKnownCacheSize];
      v33 = humanReadableNumber([lastKnownCacheSize unsignedLongLongValue]);
      *buf = 138412546;
      v38 = v29;
      v39 = 2112;
      v40 = v33;
      _os_log_impl(&dword_1BA7F1000, v28, OS_LOG_TYPE_DEFAULT, "AppCache: created an app cache - identifier: %@, cacheSize: %@", buf, 0x16u);

      identifiersCopy = v35;
    }
  }

  else
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = identifierCopy;
      _os_log_error_impl(&dword_1BA7F1000, v28, OS_LOG_TYPE_ERROR, "AppCache: unable to create AppCache for %@", buf, 0xCu);
    }

    v26 = 0;
  }

LABEL_10:

  return v26;
}

- (void)addBundleRecord:(id)record
{
  recordCopy = record;
  bundleIdentifiers = [(AppCache *)self bundleIdentifiers];
  bundleIdentifier = [recordCopy bundleIdentifier];
  v6 = [bundleIdentifiers containsObject:bundleIdentifier];

  if ((v6 & 1) == 0)
  {
    dataContainerURL = [(AppCache *)self dataContainerURL];
    dataContainerURL2 = [recordCopy dataContainerURL];
    v9 = [dataContainerURL isEqual:dataContainerURL2];

    if (v9)
    {
      bundleIdentifiers2 = [(AppCache *)self bundleIdentifiers];
      bundleIdentifier2 = [recordCopy bundleIdentifier];
      [bundleIdentifiers2 addObject:bundleIdentifier2];
    }
  }
}

- (void)addBundleRecords:(id)records
{
  v14 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [recordsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(recordsCopy);
        }

        [(AppCache *)self addBundleRecord:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [recordsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (int)urgency
{
  lastUsed = [(AppCache *)self lastUsed];
  v3 = urgencyForDate(lastUsed);

  return v3;
}

- (id)cachePath
{
  v2 = MEMORY[0x1E696AEC0];
  dataContainerURL = [(AppCache *)self dataContainerURL];
  v4 = [v2 stringWithUTF8String:{objc_msgSend(dataContainerURL, "fileSystemRepresentation")}];
  v5 = [v4 stringByAppendingPathComponent:@"Library/Caches"];

  return v5;
}

- (id)tmpPath
{
  v2 = MEMORY[0x1E696AEC0];
  dataContainerURL = [(AppCache *)self dataContainerURL];
  v4 = [v2 stringWithUTF8String:{objc_msgSend(dataContainerURL, "fileSystemRepresentation")}];
  v5 = [v4 stringByAppendingPathComponent:@"tmp"];

  return v5;
}

- (void)setLastUsedTime:(id)time
{
  timeCopy = time;
  lastUsed = [(AppCache *)self lastUsed];
  v5 = lastUsed;
  if (!lastUsed || [lastUsed compare:timeCopy] == -1)
  {
    [(AppCache *)self setLastUsed:timeCopy];
  }
}

- (void)invalidate
{
  v3 = nan("");

  [(AppCache *)self setTimestamp:v3];
}

- (BOOL)validate
{
  cachePath = [(AppCache *)self cachePath];
  v4 = access([cachePath UTF8String], 0);

  if (v4)
  {
    return 0;
  }

  [(AppCache *)self timestamp];
  v5 = MEMORY[0x1E695DF00];
  [(AppCache *)self timestamp];
  v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  v7 = validateTimestamp(v6, 3600.0);

  if (!v7)
  {
    return 0;
  }

  cdVol = self->_cdVol;
  lastKnownFreespace = [(AppCache *)self lastKnownFreespace];
  LOBYTE(cdVol) = -[CacheDeleteVolume freespaceIsStale:](cdVol, "freespaceIsStale:", [lastKnownFreespace unsignedLongLongValue]);

  return cdVol ^ 1;
}

- (int64_t)three_days_ago
{
  v9 = *MEMORY[0x1E69E9840];
  v6.tv_sec = 0;
  *&v6.tv_usec = 0;
  if (gettimeofday(&v6, 0))
  {
    v2 = CDGetLogHandle("client");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = __error();
      v5 = strerror(*v4);
      *buf = 136315138;
      v8 = v5;
      _os_log_error_impl(&dword_1BA7F1000, v2, OS_LOG_TYPE_ERROR, "gettimeofday failed: %s", buf, 0xCu);
    }
  }

  return v6.tv_sec - 259200;
}

- (unint64_t)tmp:(BOOL)tmp purge:(BOOL)purge all:(BOOL)all
{
  v28 = *MEMORY[0x1E69E9840];
  if (!all)
  {
    return 0;
  }

  purgeCopy = purge;
  if (!tmp)
  {
    [(AppCache *)self validate];
  }

  v7 = MEMORY[0x1E696AD98];
  tmpPath = [(AppCache *)self tmpPath];
  v9 = [v7 numberWithUnsignedLongLong:{size_dir(objc_msgSend(tmpPath, "UTF8String"))}];
  [(AppCache *)self setLastKnownTmpSize:v9];

  if (!purgeCopy)
  {
    lastKnownTmpSize = [(AppCache *)self lastKnownTmpSize];
    unsignedLongLongValue = [lastKnownTmpSize unsignedLongLongValue];

    return unsignedLongLongValue;
  }

  tmpPath2 = [(AppCache *)self tmpPath];
  v11 = [(AppCache *)self moveCacheAside:tmpPath2];

  if (!v11)
  {
    v12 = CDGetLogHandle("client");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(AppCache *)self identifier];
      v25[0] = 67109378;
      v25[1] = 291;
      v26 = 2112;
      v27 = identifier;
      _os_log_impl(&dword_1BA7F1000, v12, OS_LOG_TYPE_DEFAULT, "%d %@ Unable to move aside tmp, clearing in place", v25, 0x12u);
    }

    tmpPath3 = [(AppCache *)self tmpPath];
    nuke_dir([tmpPath3 UTF8String], 1);
  }

  tmpPath4 = [(AppCache *)self tmpPath];
  v16 = size_dir([tmpPath4 UTF8String]);

  lastKnownTmpSize2 = [(AppCache *)self lastKnownTmpSize];
  unsignedLongLongValue2 = [lastKnownTmpSize2 unsignedLongLongValue];

  if (unsignedLongLongValue2 <= v16)
  {
    v20 = 0;
  }

  else
  {
    lastKnownTmpSize3 = [(AppCache *)self lastKnownTmpSize];
    v20 = [lastKnownTmpSize3 unsignedLongLongValue] - v16;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v16];
  [(AppCache *)self setLastKnownTmpSize:v24];

  return v20;
}

- (BOOL)moveCacheAside:(id)aside
{
  v38 = *MEMORY[0x1E69E9840];
  asideCopy = aside;
  cdVol = [(AppCache *)self cdVol];
  v6 = discardedCachesPathForVolume(cdVol);

  v7 = CDGetLogHandle("client");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 67109378;
    *v35 = 311;
    *&v35[4] = 2112;
    *&v35[6] = v6;
    _os_log_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_DEFAULT, "%d parent discardedCachesPath: %@", &v34, 0x12u);
  }

  if (v6)
  {
    if (!mkdir([v6 UTF8String], 0x1C0u) || *__error() == 17)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v10 = [v6 stringByAppendingPathComponent:uUIDString];

      v11 = CDGetLogHandle("client");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 67109378;
        *v35 = 328;
        *&v35[4] = 2112;
        *&v35[6] = v10;
        _os_log_impl(&dword_1BA7F1000, v11, OS_LOG_TYPE_DEFAULT, "%d child discardedCachesPath: %@", &v34, 0x12u);
      }

      if (mkdir([v10 UTF8String], 0x1C0u) && *__error() != 17)
      {
        v16 = CDGetLogHandle("client");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          uTF8String = [v10 UTF8String];
          v29 = __error();
          v30 = strerror(*v29);
          v34 = 136315394;
          *v35 = uTF8String;
          *&v35[8] = 2080;
          *&v35[10] = v30;
          _os_log_error_impl(&dword_1BA7F1000, v16, OS_LOG_TYPE_ERROR, "mkdir failed for %s : %s", &v34, 0x16u);
        }
      }

      else
      {
        uTF8String2 = [asideCopy UTF8String];
        uTF8String3 = [v10 UTF8String];
        rename(uTF8String2, uTF8String3, v14);
        if (!v15)
        {
          if (!mkdir([asideCopy UTF8String], 0x1C0u))
          {
            v22 = 1;
            goto LABEL_24;
          }

          v16 = CDGetLogHandle("client");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            uTF8String4 = [asideCopy UTF8String];
            v32 = __error();
            v33 = strerror(*v32);
            v34 = 136315394;
            *v35 = uTF8String4;
            *&v35[8] = 2080;
            *&v35[10] = v33;
            _os_log_error_impl(&dword_1BA7F1000, v16, OS_LOG_TYPE_ERROR, "Unable to re-create Caches directory at: %s : %s", &v34, 0x16u);
          }

          v22 = 1;
          goto LABEL_22;
        }

        v16 = CDGetLogHandle("client");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          cachePath = [(AppCache *)self cachePath];
          uTF8String5 = [cachePath UTF8String];
          uTF8String6 = [v10 UTF8String];
          v20 = __error();
          v21 = strerror(*v20);
          v34 = 136315650;
          *v35 = uTF8String5;
          *&v35[8] = 2080;
          *&v35[10] = uTF8String6;
          v36 = 2080;
          v37 = v21;
          _os_log_error_impl(&dword_1BA7F1000, v16, OS_LOG_TYPE_ERROR, "rename failed for %s -> %s : %s", &v34, 0x20u);
        }
      }

      v22 = 0;
LABEL_22:
      v6 = v10;
      goto LABEL_23;
    }

    v16 = CDGetLogHandle("client");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      uTF8String7 = [v6 UTF8String];
      v26 = __error();
      v27 = strerror(*v26);
      v34 = 136315394;
      *v35 = uTF8String7;
      *&v35[8] = 2080;
      *&v35[10] = v27;
      _os_log_error_impl(&dword_1BA7F1000, v16, OS_LOG_TYPE_ERROR, "mkdir failed for %s : %s", &v34, 0x16u);
    }
  }

  else
  {
    v16 = CDGetLogHandle("client");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      mountPoint = [(CacheDeleteVolume *)self->_cdVol mountPoint];
      v34 = 138412290;
      *v35 = mountPoint;
      _os_log_error_impl(&dword_1BA7F1000, v16, OS_LOG_TYPE_ERROR, "AppCache moveCacheAside: Unable to create destination path for mount point: %@", &v34, 0xCu);
    }

    v6 = 0;
  }

  v22 = 0;
LABEL_23:

  v10 = v6;
LABEL_24:

  return v22;
}

- (unint64_t)caches:(BOOL)caches purge:(BOOL)purge
{
  purgeCopy = purge;
  v43 = *MEMORY[0x1E69E9840];
  if (caches)
  {
LABEL_16:
    v26 = MEMORY[0x1E696AD98];
    cachePath = [(AppCache *)self cachePath];
    v28 = [v26 numberWithUnsignedLongLong:{size_dir(objc_msgSend(cachePath, "UTF8String"))}];
    [(AppCache *)self setLastKnownCacheSize:v28];

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    [(AppCache *)self setTimestamp:?];

    if (purgeCopy)
    {
      goto LABEL_5;
    }

LABEL_17:
    lastKnownCacheSize = [(AppCache *)self lastKnownCacheSize];
    unsignedLongLongValue = [lastKnownCacheSize unsignedLongLongValue];
    goto LABEL_18;
  }

  lastKnownCacheSize2 = [(AppCache *)self lastKnownCacheSize];
  if (![lastKnownCacheSize2 unsignedLongLongValue])
  {

    goto LABEL_16;
  }

  validate = [(AppCache *)self validate];

  if (!validate)
  {
    goto LABEL_16;
  }

  if (!purgeCopy)
  {
    goto LABEL_17;
  }

LABEL_5:
  v8 = CDGetLogHandle("client");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(AppCache *)self identifier];
    lastKnownCacheSize3 = [(AppCache *)self lastKnownCacheSize];
    v11 = MEMORY[0x1E695DF00];
    [(AppCache *)self timestamp];
    v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
    v35 = 67109890;
    v36 = 365;
    v37 = 2112;
    v38 = identifier;
    v39 = 2112;
    v40 = lastKnownCacheSize3;
    v41 = 2112;
    v42 = v12;
    _os_log_impl(&dword_1BA7F1000, v8, OS_LOG_TYPE_DEFAULT, "%d %@ purging cache, self.lastKnownCacheSize: %@ at %@", &v35, 0x26u);
  }

  cachePath2 = [(AppCache *)self cachePath];
  v14 = [(AppCache *)self moveCacheAside:cachePath2];

  if (!v14)
  {
    v15 = CDGetLogHandle("client");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [(AppCache *)self identifier];
      v35 = 67109378;
      v36 = 367;
      v37 = 2112;
      v38 = identifier2;
      _os_log_impl(&dword_1BA7F1000, v15, OS_LOG_TYPE_DEFAULT, "%d %@ Unable to move aside cache, clearing in place", &v35, 0x12u);
    }

    cachePath3 = [(AppCache *)self cachePath];
    nuke_dir([cachePath3 UTF8String], 1);
  }

  cachePath4 = [(AppCache *)self cachePath];
  v19 = size_dir([cachePath4 UTF8String]);

  lastKnownCacheSize4 = [(AppCache *)self lastKnownCacheSize];
  unsignedLongLongValue2 = [lastKnownCacheSize4 unsignedLongLongValue];

  if (unsignedLongLongValue2 <= v19)
  {
    unsignedLongLongValue = 0;
  }

  else
  {
    lastKnownCacheSize5 = [(AppCache *)self lastKnownCacheSize];
    unsignedLongLongValue = [lastKnownCacheSize5 unsignedLongLongValue] - v19;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v19];
  [(AppCache *)self setLastKnownCacheSize:v24];

  lastKnownCacheSize = [MEMORY[0x1E695DF00] date];
  [lastKnownCacheSize timeIntervalSinceReferenceDate];
  [(AppCache *)self setTimestamp:?];
LABEL_18:

  telemetry = [(AppCache *)self telemetry];

  if (telemetry)
  {
    v31 = CDGetLogHandle("client");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      if (purgeCopy)
      {
        v32 = " purge";
      }

      else
      {
        v32 = "";
      }

      cachePath5 = [(AppCache *)self cachePath];
      v35 = 67109890;
      v36 = 382;
      v37 = 2080;
      v38 = v32;
      v39 = 2048;
      v40 = unsignedLongLongValue;
      v41 = 2112;
      v42 = cachePath5;
      _os_log_impl(&dword_1BA7F1000, v31, OS_LOG_TYPE_DEFAULT, "%d%s caches result: %llu on %@", &v35, 0x26u);
    }
  }

  return unsignedLongLongValue;
}

- (unint64_t)clearCaches:(BOOL)caches
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  bundleIdentifiers = [(AppCache *)self bundleIdentifiers];
  allObjects = [bundleIdentifiers allObjects];

  v7 = 0;
  v8 = -3;
  *&v9 = 138412290;
  v16 = v9;
  do
  {
    telemetry = [(AppCache *)self telemetry];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __24__AppCache_clearCaches___block_invoke;
    v17[3] = &unk_1E7F02FC0;
    v17[4] = self;
    v17[5] = &v19;
    cachesCopy = caches;
    v11 = assert_group_cache_deletion(telemetry, allObjects, v17, &__block_literal_global_9);

    v12 = CDGetLogHandle("client");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v16;
      v24 = v11;
      _os_log_impl(&dword_1BA7F1000, v12, OS_LOG_TYPE_DEFAULT, "clearCaches assert_group_cache_deletion retryIDs: %@", buf, 0xCu);
    }

    if (__CFADD__(v8++, 1))
    {
      break;
    }

    v7 = v11;
  }

  while ([v11 count]);
  v14 = v20[3];

  _Block_object_dispose(&v19, 8);
  return v14;
}

void __24__AppCache_clearCaches___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) caches:0 purge:1];
  *(*(*(a1 + 40) + 8) + 24) += [*(a1 + 32) tmp:0 purge:1 all:*(a1 + 48)];
  v2 = CDGetLogHandle("client");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 40) + 8) + 24);
    v4 = [*(a1 + 32) identifier];
    v5 = [*(a1 + 32) cachePath];
    v6[0] = 67109890;
    v6[1] = 398;
    v7 = 2048;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1BA7F1000, v2, OS_LOG_TYPE_DEFAULT, "%d clearCaches result: %llu for %@ on %@", v6, 0x26u);
  }
}

void __24__AppCache_clearCaches___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = CDGetLogHandle("client");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v4;
    _os_log_error_impl(&dword_1BA7F1000, v6, OS_LOG_TYPE_ERROR, "AppCache clearCaches: Unable to clear caches for %@ : %@", &v7, 0x16u);
  }
}

+ (void)enumerateWithContainerQuery:(id)query container_class:(unint64_t)container_class options:(int)options telemetry:(id)telemetry block:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  telemetryCopy = telemetry;
  blockCopy = block;
  v12 = objc_autoreleasePoolPush();
  if (container_query_create())
  {
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    listAllPersonaWithAttributes = [mEMORY[0x1E69DF068] listAllPersonaWithAttributes];
    container_query_set_class();
    container_query_operation_set_flags();
    container_query_set_include_other_owners();
    v20 = listAllPersonaWithAttributes;
    v21 = queryCopy;
    v22 = telemetryCopy;
    v23 = blockCopy;
    v15 = listAllPersonaWithAttributes;
    iterate_results_sync = container_query_iterate_results_sync();
    container_query_get_last_error();
    v17 = container_error_copy_unlocalized_description();
    v18 = CDGetLogHandle("client");
    v19 = v18;
    if (iterate_results_sync)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v25 = v17;
        _os_log_debug_impl(&dword_1BA7F1000, v19, OS_LOG_TYPE_DEBUG, "container_query_iterate_results_sync succeeded; %s", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = v17;
      _os_log_error_impl(&dword_1BA7F1000, v19, OS_LOG_TYPE_ERROR, "container_query_iterate_results_sync failed; %s", buf, 0xCu);
    }

    free(v17);
    container_query_free();
  }

  else
  {
    mEMORY[0x1E69DF068] = CDGetLogHandle("client");
    if (os_log_type_enabled(mEMORY[0x1E69DF068], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA7F1000, mEMORY[0x1E69DF068], OS_LOG_TYPE_DEFAULT, "container_query_create failed", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v12);
}

uint64_t __80__AppCache_enumerateWithContainerQuery_container_class_options_telemetry_block___block_invoke(uint64_t a1, uint64_t a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  path = container_get_path();
  v5 = CDGetLogHandle("client");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (path)
  {
    if (v6)
    {
      *buf = 136315138;
      v67 = path;
      _os_log_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_DEFAULT, "path: %s\n", buf, 0xCu);
    }

    v50 = path;

    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:container_get_identifier()];
    persona_unique_string = container_get_persona_unique_string();
    v53 = a1;
    if (persona_unique_string)
    {
      v54 = v5;
      v51 = v3;
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:persona_unique_string];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v9 = *(a1 + 32);
      v10 = [v9 countByEnumeratingWithState:&v61 objects:v70 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = *v62;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v62 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v61 + 1) + 8 * i);
            v16 = [v15 userPersonaUniqueString];
            v17 = [v16 isEqualToString:v8];

            if (v17)
            {
              v12 = [v15 isDataSeparatedPersona];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v61 objects:v70 count:16];
        }

        while (v11);
      }

      else
      {
        v12 = 0;
      }

      v3 = v51;
      v5 = v54;
    }

    else
    {
      v8 = 0;
      v12 = 0;
    }

    v60 = 0;
    v18 = [MEMORY[0x1E6963628] bundleRecordWithBundleIdentifier:v5 allowPlaceholder:1 error:&v60];
    v19 = v60;
    v20 = v19;
    if (!v18 || v19)
    {
      v32 = CDGetLogHandle("client");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v67 = v5;
        v68 = 2112;
        v69 = v20;
        _os_log_error_impl(&dword_1BA7F1000, v32, OS_LOG_TYPE_ERROR, "Unable to create an LSBundleRecord for %@ : %@", buf, 0x16u);
      }
    }

    else
    {
      v21 = [v18 UIBackgroundModes];
      if (([v21 containsObject:@"continuous"]& 1) != 0)
      {
LABEL_51:

        goto LABEL_52;
      }

      v49 = v21;
      v55 = v5;
      v22 = [v18 bundleIdentifier];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || *(v53 + 72) == 3)
      {
        v23 = [v18 containingBundleRecord];
        v24 = [v23 bundleIdentifier];

        v25 = [v18 infoDictionary];
        v26 = [v25 objectForKey:@"NSExtension" ofClass:objc_opt_class()];
        v27 = v26;
        if (v26)
        {
          v28 = [v26 objectForKeyedSubscript:@"CacheDeleteInfo"];

          if (v28)
          {
            v29 = CDGetLogHandle("client");
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_48;
            }

            *buf = 138412290;
            v67 = v24;
            v30 = "skipping CacheDelete extension: %@";
            v31 = v29;
LABEL_47:
            _os_log_impl(&dword_1BA7F1000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, 0xCu);
LABEL_48:

LABEL_49:
            v5 = v55;
            goto LABEL_50;
          }
        }

        v48 = 1;
      }

      else
      {
        v48 = 0;
        v24 = v22;
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v25 = *(v53 + 40);
      v33 = [v25 countByEnumeratingWithState:&v56 objects:v65 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v57;
LABEL_36:
        v36 = 0;
        while (1)
        {
          if (*v57 != v35)
          {
            objc_enumerationMutation(v25);
          }

          if ([v24 containsString:*(*(&v56 + 1) + 8 * v36)])
          {
            break;
          }

          if (v34 == ++v36)
          {
            v34 = [v25 countByEnumeratingWithState:&v56 objects:v65 count:16];
            if (v34)
            {
              goto LABEL_36;
            }

            goto LABEL_42;
          }
        }

        v27 = CDGetLogHandle("client");
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_49;
        }

        v29 = [v18 bundleIdentifier];
        *buf = 138412290;
        v67 = v29;
        v30 = "skipping excluded App %@";
        v31 = v27;
        goto LABEL_47;
      }

LABEL_42:

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v55;
        if ([v18 isPlaceholder])
        {
          v47 = 1;
        }

        else
        {
          v47 = [v18 isSystemPlaceholder];
        }
      }

      else
      {
        v47 = 0;
        v5 = v55;
      }

      v25 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v50 isDirectory:1 relativeToURL:0];
      v38 = 0;
      if ((*(v53 + 80) & 2) != 0)
      {
        user_managed_assets_relative_path = container_get_user_managed_assets_relative_path();
        if (!user_managed_assets_relative_path)
        {
          v27 = CDGetLogHandle("client");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v67 = v5;
            _os_log_debug_impl(&dword_1BA7F1000, v27, OS_LOG_TYPE_DEBUG, "%@ does not have a user managed assets path, skipping", buf, 0xCu);
          }

LABEL_50:

          v21 = v49;
          goto LABEL_51;
        }

        v38 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:user_managed_assets_relative_path isDirectory:1 relativeToURL:v25];
      }

      if (v25)
      {
        v52 = v3;
        v40 = MEMORY[0x1E695DFD8];
        v46 = [v18 bundleIdentifier];
        v41 = [v40 setWithObject:v46];
        v42 = [v18 groupContainerIdentifiers];
        BYTE2(v45) = v48;
        BYTE1(v45) = v47;
        LOBYTE(v45) = v12 & 1;
        v5 = v55;
        v43 = [AppCache appCacheWithRecords:"appCacheWithRecords:identifier:groupIdentifiers:dataContainerURL:userManagedAssetsURL:personaUniqueString:cacheDeleteVolume:isDataseparated:isPlaceholder:isPlugin:telemetry:" identifier:v41 groupIdentifiers:v55 dataContainerURL:v42 userManagedAssetsURL:v25 personaUniqueString:v38 cacheDeleteVolume:v8 isDataseparated:*(v53 + 48) isPlaceholder:v45 isPlugin:*(v53 + 56) telemetry:?];

        if (v43)
        {
          (*(*(v53 + 64) + 16))();
        }

        else
        {
          v44 = CDGetLogHandle("client");
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v67 = v18;
            _os_log_error_impl(&dword_1BA7F1000, v44, OS_LOG_TYPE_ERROR, "Unable to create AppCache for %@", buf, 0xCu);
          }
        }

        v3 = v52;
      }

      v20 = 0;
      v32 = v49;
    }

LABEL_52:
    goto LABEL_53;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_DEFAULT, "data container path is not returned:", buf, 2u);
  }

LABEL_53:

  objc_autoreleasePoolPop(v3);
  return 1;
}

+ (void)enumerateAppCachesOnVolume:(id)volume options:(int)options telemetry:(id)telemetry block:(id)block
{
  v8 = *&options;
  volumeCopy = volume;
  telemetryCopy = telemetry;
  blockCopy = block;
  v13 = objc_autoreleasePoolPush();
  v14 = getRootVolume();
  if (v14)
  {
    [self enumerateWithContainerQuery:volumeCopy container_class:2 options:v8 telemetry:telemetryCopy block:blockCopy];
    if (v8)
    {
      [self enumerateWithContainerQuery:volumeCopy container_class:4 options:v8 telemetry:telemetryCopy block:blockCopy];
    }
  }

  else
  {
    v15 = CDGetLogHandle("client");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_1BA7F1000, v15, OS_LOG_TYPE_ERROR, "No root volume, unable to enumerate apps!", v16, 2u);
    }
  }

  objc_autoreleasePoolPop(v13);
}

+ (void)enumerateGroupCachesOnVolume:(id)volume block:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = getRootVolume();
  if (v8)
  {
    v9 = container_query_create();
    v10 = v9;
    if (volumeCopy)
    {
      v24 = blockCopy;
      v11 = v7;
      empty = xpc_array_create_empty();
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = volumeCopy;
      v14 = [v13 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v27;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v27 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = xpc_string_create([*(*(&v26 + 1) + 8 * i) UTF8String]);
            xpc_array_append_value(empty, v18);
          }

          v15 = [v13 countByEnumeratingWithState:&v26 objects:v32 count:16];
        }

        while (v15);
      }

      v7 = v11;
      blockCopy = v24;
      if (v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      empty = 0;
      if (v9)
      {
LABEL_11:
        container_query_set_class();
        container_query_operation_set_flags();
        if (empty)
        {
          container_query_set_group_identifiers();
        }

        container_query_set_include_other_owners();
        v25 = blockCopy;
        iterate_results_sync = container_query_iterate_results_sync();
        container_query_get_last_error();
        v20 = container_error_copy_unlocalized_description();
        v21 = CDGetLogHandle("client");
        v22 = v21;
        if (iterate_results_sync)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v31 = v20;
            _os_log_debug_impl(&dword_1BA7F1000, v22, OS_LOG_TYPE_DEBUG, "container_query_iterate_results_sync succeeded; %s", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v31 = v20;
          _os_log_error_impl(&dword_1BA7F1000, v22, OS_LOG_TYPE_ERROR, "container_query_iterate_results_sync failed; %s", buf, 0xCu);
        }

        free(v20);
        container_query_free();
        v23 = v25;
LABEL_24:

        goto LABEL_25;
      }
    }

    v23 = CDGetLogHandle("client");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA7F1000, v23, OS_LOG_TYPE_DEFAULT, "container_query_create failed", buf, 2u);
    }

    goto LABEL_24;
  }

  empty = CDGetLogHandle("client");
  if (os_log_type_enabled(empty, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1BA7F1000, empty, OS_LOG_TYPE_ERROR, "No root volume, unable to enumerate apps!", buf, 2u);
  }

LABEL_25:

  objc_autoreleasePoolPop(v7);
}

uint64_t __47__AppCache_enumerateGroupCachesOnVolume_block___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  path = container_get_path();
  if (path)
  {
    v4 = path;
    v5 = CDGetLogHandle("client");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315138;
      v12 = v4;
      _os_log_debug_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_DEBUG, "group path: %s\n", &v11, 0xCu);
    }

    v6 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v4 isDirectory:1 relativeToURL:0];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(v6, "fileSystemRepresentation")}];
    v8 = [v7 stringByAppendingPathComponent:@"Library/Caches"];

    if (size_dir([v8 UTF8String]))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:container_get_identifier()];
      (*(*(a1 + 32) + 16))();
    }
  }

  return 1;
}

@end