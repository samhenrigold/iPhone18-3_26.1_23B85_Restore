@interface GEOResourceManifestManager
+ (id)modernManager;
+ (id)modernManagerNoCreate;
- (BOOL)hasActiveTileGroup;
- (BOOL)hasLoadedActiveTileGroup;
- (BOOL)hasResourceManifest;
- (BOOL)isMuninEnabled;
- (GEOActiveTileGroup)activeTileGroup;
- (id)allResourceNames;
- (void)_buildResourceNamesToPaths;
- (void)_purgeCachedResourceInfo;
- (void)_scheduleCachedResourceInfoPurgeTimer;
- (void)openServerConnection;
@end

@implementation GEOResourceManifestManager

+ (id)modernManager
{
  if (modernManager_once != -1)
  {
    dispatch_once(&modernManager_once, &__block_literal_global_29);
  }

  v3 = _singleton_65172;

  return v3;
}

void __43__GEOResourceManifestManager_modernManager__block_invoke()
{
  os_unfair_lock_lock(&_singletonLock);
  v0 = [GEOResourceManifestManager alloc];
  v1 = [(GEOResourceManifestManager *)&v0->super.isa initWithConfiguration:?];
  v2 = _singleton_65172;
  _singleton_65172 = v1;

  os_unfair_lock_unlock(&_singletonLock);
}

+ (id)modernManagerNoCreate
{
  os_unfair_lock_lock(&_singletonLock);
  v2 = _singleton_65172;
  os_unfair_lock_unlock(&_singletonLock);

  return v2;
}

- (BOOL)hasLoadedActiveTileGroup
{
  os_unfair_lock_lock(&self->_activeTileGroupLock);
  v3 = self->_activeTileGroup != 0;
  os_unfair_lock_unlock(&self->_activeTileGroupLock);
  return v3;
}

- (GEOActiveTileGroup)activeTileGroup
{
  [(GEOResourceManifestManager *)self _scheduleCachedResourceInfoPurgeTimer];

  return [(GEOResourceManifestManager *)self _loadActiveTileGroupIfNecessary:?];
}

- (void)_scheduleCachedResourceInfoPurgeTimer
{
  if (self)
  {
    os_unfair_lock_lock_with_options();
    v2 = *(self + 104);
    os_unfair_lock_unlock((self + 96));
    if (v2 >= 1)
    {
      os_unfair_lock_lock((self + 152));
      v3 = *(self + 168);
      if (v3)
      {
        dispatch_source_cancel(v3);
        v4 = *(self + 168);
        *(self + 168) = 0;
      }

      v5 = geo_dispatch_timer_create_on_qos();
      v6 = *(self + 168);
      *(self + 168) = v5;

      if (*(self + 168))
      {
        dispatch_activate(v5);
      }

      os_unfair_lock_unlock((self + 152));
    }
  }
}

- (BOOL)hasResourceManifest
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = GEOResourceManifestPath(self->_configuration);
  v5 = [defaultManager fileExistsAtPath:v4];

  return v5;
}

- (void)_buildResourceNamesToPaths
{
  v65 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    v2 = *(self + 48);
    if (v2)
    {
      *(self + 48) = 0;
    }

    v3 = *(selfCopy + 56);
    if (v3)
    {
      *(selfCopy + 56) = 0;
    }

    v4 = *(selfCopy + 64);
    if (v4)
    {
      *(selfCopy + 64) = 0;
    }

    v5 = GEOResourcesPath(*(selfCopy + 160));
    if ([v5 length])
    {
      v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:1];
      v7 = [(GEOResourceManifestManager *)selfCopy _loadActiveTileGroupIfNecessary:?];
      v8 = MEMORY[0x1E695DFD8];
      resourceCanonicalNameToFileName = [v7 resourceCanonicalNameToFileName];
      allKeys = [resourceCanonicalNameToFileName allKeys];
      v11 = [v8 setWithArray:allKeys];

      v12 = MEMORY[0x1E695DFD8];
      regionalResourceCanonicalNameToFileName = [v7 regionalResourceCanonicalNameToFileName];
      allValues = [regionalResourceCanonicalNameToFileName allValues];
      v49 = [v12 setWithArray:allValues];

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v16 = [GEOFilePaths pathFor:12];
      v17 = [defaultManager contentsOfDirectoryAtPath:v16 error:0];

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      resourceCanonicalNameToFileName2 = [v7 resourceCanonicalNameToFileName];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __56__GEOResourceManifestManager__buildResourceNamesToPaths__block_invoke;
      v61[3] = &unk_1E7057E60;
      v48 = v6;
      v62 = v48;
      v55 = dictionary;
      v63 = v55;
      [resourceCanonicalNameToFileName2 enumerateKeysAndObjectsUsingBlock:v61];

      if ([v17 count])
      {
        v46 = v5;
        v47 = selfCopy;
        v45 = v11;
        v20 = [v11 mutableCopy];
        regionalResourceCanonicalNameToFileName2 = [v7 regionalResourceCanonicalNameToFileName];
        allKeys2 = [regionalResourceCanonicalNameToFileName2 allKeys];
        v54 = v20;
        [v20 addObjectsFromArray:allKeys2];

        v23 = MEMORY[0x1E695DFF8];
        v24 = [GEOFilePaths pathFor:12];
        v53 = [v23 fileURLWithPath:v24 isDirectory:1];

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        obj = v17;
        v25 = 0x1E695D000uLL;
        v26 = v55;
        v56 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
        if (!v56)
        {
          goto LABEL_23;
        }

        v52 = *v58;
        v50 = v17;
        while (1)
        {
          v27 = 0;
          do
          {
            if (*v58 != v52)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v57 + 1) + 8 * v27);
            v29 = [objc_alloc(*(v25 + 4088)) initFileURLWithPath:v28 isDirectory:0 relativeToURL:v53];
            stringByDeletingPathExtension = [v28 stringByDeletingPathExtension];
            pathExtension = [stringByDeletingPathExtension pathExtension];
            if ([pathExtension length])
            {
              [v26 setObject:v29 forKeyedSubscript:stringByDeletingPathExtension];
            }

            [v26 setObject:v29 forKeyedSubscript:v28];
            [v54 addObject:v28];
            resourceCanonicalNameToFileName3 = [v7 resourceCanonicalNameToFileName];
            v33 = [resourceCanonicalNameToFileName3 objectForKeyedSubscript:v28];
            if (v33)
            {
              v34 = v33;

              v26 = v55;
            }

            else
            {
              [v7 regionalResourceCanonicalNameToFileName];
              v35 = v25;
              v37 = v36 = v7;
              v34 = [v37 objectForKeyedSubscript:v28];

              v7 = v36;
              v25 = v35;
              v17 = v50;

              v26 = v55;
              if (!v34)
              {
                goto LABEL_21;
              }
            }

            [v26 setObject:v29 forKeyedSubscript:v34];

LABEL_21:
            ++v27;
          }

          while (v56 != v27);
          v56 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
          if (!v56)
          {
LABEL_23:

            v11 = [v54 copy];
            v5 = v46;
            selfCopy = v47;
            goto LABEL_25;
          }
        }
      }

      v26 = v55;
LABEL_25:
      v38 = [v26 copy];
      v39 = *(selfCopy + 48);
      *(selfCopy + 48) = v38;

      v40 = *(selfCopy + 56);
      *(selfCopy + 56) = v11;
      v41 = v11;

      v42 = v26;
      v43 = *(selfCopy + 64);
      *(selfCopy + 64) = v49;
      v44 = v49;
    }
  }
}

void __56__GEOResourceManifestManager__buildResourceNamesToPaths__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DFF8];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initFileURLWithPath:v6 isDirectory:0 relativeToURL:*(a1 + 32)];
  [*(a1 + 40) setObject:v8 forKeyedSubscript:v6];

  [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
}

- (void)openServerConnection
{
  os_unfair_lock_lock_with_options();
  v3 = self->_closedCount - 1;
  self->_closedCount = v3;
  os_unfair_lock_unlock(&self->_closedCountLock);
  if (!v3)
  {
    os_unfair_lock_lock(&self->_resourceNamesToPathsLock);
    cachedResourceInfoPurgeTimer = self->_cachedResourceInfoPurgeTimer;
    if (cachedResourceInfoPurgeTimer)
    {
      dispatch_source_cancel(cachedResourceInfoPurgeTimer);
      v5 = self->_cachedResourceInfoPurgeTimer;
      self->_cachedResourceInfoPurgeTimer = 0;
    }

    os_unfair_lock_unlock(&self->_resourceNamesToPathsLock);
    [(GEOResourceManifestServerProxy *)self->_serverProxy openConnection];
    if (self->_needsToLoadTileGroupFromDisk)
    {
      v6 = [(GEOResourceManifestManager *)self _loadActiveTileGroupIfNecessary:?];
    }
  }
}

- (BOOL)isMuninEnabled
{
  if (isMuninEnabled_onceToken != -1)
  {
    dispatch_once(&isMuninEnabled_onceToken, &__block_literal_global_158_64885);
  }

  if (isMuninEnabled_isMuninConfigEnabled != 1)
  {
    return 0;
  }

  activeTileGroup = [(GEOResourceManifestManager *)self activeTileGroup];
  isMuninEnabled = [activeTileGroup isMuninEnabled];

  return isMuninEnabled;
}

void *__44__GEOResourceManifestManager_isMuninEnabled__block_invoke()
{
  result = GEOConfigGetBOOL(6, &MapsFeaturesConfig_IsMuninEnabled_Metadata);
  isMuninEnabled_isMuninConfigEnabled = result;
  return result;
}

- (BOOL)hasActiveTileGroup
{
  activeTileGroup = [(GEOResourceManifestManager *)self activeTileGroup];
  v3 = activeTileGroup != 0;

  return v3;
}

void __56__GEOResourceManifestManager_startObservingDevResources__block_invoke_3(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [v3 fileExistsAtPath:*(a1 + 32)];

    v5 = v4 ^ 1;
    if (((v4 ^ 1) & 1) != 0 || _devResourcesStream)
    {
      if (!_devResourcesStream)
      {
        v5 = 0;
      }

      if (v5 == 1)
      {
        (*(*(a1 + 40) + 16))();
        _stopObservingFolder();
      }
    }

    else
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 32);
      v8 = v7;
      if (!_devResourcesStream)
      {
        v17[0] = v7;
        v9 = MEMORY[0x1E695DEC8];
        v10 = v6;
        v11 = [v9 arrayWithObjects:v17 count:1];
        context.version = 0;
        v12 = [v10 copy];

        context.info = v12;
        context.retain = MEMORY[0x1E695D7C8];
        context.release = MEMORY[0x1E695D7C0];
        context.copyDescription = MEMORY[0x1E695D768];

        v13 = FSEventStreamCreate(0, _eventStreamCallback, &context, v11, 0xFFFFFFFFFFFFFFFFLL, 0.0, 0x10u);
        _devResourcesStream = v13;
        if (v13)
        {
          v14 = v13;
          global_workloop = geo_get_global_workloop();
          FSEventStreamSetDispatchQueue(v14, global_workloop);

          if (!FSEventStreamStart(_devResourcesStream))
          {
            FSEventStreamRelease(_devResourcesStream);
            _devResourcesStream = 0;
          }
        }
      }
    }
  }
}

- (void)_purgeCachedResourceInfo
{
  if (self)
  {
    v2 = objc_autoreleasePoolPush();
    os_unfair_lock_lock((self + 152));
    v3 = *(self + 168);
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = *(self + 168);
      *(self + 168) = 0;
    }

    v5 = *(self + 48);
    *(self + 48) = 0;

    v6 = *(self + 56);
    *(self + 56) = 0;

    v7 = *(self + 64);
    *(self + 64) = 0;

    os_unfair_lock_unlock((self + 152));
    os_unfair_lock_lock_with_options();
    v8 = *(self + 24);
    *(self + 24) = 0;

    v9 = *(self + 32);
    *(self + 32) = 0;

    *(self + 72) = 1;
    os_unfair_lock_unlock((self + 44));

    objc_autoreleasePoolPop(v2);
  }
}

- (id)allResourceNames
{
  os_unfair_lock_lock(&self->_resourceNamesToPathsLock);
  allResourceNames = self->_allResourceNames;
  if (!allResourceNames)
  {
    [(GEOResourceManifestManager *)self _buildResourceNamesToPaths];
    allResourceNames = self->_allResourceNames;
  }

  v4 = allResourceNames;
  os_unfair_lock_unlock(&self->_resourceNamesToPathsLock);
  [(GEOResourceManifestManager *)self _scheduleCachedResourceInfoPurgeTimer];

  return v4;
}

@end