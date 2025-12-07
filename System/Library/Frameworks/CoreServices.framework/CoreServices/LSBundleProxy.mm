@interface LSBundleProxy
+ (BOOL)canInstantiateFromDatabase;
+ (LSBundleProxy)bundleProxyWithAuditToken:(id *)token error:(id *)error;
+ (id)bundleProxyForCurrentProcess;
+ (id)bundleProxyForIdentifier:(id)identifier;
+ (id)bundleProxyForURL:(id)l error:(id *)error;
+ (void)clearBundleProxyForCurrentProcess;
- (BOOL)_hasAssociatedPersonas;
- (BOOL)isEqual:(id)equal;
- (LSBundleProxy)initWithCoder:(id)coder;
- (NSDictionary)entitlements;
- (NSString)canonicalExecutablePath;
- (NSString)localizedShortName;
- (NSURL)appStoreReceiptURL;
- (NSURL)containerURL;
- (id)_initWithBundleUnit:(unsigned int)unit context:(LSContext *)context bundleType:(unint64_t)type bundleID:(id)d localizedName:(id)name bundleContainerURL:(id)l dataContainerURL:(id)rL resourcesDirectoryURL:(id)self0 iconsDictionary:(id)self1 iconFileNames:(id)self2 version:(id)self3;
- (id)_stringLocalizerForTable:(id)table;
- (id)appStoreReceiptName;
- (id)entitlementValueForKey:(id)key ofClass:(Class)class valuesOfClass:(Class)ofClass;
- (id)entitlementValuesForKeys:(id)keys;
- (id)localizedName;
- (id)localizedValuesForKeys:(id)keys fromTable:(id)table;
- (id)objectForInfoDictionaryKey:(id)key ofClass:(Class)class valuesOfClass:(Class)ofClass;
- (id)objectsForInfoDictionaryKeys:(id)keys;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSBundleProxy

+ (BOOL)canInstantiateFromDatabase
{
  MayMapDatabase = _LSCurrentProcessMayMapDatabase();
  if (MayMapDatabase)
  {
    LOBYTE(MayMapDatabase) = !+[_LSQueryContext simulateLimitedMappingForXCTests];
  }

  return MayMapDatabase;
}

- (NSString)canonicalExecutablePath
{
  bundleExecutable = [(LSBundleProxy *)self bundleExecutable];

  if (bundleExecutable)
  {
    bundleURL = [(LSBundleProxy *)self bundleURL];

    if (bundleURL)
    {
      v7 = objc_alloc(MEMORY[0x1E695DFF8]);
      bundleExecutable2 = [(LSBundleProxy *)self bundleExecutable];
      bundleURL2 = [(LSBundleProxy *)self bundleURL];
      uRLByResolvingSymlinksInPath = [bundleURL2 URLByResolvingSymlinksInPath];
      v11 = [v7 initFileURLWithPath:bundleExecutable2 isDirectory:0 relativeToURL:uRLByResolvingSymlinksInPath];
      path = [v11 path];

      goto LABEL_9;
    }

    v13 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [LSBundleProxy canonicalExecutablePath];
    }
  }

  else
  {
    v13 = _LSDefaultLog(v4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [LSBundleProxy canonicalExecutablePath];
    }
  }

  path = 0;
LABEL_9:

  return path;
}

+ (id)bundleProxyForCurrentProcess
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&currentLock);
  bundleIdentifier = [current bundleIdentifier];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier2 = [mainBundle bundleIdentifier];

  if (!current)
  {
    goto LABEL_17;
  }

  v6 = [bundleIdentifier isEqual:bundleIdentifier2];
  if ((v6 & 1) == 0)
  {
    v7 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = bundleIdentifier;
      v20 = 2112;
      v21 = bundleIdentifier2;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Current bundle's identifier changed from %@ to %@", buf, 0x16u);
    }

    v8 = current;
    current = 0;
  }

  v9 = current;
  if (!current)
  {
LABEL_17:
    if (_LSCurrentProcessMayMapDatabase())
    {
      v10 = +[LSBundleRecord bundleRecordForCurrentProcess];
      compatibilityObject = [v10 compatibilityObject];
      v12 = current;
      current = compatibilityObject;
    }

    else
    {
      v10 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
      [v10 getBundleProxyForCurrentProcessWithCompletionHandler:&__block_literal_global_21];
    }

    v9 = current;
    if (current)
    {
      v13 = dispatch_time(0, 5000000000);
      v14 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__LSBundleProxy_bundleProxyForCurrentProcess__block_invoke_22;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = self;
      dispatch_after(v13, v14, block);

      v9 = current;
    }
  }

  v15 = v9;

  os_unfair_lock_unlock(&currentLock);

  return v15;
}

- (id)localizedName
{
  os_unfair_lock_lock(&localizedNameLock);
  v6.receiver = self;
  v6.super_class = LSBundleProxy;
  localizedName = [(LSResourceProxy *)&v6 localizedName];
  os_unfair_lock_unlock(&localizedNameLock);
  if (!localizedName)
  {
    localizedName = [(LSBundleProxy *)self _localizedNameWithPreferredLocalizations:0 useShortNameOnly:0];
    if (localizedName)
    {
      os_unfair_lock_lock(&localizedNameLock);
      v4 = [localizedName copy];
      [(LSResourceProxy *)self _setLocalizedName:v4];

      os_unfair_lock_unlock(&localizedNameLock);
    }
  }

  return localizedName;
}

+ (void)clearBundleProxyForCurrentProcess
{
  os_unfair_lock_lock(&currentLock);
  v2 = current;
  current = 0;

  os_unfair_lock_unlock(&currentLock);
}

- (NSURL)appStoreReceiptURL
{
  dataContainerURL = [(LSBundleProxy *)self dataContainerURL];
  v4 = [dataContainerURL URLByAppendingPathComponent:@"StoreKit" isDirectory:1];

  if (v4)
  {
    appStoreReceiptName = [(LSBundleProxy *)self appStoreReceiptName];
    v6 = [v4 URLByAppendingPathComponent:appStoreReceiptName isDirectory:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)appStoreReceiptName
{
  if ([(LSBundleProxy *)self profileValidated])
  {
    return @"sandboxReceipt";
  }

  else
  {
    return @"receipt";
  }
}

+ (id)bundleProxyForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![self canInstantiateFromDatabase])
  {
    v5 = [LSApplicationProxy applicationProxyForIdentifier:identifierCopy];
    goto LABEL_11;
  }

  v10.db = 0;
  if (!_LSContextInit(&v10.db))
  {
    v6 = _LSFindBundleWithInfo_NoIOFiltered(&v10, 1uLL, identifierCopy, 0, 0, 0, 0, 0, 0);
    v9 = v6;
    if (v6 || (v6 = _LSFindBundleWithInfo_NoIOFiltered(&v10, 3uLL, identifierCopy, 0, 0, 0, 0, 0, 0), (v9 = v6) != 0))
    {
      v7 = [LSApplicationProxy applicationProxyWithBundleUnitID:v6 withContext:&v10];
    }

    else
    {
      v9 = _LSFindBundleWithInfo_NoIOFiltered(&v10, 5uLL, identifierCopy, 0, 0, 0, 0, 0, 0);
      if (v9)
      {
        v7 = [LSVPNPluginProxy VPNPluginProxyForIdentifier:identifierCopy withContext:&v10];
      }

      else
      {
        if (!_LSPluginFindWithInfo(v10.db, 0, identifierCopy, 3, 0, &v9, 0))
        {
          v5 = 0;
          goto LABEL_9;
        }

        v7 = [LSPlugInKitProxy plugInKitProxyForPlugin:v9 withContext:&v10];
      }
    }

    v5 = v7;
LABEL_9:
    _LSContextDestroy(&v10.db);
    goto LABEL_10;
  }

  v5 = 0;
LABEL_10:

LABEL_11:

  return v5;
}

+ (id)bundleProxyForURL:(id)l error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([self canInstantiateFromDatabase])
  {
    v13.db = 0;
    if (!_LSContextInitReturningError(&v13.db, error))
    {
      v8 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v7 = _LSFindBundleWithInfo_NoIOFiltered(&v13, 0, 0, 0, lCopy, 0, 0, 0, error);
    if (v7)
    {
      v8 = [LSApplicationProxy applicationProxyWithBundleUnitID:v7 withContext:&v13];
LABEL_17:
      _LSContextDestroy(&v13.db);
      goto LABEL_18;
    }

    v9 = [[FSNode alloc] initWithURL:lCopy flags:0 error:error];
    if (v9)
    {
      v12 = 0;
      if (_LSPluginFindWithInfo(v13.db, 0, 0, 0, v9, &v12, error))
      {
        v8 = [LSPlugInKitProxy plugInKitProxyForPlugin:v12 withContext:&v13];
LABEL_16:

        goto LABEL_17;
      }

      v10 = _LSDefaultLog(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = lCopy;
        _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "no registered bundle with URL %@", buf, 0xCu);
      }
    }

    v8 = 0;
    goto LABEL_16;
  }

  __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();
  __LAUNCH_SERVICES_IS_ABORTING_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();
  if (error)
  {
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "+[LSBundleProxy bundleProxyForURL:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSBundleProxy.m", 291);
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_19:

  return v8;
}

void __45__LSBundleProxy_bundleProxyForCurrentProcess__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LSDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__LSBundleProxy_bundleProxyForCurrentProcess__block_invoke_cold_1();
  }
}

void __45__LSBundleProxy_bundleProxyForCurrentProcess__block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    objc_storeStrong(&current, a2);
  }

  else
  {
    v8 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __45__LSBundleProxy_bundleProxyForCurrentProcess__block_invoke_cold_1();
    }
  }
}

void __45__LSBundleProxy_bundleProxyForCurrentProcess__block_invoke_22(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) clearBundleProxyForCurrentProcess];

  objc_autoreleasePoolPop(v2);
}

+ (LSBundleProxy)bundleProxyWithAuditToken:(id *)token error:(id *)error
{
  v4 = *&token->var0[4];
  v8[0] = *token->var0;
  v8[1] = v4;
  v5 = [LSBundleRecord bundleRecordForAuditToken:v8 error:error];
  compatibilityObject = [v5 compatibilityObject];

  return compatibilityObject;
}

- (id)_initWithBundleUnit:(unsigned int)unit context:(LSContext *)context bundleType:(unint64_t)type bundleID:(id)d localizedName:(id)name bundleContainerURL:(id)l dataContainerURL:(id)rL resourcesDirectoryURL:(id)self0 iconsDictionary:(id)self1 iconFileNames:(id)self2 version:(id)self3
{
  v17 = *&unit;
  v117 = *MEMORY[0x1E69E9840];
  dCopy = d;
  nameCopy = name;
  lCopy = l;
  rLCopy = rL;
  v19 = v17;
  uRLCopy = uRL;
  newValue = dictionary;
  namesCopy = names;
  versionCopy = version;
  v89 = versionCopy;
  if (v17)
  {
    if (context)
    {
      contextCopy = context;
      v96 = _LSDatabaseGetCacheGUID(context->db);
      SequenceNumber = _LSDatabaseGetSequenceNumber(context->db);
      v24 = _LSBundleGet(context->db, v17);
      v26 = dCopy;
      if (v24)
      {
        v27 = v24;
        v28 = v19;
        v29 = (v24 + 276);
        v85 = *(v24 + 284);
        v30 = *(v24 + 172);
        if (*v24)
        {
          *buf = 0;
          v31 = 0;
          if (!_LSBundleCopyNode(contextCopy->db, v28, 0, 0, buf))
          {
            v31 = [*buf URL];
          }

          v79 = v27[188];
          if (!uRLCopy && v31)
          {
            v24 = v31;
            v31 = v24;
            uRLCopy = v24;
          }
        }

        else
        {
          v31 = 0;
          v79 = v24[188];
        }

        v95 = v31;
        v83 = contextCopy;
        if (!rLCopy)
        {
          if (*(v27 + 24) && ([__LSDefaultsGetSharedInstance(v24 v25)] & 1) == 0)
          {
            db = contextCopy->db;
            v53 = *(v27 + 24);
            v112 = 0;
            v54 = _LSAliasCopyResolvedNode(db, v53, 0, 0, &v112);
            v55 = v112;
            v56 = v55;
            if (!v54)
            {
              v57 = nameCopy;
              v58 = _LSDefaultLog(v55);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                v78 = *(v27 + 24);
                *buf = 134218498;
                *&buf[4] = v78;
                *&buf[12] = 2048;
                *&buf[14] = v28;
                *&buf[22] = 2112;
                *&buf[24] = v56;
                _os_log_error_impl(&dword_18162D000, v58, OS_LOG_TYPE_ERROR, "Couldn't copy data container alias %lu for bundle %lu: %@", buf, 0x20u);
              }

              nameCopy = v57;
              contextCopy = v83;
            }

            rLCopy = [v54 URL];
          }

          else
          {
            rLCopy = 0;
          }
        }

        if (!newValue)
        {
          newValue = [_LSLazyPropertyList lazyPropertyListWithContext:contextCopy unit:*(v27 + 114)];
        }

        if (!namesCopy)
        {
          if (*(v27 + 115))
          {
            v59 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
            [(_LSDatabase *)contextCopy->db store];
            v105 = MEMORY[0x1E69E9820];
            v106 = 3221225472;
            v107 = __175__LSBundleProxy__initWithBundleUnit_context_bundleType_bundleID_localizedName_bundleContainerURL_dataContainerURL_resourcesDirectoryURL_iconsDictionary_iconFileNames_version___block_invoke;
            v108 = &unk_1E6A1AD88;
            v111 = contextCopy;
            v60 = v59;
            v109 = v60;
            v110 = dCopy;
            _CSArrayEnumerateAllValues();
            if ([v60 count])
            {
              namesCopy = v60;
            }

            else
            {
              namesCopy = 0;
            }

            contextCopy = v83;
          }

          else
          {
            namesCopy = 0;
          }
        }

        if (!lCopy)
        {
          v61 = *(v27 + 127);
          if (v61)
          {
            v62 = _LSAliasCopyResolvedNode(contextCopy->db, v61, 0, 0, 0);
            lCopy = [v62 URL];
          }

          else
          {
            lCopy = 0;
          }
        }

        v92 = uRLCopy;
        v82 = nameCopy;
        unsignedLongLongValue = *v29;
        [(_LSDatabase *)contextCopy->db store];
        v80 = _CSStringCopyCFString();
        v63 = *(v27 + 76);
        *buf = *(v27 + 60);
        *&buf[16] = v63;
        v94 = _LSVersionNumberGetStringRepresentation(buf);
        v84 = (v30 >> 38) & 1;
        v93 = [_LSLazyPropertyList lazyPropertyListWithContext:contextCopy unit:*(v27 + 34)];
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v81 = v27;
        v64 = _LSDatabaseGetStringArray(contextCopy->db, *(v27 + 23));
        v65 = [v64 countByEnumeratingWithState:&v101 objects:v115 count:16];
        if (v65)
        {
          v66 = v65;
          array = 0;
          v67 = *v102;
          do
          {
            for (i = 0; i != v66; ++i)
            {
              if (*v102 != v67)
              {
                objc_enumerationMutation(v64);
              }

              v69 = *(*(&v101 + 1) + 8 * i);
              v70 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v69];
              if (v70)
              {
                if (!array)
                {
                  array = [MEMORY[0x1E695DF70] array];
                }

                [array addObject:v70];
              }

              else
              {
                v71 = _LSDefaultLog(0);
                if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v69;
                  _os_log_impl(&dword_18162D000, v71, OS_LOG_TYPE_DEFAULT, "Launch Services: Failed to create a UUID from invalid string %@", buf, 0xCu);
                }
              }
            }

            v66 = [v64 countByEnumeratingWithState:&v101 objects:v115 count:16];
          }

          while (v66);
        }

        else
        {
          array = 0;
        }

        v37 = [_LSLazyPropertyList lazyPropertyListWithContext:v83 unit:*(v81 + 35)];
        v40 = (v79 >> 1) & 1;
        v41 = 1;
        v26 = dCopy;
        v42 = lCopy;
        nameCopy = v82;
        v39 = v80;
      }

      else
      {
        v92 = uRLCopy;
        v51 = _LSDefaultLog(0);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          *&buf[4] = dCopy;
          *&buf[12] = 2112;
          *&buf[14] = v96;
          *&buf[22] = 2048;
          *&buf[24] = SequenceNumber;
          _os_log_error_impl(&dword_18162D000, v51, OS_LOG_TYPE_ERROR, "LaunchServices: _LSBundleGet() failed, can't create LSBundleProxy for %@ {%@ %llu}", buf, 0x20u);
        }

        unsignedLongLongValue = SequenceNumber;

        v37 = 0;
        array = 0;
        v93 = 0;
        v94 = 0;
        v39 = 0;
        LOBYTE(v84) = 0;
        v85 = 0;
        LOBYTE(v40) = 0;
        v95 = 0;
        v41 = 1;
        v42 = lCopy;
      }
    }

    else
    {
      v92 = uRLCopy;
      v43 = _LSDefaultLog(versionCopy);
      v26 = dCopy;
      v42 = lCopy;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [LSBundleProxy _initWithBundleUnit:v17 context:v43 bundleType:v44 bundleID:v45 localizedName:v46 bundleContainerURL:v47 dataContainerURL:v48 resourcesDirectoryURL:v49 iconsDictionary:? iconFileNames:? version:?];
      }

      v95 = 0;
      v96 = 0;
      v37 = 0;
      array = 0;
      v93 = 0;
      v94 = 0;
      v39 = 0;
      LOBYTE(v84) = 0;
      v85 = 0;
      unsignedLongLongValue = 0;
      LOBYTE(v40) = 0;
      v41 = 1;
    }
  }

  else
  {
    v32 = nameCopy;
    v33 = +[LSApplicationWorkspace defaultWorkspace];
    v113 = 0;
    v114 = 0;
    [v33 getKnowledgeUUID:&v114 andSequenceNumber:&v113];
    v96 = v114;
    v34 = v113;

    unsignedLongLongValue = [v34 unsignedLongLongValue];
    if (type == 6)
    {
      v36 = uRLCopy;
      v37 = 0;
      array = 0;
      v93 = 0;
      v94 = 0;
      v39 = 0;
      LOBYTE(v40) = 0;
      LOBYTE(v84) = 1;
      v85 = 0;
      v41 = 1;
      v95 = v36;
      v92 = v36;
      nameCopy = v32;
      v26 = dCopy;
      v42 = lCopy;
    }

    else
    {
      v92 = uRLCopy;
      v50 = _LSDefaultLog(v35);
      v26 = dCopy;
      v42 = lCopy;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        *&buf[4] = dCopy;
        *&buf[12] = 2112;
        *&buf[14] = v96;
        *&buf[22] = 2048;
        *&buf[24] = unsignedLongLongValue;
        _os_log_debug_impl(&dword_18162D000, v50, OS_LOG_TYPE_DEBUG, "LaunchServices: failed to find bundle record for %@ {%@ %llu}", buf, 0x20u);
      }

      v37 = 0;
      array = 0;
      v93 = 0;
      v94 = 0;
      v39 = 0;
      LOBYTE(v84) = 0;
      v85 = 0;
      v41 = 0;
      LOBYTE(v40) = 0;
      v95 = 0;
      nameCopy = v32;
    }
  }

  v100.receiver = self;
  v100.super_class = LSBundleProxy;
  v72 = [(LSResourceProxy *)&v100 _initWithLocalizedName:nameCopy];
  v73 = v72;
  if (v72)
  {
    objc_storeStrong(v72 + 6, d);
    objc_storeStrong(v73 + 7, v95);
    objc_storeStrong(v73 + 8, v39);
    objc_storeStrong(v73 + 9, v42);
    *(v73 + 40) = v41;
    objc_storeStrong(v73 + 10, version);
    objc_storeStrong(v73 + 12, v96);
    v73[13] = unsignedLongLongValue;
    *(v73 + 41) = v84;
    v74 = v73[4];
    v73[4] = 0;

    objc_storeStrong(v73 + 16, v93);
    objc_storeStrong(v73 + 14, array);
    objc_storeStrong(v73 + 11, v94);
    objc_storeStrong(v73 + 17, v37);
    v73[15] = v85;
    if (IconServicesLibrary_frameworkLibrary_1 || (IconServicesLibrary_frameworkLibrary_1 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0)
    {
      _boundIconInfo = [v73 _boundIconInfo];
      [_boundIconInfo setApplicationIdentifier:v26];
      [(_LSBoundIconInfo *)_boundIconInfo setContainerURL:v42];
      [(_LSBoundIconInfo *)_boundIconInfo setDataContainerURL:rLCopy];
      [_boundIconInfo setResourcesDirectoryURL:v92];
      [(_LSBoundIconInfo *)_boundIconInfo setIconsDictionary:?];
      [(_LSBoundIconInfo *)_boundIconInfo setCacheKey:?];
      [(_LSBoundIconInfo *)_boundIconInfo setFileNames:namesCopy];
      [(_LSBoundIconInfo *)_boundIconInfo setPrerendered:v40];
    }
  }

  v76 = v73;

  return v76;
}

void __175__LSBundleProxy__initWithBundleUnit_context_bundleType_bundleID_localizedName_bundleContainerURL_dataContainerURL_resourcesDirectoryURL_iconsDictionary_iconFileNames_version___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  [(_LSDatabase *)**(a1 + 48) store];
  v4 = _CSStringCopyCFString();
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v5 = _LSDefaultLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "Invaid icon file name saved for app %@", &v7, 0xCu);
    }
  }
}

- (LSBundleProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = LSBundleProxy;
  v5 = [(LSResourceProxy *)&v29 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v8;

    v10 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v10;

    v12 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleExecutable"];
    bundleExecutable = v5->_bundleExecutable;
    v5->_bundleExecutable = v12;

    v14 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleContainerURL"];
    bundleContainerURL = v5->_bundleContainerURL;
    v5->_bundleContainerURL = v14;

    v5->_sequenceNumber = [coderCopy decodeInt64ForKey:@"sequenceNumber"];
    v5->_compatibilityState = [coderCopy decodeInt64ForKey:@"compatibilityState"];
    v5->_foundBackingBundle = [coderCopy decodeBoolForKey:@"foundBundle"];
    v16 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"cacheGUID"];
    cacheGUID = v5->_cacheGUID;
    v5->_cacheGUID = v16;

    v5->_containerized = [coderCopy decodeBoolForKey:@"isContainerized"];
    v18 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"localizedShortName"];
    localizedShortName = v5->_localizedShortName;
    v5->_localizedShortName = v18;

    v20 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"infoDictionary"];
    infoDictionary = v5->__infoDictionary;
    v5->__infoDictionary = v20;

    v22 = [coderCopy ls_decodeArrayWithValuesOfClass:objc_opt_class() forKey:@"machOUUIDs"];
    machOUUIDs = v5->_machOUUIDs;
    v5->_machOUUIDs = v22;

    v24 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"sdkVersion"];
    sdkVersion = v5->_sdkVersion;
    v5->_sdkVersion = v24;

    v26 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"entitlements"];
    entitlements = v5->__entitlements;
    v5->__entitlements = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = LSBundleProxy;
  coderCopy = coder;
  [(LSResourceProxy *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:{@"bundleIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_bundleURL forKey:@"bundleURL"];
  [coderCopy encodeObject:self->_bundleVersion forKey:@"bundleVersion"];
  [coderCopy encodeObject:self->_bundleExecutable forKey:@"bundleExecutable"];
  [coderCopy encodeObject:self->_bundleContainerURL forKey:@"bundleContainerURL"];
  [coderCopy encodeInt64:self->_sequenceNumber forKey:@"sequenceNumber"];
  [coderCopy encodeInt64:self->_compatibilityState forKey:@"compatibilityState"];
  [coderCopy encodeBool:self->_foundBackingBundle forKey:@"foundBundle"];
  [coderCopy encodeObject:self->_cacheGUID forKey:@"cacheGUID"];
  [coderCopy encodeBool:self->_containerized forKey:@"isContainerized"];
  [coderCopy encodeObject:self->_localizedShortName forKey:@"localizedShortName"];
  [coderCopy encodeObject:self->__infoDictionary forKey:@"infoDictionary"];
  [coderCopy encodeObject:self->_machOUUIDs forKey:@"machOUUIDs"];
  [coderCopy encodeObject:self->_sdkVersion forKey:@"sdkVersion"];
  [coderCopy encodeObject:self->__entitlements forKey:@"entitlements"];
}

- (NSURL)containerURL
{
  dataContainerURL = [(LSBundleProxy *)self dataContainerURL];

  if (dataContainerURL)
  {
    dataContainerURL2 = [(LSBundleProxy *)self dataContainerURL];
  }

  else
  {
    bundleURL = [(LSBundleProxy *)self bundleURL];
    bundleIdentifier = [(LSBundleProxy *)self bundleIdentifier];
    path = [bundleURL path];
    if (([path hasPrefix:@"/var/mobile/Applications/"] & 1) != 0 || objc_msgSend(path, "hasPrefix:", @"/private/var/mobile/Applications/"))
    {
      v8 = objc_alloc(MEMORY[0x1E695DFF8]);
      stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
      dataContainerURL2 = [v8 initFileURLWithPath:stringByDeletingLastPathComponent isDirectory:1];
    }

    else
    {
      dataContainerURL2 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/var/mobile/" isDirectory:1];
    }
  }

  return dataContainerURL2;
}

- (BOOL)_hasAssociatedPersonas
{
  _managedPersonas = [(LSBundleProxy *)self _managedPersonas];
  v3 = [_managedPersonas count] != 0;

  return v3;
}

- (NSDictionary)entitlements
{
  _entitlements = [(LSBundleProxy *)self _entitlements];
  propertyList = [(_LSLazyPropertyList *)_entitlements propertyList];

  return propertyList;
}

- (id)entitlementValuesForKeys:(id)keys
{
  keysCopy = keys;
  if (!keysCopy)
  {
    [LSBundleProxy entitlementValuesForKeys:];
  }

  v5 = [LSBundleInfoCachedValues alloc];
  _entitlements = [(LSBundleProxy *)self _entitlements];
  v7 = [_entitlements uncheckedObjectsForKeys:keysCopy];
  v8 = [(LSBundleInfoCachedValues *)v5 _initWithKeys:keysCopy forDictionary:v7];

  return v8;
}

- (id)entitlementValueForKey:(id)key ofClass:(Class)class valuesOfClass:(Class)ofClass
{
  keyCopy = key;
  if (!keyCopy)
  {
    [LSBundleProxy entitlementValueForKey:ofClass:valuesOfClass:];
  }

  _entitlements = [(LSBundleProxy *)self _entitlements];
  v10 = [_entitlements objectForKey:keyCopy checkingKeyClass:class checkingValueClass:ofClass];

  return v10;
}

- (id)objectsForInfoDictionaryKeys:(id)keys
{
  keysCopy = keys;
  if (!keysCopy)
  {
    [LSBundleProxy objectsForInfoDictionaryKeys:];
  }

  v5 = [LSBundleInfoCachedValues alloc];
  _infoDictionary = [(LSBundleProxy *)self _infoDictionary];
  v7 = [_infoDictionary uncheckedObjectsForKeys:keysCopy];
  v8 = [(LSBundleInfoCachedValues *)v5 _initWithKeys:keysCopy forDictionary:v7];

  return v8;
}

- (id)objectForInfoDictionaryKey:(id)key ofClass:(Class)class valuesOfClass:(Class)ofClass
{
  keyCopy = key;
  if (!keyCopy)
  {
    [LSBundleProxy objectForInfoDictionaryKey:ofClass:valuesOfClass:];
  }

  _infoDictionary = [(LSBundleProxy *)self _infoDictionary];
  v10 = [_infoDictionary objectForKey:keyCopy checkingKeyClass:class checkingValueClass:ofClass];

  return v10;
}

- (id)_stringLocalizerForTable:(id)table
{
  tableCopy = table;
  v5 = [_LSStringLocalizer alloc];
  bundleURL = [(LSBundleProxy *)self bundleURL];
  v7 = [(_LSStringLocalizer *)v5 initWithBundleURL:bundleURL stringsFile:tableCopy];

  return v7;
}

- (id)localizedValuesForKeys:(id)keys fromTable:(id)table
{
  keysCopy = keys;
  tableCopy = table;
  if (!keysCopy)
  {
    [LSBundleProxy localizedValuesForKeys:fromTable:];
  }

  v8 = objc_autoreleasePoolPush();
  bundleURL = [(LSBundleProxy *)self bundleURL];
  v10 = [FSNode canReadURL:bundleURL fromSandboxWithAuditToken:0];

  v11 = 0;
  if (v10)
  {
    if (tableCopy)
    {
      v12 = tableCopy;
    }

    else
    {
      v12 = @"InfoPlist";
    }

    v13 = [(LSBundleProxy *)self _stringLocalizerForTable:v12];
    v14 = [v13 localizedStringsWithStrings:keysCopy preferredLocalizations:0];
    if (v14)
    {
      v11 = [[LSBundleInfoCachedValues alloc] _initWithKeys:keysCopy forDictionary:v14];
    }

    else
    {
      v11 = 0;
    }
  }

  objc_autoreleasePoolPop(v8);

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    bundleType = [(LSBundleProxy *)v6 bundleType];
    bundleType2 = [(LSBundleProxy *)self bundleType];
    v9 = [bundleType isEqual:bundleType2];

    if (v9)
    {
      _valueForEqualityTesting = [(LSBundleProxy *)self _valueForEqualityTesting];
      _valueForEqualityTesting2 = [(LSBundleProxy *)v6 _valueForEqualityTesting];
      v12 = [_valueForEqualityTesting isEqual:_valueForEqualityTesting2];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  _valueForEqualityTesting = [(LSBundleProxy *)self _valueForEqualityTesting];
  v3 = [_valueForEqualityTesting hash];

  return v3;
}

- (NSString)localizedShortName
{
  os_unfair_lock_lock(&localizedNameLock);
  v3 = self->_localizedShortName;
  os_unfair_lock_unlock(&localizedNameLock);
  if (!v3)
  {
    v3 = [(LSBundleProxy *)self _localizedNameWithPreferredLocalizations:0 useShortNameOnly:1];
    if (v3)
    {
      os_unfair_lock_lock(&localizedNameLock);
      v4 = [(NSString *)v3 copy];
      localizedShortName = self->_localizedShortName;
      self->_localizedShortName = v4;

      os_unfair_lock_unlock(&localizedNameLock);
    }
  }

  return v3;
}

- (void)_initWithBundleUnit:(uint64_t)a3 context:(uint64_t)a4 bundleType:(uint64_t)a5 bundleID:(uint64_t)a6 localizedName:(uint64_t)a7 bundleContainerURL:(uint64_t)a8 dataContainerURL:resourcesDirectoryURL:iconsDictionary:iconFileNames:version:.cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a2, a3, "LaunchServices: requested bundle proxy with unit ID %llx but no context", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)entitlementValuesForKeys:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"keys != nil" object:? file:? lineNumber:? description:?];
}

- (void)entitlementValueForKey:ofClass:valuesOfClass:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"key != nil" object:? file:? lineNumber:? description:?];
}

- (void)objectsForInfoDictionaryKeys:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"keys != nil" object:? file:? lineNumber:? description:?];
}

- (void)objectForInfoDictionaryKey:ofClass:valuesOfClass:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"key != nil" object:? file:? lineNumber:? description:?];
}

- (void)localizedValuesForKeys:fromTable:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"keys != nil" object:? file:? lineNumber:? description:?];
}

@end