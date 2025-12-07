@interface LSBundleRecord
+ (LSBundleRecord)bundleRecordForCurrentProcess;
+ (LSBundleRecord)bundleRecordWithApplicationIdentifier:(id)identifier error:(id *)error;
+ (LSBundleRecord)bundleRecordWithBundleIdentifier:(id)identifier allowPlaceholder:(BOOL)placeholder error:(id *)error;
+ (LSBundleRecord)coreTypesBundleRecord;
+ (id)_bundleRecordForAuditToken:(id *)token checkNSBundleMainBundle:(unsigned __int8)bundle error:(id *)error;
+ (id)_getBundleRecordFinderForNode:(void *)node;
+ (id)_propertyClasses;
+ (id)bundleRecordForAuditToken:(id *)token error:(id *)error;
+ (id)redactedProperties;
+ (uint64_t)_getBundleRecordFinderForNode:(*+[LSBundleRecord _getBundleRecordFinderForNode:(uint64_t)node ](uint64_t)self;
+ (uint64_t)_getBundleRecordFinderForNode:(void *)node;
+ (void)bundleRecordForCurrentProcess;
- (BOOL)appProtectionHidden;
- (BOOL)appProtectionLocked;
- (BOOL)getDataContainerURL:(id *)l error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)personaIsApplicable:(id)applicable;
- (BOOL)unredactWithError:(id *)error;
- (LSBundleRecord)initWithCoder:(id)coder;
- (LSVersionNumber)_bundleVersionWithContext:(SEL)context tableID:(LSContext *)d unitID:(unsigned int)iD unitBytes:(unsigned int)bytes;
- (LSVersionNumber)execSDKVersionWithContext:(SEL)context tableID:(LSContext *)d unitID:(unsigned int)iD unitBytes:(unsigned int)bytes;
- (NSArray)UIBackgroundModes;
- (NSArray)privacyTrackingDomains;
- (NSString)SDKVersion;
- (NSString)_fallbackLocalizedName;
- (NSString)accentColorName;
- (NSString)applicationIdentifier;
- (NSString)bundleVersion;
- (NSString)localizedName;
- (NSString)localizedShortName;
- (NSURL)dataContainerURL;
- (char)developerTypeWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)_cachedDataContainerURL;
- (id)_dataContainerURLFromDatabaseWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)_getGroupContainersCreatingIfNecessary:(BOOL)necessary checkNonContainerizedBundles:(BOOL)bundles;
- (id)_initWithContext:(LSContext *)context persistentIdentifierData:(const LSPersistentIdentifierData *)data length:(unint64_t)length;
- (id)_initWithNode:(id)node bundleIdentifier:(id)identifier context:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD bundleBaseData:(const LSBundleBaseData *)data error:(id *)error;
- (id)_localizedIdentityUsageDescriptionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)_localizedMicrophoneUsageDescriptionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)_localizedShort:(BOOL)short nameWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD bundleData:(const LSBundleBaseData *)data;
- (id)_rawGroupContainerURLsCheckingRedaction;
- (id)claimRecordsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)entitlementsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)executableURLWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)exported:(BOOL)exported typesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)groupContainerIdentifiers;
- (id)intentDefinitionURLsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)localizedNameWithPreferredLocalizations:(id)localizations;
- (id)localizedShortNameWithPreferredLocalizations:(id)localizations;
- (id)localizedUsageDescriptionForFeature:(unint64_t)feature;
- (id)localizedUsageDescriptionForFeature:(unint64_t)feature preferredLocalizations:(id)localizations;
- (id)machOUUIDsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)recordForUnredactingWithContext:(LSContext *)context error:(id *)error;
- (id)registrationDateWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)signerIdentityWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)signerOrganizationWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)teamIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (unint64_t)hash;
- (void)_detachFromContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const void *)bytes;
- (void)_fallbackLocalizedName;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)redact;
@end

@implementation LSBundleRecord

- (void)dealloc
{
  auditToken = self->_auditToken;
  if (auditToken)
  {
    MEMORY[0x1865D6250](auditToken, 0x1000C40E0EAB150);
  }

  v4.receiver = self;
  v4.super_class = LSBundleRecord;
  [(LSRecord *)&v4 dealloc];
}

- (unint64_t)hash
{
  v2 = [(LSBundleRecord *)self URL];
  v3 = [v2 hash];

  return v3;
}

- (NSURL)dataContainerURL
{
  v4 = 0;
  [(LSBundleRecord *)self getDataContainerURL:&v4 error:0];
  v2 = v4;

  return v2;
}

- (id)_cachedDataContainerURL
{
  os_unfair_lock_lock(&LaunchServices::Record::cachedDataContainerURLLock);
  _dataContainerURLFromDatabase = self->_cachedDataContainerURL;
  os_unfair_lock_unlock(&LaunchServices::Record::cachedDataContainerURLLock);
  if (_dataContainerURLFromDatabase)
  {
    v4 = *MEMORY[0x1E695E738];
  }

  else
  {
    _containerized = [(LSBundleRecord *)self _containerized];
    if (!_containerized || ![__LSDefaultsGetSharedInstance(_containerized v6)] || (-[LSBundleRecord bundleIdentifier](self, "bundleIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = -[LSBundleRecord _containerClass](self, "_containerClass"), active_platform = dyld_get_active_platform(), _dataContainerURLFromDatabase = _LSCopyDataContainerURLFromContainermanager(v7, v8, active_platform), v7, !_dataContainerURLFromDatabase))
    {
      _dataContainerURLFromDatabase = [(LSBundleRecord *)self _dataContainerURLFromDatabase];
    }

    os_unfair_lock_lock(&LaunchServices::Record::cachedDataContainerURLLock);
    v4 = *MEMORY[0x1E695E738];
    if (_dataContainerURLFromDatabase)
    {
      v10 = _dataContainerURLFromDatabase;
    }

    else
    {
      v10 = *MEMORY[0x1E695E738];
    }

    objc_storeStrong(&self->_cachedDataContainerURL, v10);
    os_unfair_lock_unlock(&LaunchServices::Record::cachedDataContainerURLLock);
  }

  if (_dataContainerURLFromDatabase == v4)
  {
    v11 = 0;
  }

  else
  {
    v11 = _dataContainerURLFromDatabase;
  }

  v12 = v11;

  return v11;
}

- (id)_rawGroupContainerURLsCheckingRedaction
{
  if (![(LSBundleRecord *)self isRedacted])
  {
    goto LABEL_4;
  }

  v9 = 0;
  v3 = [(LSBundleRecord *)self unredactWithError:&v9];
  v4 = v9;
  v5 = v4;
  if (v3)
  {

LABEL_4:
    _rawGroupContainerURLs = [(LSBundleRecord *)self _rawGroupContainerURLs];
    goto LABEL_8;
  }

  v7 = _LSDefaultLog(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [LSBundleRecord _rawGroupContainerURLsCheckingRedaction];
  }

  _rawGroupContainerURLs = 0;
LABEL_8:

  return _rawGroupContainerURLs;
}

- (NSString)localizedName
{
  _localizedName = [(LSBundleRecord *)self _localizedName];
  stringValue = [_localizedName stringValue];
  v5 = postprocessLocalizedNameishStringFromStringRecord(self, stringValue);

  return v5;
}

+ (LSBundleRecord)bundleRecordForCurrentProcess
{
  v24 = *MEMORY[0x1E69E9840];
  MayMapDatabase = _LSCurrentProcessMayMapDatabase();
  if (MayMapDatabase)
  {
    v5 = _LSGetAuditTokenForSelf(MayMapDatabase, v4);
    if (v5)
    {
      v6 = v5[1];
      *buf = *v5;
      v23 = v6;
      v21 = 0;
      v7 = [self _bundleRecordForAuditToken:buf checkNSBundleMainBundle:1 error:&v21];
      v8 = v21;
      v9 = v8;
      if (!v7)
      {
        v10 = _LSDefaultLog(v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v9;
          _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_INFO, "failure to find bundle record for our audit token: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    os_unfair_lock_lock(&LaunchServices::Record::currentProcessLock);
    WeakRetained = +[LSBundleRecord bundleRecordForCurrentProcess]::strongCurrentProcessRecord;
    if (!WeakRetained)
    {
      WeakRetained = objc_loadWeakRetained(&LaunchServices::Record::weakCurrentProcessRecord);
      if (!WeakRetained)
      {
        v13 = _LSGetAuditTokenForSelf(0, v12);
        if (v13)
        {
          v14 = v13[1];
          *buf = *v13;
          v23 = v14;
          v20 = 0;
          WeakRetained = [self _bundleRecordForAuditToken:buf checkNSBundleMainBundle:1 error:&v20];
          v15 = v20;
          v16 = v15;
          if (v15)
          {
            v17 = _LSDefaultLog(v15);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              +[LSBundleRecord bundleRecordForCurrentProcess];
            }
          }

          LaunchServices::Record::storeWeakSharedRecord(WeakRetained, &LaunchServices::Record::weakCurrentProcessRecord);
        }

        else
        {
          WeakRetained = 0;
        }
      }

      objc_storeStrong(&+[LSBundleRecord bundleRecordForCurrentProcess]::strongCurrentProcessRecord, WeakRetained);
      v18 = dispatch_time(0, 5000000000);
      dispatch_after(v18, MEMORY[0x1E69E96A0], &__block_literal_global_18);
    }

    os_unfair_lock_unlock(&LaunchServices::Record::currentProcessLock);
    v7 = WeakRetained;
  }

  return v7;
}

+ (LSBundleRecord)coreTypesBundleRecord
{
  v2 = objc_alloc_init(_LSCoreTypesRecordProxy);

  return v2;
}

- (NSString)SDKVersion
{
  v5 = *MEMORY[0x1E69E9840];
  objc_msgSend_execSDKVersion(self, a2);
  v2 = _LSVersionNumberGetStringRepresentation(&v4);

  return v2;
}

- (NSString)bundleVersion
{
  v5 = *MEMORY[0x1E69E9840];
  objc_msgSend__bundleVersion(self, a2);
  v2 = _LSVersionNumberGetStringRepresentation(&v4);

  return v2;
}

- (NSArray)privacyTrackingDomains
{
  infoDictionary = [(LSBundleRecord *)self infoDictionary];
  v3 = objc_opt_class();
  v4 = [infoDictionary objectForKey:@"NSPrivacyTrackingDomains" ofClass:v3 valuesOfClass:objc_opt_class()];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (NSString)applicationIdentifier
{
  entitlements = [(LSBundleRecord *)self entitlements];
  _applicationIdentifier = [entitlements _applicationIdentifier];

  return _applicationIdentifier;
}

+ (id)_propertyClasses
{
  v4[7] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:7];

  return v2;
}

- (NSArray)UIBackgroundModes
{
  infoDictionary = [(LSBundleRecord *)self infoDictionary];
  v3 = objc_opt_class();
  v4 = [infoDictionary objectForKey:@"UIBackgroundModes" ofClass:v3 valuesOfClass:objc_opt_class()];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (NSString)localizedShortName
{
  _localizedShortName = [(LSBundleRecord *)self _localizedShortName];
  stringValue = [_localizedShortName stringValue];
  v5 = postprocessLocalizedNameishStringFromStringRecord(self, stringValue);

  return v5;
}

- (NSString)_fallbackLocalizedName
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__9;
  v13 = __Block_byref_object_dispose__9;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__LSBundleRecord__fallbackLocalizedName__block_invoke;
  v8[3] = &unk_1E6A1AE60;
  v8[4] = self;
  v8[5] = &v9;
  v2 = __LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__(v8);
  if (v10[5])
  {
    v3 = [_LSLocalizedStringRecord sanitizeString:?];
  }

  else
  {
    v4 = _LSDefaultLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [LSBundleRecord _fallbackLocalizedName];
    }

    v3 = @"(no path)";
  }

  v5 = v10[5];
  v10[5] = v3;

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __40__LSBundleRecord__fallbackLocalizedName__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) URL];
  v2 = [v6 lastPathComponent];
  v3 = [v2 stringByDeletingPathExtension];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __47__LSBundleRecord_bundleRecordForCurrentProcess__block_invoke()
{
  os_unfair_lock_lock(&LaunchServices::Record::currentProcessLock);
  v0 = +[LSBundleRecord bundleRecordForCurrentProcess]::strongCurrentProcessRecord;
  +[LSBundleRecord bundleRecordForCurrentProcess]::strongCurrentProcessRecord = 0;

  os_unfair_lock_unlock(&LaunchServices::Record::currentProcessLock);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
  v5 = [(LSBundleRecord *)self URL];
  v6 = [v3 initWithFormat:@"{ bundleID: %@, URL: %@ }", bundleIdentifier, v5];

  return v6;
}

+ (LSBundleRecord)bundleRecordWithBundleIdentifier:(id)identifier allowPlaceholder:(BOOL)placeholder error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = [[LSApplicationRecord alloc] initWithBundleIdentifier:identifier allowPlaceholder:placeholder error:0];
  if (v7)
  {
    v8 = v7;
LABEL_3:
    v9 = 0;
    goto LABEL_4;
  }

  v11 = [LSApplicationExtensionRecord alloc];
  if (error)
  {
    v12 = &v16;
  }

  else
  {
    v12 = 0;
  }

  if (error)
  {
    v16 = 0;
  }

  v8 = [(LSApplicationExtensionRecord *)v11 initWithBundleIdentifier:identifier error:v12, v16];
  if (!error)
  {
    goto LABEL_3;
  }

  v13 = v16;
  v9 = v13;
  if (!v8)
  {
    v14 = *MEMORY[0x1E696A768];
    if (v13)
    {
      v17 = *MEMORY[0x1E696AA08];
      v18[0] = v13;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      *error = _LSMakeNSErrorImpl(v14, -10814, v15, "+[LSBundleRecord bundleRecordWithBundleIdentifier:allowPlaceholder:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSBundleRecord.mm", 163);

      v8 = 0;
    }

    else
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "+[LSBundleRecord bundleRecordWithBundleIdentifier:allowPlaceholder:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSBundleRecord.mm", 165);
      v8 = 0;
      *error = v9 = 0;
    }
  }

LABEL_4:

  return v8;
}

+ (LSBundleRecord)bundleRecordWithApplicationIdentifier:(id)identifier error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  if (!identifier)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSBundleRecord.mm" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"appID != nil"}];
  }

  v6 = _LSLogAppRecordInitsForDataSeparation(self, a2);
  if (v6)
  {
    v7 = _LSDataSeparationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      identifierCopy = identifier;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "bundle record search with app ID: %@", buf, 0xCu);
    }
  }

  CurrentContext = _LSDatabaseContextGetCurrentContext(v6);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v8 = +[_LSDServiceDomain defaultServiceDomain];
  v9 = LaunchServices::Database::Context::_get(&CurrentContext, v8, 0);

  if (v9)
  {
    LaunchServices::BindingEvaluator::CreateWithApplicationIdentifier(identifier, 0, buf);
    Options = LaunchServices::BindingEvaluator::getOptions(buf);
    LaunchServices::BindingEvaluator::setOptions(buf, Options | 0x80);
    LaunchServices::BindingEvaluator::getBestBinding(buf, v9, error, &v22);
    if (v26 == 1)
    {
      v11 = [LSApplicationRecord alloc];
      v12 = [(LSApplicationRecord *)v11 _initWithContext:v9 bundleID:v22 bundleData:v23 error:error];
      if (v26)
      {
      }
    }

    else
    {
      v12 = 0;
    }

    LaunchServices::BindingEvaluator::~BindingEvaluator(buf);
  }

  else if (error)
  {
    v13 = +[_LSDServiceDomain defaultServiceDomain];
    v14 = LaunchServices::Database::Context::_get(&CurrentContext, v13, 0);

    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v30;
    }

    v12 = 0;
    *error = v15;
  }

  else
  {
    v12 = 0;
  }

  if (CurrentContext && v29 == 1)
  {
    _LSContextDestroy(CurrentContext);
  }

  v16 = v28;
  CurrentContext = 0;
  v28 = 0;

  v29 = 0;
  v17 = v30;
  v30 = 0;

  return v12;
}

+ (id)bundleRecordForAuditToken:(id *)token error:(id *)error
{
  v4 = *&token->var0[4];
  v7[0] = *token->var0;
  v7[1] = v4;
  v5 = [self _bundleRecordForAuditToken:v7 checkNSBundleMainBundle:0 error:error];

  return v5;
}

+ (uint64_t)_getBundleRecordFinderForNode:(*+[LSBundleRecord _getBundleRecordFinderForNode:(uint64_t)node ](uint64_t)self
{
  objc_opt_self();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__LSBundleRecord__getBundleRecordFinderForNode___block_invoke;
  v7[3] = &unk_1E6A1AE60;
  v7[4] = node;
  v7[5] = &v8;
  __LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__(v7);
  v3 = *(v9 + 6);
  v4 = +[LSBundleRecord _getBundleRecordFinderForNode:]::$_2::__invoke;
  if (v3 == 12)
  {
    v4 = +[LSBundleRecord _getBundleRecordFinderForNode:]::$_1::__invoke;
  }

  if (v3 == 2)
  {
    v5 = +[LSBundleRecord _getBundleRecordFinderForNode:]::$_0::__invoke;
  }

  else
  {
    v5 = v4;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __48__LSBundleRecord__getBundleRecordFinderForNode___block_invoke(uint64_t a1)
{
  result = _LSGetBundleClassForNode(0, *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (id)_bundleRecordForAuditToken:(id *)token checkNSBundleMainBundle:(unsigned __int8)bundle error:(id *)error
{
  v49[1] = *MEMORY[0x1E69E9840];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__9;
  v44 = __Block_byref_object_dispose__9;
  v45 = 0;
  if (_LSCurrentProcessMayMapDatabase())
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__9;
    v38 = __Block_byref_object_dispose__9;
    v39 = 0;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v8 = *&token->var0[4];
    v31 = *token->var0;
    v32 = v8;
    v30[2] = __75__LSBundleRecord__bundleRecordForAuditToken_checkNSBundleMainBundle_error___block_invoke;
    v30[3] = &unk_1E6A1AE88;
    bundleCopy = bundle;
    v30[4] = &v34;
    __LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__(v30);
    v9 = v35[5];
    if (v9)
    {
      v10 = [LSBundleRecord _getBundleRecordFinderForNode:v9];
      CurrentContext = _LSDatabaseContextGetCurrentContext(v10);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v11 = (v10)(&CurrentContext, v35[5], error);
      v12 = v41[5];
      v41[5] = v11;

      if (CurrentContext && v28 == 1)
      {
        _LSContextDestroy(CurrentContext);
      }

      v13 = v27;
      CurrentContext = 0;
      v27 = 0;

      v28 = 0;
      v14 = v29;
      v29 = 0;
    }

    else if (error)
    {
      v48 = *MEMORY[0x1E696A278];
      v49[0] = @"The file system path for this process could not be determined. It may not be running, or it may have been deleted or moved while running.";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -600, v19, "+[LSBundleRecord _bundleRecordForAuditToken:checkNSBundleMainBundle:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSBundleRecord.mm", 401);
    }

    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v15 = _LSGetPIDFromToken(token);
    if (v15 == getpid())
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __75__LSBundleRecord__bundleRecordForAuditToken_checkNSBundleMainBundle_error___block_invoke_2;
      v25[3] = &unk_1E6A1AED8;
      v25[4] = &v40;
      v16 = _LSRetryForConnectionInterrupted(v25);
      v17 = v16;
      if (v41[5])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          extensionPointRecord = [v41[5] extensionPointRecord];
          [LSExtensionPointRecord setExtensionPointRecordForCurrentProcess:extensionPointRecord];
        }
      }

      else if (error)
      {
        v21 = v16;
        *error = v17;
      }
    }

    else if (error)
    {
      v46 = *MEMORY[0x1E696A278];
      v47 = @"unknown entitlement";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v20, "+[LSBundleRecord _bundleRecordForAuditToken:checkNSBundleMainBundle:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSBundleRecord.mm", 432);
    }
  }

  v22 = v41[5];
  if (v22 && !v22[4])
  {
    operator new();
  }

  v23 = v22;
  _Block_object_dispose(&v40, 8);

  return v23;
}

void __75__LSBundleRecord__bundleRecordForAuditToken_checkNSBundleMainBundle_error___block_invoke(uint64_t a1)
{
  v2 = _LSCopyBundleURLForAuditToken((a1 + 40), *(a1 + 72));
  if (v2)
  {
    v6 = v2;
    v3 = [[FSNode alloc] initWithURL:v2 flags:0 error:0];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

id __75__LSBundleRecord__bundleRecordForAuditToken_checkNSBundleMainBundle_error___block_invoke_2(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__LSBundleRecord__bundleRecordForAuditToken_checkNSBundleMainBundle_error___block_invoke_3;
  v6[3] = &unk_1E6A18DF0;
  v6[4] = &v7;
  v2 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__LSBundleRecord__bundleRecordForAuditToken_checkNSBundleMainBundle_error___block_invoke_4;
  v5[3] = &unk_1E6A1AEB0;
  v5[4] = *(a1 + 32);
  v5[5] = &v7;
  [v2 getBundleRecordForCurrentProcessWithCompletionHandler:v5];
  v3 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v3;
}

void __75__LSBundleRecord__bundleRecordForAuditToken_checkNSBundleMainBundle_error___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v5, a3);
}

- (id)teamIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  [(_LSDatabase *)context->db store];
  v6 = _CSStringCopyCFString();

  return v6;
}

- (id)executableURLWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  v7 = [(LSBundleRecord *)self URL:context];
  if (v7)
  {
    [(_LSDatabase *)context->db store];
    v8 = _CSStringCopyCFString();
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v8 isDirectory:0 relativeToURL:v7];
      goto LABEL_10;
    }

    v10 = _LSDefaultLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [LSBundleRecord executableURLWithContext:tableID:unitID:unitBytes:];
    }
  }

  else
  {
    v8 = _LSDefaultLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [LSBundleRecord executableURLWithContext:tableID:unitID:unitBytes:];
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (char)developerTypeWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  if (*([(_LSDatabase *)context->db schema]+ 4) != d)
  {
    return -1;
  }

  if (bytes->_clas == 14)
  {
    return 1;
  }

  [(_LSDatabase *)context->db store];
  v9 = _CSStringCopyCFString();
  v10 = v9;
  if (v9)
  {
    v11 = _LSBundleGetSystemApplicationTypes(v9);
    v12 = [v11 containsObject:v10];

    if (v12)
    {

      return 1;
    }
  }

  containingDirectoryClass = bytes->base.containingDirectoryClass;
  v13 = 1;
  if (containingDirectoryClass != 1 && containingDirectoryClass != 4)
  {
    if ((*&bytes->base.flags & 1) == 0)
    {
      return 3;
    }

    auditToken = self->_auditToken;
    if (auditToken)
    {
      if (_LSIsAuditTokenPlatformBinary(auditToken))
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }

    return -1;
  }

  return v13;
}

- (id)registrationDateWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  v6 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:bytes->registrationTime];

  return v6;
}

- (id)machOUUIDsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = _LSDatabaseGetStringArray(context->db, bytes->machOUUIDs);
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v13];
        if (v14)
        {
          [v8 addObject:v14];
        }

        else
        {
          v15 = _LSDefaultLog(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v23 = v13;
            _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "Launch Services: Failed to create a UUID from invalid string %@", buf, 0xCu);
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v10);
  }

  v16 = [v8 copy];

  return v16;
}

- (LSVersionNumber)execSDKVersionWithContext:(SEL)context tableID:(LSContext *)d unitID:(unsigned int)iD unitBytes:(unsigned int)bytes
{
  v7 = *&a7->execSDKVersion._opaque[16];
  *retstr->_opaque = *a7->execSDKVersion._opaque;
  *&retstr->_opaque[16] = v7;
  return self;
}

- (id)claimRecordsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (*([(_LSDatabase *)context->db schema]+ 4) == d)
  {
    [(_LSDatabase *)context->db schema];
    [(_LSDatabase *)context->db store];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __67__LSBundleRecord_claimRecordsWithContext_tableID_unitID_unitBytes___block_invoke;
    v15 = &unk_1E6A1A790;
    selfCopy = self;
    v17 = v9;
    _CSArrayEnumerateAllValues();
  }

  v10 = [v9 copy];

  return v10;
}

void __67__LSBundleRecord_claimRecordsWithContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_LSClaimGet(**(a1 + 48), a3))
  {
    v5 = [(LSRecord *)[LSClaimRecord alloc] _initWithContext:*(a1 + 48) tableID:*(a1 + 56) unitID:a3];
    if (v5)
    {
      objc_storeWeak(v5 + 4, *(a1 + 32));
      [*(a1 + 40) addObject:v5];
    }
  }
}

- (id)exported:(BOOL)exported typesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (*([(_LSDatabase *)context->db schema]+ 4) == d)
  {
    [(_LSDatabase *)context->db schema];
    [(_LSDatabase *)context->db store];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __69__LSBundleRecord_exported_typesWithContext_tableID_unitID_unitBytes___block_invoke;
    v16 = &unk_1E6A1AF00;
    selfCopy = self;
    v18 = v10;
    _CSArrayEnumerateAllValues();
  }

  v11 = [v10 copy];

  return v11;
}

void __69__LSBundleRecord_exported_typesWithContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _UTTypeGet(**(a1 + 48), a3);
  if (v5 && ((*(v5 + 8) >> 4) & 1) == *(a1 + 60))
  {
    v6 = [(LSRecord *)[_UTDeclaredTypeRecord alloc] _initWithContext:*(a1 + 48) tableID:*(a1 + 56) unitID:a3];
    if (v6)
    {
      objc_storeWeak(v6 + 4, *(a1 + 32));
      [*(a1 + 40) addObject:v6];
    }
  }
}

- (id)_initWithNode:(id)node bundleIdentifier:(id)identifier context:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD bundleBaseData:(const LSBundleBaseData *)data error:(id *)error
{
  v10 = *&iD;
  v11 = *&d;
  v39 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__9;
  v32 = __Block_byref_object_dispose__9;
  nodeCopy = node;
  if (!v29[5])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__9;
    v37 = __Block_byref_object_dispose__9;
    v38 = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __93__LSBundleRecord__initWithNode_bundleIdentifier_context_tableID_unitID_bundleBaseData_error___block_invoke;
    v27[3] = &unk_1E6A1AF28;
    v27[6] = context;
    v27[7] = data;
    v27[4] = &v28;
    v27[5] = &buf;
    __LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__(v27);
    if (error && !v29[5])
    {
      *error = *(*(&buf + 1) + 40);
    }

    _Block_object_dispose(&buf, 8);

    if (!v29[5])
    {
      v24 = _LSDefaultLog(v16);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [LSBundleRecord _initWithNode:v24 bundleIdentifier:? context:? tableID:? unitID:? bundleBaseData:? error:?];
      }

      v18 = 0;
      p_super = &self->super.super;
      goto LABEL_19;
    }
  }

  if (!identifierCopy)
  {
    [(_LSDatabase *)context->db store];
    identifierCopy = _CSStringCopyCFString();
  }

  v26.receiver = self;
  v26.super_class = LSBundleRecord;
  v17 = [(LSRecord *)&v26 _initWithContext:context tableID:v11 unitID:v10];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(v17 + 7, v29[5]);
    v19 = [identifierCopy copy];
    v20 = v18[8];
    v18[8] = v19;

    v21 = v29[5];
    if (_LSBundleRecordMaybeLogInit(FSNode *,NSString *)::onceToken != -1)
    {
      [LSBundleRecord _initWithNode:bundleIdentifier:context:tableID:unitID:bundleBaseData:error:];
    }

    if (_LSBundleRecordMaybeLogInit(FSNode *,NSString *)::myBundleIDIfEnabledAndFirstParty && ([identifierCopy isEqualToString:@"com.apple.mobilecoretypes"] & 1) == 0 && (objc_msgSend(identifierCopy, "isEqualToString:", _LSBundleRecordMaybeLogInit(FSNode *,NSString *)::myBundleIDIfEnabledAndFirstParty) & 1) == 0)
    {
      p_super = _LSPrivacyLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
      {
        v23 = [v21 URL];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v23;
        _os_log_impl(&dword_18162D000, p_super, OS_LOG_TYPE_INFO, "constructing bundle record for %@", &buf, 0xCu);
      }

LABEL_19:
    }
  }

  _Block_object_dispose(&v28, 8);

  return v18;
}

void __93__LSBundleRecord__initWithNode_bundleIdentifier_context_tableID_unitID_bundleBaseData_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = **(a1 + 48);
  v4 = **(a1 + 56);
  v5 = *(v2 + 8);
  obj = *(v5 + 40);
  v6 = _LSAliasCopyResolvedNode(v3, v4, 0, 0, &obj);
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (LSVersionNumber)_bundleVersionWithContext:(SEL)context tableID:(LSContext *)d unitID:(unsigned int)iD unitBytes:(unsigned int)bytes
{
  v7 = *&a7->version._opaque[16];
  *retstr->_opaque = *a7->version._opaque;
  *&retstr->_opaque[16] = v7;
  return self;
}

- (id)_dataContainerURLFromDatabaseWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  v6 = _LSAliasCopyResolvedNode(context->db, bytes->dataContainerAlias, 0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 URL];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_getGroupContainersCreatingIfNecessary:(BOOL)necessary checkNonContainerizedBundles:(BOOL)bundles
{
  v15 = 0;
  v5 = [(LSBundleRecord(Personas) *)self _personasWithAttributes:necessary];
  v6 = _LSShouldFetchContainersFromContainermanagerForPersona(v5, [(LSBundleRecord *)self _usesSystemPersona], &v15);

  if (([__LSDefaultsGetSharedInstance(v7 v8)] & 1) != 0 || !v6 && v15)
  {
    bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
    active_platform = dyld_get_active_platform();
    v11 = _LSCopyGroupContainerURLSFromContainermanager(bundleIdentifier, active_platform);
  }

  else
  {
    _rawGroupContainerURLsCheckingRedaction = [(LSBundleRecord *)self _rawGroupContainerURLsCheckingRedaction];
    bundleIdentifier = [(_LSLazyPropertyList *)_rawGroupContainerURLsCheckingRedaction propertyList];

    v11 = _LSCopyRationalizedGroupContainerURLDict(bundleIdentifier);
  }

  v13 = v11;

  if (!v13 || v6)
  {

    v13 = MEMORY[0x1E695E0F8];
  }

  return v13;
}

- (id)_localizedShort:(BOOL)short nameWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD bundleData:(const LSBundleBaseData *)data
{
  if (short || (p_localizedShortDisplayName = &data->localizedDisplayName, !data->localizedDisplayName))
  {
    v10 = [_LSLocalizedStringRecord alloc];
    p_localizedShortDisplayName = &data->localizedShortDisplayName;
  }

  else
  {
    v10 = [_LSLocalizedStringRecord alloc];
  }

  v11 = [(_LSLocalizedStringRecord *)v10 _initWithContext:context unitID:*p_localizedShortDisplayName];

  return v11;
}

- (id)_localizedMicrophoneUsageDescriptionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  v6 = [[_LSLocalizedStringRecord alloc] _initWithContext:context unitID:bytes->localizedMicrophoneUsageDescription];

  return v6;
}

- (id)_localizedIdentityUsageDescriptionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  v6 = [[_LSLocalizedStringRecord alloc] _initWithContext:context unitID:bytes->localizedIdentityUsageDescription];

  return v6;
}

- (id)_initWithContext:(LSContext *)context persistentIdentifierData:(const LSPersistentIdentifierData *)data length:(unint64_t)length
{
  v28 = *MEMORY[0x1E69E9840];
  var3 = data->var3;
  if (var3 == *([(_LSDatabase *)context->db schema]+ 4))
  {
    v10 = _LSBundleGet(context->db, data->var2);
    if (v10)
    {
      if (*(v10 + 168) == 11)
      {
        v11 = objc_alloc_init(_LSCoreTypesRecordProxy);
      }

      else
      {
        v11 = [[LSApplicationRecord alloc] _initWithContext:context persistentIdentifierData:data length:length];
      }

      goto LABEL_15;
    }

    v14 = _LSRecordLog(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:data length:length freeWhenDone:0];
      *buf = 138412290;
      v27 = v15;
      _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEBUG, "Failed to initialize application/bundle record with persistent identifier %@ because it was not found in the database.", buf, 0xCu);
    }
  }

  else
  {
    v12 = data->var3;
    if (v12 != *([(_LSDatabase *)context->db schema]+ 1588))
    {

      v19 = MEMORY[0x1E695DF30];
      v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:data length:{length, @"LSPersistentIdentifier"}];
      v25 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v22 = [v19 exceptionWithName:*MEMORY[0x1E695D930] reason:@"The persistent identifier passed to -[LSBundleRecord initWithPersistentIdentifier:] was for a different type of record." userInfo:v21];
      v23 = v22;

      objc_exception_throw(v22);
    }

    v13 = _LSGetPlugin(context->db, data->var2);
    if (v13)
    {
      v11 = [[LSApplicationExtensionRecord alloc] _initWithContext:context pluginID:data->var2 pluginData:v13 error:0];
LABEL_15:
      v17 = v11;

      return v17;
    }

    v14 = _LSRecordLog(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:data length:length freeWhenDone:0];
      *buf = 138412290;
      v27 = v16;
      _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEBUG, "Failed to initialize application extension record with persistent identifier %@ because it was not found in the database.", buf, 0xCu);
    }
  }

  return 0;
}

- (void)_detachFromContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const void *)bytes
{
  v48 = *MEMORY[0x1E69E9840];
  bytes = [(LSRecord *)self _resolvedPropertyValueForGetter:sel_infoDictionary, *&d, *&iD, bytes];
  v8 = bytes;
  if (bytes)
  {
    [bytes detach];
  }

  v9 = [(LSRecord *)self _resolvedPropertyValueForGetter:sel_entitlements];
  v10 = v9;
  if (v9)
  {
    [v9 detach];
  }

  v11 = [(LSRecord *)self _resolvedPropertyValueForGetter:sel__localizedName];
  v12 = v11;
  if (v11)
  {
    [v11 detach];
  }

  v13 = [(LSRecord *)self _resolvedPropertyValueForGetter:sel__localizedShortName];
  v14 = v13;
  if (v13)
  {
    [v13 detach];
  }

  v15 = [(LSRecord *)self _resolvedPropertyValueForGetter:sel__localizedMicrophoneUsageDescription];
  v16 = v15;
  if (v15)
  {
    [v15 detach];
  }

  v17 = [(LSRecord *)self _resolvedPropertyValueForGetter:sel__localizedIdentityUsageDescription];
  v18 = v17;
  if (v17)
  {
    [v17 detach];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v19 = [(LSRecord *)self _resolvedPropertyValueForGetter:sel_claimRecords];
  v20 = [v19 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v20)
  {
    v21 = *v42;
    do
    {
      v22 = 0;
      do
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v41 + 1) + 8 * v22++) detach];
      }

      while (v20 != v22);
      v20 = [v19 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v20);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v23 = [(LSRecord *)self _resolvedPropertyValueForGetter:sel_exportedTypeRecords];
  v24 = [v23 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v24)
  {
    v25 = *v38;
    do
    {
      v26 = 0;
      do
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v23);
        }

        [*(*(&v37 + 1) + 8 * v26++) detach];
      }

      while (v24 != v26);
      v24 = [v23 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v24);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = [(LSRecord *)self _resolvedPropertyValueForGetter:sel_importedTypeRecords, 0];
  v28 = [v27 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v28)
  {
    v29 = *v34;
    do
    {
      v30 = 0;
      do
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v27);
        }

        [*(*(&v33 + 1) + 8 * v30++) detach];
      }

      while (v28 != v30);
      v28 = [v27 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v28);
  }

  v31 = [(LSRecord *)self _resolvedPropertyValueForGetter:sel__rawGroupContainerURLs];
  v32 = v31;
  if (v31)
  {
    [v31 detach];
  }
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
  v6 = [(LSBundleRecord *)self URL];
  v10.receiver = self;
  v10.super_class = LSBundleRecord;
  v7 = [(LSRecord *)&v10 debugDescription];
  v8 = [v3 initWithFormat:@"<%@ %p> { bundleID: %@, URL: %@, super: %@ }", v4, self, bundleIdentifier, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  equalCopy = equal;
  v6 = [(LSBundleRecord *)self URL];
  v7 = [equalCopy URL];
  v8 = [v6 isEqual:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = LSBundleRecord;
  [(LSRecord *)&v7 encodeWithCoder:?];
  [coder encodeObject:self->_node forKey:@"node"];
  [coder encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  if (self->_auditToken)
  {
    v5 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:self->_auditToken objCType:"{?=[8I]}"];
    [coder encodeObject:v5 forKey:@"auditToken"];
  }

  os_unfair_lock_lock(&LaunchServices::Record::cachedDataContainerURLLock);
  v6 = self->_cachedDataContainerURL;
  os_unfair_lock_unlock(&LaunchServices::Record::cachedDataContainerURLLock);
  [coder encodeObject:v6 forKey:@"cachedDataContainerURL"];
  [coder encodeBool:*&self->_flags & 1 forKey:@"redacted"];
}

- (LSBundleRecord)initWithCoder:(id)coder
{
  v48 = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = LSBundleRecord;
  v4 = [(LSRecord *)&v44 initWithCoder:?];
  if (v4)
  {
    v5 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"node"];
    node = v4->_node;
    v4->_node = v5;

    v7 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v4->_bundleIdentifier;
    v4->_bundleIdentifier = v7;

    if (!v4->_auditToken)
    {
      v9 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
        if (!strcmp([v10 objCType], "{?=[8I]}"))
        {
          operator new();
        }
      }
    }

    v12 = objc_alloc(MEMORY[0x1E695DFD8]);
    v13 = objc_opt_class();
    v14 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coder ls_decodeObjectOfClasses:v14 forKey:@"cachedDataContainerURL"];
    cachedDataContainerURL = v4->_cachedDataContainerURL;
    v4->_cachedDataContainerURL = v15;

    *&v4->_flags = *&v4->_flags & 0xFE | [coder decodeBoolForKey:@"redacted"];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v17 = [(LSRecord *)v4 _resolvedPropertyValueForGetter:sel_claimRecords];
    v18 = [v17 countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v18)
    {
      v19 = *v41;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v41 != v19)
          {
            objc_enumerationMutation(v17);
          }

          objc_storeWeak((*(*(&v40 + 1) + 8 * i) + 32), v4);
        }

        v18 = [v17 countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v18);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v21 = [(LSRecord *)v4 _resolvedPropertyValueForGetter:sel_exportedTypeRecords];
    v22 = [v21 countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v22)
    {
      v23 = *v37;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v36 + 1) + 8 * j);
          if ([v25 isDeclared])
          {
            objc_storeWeak(v25 + 4, v4);
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v22);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = [(LSRecord *)v4 _resolvedPropertyValueForGetter:sel_importedTypeRecords];
    v27 = [v26 countByEnumeratingWithState:&v32 objects:v45 count:16];
    if (v27)
    {
      v28 = *v33;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v33 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v32 + 1) + 8 * k);
          if ([v30 isDeclared])
          {
            objc_storeWeak(v30 + 4, v4);
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v32 objects:v45 count:16];
      }

      while (v27);
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = LSBundleRecord;
  v4 = [(LSRecord *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 7, self->_node);
    objc_storeStrong(v5 + 8, self->_bundleIdentifier);
    os_unfair_lock_lock(&LaunchServices::Record::cachedDataContainerURLLock);
    objc_storeStrong(v5 + 5, self->_cachedDataContainerURL);
    os_unfair_lock_unlock(&LaunchServices::Record::cachedDataContainerURLLock);
    if (self->_auditToken)
    {
      if (!v5[4])
      {
        operator new();
      }
    }
  }

  return v5;
}

- (id)entitlementsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  v9 = objc_autoreleasePoolPush();
  if (!self->_auditToken || (__LAUNCH_SERVICES_IS_GETTING_ENTITLEMENTS_FROM_THE_KERNEL__(self), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [_LSLazyPropertyList lazyPropertyListWithContext:context unit:bytes->entitlements];
  }

  objc_autoreleasePoolPop(v9);

  return v10;
}

- (BOOL)getDataContainerURL:(id *)l error:(id *)error
{
  if (![(LSBundleRecord *)self isRedacted])
  {
LABEL_4:
    _cachedDataContainerURL = [(LSBundleRecord *)self _cachedDataContainerURL];
    v26 = 0;
    _personasWithAttributes = [(LSBundleRecord(Personas) *)self _personasWithAttributes];
    v12 = _LSShouldFetchContainersFromContainermanagerForPersona(_personasWithAttributes, [(LSBundleRecord *)self _usesSystemPersona], &v26);

    _containerized = [(LSBundleRecord *)self _containerized];
    v14 = v12 == 0;
    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = _containerized;
    }

    if (v15 == 1 && (v26 || !_cachedDataContainerURL))
    {
      if (!v26)
      {
        v16 = _LSDefaultLog(_containerized);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          [LSBundleRecord(Containers) getDataContainerURL:error:];
        }
      }

      bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
      _containerClass = [(LSBundleRecord *)self _containerClass];
      active_platform = dyld_get_active_platform();
      v20 = _LSCopyDataContainerURLFromContainermanager(bundleIdentifier, _containerClass, active_platform);

      _cachedDataContainerURL = v20;
    }

    if (error)
    {
      v21 = v12;
      *error = v12;
    }

    if (l)
    {
      v22 = _cachedDataContainerURL;
      *l = _cachedDataContainerURL;
    }

    goto LABEL_26;
  }

  v27 = 0;
  v7 = [(LSBundleRecord *)self unredactWithError:&v27];
  v8 = v27;
  v9 = v8;
  if (v7)
  {

    goto LABEL_4;
  }

  v23 = _LSDefaultLog(v8);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    [LSBundleRecord _rawGroupContainerURLsCheckingRedaction];
  }

  if (error)
  {
    v24 = v9;
    v14 = 0;
    *error = v9;
  }

  else
  {
    v14 = 0;
  }

  v12 = v9;
LABEL_26:

  return v14;
}

- (id)groupContainerIdentifiers
{
  bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
  if (!bundleIdentifier || (v4 = bundleIdentifier, [(LSBundleRecord *)self bundleIdentifier], v5 = objc_claimAutoreleasedReturnValue(), [(LSBundleRecord *)self entitlements], v6 = objc_claimAutoreleasedReturnValue(), v7 = _LSCopyGroupContainerIdentifiersFromEntitlements(v5, v6), v6, v5, v4, !v7))
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v7;
}

- (id)localizedNameWithPreferredLocalizations:(id)localizations
{
  _localizedName = [(LSBundleRecord *)self _localizedName];
  v6 = [_localizedName stringValueWithPreferredLocalizations:localizations];
  v7 = postprocessLocalizedNameishStringFromStringRecord(self, v6);

  return v7;
}

- (id)localizedShortNameWithPreferredLocalizations:(id)localizations
{
  _localizedShortName = [(LSBundleRecord *)self _localizedShortName];
  v6 = [_localizedShortName stringValueWithPreferredLocalizations:localizations];
  v7 = postprocessLocalizedNameishStringFromStringRecord(self, v6);

  return v7;
}

- (id)localizedUsageDescriptionForFeature:(unint64_t)feature
{
  v11 = *MEMORY[0x1E69E9840];
  if (feature == 1)
  {
    _localizedIdentityUsageDescription = [(LSBundleRecord *)self _localizedIdentityUsageDescription];
    stringValue = [_localizedIdentityUsageDescription stringValue];
    goto LABEL_5;
  }

  if (!feature)
  {
    _localizedIdentityUsageDescription = [(LSBundleRecord *)self _localizedMicrophoneUsageDescription];
    stringValue = [_localizedIdentityUsageDescription stringValue];
LABEL_5:
    v6 = stringValue;

    goto LABEL_9;
  }

  v7 = _LSDefaultLog(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    featureCopy = feature;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Unknown usage description feature %lu", &v9, 0xCu);
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)localizedUsageDescriptionForFeature:(unint64_t)feature preferredLocalizations:(id)localizations
{
  v13 = *MEMORY[0x1E69E9840];
  if (feature == 1)
  {
    _localizedIdentityUsageDescription = [(LSBundleRecord *)self _localizedIdentityUsageDescription];
    v7 = [_localizedIdentityUsageDescription stringValueWithPreferredLocalizations:localizations];
    goto LABEL_5;
  }

  if (!feature)
  {
    _localizedIdentityUsageDescription = [(LSBundleRecord *)self _localizedMicrophoneUsageDescription];
    v7 = [_localizedIdentityUsageDescription stringValueWithPreferredLocalizations:localizations];
LABEL_5:
    v8 = v7;

    goto LABEL_9;
  }

  v9 = _LSDefaultLog(self);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    featureCopy = feature;
    _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "Unknown usage description feature %lu", &v11, 0xCu);
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)signerOrganizationWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  [(_LSDatabase *)context->db store];
  v6 = _CSStringCopyCFString();

  return v6;
}

- (id)signerIdentityWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  [(_LSDatabase *)context->db store];
  v6 = _CSStringCopyCFString();

  return v6;
}

- (BOOL)personaIsApplicable:(id)applicable
{
  if ([(LSBundleRecord *)self _usesSystemPersona])
  {
    return 1;
  }

  associatedPersonas = [(LSBundleRecord *)self associatedPersonas];
  v5 = [associatedPersonas containsObject:applicable];

  return v5;
}

- (NSString)accentColorName
{
  infoDictionary = [(LSBundleRecord *)self infoDictionary];
  v3 = [infoDictionary objectForKey:@"NSAccentColorName" ofClass:objc_opt_class()];

  return v3;
}

- (id)intentDefinitionURLsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [_LSLazyPropertyList lazyPropertyListWithContext:context unit:bytes->intentDefinitionURLs];
  v10 = v9;
  if (v9)
  {
    propertyList = [(_LSLazyPropertyList *)v9 propertyList];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __84__LSBundleRecord_Intents__intentDefinitionURLsWithContext_tableID_unitID_unitBytes___block_invoke;
    v14[3] = &unk_1E6A1AF50;
    v15 = v8;
    [propertyList enumerateKeysAndObjectsUsingBlock:v14];
  }

  v12 = [v8 copy];

  return v12;
}

void __84__LSBundleRecord_Intents__intentDefinitionURLsWithContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:a3 isDirectory:0];
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:a2];
  }
}

+ (id)redactedProperties
{
  if (+[LSBundleRecord(Redaction) redactedProperties]::once != -1)
  {
    +[LSBundleRecord(Redaction) redactedProperties];
  }

  v3 = +[LSBundleRecord(Redaction) redactedProperties]::properties;

  return v3;
}

void __47__LSBundleRecord_Redaction__redactedProperties__block_invoke()
{
  v0 = +[LSBundleRecord(Redaction) redactedProperties]::properties;
  +[LSBundleRecord(Redaction) redactedProperties]::properties = &unk_1EEF8F1C0;
}

- (void)redact
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 1) == 0)
  {
    eligibleForRedaction = [(LSBundleRecord *)self eligibleForRedaction];
    if (eligibleForRedaction)
    {
      [(LSRecord *)self _resolveAllProperties];
      [(LSRecord *)self detach];
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      redactedProperties = [objc_opt_class() redactedProperties];
      v5 = [redactedProperties countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        v6 = *v10;
        do
        {
          v7 = 0;
          do
          {
            if (*v10 != v6)
            {
              objc_enumerationMutation(redactedProperties);
            }

            [(LSRecord *)self _removeResolvedPropertyValueForGetter:NSSelectorFromString(*(*(&v9 + 1) + 8 * v7++))];
          }

          while (v5 != v7);
          v5 = [redactedProperties countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v5);
      }

      *&self->_flags |= 1u;
    }

    else
    {
      v8 = _LSDefaultLog(eligibleForRedaction);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [LSBundleRecord(Redaction) redact];
      }
    }
  }
}

- (id)recordForUnredactingWithContext:(LSContext *)context error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  abort();
}

- (BOOL)unredactWithError:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 1) == 0)
  {
    return 1;
  }

  MayMapDatabase = _LSCurrentProcessMayMapDatabase();
  if (MayMapDatabase)
  {
    v36 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v6 = +[_LSDServiceDomain defaultServiceDomain];
    v7 = LaunchServices::Database::Context::_get(&v33, v6, 0);

    if (v7)
    {
      v32 = 0;
      v8 = [(LSBundleRecord *)self recordForUnredactingWithContext:v7 error:&v32];
      v25 = v32;
      if (v8)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        redactedProperties = [objc_opt_class() redactedProperties];
        v11 = [redactedProperties countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v11)
        {
          v12 = *v29;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v29 != v12)
              {
                objc_enumerationMutation(redactedProperties);
              }

              v14 = NSSelectorFromString(*(*(&v28 + 1) + 8 * i));
              v15 = [v8 v14];
              [(LSRecord *)self _setResolvedPropertyValue:v15 forGetter:v14];
              if (objc_opt_respondsToSelector())
              {
                [v9 addObject:v15];
              }
            }

            v11 = [redactedProperties countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v11);
        }

        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __47__LSBundleRecord_Redaction__unredactWithError___block_invoke_2;
        v26[3] = &unk_1E6A1A830;
        v16 = v9;
        v27 = v16;
        [(LSRecord *)self _ifAttached:&__block_literal_global_440 else:v26];
        *&self->_flags &= ~1u;

        v17 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = +[_LSDServiceDomain defaultServiceDomain];
      v20 = LaunchServices::Database::Context::_get(&v33, v19, 0);

      if (!v20)
      {
        v25 = v36;
        if (error)
        {
          goto LABEL_23;
        }

        goto LABEL_26;
      }

      v25 = 0;
    }

    if (error)
    {
LABEL_23:
      v21 = v25;
      v17 = 0;
      v8 = 0;
      *error = v25;
      goto LABEL_27;
    }

LABEL_26:
    v17 = 0;
    v8 = 0;
LABEL_27:
    if (v33 && v35 == 1)
    {
      _LSContextDestroy(v33);
    }

    v22 = v34;
    v33 = 0;
    v34 = 0;

    v35 = 0;
    v23 = v36;
    v36 = 0;

    return v17;
  }

  v18 = _LSDefaultLog(MayMapDatabase);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    [LSBundleRecord(Redaction) unredactWithError:];
  }

  if (!error)
  {
    return 0;
  }

  _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[LSBundleRecord(Redaction) unredactWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSBundleRecord.mm", 1806);
  *error = v17 = 0;
  return v17;
}

+ (id)_getBundleRecordFinderForNode:(void *)node
{
  v5 = a2;
  v6 = +[_LSDServiceDomain defaultServiceDomain];
  v7 = LaunchServices::Database::Context::_get(self, v6, 0);

  if (v7)
  {
    v8 = getAppexRecordForXPCServiceNode(v7, v5, node);
  }

  else if (node)
  {
    v9 = +[_LSDServiceDomain defaultServiceDomain];
    v10 = LaunchServices::Database::Context::_get(self, v9, 0);

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = self[3];
    }

    v8 = 0;
    *node = v11;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (uint64_t)_getBundleRecordFinderForNode:(void *)node
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if ([v4 isDirectory])
  {
    if (node)
    {
      v8 = *MEMORY[0x1E696A278];
      v9[0] = @"This process' bundle type is not something Launch Services registers.";
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      v6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v5, "operator()", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSBundleRecord.mm", 358);
LABEL_6:
      *node = v6;
    }
  }

  else if (node)
  {
    v8 = *MEMORY[0x1E696A278];
    v9[0] = @"This process is not the executable of a bundle.";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v5, "operator()", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSBundleRecord.mm", 360);
    goto LABEL_6;
  }

  return 0;
}

- (BOOL)appProtectionHidden
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)appProtectionLocked
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (void)bundleRecordForCurrentProcess
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(&dword_18162D000, v0, OS_LOG_TYPE_ERROR, "failure to find bundle record for our audit token: %@", v1, 0xCu);
}

- (void)executableURLWithContext:tableID:unitID:unitBytes:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&dword_18162D000, v1, OS_LOG_TYPE_DEBUG, "Cannot generate executableURL for app %@ because it has no executable path stored (%llx)", v2, 0x16u);
}

- (void)executableURLWithContext:tableID:unitID:unitBytes:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(&dword_18162D000, v0, OS_LOG_TYPE_ERROR, "Cannot generate executableURL for app %@ because it has no resolvable bundle URL", v1, 0xCu);
}

- (void)_fallbackLocalizedName
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end