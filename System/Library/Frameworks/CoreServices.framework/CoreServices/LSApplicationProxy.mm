@interface LSApplicationProxy
+ (id)applicationProxyForBundleType:(unint64_t)type identifier:(id)identifier isCompanion:(BOOL)companion URL:(id)l itemID:(id)d bundleUnit:(unsigned int *)unit;
+ (id)applicationProxyForCompanionIdentifier:(id)identifier;
+ (id)applicationProxyForIdentifier:(id)identifier placeholder:(BOOL)placeholder;
+ (id)applicationProxyForIdentifier:(id)identifier withContext:(LSContext *)context;
+ (id)applicationProxyForItemID:(id)d;
+ (id)applicationProxyForSystemPlaceholder:(id)placeholder;
+ (id)applicationProxyWithBundleUnitID:(unsigned int)d withContext:(LSContext *)context;
- (BOOL)gameCenterEverEnabled;
- (BOOL)getGenericTranslocationTargetURL:(id *)l error:(id *)error;
- (BOOL)isDeviceBasedVPP;
- (BOOL)isGameCenterEnabled;
- (BOOL)isInstalled;
- (BOOL)isPlaceholder;
- (BOOL)isPurchasedReDownload;
- (BOOL)isRestricted;
- (BOOL)isWhitelisted;
- (BOOL)respondsToSelector:(SEL)selector;
- (LSApplicationProxy)initWithCoder:(id)coder;
- (NSArray)activityTypes;
- (NSArray)plugInKitPlugins;
- (NSArray)requiredDeviceCapabilities;
- (NSArray)subgenres;
- (NSNumber)ODRDiskUsage;
- (NSNumber)betaExternalVersionIdentifier;
- (NSNumber)downloaderDSID;
- (NSNumber)dynamicDiskUsage;
- (NSNumber)externalVersionIdentifier;
- (NSNumber)familyID;
- (NSNumber)genreID;
- (NSNumber)installFailureReason;
- (NSNumber)itemID;
- (NSNumber)platform;
- (NSNumber)purchaserDSID;
- (NSNumber)ratingRank;
- (NSNumber)staticDiskUsage;
- (NSNumber)storeFront;
- (NSProgress)installProgress;
- (NSSet)claimedDocumentContentTypes;
- (NSSet)claimedURLSchemes;
- (NSString)appIDPrefix;
- (NSString)applicationDSID;
- (NSString)applicationVariant;
- (NSString)genre;
- (NSString)itemName;
- (NSString)ratingLabel;
- (NSString)sourceAppIdentifier;
- (NSString)storeCohortMetadata;
- (NSString)vendorName;
- (_LSApplicationState)appState;
- (id)_initWithBundleUnit:(unsigned int)unit context:(LSContext *)context bundleIdentifier:(id)identifier;
- (id)_initWithContext:(LSContext *)context bundleUnit:(unsigned int)unit applicationRecord:(id)record bundleID:(id)d resolveAndDetach:(BOOL)detach;
- (id)_stringLocalizerForTable:(id)table;
- (id)bundleType;
- (id)description;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)handlerRankOfClaimForContentType:(id)type;
- (id)iconDataForVariant:(int)variant withOptions:(int)options;
- (id)installProgressSync;
- (id)localizedNameForContext:(id)context preferredLocalizations:(id)localizations useShortNameOnly:(BOOL)only;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)primaryIconDataForVariant:(int)variant;
- (int64_t)deviceManagementPolicy;
- (unint64_t)installType;
- (void)detach;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSApplicationProxy

- (_LSApplicationState)appState
{
  applicationState = [(LSApplicationRecord *)self->_record applicationState];
  v4 = applicationState;
  if (applicationState)
  {
    v5 = applicationState;
  }

  else
  {
    v6 = [_LSApplicationState alloc];
    bundleIdentifier = [(LSBundleProxy *)self bundleIdentifier];
    v5 = [(_LSApplicationState *)v6 initWithBundleIdentifier:bundleIdentifier stateFlags:0 ratingRank:0 installType:0];
  }

  return v5;
}

- (id)bundleType
{
  typeForInstallMachinery = [(LSApplicationRecord *)self->_record typeForInstallMachinery];
  if (!typeForInstallMachinery)
  {
    if ([(LSApplicationProxy *)self isInstalled])
    {
      typeForInstallMachinery = @"User";
    }

    else
    {
      typeForInstallMachinery = 0;
    }
  }

  return typeForInstallMachinery;
}

- (NSArray)plugInKitPlugins
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  plugInKitPlugins = selfCopy->_plugInKitPlugins;
  if (!plugInKitPlugins)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __38__LSApplicationProxy_plugInKitPlugins__block_invoke;
    v13 = &unk_1E6A18F50;
    v14 = selfCopy;
    v5 = v4;
    v15 = v5;
    __LSRECORD_IS_CONSTRUCTING_A_COMPATIBILITY_OBJECT__(&v10);
    v6 = [v5 copy];
    v7 = selfCopy->_plugInKitPlugins;
    selfCopy->_plugInKitPlugins = v6;

    plugInKitPlugins = selfCopy->_plugInKitPlugins;
  }

  v8 = plugInKitPlugins;
  objc_sync_exit(selfCopy);

  return v8;
}

void __38__LSApplicationProxy_plugInKitPlugins__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(*(a1 + 32) + 160) applicationExtensionRecords];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) uniqueIdentifier];
        v8 = [LSPlugInKitProxy pluginKitProxyForUUID:v7];

        if (v8)
        {
          [*(a1 + 40) addObject:v8];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (NSArray)activityTypes
{
  userActivityTypes = [(LSApplicationRecord *)self->_record userActivityTypes];
  allObjects = [userActivityTypes allObjects];

  return allObjects;
}

- (NSString)genre
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  genre = [iTunesMetadata genre];

  return genre;
}

- (NSNumber)genreID
{
  v2 = MEMORY[0x1E696AD98];
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "genreIdentifier")}];

  return v4;
}

- (NSArray)subgenres
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  subgenres = [iTunesMetadata subgenres];

  return subgenres;
}

- (int64_t)deviceManagementPolicy
{
  if (DeviceManagementLibrary_frameworkLibrary || (result = dlopen("/System/Library/PrivateFrameworks/DeviceManagement.framework/DeviceManagement", 2), (DeviceManagementLibrary_frameworkLibrary = result) != 0))
  {
    bundleIdentifier = [(LSBundleProxy *)self bundleIdentifier];
    v6 = _LSGetDMFPolicy(bundleIdentifier, v5);

    return v6;
  }

  return result;
}

- (BOOL)isPlaceholder
{
  appState = [(LSApplicationProxy *)self appState];
  isPlaceholder = [appState isPlaceholder];

  return isPlaceholder;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = LSApplicationProxy;
  v4 = [(LSApplicationProxy *)&v11 description];
  bundleIdentifier = [(LSBundleProxy *)self bundleIdentifier];
  bundleURL = [(LSBundleProxy *)self bundleURL];
  appState = [(LSApplicationProxy *)self appState];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[LSApplicationProxy installType](self, "installType")}];
  v9 = [v3 stringWithFormat:@"%@ %@ %@ <%@:%@>", v4, bundleIdentifier, bundleURL, appState, v8];

  return v9;
}

- (unint64_t)installType
{
  if (![(LSApplicationProxy *)self isPlaceholder])
  {
    return 0;
  }

  return [(LSApplicationProxy *)self originalInstallType];
}

+ (id)applicationProxyWithBundleUnitID:(unsigned int)d withContext:(LSContext *)context
{
  v4 = 0;
  if (d && context)
  {
    v6 = *&d;
    if (_LSBundleGet(context->db, *&d))
    {
      [(_LSDatabase *)context->db store];
      v8 = _CSStringCopyCFString();
      v4 = [[self alloc] _initWithBundleUnit:v6 context:context bundleIdentifier:v8];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)applicationProxyForIdentifier:(id)identifier withContext:(LSContext *)context
{
  identifierCopy = identifier;
  if (context)
  {
    v7 = _LSFindBundleWithInfo(context, 0, identifierCopy, 0, 0, 0, 0);
  }

  else
  {
    v7 = 0;
  }

  v8 = [[self alloc] _initWithBundleUnit:v7 context:context bundleIdentifier:identifierCopy];

  return v8;
}

+ (id)applicationProxyForBundleType:(unint64_t)type identifier:(id)identifier isCompanion:(BOOL)companion URL:(id)l itemID:(id)d bundleUnit:(unsigned int *)unit
{
  companionCopy = companion;
  identifierCopy = identifier;
  lCopy = l;
  dCopy = d;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__1;
  v41 = __Block_byref_object_dispose__1;
  v42 = 0;
  if (!identifierCopy || companionCopy || ([self canInstantiateFromDatabase] & 1) != 0)
  {
    v35.db = 0;
    if (_LSContextInit(&v35.db))
    {
      LODWORD(v17) = 0;
    }

    else
    {
      if (dCopy)
      {
        unsignedLongLongValue = [dCopy unsignedLongLongValue];
      }

      else
      {
        unsignedLongLongValue = 0;
      }

      v17 = _LSFindBundleWithInfo(&v35, type, identifierCopy, companionCopy, lCopy, unsignedLongLongValue, 0);
      v27 = [self alloc];
      if (companionCopy)
      {
        v28 = 0;
      }

      else
      {
        v28 = identifierCopy;
      }

      v29 = [v27 _initWithBundleUnit:v17 context:&v35 bundleIdentifier:v28];
      v30 = v38[5];
      v38[5] = v29;

      _LSContextDestroy(&v35.db);
    }
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v21 = [identifierCopy isEqual:bundleIdentifier];

    if (v21)
    {
      v23 = _LSDefaultLog(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [LSApplicationProxy applicationProxyForBundleType:v23 identifier:? isCompanion:? URL:? itemID:? bundleUnit:?];
      }

      __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();
      __LAUNCH_SERVICES_IS_ABORTING_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();
      v24 = +[LSBundleProxy bundleProxyForCurrentProcess];
      if (v24)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(v38 + 5, v24);
        }
      }
    }

    if (!v38[5])
    {
      v25 = [_LSApplicationProxyForIdentifierQuery queryWithIdentifier:identifierCopy];
      v26 = +[_LSQueryContext defaultContext];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __97__LSApplicationProxy_applicationProxyForBundleType_identifier_isCompanion_URL_itemID_bundleUnit___block_invoke;
      v36[3] = &unk_1E6A18F00;
      v36[4] = &v37;
      [v26 enumerateResolvedResultsOfQuery:v25 withBlock:v36];
    }

    LODWORD(v17) = 0;
  }

  if (!v38[5])
  {
    v31 = [self applicationProxyForIdentifier:identifierCopy withContext:0];
    v32 = v38[5];
    v38[5] = v31;
  }

  if (unit)
  {
    *unit = v17;
  }

  v33 = v38[5];
  _Block_object_dispose(&v37, 8);

  return v33;
}

+ (id)applicationProxyForIdentifier:(id)identifier placeholder:(BOOL)placeholder
{
  if (placeholder)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  return [self applicationProxyForBundleType:v5 identifier:identifier isCompanion:0 URL:0 itemID:0 bundleUnit:0];
}

+ (id)applicationProxyForCompanionIdentifier:(id)identifier
{
  v5 = 0;
  v3 = [self applicationProxyForBundleType:0 identifier:identifier isCompanion:1 URL:0 itemID:0 bundleUnit:&v5];
  if (v3 && !v5)
  {

    v3 = 0;
  }

  return v3;
}

+ (id)applicationProxyForSystemPlaceholder:(id)placeholder
{
  v12 = *MEMORY[0x1E69E9840];
  placeholderCopy = placeholder;
  v9 = 0;
  v5 = [self applicationProxyForBundleType:7 identifier:placeholderCopy isCompanion:0 URL:0 itemID:0 bundleUnit:&v9];
  v6 = v5;
  if (v5 && !v9)
  {
    v7 = _LSDefaultLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = placeholderCopy;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "No system placeholder found with identifier %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)applicationProxyForItemID:(id)d
{
  v5 = 0;
  v3 = [self applicationProxyForBundleType:1 identifier:0 isCompanion:0 URL:0 itemID:d bundleUnit:&v5];
  if (v3 && !v5)
  {

    v3 = 0;
  }

  return v3;
}

- (id)_initWithContext:(LSContext *)context bundleUnit:(unsigned int)unit applicationRecord:(id)record bundleID:(id)d resolveAndDetach:(BOOL)detach
{
  detachCopy = detach;
  v53 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  dCopy = d;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3812000000;
  v48 = __Block_byref_object_copy__6;
  v49 = __Block_byref_object_dispose__7;
  v50 = 256;
  v51 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  if (recordCopy)
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __94__LSApplicationProxy__initWithContext_bundleUnit_applicationRecord_bundleID_resolveAndDetach___block_invoke;
    v40[3] = &unk_1E6A18F28;
    v40[4] = &v45;
    v40[5] = &v41;
    [recordCopy _performBlockWithContext:v40];
  }

  _iconFileNames = [recordCopy _iconFileNames];
  v10 = objc_autoreleasePoolPush();
  infoDictionary = [recordCopy infoDictionary];
  v12 = [infoDictionary objectForKey:@"CFBundleIcons" ofClass:objc_opt_class()];

  if (v12)
  {
    v32 = [_LSLazyPropertyList lazyPropertyListWithPropertyList:v12];
  }

  else
  {
    v32 = 0;
  }

  objc_autoreleasePoolPop(v10);
  v31 = *(v42 + 6);
  v13 = v46;
  if ([recordCopy isPlaceholder])
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  bundleIdentifier = [recordCopy bundleIdentifier];
  v16 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v17 = bundleIdentifier;
  }

  else
  {
    v17 = dCopy;
  }

  bundleContainerURL = [recordCopy bundleContainerURL];
  _dataContainerURLFromDatabase = [recordCopy _dataContainerURLFromDatabase];
  v20 = [recordCopy URL];
  exactBundleVersion = [recordCopy exactBundleVersion];
  v39.receiver = self;
  v39.super_class = LSApplicationProxy;
  v22 = [(LSBundleProxy *)&v39 _initWithBundleUnit:v31 context:v13 + 6 bundleType:v14 bundleID:v17 localizedName:0 bundleContainerURL:bundleContainerURL dataContainerURL:_dataContainerURLFromDatabase resourcesDirectoryURL:v20 iconsDictionary:v32 iconFileNames:_iconFileNames version:exactBundleVersion];

  if (v22)
  {
    if (detachCopy && _LSDatabaseContextGetDetachProxyObjects(v23))
    {
      [recordCopy _resolveAllProperties];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      claimRecords = [recordCopy claimRecords];
      v25 = [claimRecords countByEnumeratingWithState:&v35 objects:v52 count:16];
      if (v25)
      {
        v26 = *v36;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v36 != v26)
            {
              objc_enumerationMutation(claimRecords);
            }

            [*(*(&v35 + 1) + 8 * i) _resolveAllProperties];
          }

          v25 = [claimRecords countByEnumeratingWithState:&v35 objects:v52 count:16];
        }

        while (v25);
      }

      [recordCopy detach];
    }

    objc_storeStrong(v22 + 20, record);
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  return v22;
}

- (id)_initWithBundleUnit:(unsigned int)unit context:(LSContext *)context bundleIdentifier:(id)identifier
{
  v6 = *&unit;
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (v6 && !context)
  {
    [LSApplicationProxy _initWithBundleUnit:context:bundleIdentifier:];
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  if (!v6 || !context)
  {
    if (context)
    {
      v10 = _LSDatabaseGetCacheGUID(context->db);
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:_LSDatabaseGetSequenceNumber(context->db)];
      v12 = _LSDefaultLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v17 = identifierCopy;
        v18 = 2112;
        v19 = v10;
        v20 = 2112;
        v21 = v11;
        _os_log_debug_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEBUG, "LaunchServices: failed to find bundle record for %@ {%@ %@}", buf, 0x20u);
      }
    }

    goto LABEL_10;
  }

  v15 = 0;
  v9 = [[LSApplicationRecord alloc] _initWithContext:context bundleID:v6 bundleData:0 error:&v15];
LABEL_11:
  v13 = [(LSApplicationProxy *)self _initWithContext:context bundleUnit:v6 applicationRecord:v9 bundleID:identifierCopy resolveAndDetach:1];

  return v13;
}

- (NSNumber)itemID
{
  v2 = MEMORY[0x1E696AD98];
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "storeItemIdentifier")}];

  return v4;
}

- (NSString)vendorName
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  artistName = [iTunesMetadata artistName];

  return artistName;
}

- (NSString)itemName
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  itemName = [iTunesMetadata itemName];

  return itemName;
}

- (NSString)storeCohortMetadata
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  storeCohort = [iTunesMetadata storeCohort];

  return storeCohort;
}

- (NSProgress)installProgress
{
  appState = [(LSApplicationProxy *)self appState];
  isPlaceholder = [appState isPlaceholder];

  if (isPlaceholder)
  {
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    bundleIdentifier = [(LSBundleProxy *)self bundleIdentifier];
    v7 = [v5 installProgressForBundleID:bundleIdentifier makeSynchronous:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSNumber)staticDiskUsage
{
  diskUsage = [(LSApplicationProxy *)self diskUsage];
  staticUsage = [diskUsage staticUsage];

  return staticUsage;
}

- (NSNumber)dynamicDiskUsage
{
  diskUsage = [(LSApplicationProxy *)self diskUsage];
  dynamicUsage = [diskUsage dynamicUsage];

  diskUsage2 = [(LSApplicationProxy *)self diskUsage];
  onDemandResourcesUsage = [diskUsage2 onDemandResourcesUsage];

  if (dynamicUsage && onDemandResourcesUsage)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(onDemandResourcesUsage, "unsignedLongLongValue") + objc_msgSend(dynamicUsage, "unsignedLongLongValue")}];
  }

  else
  {
    if (dynamicUsage)
    {
      v8 = dynamicUsage;
    }

    else
    {
      v8 = onDemandResourcesUsage;
    }

    v7 = v8;
  }

  v9 = v7;

  return v9;
}

- (NSNumber)ODRDiskUsage
{
  diskUsage = [(LSApplicationProxy *)self diskUsage];
  onDemandResourcesUsage = [diskUsage onDemandResourcesUsage];

  return onDemandResourcesUsage;
}

- (BOOL)isInstalled
{
  appState = [(LSApplicationProxy *)self appState];
  isInstalled = [appState isInstalled];

  return isInstalled;
}

- (BOOL)isRestricted
{
  appState = [(LSApplicationProxy *)self appState];
  isRestricted = [appState isRestricted];

  return isRestricted;
}

- (NSString)applicationDSID
{
  purchaserDSID = [(LSApplicationProxy *)self purchaserDSID];
  stringValue = [purchaserDSID stringValue];

  return stringValue;
}

- (NSNumber)purchaserDSID
{
  v2 = MEMORY[0x1E696AD98];
  applicationDSID = [(LSApplicationRecord *)self->_record applicationDSID];

  return [v2 numberWithUnsignedLongLong:applicationDSID];
}

- (NSNumber)downloaderDSID
{
  v2 = MEMORY[0x1E696AD98];
  applicationDownloaderDSID = [(LSApplicationRecord *)self->_record applicationDownloaderDSID];

  return [v2 numberWithUnsignedLongLong:applicationDownloaderDSID];
}

- (NSNumber)familyID
{
  v2 = MEMORY[0x1E696AD98];
  applicationFamilyID = [(LSApplicationRecord *)self->_record applicationFamilyID];

  return [v2 numberWithUnsignedLongLong:applicationFamilyID];
}

- (NSArray)requiredDeviceCapabilities
{
  requiredDeviceCapabilities = [(LSApplicationRecord *)self->_record requiredDeviceCapabilities];
  if (requiredDeviceCapabilities)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(requiredDeviceCapabilities, "count")}];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__LSApplicationProxy_requiredDeviceCapabilities__block_invoke;
    v7[3] = &unk_1E6A18F78;
    v8 = v3;
    v4 = v3;
    [requiredDeviceCapabilities enumerateKeysAndObjectsUsingBlock:v7];
    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __48__LSApplicationProxy_requiredDeviceCapabilities__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (NSString)appIDPrefix
{
  v7 = 0;
  applicationIdentifier = [(LSBundleRecord *)self->_record applicationIdentifier];
  v3 = applicationIdentifier;
  if (applicationIdentifier)
  {
    _LSSplitApplicationIdentifier(applicationIdentifier, &v7, 0);
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v5;
}

- (NSNumber)storeFront
{
  v2 = MEMORY[0x1E696AD98];
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "storeFront")}];

  return v4;
}

- (NSNumber)externalVersionIdentifier
{
  v2 = MEMORY[0x1E696AD98];
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "versionIdentifier")}];

  return v4;
}

- (NSNumber)betaExternalVersionIdentifier
{
  v2 = MEMORY[0x1E696AD98];
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "betaVersionIdentifier")}];

  return v4;
}

- (NSNumber)ratingRank
{
  v2 = MEMORY[0x1E696AD98];
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "ratingRank")}];

  return v4;
}

- (NSString)ratingLabel
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  ratingLabel = [iTunesMetadata ratingLabel];

  return ratingLabel;
}

- (NSString)sourceAppIdentifier
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  sourceApp = [iTunesMetadata sourceApp];

  return sourceApp;
}

- (NSString)applicationVariant
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  variantID = [iTunesMetadata variantID];

  return variantID;
}

- (BOOL)isWhitelisted
{
  v3 = +[LSApplicationRestrictionsManager sharedInstance];
  bundleIdentifier = [(LSBundleProxy *)self bundleIdentifier];
  LOBYTE(self) = [(LSApplicationRestrictionsManager *)v3 isApplicationRestricted:bundleIdentifier checkFlags:[(LSApplicationRecord *)self->_record _rawBundleFlags]];

  return self ^ 1;
}

- (BOOL)isDeviceBasedVPP
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  isDeviceBasedVPP = [iTunesMetadata isDeviceBasedVPP];

  return isDeviceBasedVPP;
}

- (BOOL)isPurchasedReDownload
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  isPurchasedRedownload = [iTunesMetadata isPurchasedRedownload];

  return isPurchasedRedownload;
}

- (BOOL)isGameCenterEnabled
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  isGameCenterEnabled = [iTunesMetadata isGameCenterEnabled];

  return isGameCenterEnabled;
}

- (BOOL)gameCenterEverEnabled
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  wasGameCenterEverEnabled = [iTunesMetadata wasGameCenterEverEnabled];

  return wasGameCenterEverEnabled;
}

- (NSNumber)installFailureReason
{
  v2 = MEMORY[0x1E696AD98];
  placeholderFailureReason = [(LSApplicationRecord *)self->_record placeholderFailureReason];

  return [v2 numberWithUnsignedInteger:placeholderFailureReason];
}

- (id)primaryIconDataForVariant:(int)variant
{
  v3 = *&variant;
  if (IconServicesLibrary_frameworkLibrary || (v5 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2), (IconServicesLibrary_frameworkLibrary = v5) != 0))
  {
    v5 = softLink_ISPrimaryIconDataForApplicationProxy(self, v3, 0);
  }

  return v5;
}

- (id)iconDataForVariant:(int)variant withOptions:(int)options
{
  v4 = *&options;
  v5 = *&variant;
  if (IconServicesLibrary_frameworkLibrary || (v7 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2), (IconServicesLibrary_frameworkLibrary = v7) != 0))
  {
    v7 = softLink_ISIconDataForResourceProxy(self, v5, v4);
  }

  return v7;
}

- (NSSet)claimedDocumentContentTypes
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  claimRecords = [(LSBundleRecord *)self->_record claimRecords];
  v5 = [claimRecords countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(claimRecords);
        }

        typeIdentifiers = [*(*(&v11 + 1) + 8 * i) typeIdentifiers];
        [v3 addObjectsFromArray:typeIdentifiers];
      }

      v6 = [claimRecords countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSSet)claimedURLSchemes
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  claimRecords = [(LSBundleRecord *)self->_record claimRecords];
  v5 = [claimRecords countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(claimRecords);
        }

        uRLSchemes = [*(*(&v11 + 1) + 8 * i) URLSchemes];
        [v3 addObjectsFromArray:uRLSchemes];
      }

      v6 = [claimRecords countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)handlerRankOfClaimForContentType:(id)type
{
  v33 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if (!typeCopy)
  {
    [(LSApplicationProxy *)a2 handlerRankOfClaimForContentType:?];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(LSBundleRecord *)self->_record claimRecords];
  v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    v9 = 0x8000;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        typeIdentifiers = [v11 typeIdentifiers];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v13 = typeIdentifiers;
        v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v24;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v24 != v16)
              {
                objc_enumerationMutation(v13);
              }

              if (![*(*(&v23 + 1) + 8 * j) caseInsensitiveCompare:typeCopy])
              {
                handlerRank = [v11 handlerRank];
                v19 = _LSNumericHandlerRankFromHandlerRankString(handlerRank);

                if (v9 <= v19)
                {
                  v9 = v19;
                }

                goto LABEL_19;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

LABEL_19:
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0x8000;
  }

  v20 = _LSCopyHandlerRankStringFromNumericHandlerRank(v9);

  return v20;
}

- (NSNumber)platform
{
  platform = [(LSBundleRecord *)self->_record platform];
  if (platform)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:platform];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)getGenericTranslocationTargetURL:(id *)l error:(id *)error
{
  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationProxy getGenericTranslocationTargetURL:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationProxy.m", 1016);
  }

  return 0;
}

- (id)installProgressSync
{
  appState = [(LSApplicationProxy *)self appState];
  isPlaceholder = [appState isPlaceholder];

  if (isPlaceholder)
  {
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    bundleIdentifier = [(LSBundleProxy *)self bundleIdentifier];
    v7 = [v5 installProgressForBundleID:bundleIdentifier makeSynchronous:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_stringLocalizerForTable:(id)table
{
  v15 = *MEMORY[0x1E69E9840];
  record = self->_record;
  tableCopy = table;
  platform = [(LSBundleRecord *)record platform];
  sDKVersion = [(LSBundleRecord *)self->_record SDKVersion];
  _LSVersionNumberMakeWithString();
  DYLDVersion = _LSVersionNumberGetDYLDVersion(v14);

  v9 = [_LSStringLocalizer useLegacyLocalizationListForPlatform:platform sdkVersion:DYLDVersion];
  v10 = [_LSStringLocalizer alloc];
  bundleURL = [(LSBundleProxy *)self bundleURL];
  v12 = [(_LSStringLocalizer *)v10 initWithBundleURL:bundleURL stringsFile:tableCopy legacyLocalizationList:v9];

  return v12;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  v3 = self->_record;
  if (!v3)
  {
    if (forwardingTargetForSelector__once != -1)
    {
      [LSApplicationProxy forwardingTargetForSelector:];
    }

    v3 = forwardingTargetForSelector__invalidRecord;
  }

  return v3;
}

void __50__LSApplicationProxy_forwardingTargetForSelector___block_invoke()
{
  v0 = [(LSRecord *)[LSApplicationRecord alloc] _initInvalid];
  v1 = forwardingTargetForSelector__invalidRecord;
  forwardingTargetForSelector__invalidRecord = v0;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = LSApplicationProxy;
  if ([(LSApplicationProxy *)&v5 respondsToSelector:?])
  {
    return 1;
  }

  else
  {
    return [LSApplicationRecord instancesRespondToSelector:selector];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v6.receiver = self;
  v6.super_class = LSApplicationProxy;
  v4 = [(LSApplicationProxy *)&v6 methodSignatureForSelector:?];
  if (!v4)
  {
    v4 = [LSApplicationRecord instanceMethodSignatureForSelector:selector];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = LSApplicationProxy;
  coderCopy = coder;
  [(LSBundleProxy *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_record forKey:{@"record", v5.receiver, v5.super_class}];
}

- (LSApplicationProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = LSApplicationProxy;
  v5 = [(LSBundleProxy *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"record"];
    record = v5->_record;
    v5->_record = v6;
  }

  return v5;
}

- (void)detach
{
  [(LSRecord *)self->_record _resolveAllProperties];
  record = self->_record;

  [(LSRecord *)record detach];
}

- (id)localizedNameForContext:(id)context preferredLocalizations:(id)localizations useShortNameOnly:(BOOL)only
{
  onlyCopy = only;
  contextCopy = context;
  localizationsCopy = localizations;
  v10 = localizationsCopy;
  if (contextCopy)
  {
    if (onlyCopy)
    {
      v11 = _LSDefaultLog(localizationsCopy);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [LSApplicationProxy(Localization) localizedNameForContext:contextCopy preferredLocalizations:v11 useShortNameOnly:?];
      }
    }

    record = self->_record;
    if (v10)
    {
      [(LSApplicationRecord *)record localizedNameWithContext:contextCopy preferredLocalizations:v10];
    }

    else
    {
      [(LSApplicationRecord *)record localizedNameWithContext:contextCopy];
    }
    v15 = ;
  }

  else
  {
    v13 = self->_record;
    if (onlyCopy)
    {
      if (v10)
      {
        [(LSBundleRecord *)v13 localizedShortNameWithPreferredLocalizations:v10];
      }

      else
      {
        [(LSBundleRecord *)v13 localizedShortName];
      }
    }

    else if (v10)
    {
      [(LSBundleRecord *)v13 localizedNameWithPreferredLocalizations:v10];
    }

    else
    {
      [(LSBundleRecord *)v13 localizedName];
    }
    v14 = ;
    v15 = v14;
    if (![v14 length])
    {
      _fallbackLocalizedName = [(LSBundleRecord *)self->_record _fallbackLocalizedName];

      v15 = _fallbackLocalizedName;
    }
  }

  return v15;
}

- (void)_initWithBundleUnit:context:bundleIdentifier:.cold.1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[LSApplicationProxy _initWithBundleUnit:context:bundleIdentifier:]"];
  [v1 handleFailureInFunction:v0 file:@"LSApplicationProxy.m" lineNumber:290 description:{@"Invalid parameter not satisfying: %@", @"bundleUnit == kCSStoreNullID || context != NULL"}];
}

- (void)handlerRankOfClaimForContentType:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"LSApplicationProxy.m" lineNumber:966 description:{@"Invalid parameter not satisfying: %@", @"typeIdentifier != nil"}];
}

@end