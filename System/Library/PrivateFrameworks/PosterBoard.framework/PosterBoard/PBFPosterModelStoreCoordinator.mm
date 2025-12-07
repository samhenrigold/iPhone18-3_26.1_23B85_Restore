@interface PBFPosterModelStoreCoordinator
+ (NSDictionary)expectedURLResourceValuesForDirectories;
+ (NSDictionary)expectedURLResourceValuesForFiles;
+ (id)createNewStoreCoordinatorWithPath:(id)path error:(id *)error;
+ (id)expectedSnapshotURLResourceValues;
- (BOOL)_accessQueue_configureFileSystemForNewContents:(id)contents atPath:(id)path error:(id *)error;
- (BOOL)commitStagedWithError:(id *)error;
- (BOOL)hasKnownVersions;
- (BOOL)setProviderInfo:(id)info error:(id *)error;
- (NSDictionary)providerInfo;
- (NSString)description;
- (NSString)role;
- (PBFPosterModelStoreCoordinator)initWithProvider:(id)provider identifierURL:(id)l posterUUID:(id)d readonly:(BOOL)readonly;
- (id)_accessQueue_allPosterPaths;
- (id)_accessQueue_buildIdentityForVersion:(unint64_t)version supplement:(unint64_t)supplement;
- (id)_accessQueue_checkEnvironmentConsistency;
- (id)_accessQueue_contentsOfURLWithinStore:(id)store resourceKeys:(id)keys standardizeURLs:(BOOL)ls;
- (id)_accessQueue_fetchIdentityForVersion:(unint64_t)version supplement:(unint64_t)supplement error:(id *)error;
- (id)_accessQueue_identityOfLatestVersion;
- (id)_accessQueue_posterPathForIdentity:(id)identity;
- (id)_accessQueue_posterSnapshotCoordinatorForIdentity:(id)identity;
- (id)_accessQueue_providerInfoWithError:(id *)error;
- (id)_accessQueue_setupNewSupplementWithOptions:(unint64_t)options error:(id *)error;
- (id)_accessQueue_setupNewVersionWithOptions:(unint64_t)options contents:(id)contents error:(id *)error;
- (id)_posterPathForIdentity:(id)identity;
- (id)addNewSupplementWithError:(id *)error;
- (id)addNewVersionWithContents:(id)contents error:(id *)error;
- (id)allPosterPaths;
- (id)checkEnvironmentConsistency;
- (id)ensureFileSystemIntegrity;
- (id)identityForVersion:(unint64_t)version supplement:(unint64_t)supplement;
- (id)identityOfLatestVersion;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)pathForIdentity:(id)identity;
- (id)pathForVersion:(unint64_t)version supplement:(unint64_t)supplement;
- (id)pathOfLatestVersion;
- (id)pbf_posterSnapshotCoordinatorForIdentity:(id)identity;
- (id)stageNewSupplementWithError:(id *)error;
- (id)stageNewVersionWithContents:(id)contents error:(id *)error;
- (void)_accessQueue_applyResourceValuesForURLs:(id)ls expectedResourceValues:(id)values synchronous:(BOOL)synchronous;
- (void)_accessQueue_checkEnvironmentConsistency;
- (void)_accessQueue_correctPermissionsForInternalDirectories:(id *)directories;
- (void)_accessQueue_enumerateSnapshotCoordinators:(id)coordinators;
- (void)_accessQueue_fixupResourceValuesWithinURL:(id)l synchronous:(BOOL)synchronous;
- (void)_accessQueue_invalidate;
- (void)_accessQueue_invalidateSnapshotCoordinatorForIdentity:(id)identity;
- (void)_accessQueue_removeSupplement:(unint64_t)supplement forVersion:(unint64_t)version error:(id *)error;
- (void)_accessQueue_writeProviderInfo:(id)info error:(id *)error;
- (void)abortStaged;
- (void)dealloc;
- (void)invalidate;
- (void)pbf_enumerateSnapshotCoordinators:(id)coordinators;
- (void)reapEverythingExceptLatestVersion;
- (void)reapSnapshots;
- (void)removeSupplement:(unint64_t)supplement forVersion:(unint64_t)version error:(id *)error;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation PBFPosterModelStoreCoordinator

+ (id)createNewStoreCoordinatorWithPath:(id)path error:(id *)error
{
  v98 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  identity = [pathCopy identity];
  provider = [identity provider];

  identity2 = [pathCopy identity];
  posterUUID = [identity2 posterUUID];

  descriptorIdentifier = [pathCopy descriptorIdentifier];
  identity3 = [pathCopy identity];
  role = [identity3 role];

  v15 = provider;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v15)
  {
    [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:a2 error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:a2 error:?];
  }

  v16 = posterUUID;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v16)
  {
    [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:a2 error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:a2 error:?];
  }

  v17 = descriptorIdentifier;
  if (v17)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:a2 error:?];
    }
  }

  if (PFPosterRoleIsValid())
  {
    v18 = role;
  }

  else
  {
    v18 = PRPosterRoleLookupForExtensionBundleIdentifier(v15, v17);

    v20 = PBFLogPosterContents(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v95 = "+[PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:error:]";
      v96 = 2112;
      v97 = v18;
      _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_DEFAULT, "[Invalid Role][%{public}s] role was invalid, recovered: %@", buf, 0x16u);
    }
  }

  v21 = v18;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v21)
  {
    [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:a2 error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:a2 error:?];
  }

  if ((PFPosterRoleIsValid() & 1) == 0)
  {
    [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:a2 error:?];
  }

  v69 = a2;
  selfCopy = self;
  v22 = objc_opt_new();
  identifierURL = [pathCopy identifierURL];
  v24 = [MEMORY[0x277CBEBC0] pf_providerInfoFileURLForIdentifierURL:identifierURL];
  v25 = [MEMORY[0x277CBEBC0] pf_versionsURLForIdentifierURL:identifierURL];
  if (![identifierURL checkResourceIsReachableAndReturnError:0])
  {
    v77 = v16;
    v78 = v24;
    errorCopy = error;
    v67 = v21;
    v68 = v17;
    v65 = v15;
    v74 = pathCopy;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__PBFPosterModelStoreCoordinator_createNewStoreCoordinatorWithPath_error___block_invoke;
    aBlock[3] = &unk_2782C58B0;
    v76 = v22;
    v30 = v22;
    v88 = v30;
    v31 = identifierURL;
    v89 = v31;
    v32 = _Block_copy(aBlock);
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v64 = v31;
    v90[0] = v31;
    v90[1] = v25;
    v75 = v25;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
    v34 = [v33 countByEnumeratingWithState:&v83 objects:v91 count:16];
    v73 = v32;
    if (v34)
    {
      v35 = v34;
      v28 = 0;
      v36 = *v84;
      while (2)
      {
        v37 = 0;
        v38 = v28;
        do
        {
          if (*v84 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v39 = *(*(&v83 + 1) + 8 * v37);
          v40 = PFFileProtectionNoneAttributes();
          v82 = v38;
          LOBYTE(v39) = [v30 createDirectoryAtURL:v39 withIntermediateDirectories:1 attributes:v40 error:&v82];
          v28 = v82;

          if ((v39 & 1) == 0)
          {
            if (errorCopy)
            {
              v41 = v28;
              *errorCopy = v28;
            }

            v32 = v73;
            v73[2](v73);
            error = 0;
            pathCopy = v74;
            v15 = v65;
            v21 = v67;
            v17 = v68;
            goto LABEL_66;
          }

          ++v37;
          v38 = v28;
        }

        while (v35 != v37);
        v35 = [v33 countByEnumeratingWithState:&v83 objects:v91 count:16];
        v32 = v73;
        if (v35)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v28 = 0;
    }

    v17 = v68;
    if (v68)
    {
      v42 = MEMORY[0x277CBEBC0];
      identity4 = [v74 identity];
      v33 = [v42 pf_descriptorIdentifierURLForType:objc_msgSend(identity4 identifierURL:{"type"), v64}];

      v21 = v67;
      if (![v68 length])
      {
        [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:v69 error:?];
      }

      v44 = [v68 dataUsingEncoding:4];
      v81 = v28;
      v45 = [v44 writeToURL:v33 options:268435457 error:&v81];
      v46 = v81;

      if ((v45 & 1) == 0)
      {
        if (errorCopy)
        {
          v60 = v46;
          *errorCopy = v46;
        }

        v32[2](v32);

        error = 0;
        v28 = v46;
        pathCopy = v74;
        v15 = v65;
        goto LABEL_66;
      }
    }

    else
    {
      v46 = v28;
      v21 = v67;
    }

    v47 = MEMORY[0x277CBEBC0];
    identity5 = [v74 identity];
    v33 = [v47 pf_roleIdentifierURLForType:objc_msgSend(identity5 identifierURL:{"type"), v64}];

    v49 = [v21 dataUsingEncoding:4];
    if (![v49 length])
    {
      [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:v69 error:?];
    }

    v80 = v46;
    v50 = [v49 writeToURL:v33 options:268435457 error:&v80];
    v28 = v80;

    if ((v50 & 1) == 0)
    {
      if (errorCopy)
      {
        v51 = v28;
        *errorCopy = v28;
      }

      v59 = PBFLogPosterContents(v51);
      pathCopy = v74;
      v15 = v65;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        +[PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:error:];
      }

      v32[2](v32);
      error = 0;
      goto LABEL_65;
    }

    [MEMORY[0x277CCAAB0] bs_secureDataFromObject:MEMORY[0x277CBEC10]];
    v70 = v79 = v28;
    v52 = [v70 writeToURL:v78 options:268435457 error:&v79];
    v53 = v79;

    if ((v52 & 1) == 0)
    {
      if (errorCopy)
      {
        v54 = v53;
        *errorCopy = v53;
      }

      v61 = PBFLogPosterContents(v54);
      v58 = v70;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        +[PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:error:];
      }

      v32 = v73;
      v73[2](v73);
      error = 0;
      v15 = v65;
      goto LABEL_64;
    }

    v15 = v65;
    v55 = [[selfCopy alloc] initWithProvider:v65 identifierURL:v64 posterUUID:v77];
    v72 = v55;
    if (v55)
    {
      checkEnvironmentConsistency = [(objc_class *)v55 checkEnvironmentConsistency];

      v58 = v70;
      if (checkEnvironmentConsistency)
      {
        goto LABEL_57;
      }

      ensureFileSystemIntegrity = [(objc_class *)v72 ensureFileSystemIntegrity];
      checkEnvironmentConsistency = ensureFileSystemIntegrity;
    }

    else
    {
      checkEnvironmentConsistency = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3329 userInfo:0];

      v58 = v70;
    }

    if (!checkEnvironmentConsistency)
    {
      error = v72;
LABEL_63:

      v53 = checkEnvironmentConsistency;
      v32 = v73;
LABEL_64:

      v28 = v53;
      pathCopy = v74;
LABEL_65:

LABEL_66:
      v29 = v88;
      goto LABEL_67;
    }

LABEL_57:
    if (errorCopy)
    {
      ensureFileSystemIntegrity = checkEnvironmentConsistency;
      *errorCopy = checkEnvironmentConsistency;
    }

    v62 = PBFLogPosterContents(ensureFileSystemIntegrity);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      +[PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:error:];
    }

    (v73[2])();
    error = 0;
    goto LABEL_63;
  }

  if (!error)
  {
    goto LABEL_68;
  }

  v75 = v25;
  v76 = v22;
  v77 = v16;
  v78 = v24;
  errorCopy2 = error;
  v27 = MEMORY[0x277CCA9B8];
  v92[0] = @"posterUUID";
  v28 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:v16];
  v92[1] = @"identifierURL";
  v93[0] = v28;
  v93[1] = identifierURL;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];
  [v27 pbf_descriptorStoreCoordinatorErrorWithCode:-3332 userInfo:v29];
  *errorCopy2 = error = 0;
LABEL_67:

  v22 = v76;
  v16 = v77;
  v24 = v78;
  v25 = v75;
LABEL_68:

  return error;
}

- (PBFPosterModelStoreCoordinator)initWithProvider:(id)provider identifierURL:(id)l posterUUID:(id)d readonly:(BOOL)readonly
{
  providerCopy = provider;
  lCopy = l;
  dCopy = d;
  v25.receiver = self;
  v25.super_class = PBFPosterModelStoreCoordinator;
  v13 = [(PBFPosterModelStoreCoordinator *)&v25 init];
  if (v13 && (v14 = [providerCopy copy], extensionIdentifier = v13->_extensionIdentifier, v13->_extensionIdentifier = v14, extensionIdentifier, v16 = objc_msgSend(dCopy, "copy"), posterUUID = v13->_posterUUID, v13->_posterUUID = v16, posterUUID, objc_msgSend(lCopy, "URLByDeletingLastPathComponent"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "URLByDeletingLastPathComponent"), v19 = objc_claimAutoreleasedReturnValue(), providerURL = v13->_providerURL, v13->_providerURL = v19, providerURL, v18, v21 = objc_msgSend(lCopy, "copy"), identifierURL = v13->_identifierURL, v13->_identifierURL = v21, identifierURL, v13->_readonly = readonly, !PBFPosterModelStoreCoordinatorSharedInit(v13)))
  {
    v23 = 0;
  }

  else
  {
    v23 = v13;
  }

  return v23;
}

- (id)checkEnvironmentConsistency
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__PBFPosterModelStoreCoordinator_checkEnvironmentConsistency__block_invoke;
  v5[3] = &unk_2782C7280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __61__PBFPosterModelStoreCoordinator_checkEnvironmentConsistency__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessQueue_checkEnvironmentConsistency];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)ensureFileSystemIntegrity
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__PBFPosterModelStoreCoordinator_ensureFileSystemIntegrity__block_invoke;
  v5[3] = &unk_2782C72C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __59__PBFPosterModelStoreCoordinator_ensureFileSystemIntegrity__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _accessQueue_fixupResourceValuesWithinURL:0 synchronous:1];
  [*(a1 + 32) _accessQueue_enumerateSnapshotCoordinators:&__block_literal_global_4];
  v2 = *(a1 + 32);
  v5 = 0;
  [v2 _accessQueue_correctPermissionsForInternalDirectories:&v5];
  v3 = v5;
  v4 = v5;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  }
}

+ (NSDictionary)expectedURLResourceValuesForFiles
{
  v8[2] = *MEMORY[0x277D85DE8];
  shouldBeExcludedFromBackup = [objc_opt_class() shouldBeExcludedFromBackup];
  expectedFileProtection = [objc_opt_class() expectedFileProtection];
  v7[0] = *MEMORY[0x277CBE878];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:shouldBeExcludedFromBackup];
  v7[1] = *MEMORY[0x277CBE7F8];
  v8[0] = v4;
  v8[1] = expectedFileProtection;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (NSDictionary)expectedURLResourceValuesForDirectories
{
  v6[1] = *MEMORY[0x277D85DE8];
  expectedFileProtection = [objc_opt_class() expectedFileProtection];
  v5 = *MEMORY[0x277CBE7F8];
  v6[0] = expectedFileProtection;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)expectedSnapshotURLResourceValues
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBE7F8];
  v6[0] = *MEMORY[0x277CBE878];
  v6[1] = v2;
  v3 = *MEMORY[0x277CBE800];
  v7[0] = MEMORY[0x277CBEC38];
  v7[1] = v3;
  v6[2] = *MEMORY[0x277CBE898];
  v7[2] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (void)dealloc
{
  v3 = self->_accessQueue_identityToPosterSnapshotCoordinator;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PBFPosterModelStoreCoordinator_dealloc__block_invoke;
  block[3] = &unk_2782C5888;
  v9 = v3;
  v5 = v3;
  v6 = accessQueue;
  dispatch_sync(v6, block);

  v7.receiver = self;
  v7.super_class = PBFPosterModelStoreCoordinator;
  [(PBFPosterModelStoreCoordinator *)&v7 dealloc];
}

uint64_t __41__PBFPosterModelStoreCoordinator_dealloc__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) keyEnumerator];
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

        v7 = [*(a1 + 32) objectForKey:*(*(&v9 + 1) + 8 * v6)];
        [v7 invalidate];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) removeAllObjects];
}

- (void)_accessQueue_correctPermissionsForInternalDirectories:(id *)directories
{
  v68 = *MEMORY[0x277D85DE8];
  if ([(NSURL *)self->_identifierURL checkResourceIsReachableAndReturnError:?])
  {
    type = [objc_opt_class() type];
    v6 = [MEMORY[0x277CBEBC0] pf_roleIdentifierURLForType:type identifierURL:self->_identifierURL];
    v7 = [MEMORY[0x277CBEBC0] pf_descriptorIdentifierURLForType:type identifierURL:self->_identifierURL];
    expectedURLResourceValuesForFiles = [objc_opt_class() expectedURLResourceValuesForFiles];
    v9 = [expectedURLResourceValuesForFiles objectForKey:*MEMORY[0x277CBE878]];

    v49 = v9;
    if (v9)
    {
      bOOLValue = [v9 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    expectedURLResourceValuesForFiles2 = [objc_opt_class() expectedURLResourceValuesForFiles];
    v11 = [expectedURLResourceValuesForFiles2 objectForKey:*MEMORY[0x277CBE7F8]];

    v12 = *MEMORY[0x277CBE800];
    v48 = v11;
    if (v11)
    {
      v12 = v11;
    }

    v13 = v12;
    v14 = PBFLogPosterContents(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      identifierURL = self->_identifierURL;
      *buf = 138412290;
      *v65 = identifierURL;
      _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, "[PBFPosterModelStoreCoordinator _accessQueue_correctPermissionsForInternalDirectories]> securing file system permissions for URLs under: %@", buf, 0xCu);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    selfCopy = self;
    v52 = v6;
    v66[0] = self->_identifierURL;
    v66[1] = v6;
    v50 = v7;
    v66[2] = v7;
    obj = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:3];
    v16 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v61;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v61 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v60 + 1) + 8 * i);
          v59 = 0;
          v21 = [v20 pbf_setFileProtection:v13 error:&v59];
          v22 = v59;
          v23 = v22;
          if ((v21 & 1) == 0)
          {
            pf_isFileNotFoundError = [v22 pf_isFileNotFoundError];
            v25 = pf_isFileNotFoundError;
            v26 = PBFLogPosterContents(pf_isFileNotFoundError);
            v27 = v26;
            if (v25)
            {
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v65 = v20;
                _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEFAULT, "[PBFPosterModelStoreCoordinator _accessQueue_correctPermissionsForInternalDirectories]> skipping nonexistent file: %@", buf, 0xCu);
              }

              goto LABEL_39;
            }

            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              *v65 = v13;
              *&v65[8] = 2112;
              *&v65[10] = v20;
              *&v65[18] = 2114;
              *&v65[20] = v23;
              _os_log_error_impl(&dword_21B526000, v27, OS_LOG_TYPE_ERROR, "[PBFPosterModelStoreCoordinator _accessQueue_correctPermissionsForInternalDirectories]> failed to correct file protection (%{public}@) for file %@: %{public}@", buf, 0x20u);
            }
          }

          v58 = 0;
          v28 = [v20 pbf_setPurgable:0 error:&v58];
          v29 = v58;
          v27 = v29;
          if ((v28 & 1) == 0)
          {
            v30 = PBFLogPosterContents(v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v65 = v20;
              *&v65[8] = 2114;
              *&v65[10] = v27;
              _os_log_error_impl(&dword_21B526000, v30, OS_LOG_TYPE_ERROR, "[PBFPosterModelStoreCoordinator _accessQueue_correctPermissionsForInternalDirectories]> failed to correct file purgable for file %@: %{public}@", buf, 0x16u);
            }
          }

          v57 = 0;
          v31 = [v20 pf_setExcludedFromBackup:bOOLValue error:&v57];
          v32 = v57;
          v33 = v32;
          if ((v31 & 1) == 0)
          {
            v34 = PBFLogPosterContents(v32);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109634;
              *v65 = bOOLValue;
              *&v65[4] = 2112;
              *&v65[6] = v20;
              *&v65[14] = 2114;
              *&v65[16] = v33;
              _os_log_error_impl(&dword_21B526000, v34, OS_LOG_TYPE_ERROR, "[PBFPosterModelStoreCoordinator _correctPermissionsForInternalDirectories]> failed to correct exclude-from-backup (%{BOOL}u) for file %@: %{public}@", buf, 0x1Cu);
            }
          }

          if (directories && v27 | v33 | v23)
          {
            if (v33)
            {
              v35 = v33;
            }

            else
            {
              v35 = v23;
            }

            if (v27)
            {
              v36 = v27;
            }

            else
            {
              v36 = v35;
            }

            *directories = v36;
          }

LABEL_39:
        }

        v17 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
      }

      while (v17);
    }

    v37 = [MEMORY[0x277CBEBC0] pf_posterPathScratchURLForInstanceURL:selfCopy->_identifierURL];
    if (([v37 checkResourceIsReachableAndReturnError:0] & 1) == 0)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v39 = PFFileProtectionNoneAttributes();
      v56 = 0;
      v40 = [defaultManager createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:v39 error:&v56];
      v41 = v56;

      if ((v40 & 1) == 0)
      {
        v43 = PBFLogPosterContents(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterModelStoreCoordinator _accessQueue_correctPermissionsForInternalDirectories:selfCopy];
        }
      }
    }

    v55 = 0;
    v44 = [v37 pf_setExcludedFromBackup:1 error:&v55];
    v45 = v55;
    v46 = v45;
    if ((v44 & 1) == 0)
    {
      v47 = PBFLogPosterContents(v45);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator _accessQueue_correctPermissionsForInternalDirectories:selfCopy];
      }
    }
  }
}

- (id)_accessQueue_contentsOfURLWithinStore:(id)store resourceKeys:(id)keys standardizeURLs:(BOOL)ls
{
  lsCopy = ls;
  v44 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  keysCopy = keys;
  v30 = storeCopy;
  if (([storeCopy isEqual:self->_identifierURL] & 1) != 0 || (objc_msgSend(storeCopy, "URLByStandardizingPath"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "path"), uRLByStandardizingPath = objc_claimAutoreleasedReturnValue(), -[NSURL URLByStandardizingPath](self->_identifierURL, "URLByStandardizingPath"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "path"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(uRLByStandardizingPath, "hasPrefix:", v12), v12, v11, uRLByStandardizingPath, v10, v13))
  {
    if ([storeCopy pbf_isDirectory])
    {
      v37 = 0;
      v38 = &v37;
      v39 = 0x3032000000;
      v40 = __Block_byref_object_copy__1;
      v41 = __Block_byref_object_dispose__1;
      v42 = 0;
      fileManager = self->_fileManager;
      allObjects = [keysCopy allObjects];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __101__PBFPosterModelStoreCoordinator__accessQueue_contentsOfURLWithinStore_resourceKeys_standardizeURLs___block_invoke;
      v35[3] = &unk_2782C72F0;
      v35[4] = &v37;
      v36 = lsCopy;
      v16 = [(NSFileManager *)fileManager enumeratorAtURL:storeCopy includingPropertiesForKeys:allObjects options:16 errorHandler:v35];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v31 objects:v43 count:16];
      if (!v18)
      {
        goto LABEL_18;
      }

      v19 = *v32;
      while (1)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          v22 = v38[5];
          if (!v22)
          {
            v23 = objc_opt_new();
            v24 = v38[5];
            v38[5] = v23;

            v22 = v38[5];
            if (!lsCopy)
            {
              goto LABEL_14;
            }

LABEL_13:
            uRLByStandardizingPath = [v21 URLByStandardizingPath];
            v21 = uRLByStandardizingPath;
            goto LABEL_14;
          }

          if (lsCopy)
          {
            goto LABEL_13;
          }

LABEL_14:
          [v22 addObject:v21];
          if (lsCopy)
          {
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v31 objects:v43 count:16];
        if (!v18)
        {
LABEL_18:

          v25 = v38[5];
          _Block_object_dispose(&v37, 8);

          goto LABEL_21;
        }
      }
    }

    allObjects2 = [keysCopy allObjects];
    v27 = [storeCopy resourceValuesForKeys:allObjects2 error:0];

    v25 = [MEMORY[0x277CBEB70] orderedSetWithObject:storeCopy];
  }

  else
  {
    v25 = 0;
  }

LABEL_21:

  return v25;
}

uint64_t __101__PBFPosterModelStoreCoordinator__accessQueue_contentsOfURLWithinStore_resourceKeys_standardizeURLs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(*(a1 + 32) + 8) + 40);
  if (!v7)
  {
    v8 = objc_opt_new();
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v7 = *(*(*(a1 + 32) + 8) + 40);
  }

  if (*(a1 + 40))
  {
    v11 = [v5 URLByStandardizingPath];
    [v7 addObject:v11];
  }

  else
  {
    [v7 addObject:v5];
  }

  return 0;
}

- (void)invalidate
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PBFPosterModelStoreCoordinator_invalidate__block_invoke;
  block[3] = &unk_2782C5888;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (NSString)role
{
  v13 = *MEMORY[0x277D85DE8];
  if (PFPosterRoleIsValid())
  {
    v3 = self->_role;
  }

  else
  {
    v3 = PRPosterRoleLookupForExtensionBundleIdentifier(self->_extensionIdentifier, self->_descriptorIdentifier);
    v4 = PBFLogPosterContents(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      role = self->_role;
      v7 = 136315650;
      v8 = "[PBFPosterModelStoreCoordinator role]";
      v9 = 2112;
      v10 = role;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "%s> invalid role: %@ – returning: %@", &v7, 0x20u);
    }
  }

  return v3;
}

- (id)identityOfLatestVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__PBFPosterModelStoreCoordinator_identityOfLatestVersion__block_invoke;
  v5[3] = &unk_2782C7280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __57__PBFPosterModelStoreCoordinator_identityOfLatestVersion__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessQueue_identityOfLatestVersion];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)identityForVersion:(unint64_t)version supplement:(unint64_t)supplement
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__PBFPosterModelStoreCoordinator_identityForVersion_supplement___block_invoke;
  v7[3] = &unk_2782C7318;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = version;
  v7[7] = supplement;
  dispatch_sync(accessQueue, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __64__PBFPosterModelStoreCoordinator_identityForVersion_supplement___block_invoke(void *a1)
{
  v2 = *(a1[4] + 96);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
  v4 = [v2 objectForKey:v3];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[7]];
  v6 = [v4 objectForKey:v5];
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(a1[5] + 8) + 40))
  {
    v9 = *(a1[4] + 104);
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
    v10 = [v9 objectForKey:v15];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[7]];
    v12 = [v10 objectForKey:v11];
    v13 = *(a1[5] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (id)pathForVersion:(unint64_t)version supplement:(unint64_t)supplement
{
  v5 = [(PBFPosterModelStoreCoordinator *)self identityForVersion:version supplement:supplement];
  if (v5)
  {
    v6 = [(PBFPosterModelStoreCoordinator *)self pathForIdentity:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pathForIdentity:(id)identity
{
  if (identity)
  {
    v4 = [(PBFPosterModelStoreCoordinator *)self _posterPathForIdentity:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)allPosterPaths
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__PBFPosterModelStoreCoordinator_allPosterPaths__block_invoke;
  v5[3] = &unk_2782C7280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __48__PBFPosterModelStoreCoordinator_allPosterPaths__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessQueue_allPosterPaths];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSDictionary)providerInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__PBFPosterModelStoreCoordinator_providerInfo__block_invoke;
  v5[3] = &unk_2782C7280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__PBFPosterModelStoreCoordinator_providerInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessQueue_providerInfoWithError:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  providerInfo = [(PBFPosterModelStoreCoordinator *)self providerInfo];
  v6 = [providerInfo objectForKey:subscriptCopy];

  return v6;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  v9 = objectCopy;
  v10 = v9;
  v19 = v9;
  if (v9)
  {
    v11 = [v9 conformsToProtocol:&unk_282D60B50];
    v10 = v19;
    if ((v11 & 1) == 0)
    {
      [PBFPosterModelStoreCoordinator setObject:a2 forKeyedSubscript:?];
    }
  }

  v12 = subscriptCopy;
  if (!v12)
  {
    [PBFPosterModelStoreCoordinator setObject:a2 forKeyedSubscript:?];
  }

  v13 = v12;
  if (([v12 conformsToProtocol:&unk_282D35BC8] & 1) == 0)
  {
    [PBFPosterModelStoreCoordinator setObject:a2 forKeyedSubscript:?];
  }

  providerInfo = [(PBFPosterModelStoreCoordinator *)self providerInfo];
  v15 = [providerInfo mutableCopy];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = objc_opt_new();
  }

  v18 = v17;

  if (v19)
  {
    [v18 setObject:v19 forKeyedSubscript:v13];
  }

  else
  {
    [v18 removeObjectForKey:v13];
  }

  [(PBFPosterModelStoreCoordinator *)self setProviderInfo:v18];
}

- (BOOL)setProviderInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v7 = infoCopy;
  if (self->_readonly)
  {
    v8 = 0;
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    v21 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PBFPosterModelStoreCoordinator_setProviderInfo_error___block_invoke;
    block[3] = &unk_2782C7340;
    block[4] = self;
    v14 = infoCopy;
    v15 = &v16;
    dispatch_sync(accessQueue, block);
    v10 = v17;
    if (error)
    {
      v11 = v17[5];
      if (v11)
      {
        *error = v11;
        v10 = v17;
      }
    }

    v8 = v10[5] == 0;

    _Block_object_dispose(&v16, 8);
  }

  return v8;
}

void __56__PBFPosterModelStoreCoordinator_setProviderInfo_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  obj = 0;
  [v2 _accessQueue_writeProviderInfo:v1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
}

- (id)_posterPathForIdentity:(id)identity
{
  identityCopy = identity;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PBFPosterModelStoreCoordinator__posterPathForIdentity___block_invoke;
  block[3] = &unk_2782C7368;
  v10 = identityCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identityCopy;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __57__PBFPosterModelStoreCoordinator__posterPathForIdentity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessQueue_posterPathForIdentity:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_accessQueue_posterPathForIdentity:(id)identity
{
  identityCopy = identity;
  v5 = self->_providerURL;
  accessQueue_stagedPosterIdentityBySupplementByVersion = self->_accessQueue_stagedPosterIdentityBySupplementByVersion;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(identityCopy, "version")}];
  v8 = [(NSMutableDictionary *)accessQueue_stagedPosterIdentityBySupplementByVersion objectForKey:v7];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(identityCopy, "supplement")}];
  v10 = [v8 objectForKey:v9];

  if (v10)
  {
    v11 = __providerURLForOptions(1, self->_providerURL, identityCopy);

    v5 = v11;
  }

  v12 = [MEMORY[0x277D3EBA0] pathWithProviderURL:v5 identity:identityCopy];

  return v12;
}

- (id)pathOfLatestVersion
{
  identityOfLatestVersion = [(PBFPosterModelStoreCoordinator *)self identityOfLatestVersion];
  v4 = [(PBFPosterModelStoreCoordinator *)self pathForIdentity:identityOfLatestVersion];

  return v4;
}

- (BOOL)hasKnownVersions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PBFPosterModelStoreCoordinator_hasKnownVersions__block_invoke;
  v5[3] = &unk_2782C7280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__50__PBFPosterModelStoreCoordinator_hasKnownVersions__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 96) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (void)reapEverythingExceptLatestVersion
{
  if (!self->_readonly)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__PBFPosterModelStoreCoordinator_reapEverythingExceptLatestVersion__block_invoke;
    block[3] = &unk_2782C5888;
    block[4] = self;
    dispatch_async(accessQueue, block);
  }
}

void __67__PBFPosterModelStoreCoordinator_reapEverythingExceptLatestVersion__block_invoke(uint64_t a1)
{
  v2 = __knownVersions(*(*(a1 + 32) + 96));
  v3 = __knownVersions(*(*(a1 + 32) + 104));
  if ([v3 count])
  {
    [v2 addIndexes:v3];
  }

  if ([v2 count])
  {
    v4 = [v2 lastIndex];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __67__PBFPosterModelStoreCoordinator_reapEverythingExceptLatestVersion__block_invoke_2;
    v5[3] = &unk_2782C73B8;
    v5[4] = *(a1 + 32);
    v5[5] = v4;
    [v2 enumerateIndexesUsingBlock:v5];
  }
}

void __67__PBFPosterModelStoreCoordinator_reapEverythingExceptLatestVersion__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 96);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKey:v5];
  v7 = __knownVersions(v6);

  [v7 count];
  if ([v7 count])
  {
    v8 = [v7 lastIndex];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__PBFPosterModelStoreCoordinator_reapEverythingExceptLatestVersion__block_invoke_3;
    v10[3] = &unk_2782C7390;
    v9 = *(a1 + 32);
    v10[6] = *(a1 + 40);
    v10[7] = v8;
    v10[4] = v9;
    v10[5] = a2;
    [v7 enumerateIndexesUsingBlock:v10];
  }
}

id *__67__PBFPosterModelStoreCoordinator_reapEverythingExceptLatestVersion__block_invoke_3(id *result, id a2)
{
  if (result[5] != result[6] || result[7] != a2)
  {
    return [result[4] _accessQueue_removeSupplement:a2 forVersion:? error:?];
  }

  return result;
}

- (void)reapSnapshots
{
  if (!self->_readonly)
  {
    [(PBFPosterModelStoreCoordinator *)self pbf_enumerateSnapshotCoordinators:&__block_literal_global_87];
  }
}

- (id)addNewVersionWithContents:(id)contents error:(id *)error
{
  contentsCopy = contents;
  v7 = contentsCopy;
  if (self->_readonly)
  {
    v8 = 0;
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__1;
    v27 = __Block_byref_object_dispose__1;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__1;
    v21 = __Block_byref_object_dispose__1;
    v22 = 0;
    accessQueue = self->_accessQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__PBFPosterModelStoreCoordinator_addNewVersionWithContents_error___block_invoke;
    v13[3] = &unk_2782C73E0;
    v15 = &v23;
    v13[4] = self;
    v14 = contentsCopy;
    v16 = &v17;
    dispatch_sync(accessQueue, v13);
    v10 = v18[5];
    if (v10)
    {
      if (error)
      {
        v10 = v10;
        *error = v10;
      }

      v11 = PBFLogPosterContents(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator addNewVersionWithContents:error:];
      }
    }

    v8 = v24[5];

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  return v8;
}

void __66__PBFPosterModelStoreCoordinator_addNewVersionWithContents_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = 0;
  v5 = [v2 _accessQueue_setupNewVersionWithOptions:0 contents:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)addNewSupplementWithError:(id *)error
{
  if (self->_readonly)
  {
    v3 = 0;
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    v21 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__1;
    v14 = __Block_byref_object_dispose__1;
    v15 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__PBFPosterModelStoreCoordinator_addNewSupplementWithError___block_invoke;
    block[3] = &unk_2782C7408;
    block[4] = self;
    block[5] = &v16;
    block[6] = &v10;
    dispatch_sync(accessQueue, block);
    v6 = v11[5];
    if (v6)
    {
      if (error)
      {
        v6 = v6;
        *error = v6;
      }

      v7 = PBFLogPosterContents(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator addNewSupplementWithError:];
      }
    }

    v3 = v17[5];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v16, 8);
  }

  return v3;
}

void __60__PBFPosterModelStoreCoordinator_addNewSupplementWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = 0;
  v4 = [v2 _accessQueue_setupNewSupplementWithOptions:0 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)stageNewVersionWithContents:(id)contents error:(id *)error
{
  contentsCopy = contents;
  v7 = contentsCopy;
  if (self->_readonly)
  {
    v8 = 0;
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__1;
    v27 = __Block_byref_object_dispose__1;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__1;
    v21 = __Block_byref_object_dispose__1;
    v22 = 0;
    accessQueue = self->_accessQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__PBFPosterModelStoreCoordinator_stageNewVersionWithContents_error___block_invoke;
    v13[3] = &unk_2782C73E0;
    v15 = &v23;
    v13[4] = self;
    v14 = contentsCopy;
    v16 = &v17;
    dispatch_sync(accessQueue, v13);
    v10 = v18[5];
    if (v10)
    {
      if (error)
      {
        v10 = v10;
        *error = v10;
      }

      v11 = PBFLogPosterContents(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator stageNewVersionWithContents:error:];
      }
    }

    v8 = v24[5];

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  return v8;
}

void __68__PBFPosterModelStoreCoordinator_stageNewVersionWithContents_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = 0;
  v5 = [v2 _accessQueue_setupNewVersionWithOptions:1 contents:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)stageNewSupplementWithError:(id *)error
{
  if (self->_readonly)
  {
    v3 = 0;
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    v21 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__1;
    v14 = __Block_byref_object_dispose__1;
    v15 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__PBFPosterModelStoreCoordinator_stageNewSupplementWithError___block_invoke;
    block[3] = &unk_2782C7408;
    block[4] = self;
    block[5] = &v16;
    block[6] = &v10;
    dispatch_sync(accessQueue, block);
    v6 = v11[5];
    if (v6)
    {
      if (error)
      {
        v6 = v6;
        *error = v6;
      }

      v7 = PBFLogPosterContents(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator stageNewSupplementWithError:];
      }
    }

    v3 = v17[5];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v16, 8);
  }

  return v3;
}

void __62__PBFPosterModelStoreCoordinator_stageNewSupplementWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = 0;
  v4 = [v2 _accessQueue_setupNewSupplementWithOptions:1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)abortStaged
{
  if (!self->_readonly)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PBFPosterModelStoreCoordinator_abortStaged__block_invoke;
    block[3] = &unk_2782C5888;
    block[4] = self;
    dispatch_sync(accessQueue, block);
  }
}

uint64_t __45__PBFPosterModelStoreCoordinator_abortStaged__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__PBFPosterModelStoreCoordinator_abortStaged__block_invoke_2;
  v5[3] = &unk_2782C7430;
  v5[4] = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
  return [*(*(a1 + 32) + 104) removeAllObjects];
}

void __45__PBFPosterModelStoreCoordinator_abortStaged__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 keyEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) _accessQueue_removeSupplement:objc_msgSend(*(*(&v11 + 1) + 8 * v10++) forVersion:"unsignedLongLongValue") error:{objc_msgSend(v5, "unsignedLongLongValue"), 0}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)commitStagedWithError:(id *)error
{
  if (self->_readonly)
  {
    v3 = 0;
  }

  else
  {
    v6 = self->_fileManager;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__1;
    v19 = __Block_byref_object_dispose__1;
    v20 = 0;
    accessQueue = self->_accessQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__PBFPosterModelStoreCoordinator_commitStagedWithError___block_invoke;
    v11[3] = &unk_2782C7480;
    v11[4] = self;
    v8 = v6;
    v12 = v8;
    v13 = &v15;
    v14 = &v21;
    dispatch_sync(accessQueue, v11);
    if (error)
    {
      v9 = v16[5];
      if (v9)
      {
        *error = v9;
      }
    }

    v3 = *(v22 + 24);

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);
  }

  return v3 & 1;
}

void __56__PBFPosterModelStoreCoordinator_commitStagedWithError___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = *(a1 + 32);
  v5 = *(v4 + 104);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __56__PBFPosterModelStoreCoordinator_commitStagedWithError___block_invoke_2;
  v25[3] = &unk_2782C7458;
  v25[4] = v4;
  v6 = v2;
  v26 = v6;
  v7 = v3;
  v27 = v7;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v28 = v8;
  v29 = v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v25];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v10 = v7;
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 104);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __56__PBFPosterModelStoreCoordinator_commitStagedWithError___block_invoke_3;
    v24[3] = &unk_2782C7430;
    v24[4] = v11;
    [v12 enumerateKeysAndObjectsUsingBlock:v24];
    v10 = v6;
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        v19 = [MEMORY[0x277CCAA00] defaultManager];
        [v19 removeItemAtURL:v18 error:0];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v15);
  }

  [*(*(a1 + 32) + 104) removeAllObjects];
}

void __56__PBFPosterModelStoreCoordinator_commitStagedWithError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v29 = a3;
  obj = [v29 keyEnumerator];
  v28 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v28)
  {
    v27 = *v36;
    while (2)
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [v29 objectForKey:*(*(&v35 + 1) + 8 * i)];
        v7 = __providerURLForOptions(1, *(*(a1 + 32) + 48), v6);
        v8 = __providerURLForOptions(0, *(*(a1 + 32) + 48), v6);
        v9 = [MEMORY[0x277D3EBA0] pathWithProviderURL:v7 identity:v6];
        v31 = v8;
        v10 = [MEMORY[0x277D3EBA0] pathWithProviderURL:v8 identity:v6];
        v11 = [v9 supplementURL];
        v32 = [v10 supplementURL];
        v12 = [v9 instanceURL];
        v13 = [v10 instanceURL];
        [*(a1 + 40) addObject:v11];
        [*(a1 + 48) addObject:v11];
        [*(a1 + 40) addObject:v7];
        [*(a1 + 48) addObject:v7];
        [*(a1 + 40) addObject:v12];
        [*(a1 + 48) addObject:v12];
        v30 = v13;
        LOBYTE(v13) = [v13 checkResourceIsReachableAndReturnError:0];
        v14 = [v12 checkResourceIsReachableAndReturnError:0];
        if ((v13 & 1) == 0 && v14 && ([*(a1 + 48) addObject:v31], v15 = *(a1 + 56), v16 = *(*(a1 + 64) + 8), v34 = *(v16 + 40), v17 = objc_msgSend(v15, "moveItemAtURL:toURL:error:", v12, v30, &v34), objc_storeStrong((v16 + 40), v34), !v17) || (v18 = objc_msgSend(v32, "checkResourceIsReachableAndReturnError:", 0), v19 = objc_msgSend(v11, "checkResourceIsReachableAndReturnError:", 0), (v18 & 1) == 0) && v19 && (objc_msgSend(*(a1 + 48), "addObject:", v32), v20 = *(a1 + 56), v21 = *(*(a1 + 64) + 8), v33 = *(v21 + 40), v22 = objc_msgSend(v20, "moveItemAtURL:toURL:error:", v11, v32, &v33), objc_storeStrong((v21 + 40), v33), !v22))
        {
          *a4 = 1;

          goto LABEL_22;
        }

        v23 = [MEMORY[0x277D3EDE8] loadFocusConfigurationForPath:v9 error:0];
        if (v23)
        {
          [MEMORY[0x277D3EDE8] storeFocusConfigurationForPath:v10 focusConfiguration:v23 error:0];
        }

        else
        {
          [MEMORY[0x277D3EDE8] removeFocusConfigurationForPath:v10 error:0];
        }

        v24 = [MEMORY[0x277D3EDE8] loadSuggestionMetadataForPath:v9 error:0];
        if (v24)
        {
          [MEMORY[0x277D3EDE8] storeSuggestionMetadataForPath:v10 suggestionMetadata:v24 error:0];
        }

        else
        {
          [MEMORY[0x277D3EDE8] removeSuggestionMetadataForPath:v10 error:0];
        }
      }

      v28 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:
}

void __56__PBFPosterModelStoreCoordinator_commitStagedWithError___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(*(a1 + 32) + 96);
  v6 = a3;
  v7 = [v5 objectForKey:v10];
  v8 = v7;
  if (v7)
  {
    [v7 addEntriesFromDictionary:v6];
  }

  else
  {
    v9 = [v6 mutableCopy];

    [*(*(a1 + 32) + 96) setObject:v9 forKeyedSubscript:v10];
    v6 = v9;
  }
}

- (void)removeSupplement:(unint64_t)supplement forVersion:(unint64_t)version error:(id *)error
{
  if (!self->_readonly)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__1;
    v14 = __Block_byref_object_dispose__1;
    v15 = 0;
    accessQueue = self->_accessQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__PBFPosterModelStoreCoordinator_removeSupplement_forVersion_error___block_invoke;
    v9[3] = &unk_2782C74A8;
    v9[6] = supplement;
    v9[7] = version;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(accessQueue, v9);
    v7 = v11[5];
    if (v7)
    {
      if (error)
      {
        v7 = v7;
        *error = v7;
      }

      v8 = PBFLogPosterContents(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator removeSupplement:forVersion:error:];
      }
    }

    _Block_object_dispose(&v10, 8);
  }
}

void __68__PBFPosterModelStoreCoordinator_removeSupplement_forVersion_error___block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  v3 = a1[4];
  v4 = *(a1[5] + 8);
  obj = 0;
  [v3 _accessQueue_removeSupplement:v1 forVersion:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
}

- (id)pbf_posterSnapshotCoordinatorForIdentity:(id)identity
{
  identityCopy = identity;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__PBFPosterModelStoreCoordinator_pbf_posterSnapshotCoordinatorForIdentity___block_invoke;
  block[3] = &unk_2782C7368;
  v10 = identityCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identityCopy;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __75__PBFPosterModelStoreCoordinator_pbf_posterSnapshotCoordinatorForIdentity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessQueue_posterSnapshotCoordinatorForIdentity:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)pbf_enumerateSnapshotCoordinators:(id)coordinators
{
  coordinatorsCopy = coordinators;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__PBFPosterModelStoreCoordinator_pbf_enumerateSnapshotCoordinators___block_invoke;
  v7[3] = &unk_2782C74D0;
  v7[4] = self;
  v8 = coordinatorsCopy;
  v6 = coordinatorsCopy;
  dispatch_sync(accessQueue, v7);
}

- (void)_accessQueue_enumerateSnapshotCoordinators:(id)coordinators
{
  v18 = *MEMORY[0x277D85DE8];
  coordinatorsCopy = coordinators;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _accessQueue_allPosterPaths = [(PBFPosterModelStoreCoordinator *)self _accessQueue_allPosterPaths];
  v6 = [_accessQueue_allPosterPaths countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(_accessQueue_allPosterPaths);
      }

      identity = [*(*(&v12 + 1) + 8 * v9) identity];
      v11 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_posterSnapshotCoordinatorForIdentity:identity];
      coordinatorsCopy[2](coordinatorsCopy, v11, identity, &v16);

      LOBYTE(v11) = v16;
      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [_accessQueue_allPosterPaths countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)_accessQueue_posterSnapshotCoordinatorForIdentity:(id)identity
{
  identityCopy = identity;
  accessQueue_identityToPosterSnapshotCoordinator = self->_accessQueue_identityToPosterSnapshotCoordinator;
  if (!accessQueue_identityToPosterSnapshotCoordinator)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v7 = self->_accessQueue_identityToPosterSnapshotCoordinator;
    self->_accessQueue_identityToPosterSnapshotCoordinator = weakToStrongObjectsMapTable;

    accessQueue_identityToPosterSnapshotCoordinator = self->_accessQueue_identityToPosterSnapshotCoordinator;
  }

  v8 = [(NSMapTable *)accessQueue_identityToPosterSnapshotCoordinator objectForKey:identityCopy];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_posterPathForIdentity:identityCopy];
    if (v10)
    {
      v11 = [[PBFPosterSnapshotCoordinator alloc] initWithPath:v10];
      [(NSMapTable *)self->_accessQueue_identityToPosterSnapshotCoordinator setObject:v11 forKey:identityCopy];
      v9 = v11;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)_accessQueue_checkEnvironmentConsistency
{
  v186 = *MEMORY[0x277D85DE8];
  v4 = PBFLogPosterContents(self);
  v5 = os_signpost_id_generate(v4);

  v7 = PBFLogPosterContents(v6);
  v8 = v7;
  spid = v5;
  v130 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    extensionIdentifier = self->_extensionIdentifier;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138543618;
    v171 = extensionIdentifier;
    v172 = 2114;
    v173 = v11;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v8, OS_SIGNPOST_INTERVAL_BEGIN, spid, "checkEnvironmentConsistency", "extension: %{public}@; class: %{public}@", buf, 0x16u);
  }

  v12 = self->_providerInfoURL;
  v13 = self->_containerVersionsURL;
  selfCopy = self;
  v15 = self->_identifierURL;
  v16 = selfCopy->_providerURL;
  v17 = selfCopy->_posterUUID;
  v18 = selfCopy->_extensionIdentifier;
  v149 = selfCopy;
  v147 = selfCopy->_fileManager;
  v19 = v16;
  NSClassFromString(&cfstr_Nsurl.isa);
  if (!v19)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  v129 = v19;

  v20 = v12;
  NSClassFromString(&cfstr_Nsurl.isa);
  if (!v20)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  v131 = v20;

  v21 = v13;
  NSClassFromString(&cfstr_Nsurl.isa);
  if (!v21)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  v132 = v21;

  v22 = v15;
  NSClassFromString(&cfstr_Nsurl.isa);
  if (!v22)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  v23 = v149;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  v133 = v22;

  v24 = v17;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v24)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  v144 = v24;

  v25 = v18;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v25)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  v143 = v25;

  v169 = 0;
  v26 = [(NSURL *)v133 checkResourceIsReachableAndReturnError:&v169];
  v27 = v169;
  v28 = v27;
  if (!v26)
  {
    v42 = PBFLogPosterContents(v27);
    v43 = v42;
    if (v130 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
    {
      v44 = v149->_extensionIdentifier;
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      *buf = 138543874;
      v171 = v44;
      v172 = 2114;
      v173 = v46;
      v174 = 2114;
      v175 = v28;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v43, OS_SIGNPOST_INTERVAL_END, spid, "checkEnvironmentConsistency", "extension: %{public}@; class: %{public}@; failed? %{public}@", buf, 0x20u);
    }

    v47 = v28;
    goto LABEL_35;
  }

  v168 = v27;
  v29 = [(NSURL *)v132 checkResourceIsReachableAndReturnError:&v168];
  v30 = v168;

  if (!v29)
  {
    v48 = PBFLogPosterContents(v31);
    v49 = v48;
    if (v130 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
    {
      v50 = v149->_extensionIdentifier;
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      *buf = 138543874;
      v171 = v50;
      v172 = 2114;
      v173 = v52;
      v174 = 2114;
      v175 = v30;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v49, OS_SIGNPOST_INTERVAL_END, spid, "checkEnvironmentConsistency", "extension: %{public}@; class: %{public}@; failed? %{public}@", buf, 0x20u);
    }

    v47 = v30;
LABEL_35:
    v53 = v47;
    v54 = v47;
    goto LABEL_103;
  }

  if ([(NSURL *)v131 checkResourceIsReachableAndReturnError:0])
  {
    v167 = 0;
    v32 = [(PBFPosterModelStoreCoordinator *)v149 _accessQueue_providerInfoWithError:&v167];
    v33 = v167;
    v34 = v33;
    if (v33)
    {
      v35 = PBFLogPosterContents(v33);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator _accessQueue_checkEnvironmentConsistency];
      }

      v37 = PBFLogPosterContents(v36);
      v38 = v37;
      if (v130 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
      {
        v39 = v149->_extensionIdentifier;
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        *buf = 138543874;
        v171 = v39;
        v23 = v149;
        v172 = 2114;
        v173 = v41;
        v174 = 2114;
        v175 = v34;
        _os_signpost_emit_with_name_impl(&dword_21B526000, v38, OS_SIGNPOST_INTERVAL_END, spid, "checkEnvironmentConsistency", "extension: %{public}@; class: %{public}@; failed? %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    [(PBFPosterModelStoreCoordinator *)v149 _accessQueue_writeProviderInfo:MEMORY[0x277CBEC10] error:0];
  }

  v166 = v30;
  v127 = [(NSFileManager *)v147 contentsOfDirectoryAtURL:v132 includingPropertiesForKeys:0 options:1 error:&v166];
  v55 = v166;

  v125 = v55;
  if (!v55)
  {
    if (_accessQueue_checkEnvironmentConsistency___once != -1)
    {
      [PBFPosterModelStoreCoordinator _accessQueue_checkEnvironmentConsistency];
    }

    indexSet = [MEMORY[0x277CCAB58] indexSet];
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    obj = v127;
    v62 = [obj countByEnumeratingWithState:&v162 objects:v185 count:16];
    if (!v62)
    {
LABEL_98:

      v118 = __knownVersions(v23->_accessQueue_posterIdentityBySupplementByVersion);
      [v118 removeIndexes:indexSet];
      v150[0] = MEMORY[0x277D85DD0];
      v150[1] = 3221225472;
      v150[2] = __74__PBFPosterModelStoreCoordinator__accessQueue_checkEnvironmentConsistency__block_invoke_101;
      v150[3] = &unk_2782C74F8;
      v150[4] = v23;
      [v118 enumerateIndexesUsingBlock:v150];
      v119 = PBFLogPosterContents([(NSMutableDictionary *)v23->_accessQueue_stagedPosterIdentityBySupplementByVersion removeAllObjects]);
      v120 = v119;
      if (v130 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v119))
      {
        v121 = v23->_extensionIdentifier;
        v122 = objc_opt_class();
        v123 = NSStringFromClass(v122);
        *buf = 138543874;
        v171 = v121;
        v172 = 2114;
        v173 = v123;
        v174 = 2114;
        v175 = 0;
        _os_signpost_emit_with_name_impl(&dword_21B526000, v120, OS_SIGNPOST_INTERVAL_END, spid, "checkEnvironmentConsistency", "extension: %{public}@; class: %{public}@; failed? %{public}@", buf, 0x20u);
      }

      v54 = 0;
      v53 = v126;
      goto LABEL_102;
    }

    v63 = v62;
    v142 = *v163;
    while (1)
    {
      v64 = 0;
      v135 = v63;
      do
      {
        if (*v163 != v142)
        {
          objc_enumerationMutation(obj);
        }

        v65 = *(*(&v162 + 1) + 8 * v64);
        lastPathComponent = [v65 lastPathComponent];
        v67 = [_accessQueue_checkEnvironmentConsistency_numberFormatter numberFromString:lastPathComponent];
        unsignedLongLongValue = [v67 unsignedLongLongValue];

        v69 = _accessQueue_checkEnvironmentConsistency_numberFormatter;
        v70 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue];
        v71 = [v69 stringFromNumber:v70];
        v72 = [lastPathComponent isEqualToString:v71];

        if (!v72)
        {
          goto LABEL_88;
        }

        v74 = [MEMORY[0x277CBEBC0] pf_posterPathSupplementContainerURLForInstanceURL:v65];
        v75 = [v74 checkResourceIsReachableAndReturnError:0];
        if ((v75 & 1) == 0)
        {
          v76 = PBFLogPosterContents(v75);
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v171 = "[PBFPosterModelStoreCoordinator _accessQueue_checkEnvironmentConsistency]";
            v172 = 2112;
            v173 = v143;
            v174 = 2112;
            v175 = v144;
            v176 = 2048;
            v177 = unsignedLongLongValue;
            _os_log_impl(&dword_21B526000, v76, OS_LOG_TYPE_DEFAULT, "%s> creating migration supplement for provider=%@ uuid=%@ version=%llu", buf, 0x2Au);
          }

          v77 = [MEMORY[0x277CBEBC0] pf_posterPathSupplementURLForInstanceURL:v65 supplement:0];
          v78 = PFFileProtectionNoneAttributes();
          v161 = 0;
          [(NSFileManager *)v147 createDirectoryAtURL:v77 withIntermediateDirectories:1 attributes:v78 error:&v161];
          v79 = v161;

          if (v79)
          {
            v81 = PBFLogPosterContents(v80);
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v171 = "[PBFPosterModelStoreCoordinator _accessQueue_checkEnvironmentConsistency]";
              v172 = 2112;
              v173 = v79;
              _os_log_error_impl(&dword_21B526000, v81, OS_LOG_TYPE_ERROR, "%s> error creating migration supplement: %@", buf, 0x16u);
            }
          }
        }

        v140 = lastPathComponent;
        v160 = 0;
        v82 = [(NSFileManager *)v147 contentsOfDirectoryAtURL:v74 includingPropertiesForKeys:0 options:1 error:&v160];
        v83 = v160;
        v84 = v83;
        if (v83)
        {
          v85 = PBFLogPosterContents(v83);
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v171 = "[PBFPosterModelStoreCoordinator _accessQueue_checkEnvironmentConsistency]";
            v172 = 2112;
            v173 = v84;
            _os_log_error_impl(&dword_21B526000, v85, OS_LOG_TYPE_ERROR, "%s> error fetching supplements from filesystem: %@", buf, 0x16u);
          }
        }

        v137 = v84;
        v138 = v74;
        v148 = unsignedLongLongValue;
        v139 = v65;
        v141 = v64;
        indexSet2 = [MEMORY[0x277CCAB58] indexSet];
        v156 = 0u;
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v86 = v82;
        v87 = [v86 countByEnumeratingWithState:&v156 objects:v184 count:16];
        if (v87)
        {
          v88 = v87;
          v89 = *v157;
          do
          {
            for (i = 0; i != v88; ++i)
            {
              if (*v157 != v89)
              {
                objc_enumerationMutation(v86);
              }

              v91 = *(*(&v156 + 1) + 8 * i);
              lastPathComponent2 = [v91 lastPathComponent];
              v93 = [_accessQueue_checkEnvironmentConsistency_numberFormatter numberFromString:lastPathComponent2];
              unsignedLongLongValue2 = [v93 unsignedLongLongValue];

              v95 = _accessQueue_checkEnvironmentConsistency_numberFormatter;
              v96 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue2];
              v97 = [v95 stringFromNumber:v96];
              v98 = [lastPathComponent2 isEqualToString:v97];

              if (v98)
              {
                v155 = 0;
                v23 = v149;
                v100 = [(PBFPosterModelStoreCoordinator *)v149 _accessQueue_fetchIdentityForVersion:v148 supplement:unsignedLongLongValue2 error:&v155];
                v101 = v155;
                if (v100)
                {
                  v102 = v101 == 0;
                }

                else
                {
                  v102 = 0;
                }

                if (v102)
                {
                  [indexSet2 addIndex:unsignedLongLongValue2];
                  goto LABEL_83;
                }

                v103 = v101;
                v104 = PBFLogPosterContents(v101);
                if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
                {
                  [objc_opt_class() type];
                  v145 = NSStringFromPFServerPosterType();
                  *buf = 136316674;
                  v171 = "[PBFPosterModelStoreCoordinator _accessQueue_checkEnvironmentConsistency]";
                  v172 = 2112;
                  v173 = v143;
                  v174 = 2112;
                  v175 = v144;
                  v176 = 2112;
                  v177 = v145;
                  v178 = 2048;
                  v179 = v148;
                  v180 = 2048;
                  v181 = unsignedLongLongValue2;
                  v182 = 2112;
                  v183 = v103;
                  _os_log_error_impl(&dword_21B526000, v104, OS_LOG_TYPE_ERROR, "%s> error loading supplement from filesystem: provider=%@ uuid=%@ type=%@ version=%llu supplement=%llu : error=%@", buf, 0x48u);
                }
              }

              v23 = v149;
              if (v149->_readonly)
              {
                goto LABEL_84;
              }

              v105 = PBFLogReaper(v99);
              if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v171 = v91;
                _os_log_impl(&dword_21B526000, v105, OS_LOG_TYPE_DEFAULT, "REAPING %{public}@", buf, 0xCu);
              }

              v154 = 0;
              [(NSFileManager *)v147 removeItemAtURL:v91 error:&v154];
              v106 = v154;
              v100 = v106;
              if (v106)
              {
                v107 = PBFLogPosterContents(v106);
                if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v171 = "[PBFPosterModelStoreCoordinator _accessQueue_checkEnvironmentConsistency]";
                  v172 = 2112;
                  v173 = v100;
                  _os_log_error_impl(&dword_21B526000, v107, OS_LOG_TYPE_ERROR, "%s> error removing invalid supplement: %@", buf, 0x16u);
                }
              }

LABEL_83:

LABEL_84:
            }

            v88 = [v86 countByEnumeratingWithState:&v156 objects:v184 count:16];
          }

          while (v88);
        }

        v108 = [indexSet2 count];
        accessQueue_posterIdentityBySupplementByVersion = v23->_accessQueue_posterIdentityBySupplementByVersion;
        v110 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v148];
        v111 = [(NSMutableDictionary *)accessQueue_posterIdentityBySupplementByVersion objectForKey:v110];

        v112 = __knownVersions(v111);
        [v112 removeIndexes:indexSet2];
        v152[0] = MEMORY[0x277D85DD0];
        v152[1] = 3221225472;
        v152[2] = __74__PBFPosterModelStoreCoordinator__accessQueue_checkEnvironmentConsistency__block_invoke_100;
        v152[3] = &unk_2782C74F8;
        v153 = v111;
        v113 = v111;
        [v112 enumerateIndexesUsingBlock:v152];

        v63 = v135;
        lastPathComponent = v140;
        v64 = v141;
        v65 = v139;
        if (v108)
        {
          [indexSet addIndex:v148];
        }

        else
        {
LABEL_88:
          if (!v23->_readonly)
          {
            v114 = PBFLogReaper(v73);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v171 = v65;
              _os_log_impl(&dword_21B526000, v114, OS_LOG_TYPE_DEFAULT, "REAPING instance %{public}@", buf, 0xCu);
            }

            v151 = 0;
            [(NSFileManager *)v147 removeItemAtURL:v65 error:&v151];
            v115 = v151;
            v116 = v115;
            if (v115)
            {
              v117 = PBFLogPosterContents(v115);
              if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v171 = "[PBFPosterModelStoreCoordinator _accessQueue_checkEnvironmentConsistency]";
                v172 = 2112;
                v173 = v116;
                _os_log_error_impl(&dword_21B526000, v117, OS_LOG_TYPE_ERROR, "%s> error removing invalid version: %@", buf, 0x16u);
              }
            }
          }
        }

        ++v64;
      }

      while (v64 != v63);
      v63 = [obj countByEnumeratingWithState:&v162 objects:v185 count:16];
      if (!v63)
      {
        goto LABEL_98;
      }
    }
  }

  v57 = PBFLogPosterContents(v56);
  v58 = v57;
  if (v130 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
  {
    v59 = v23->_extensionIdentifier;
    v60 = objc_opt_class();
    v61 = NSStringFromClass(v60);
    *buf = 138543874;
    v171 = v59;
    v172 = 2114;
    v173 = v61;
    v174 = 2114;
    v175 = v125;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v58, OS_SIGNPOST_INTERVAL_END, spid, "checkEnvironmentConsistency", "extension: %{public}@; class: %{public}@; failed? %{public}@", buf, 0x20u);
  }

  v53 = v125;
  v54 = v125;
LABEL_102:

LABEL_103:

  return v54;
}

void __74__PBFPosterModelStoreCoordinator__accessQueue_checkEnvironmentConsistency__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = _accessQueue_checkEnvironmentConsistency_numberFormatter;
  _accessQueue_checkEnvironmentConsistency_numberFormatter = v0;

  v2 = _accessQueue_checkEnvironmentConsistency_numberFormatter;
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];
}

void __74__PBFPosterModelStoreCoordinator__accessQueue_checkEnvironmentConsistency__block_invoke_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v2 removeObjectForKey:v3];
}

void __74__PBFPosterModelStoreCoordinator__accessQueue_checkEnvironmentConsistency__block_invoke_101(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 96);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v2 removeObjectForKey:v3];
}

- (id)_accessQueue_providerInfoWithError:(id *)error
{
  v14[7] = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:self->_providerInfoURL options:1 error:error];
  if (v4)
  {
    v5 = MEMORY[0x277CCAAC8];
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v14[2] = objc_opt_class();
    v14[3] = objc_opt_class();
    v14[4] = objc_opt_class();
    v14[5] = objc_opt_class();
    v14[6] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:7];
    v8 = [v6 setWithArray:v7];
    v13 = 0;
    v9 = [v5 unarchivedObjectOfClasses:v8 fromData:v4 error:&v13];
    v10 = v13;

    if (error && v10)
    {
      v11 = v10;
      *error = v10;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  return v9;
}

- (void)_accessQueue_writeProviderInfo:(id)info error:(id *)error
{
  if (!self->_readonly)
  {
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:info requiringSecureCoding:1 error:error];
    if (v7)
    {
      v8 = v7;
      [v7 writeToURL:self->_providerInfoURL options:268435457 error:error];
      v7 = v8;
    }
  }
}

- (void)_accessQueue_invalidate
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectEnumerator = [(NSMapTable *)self->_accessQueue_identityToPosterSnapshotCoordinator objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v9 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMapTable *)self->_accessQueue_identityToPosterSnapshotCoordinator removeAllObjects];
  accessQueue_identityToPosterSnapshotCoordinator = self->_accessQueue_identityToPosterSnapshotCoordinator;
  self->_accessQueue_identityToPosterSnapshotCoordinator = 0;
}

- (id)_accessQueue_allPosterPaths
{
  v3 = objc_opt_new();
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __61__PBFPosterModelStoreCoordinator__accessQueue_allPosterPaths__block_invoke;
  v11 = &unk_2782C7548;
  v4 = v3;
  v12 = v4;
  selfCopy = self;
  v5 = _Block_copy(&v8);
  [(NSMutableDictionary *)self->_accessQueue_posterIdentityBySupplementByVersion enumerateKeysAndObjectsUsingBlock:v5, v8, v9, v10, v11];
  [(NSMutableDictionary *)self->_accessQueue_stagedPosterIdentityBySupplementByVersion enumerateKeysAndObjectsUsingBlock:v5];
  v6 = v4;

  return v4;
}

void __61__PBFPosterModelStoreCoordinator__accessQueue_allPosterPaths__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__PBFPosterModelStoreCoordinator__accessQueue_allPosterPaths__block_invoke_2;
  v7[3] = &unk_2782C7520;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __61__PBFPosterModelStoreCoordinator__accessQueue_allPosterPaths__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _accessQueue_posterPathForIdentity:?];
  [v1 bs_safeAddObject:v2];
}

- (id)_accessQueue_identityOfLatestVersion
{
  v3 = __knownVersions(self->_accessQueue_posterIdentityBySupplementByVersion);
  v4 = v3;
  if (v3)
  {
    accessQueue_posterIdentityBySupplementByVersion = self->_accessQueue_posterIdentityBySupplementByVersion;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "lastIndex")}];
    v7 = [(NSMutableDictionary *)accessQueue_posterIdentityBySupplementByVersion objectForKey:v6];

    v8 = __knownVersions(v7);
    v9 = v8;
    if (v8)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "lastIndex")}];
      v11 = [v7 objectForKey:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = __knownVersions(self->_accessQueue_stagedPosterIdentityBySupplementByVersion);

  if (v12)
  {
    accessQueue_stagedPosterIdentityBySupplementByVersion = self->_accessQueue_stagedPosterIdentityBySupplementByVersion;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "lastIndex")}];
    v15 = [(NSMutableDictionary *)accessQueue_stagedPosterIdentityBySupplementByVersion objectForKey:v14];

    v16 = __knownVersions(v15);
    v17 = v16;
    if (v16)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "lastIndex")}];
      v19 = [v15 objectForKey:v18];

      v11 = v19;
    }
  }

  return v11;
}

- (id)_accessQueue_setupNewVersionWithOptions:(unint64_t)options contents:(id)contents error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  _accessQueue_identityOfLatestVersion = [(PBFPosterModelStoreCoordinator *)self _accessQueue_identityOfLatestVersion];
  v11 = _accessQueue_identityOfLatestVersion;
  if (_accessQueue_identityOfLatestVersion)
  {
    v12 = -[PBFPosterModelStoreCoordinator _accessQueue_buildIdentityForVersion:supplement:](self, "_accessQueue_buildIdentityForVersion:supplement:", [_accessQueue_identityOfLatestVersion version] + 1, 0);
    if (([v12 isNewerVersionOfIdentity:v11] & 1) == 0)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"nextIdentity=%@ must be a newer form of latestIdentity=%@", v12, v11];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator _accessQueue_setupNewVersionWithOptions:a2 contents:self error:?];
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x21B5754A4);
    }
  }

  else
  {
    v12 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_buildIdentityForVersion:0 supplement:0];
  }

  v14 = __providerURLForOptions(options, self->_providerURL, v12);
  v15 = [MEMORY[0x277D3EBA0] pathWithProviderURL:v14 identity:v12];
  v30 = 0;
  v16 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_configureFileSystemForNewContents:contentsCopy atPath:v15 error:&v30];
  v17 = v30;
  v18 = v17;
  if (v16)
  {
    if (options)
    {
      if (options != 1)
      {
LABEL_18:
        v23 = v12;
        goto LABEL_19;
      }

      v19 = 104;
    }

    else
    {
      v19 = 96;
    }

    v24 = *(&self->super.isa + v19);
    v25 = MEMORY[0x277CBEB38];
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "supplement")}];
    v27 = [v25 dictionaryWithObject:v12 forKey:v26];
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "version")}];
    [v24 setObject:v27 forKey:v28];

    goto LABEL_18;
  }

  if (error)
  {
    v20 = v17;
    *error = v18;
  }

  instanceURL = [v15 instanceURL];
  v22 = PBFLogReaper(instanceURL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v32 = instanceURL;
    _os_log_impl(&dword_21B526000, v22, OS_LOG_TYPE_DEFAULT, "REAPING failed contents %{public}@", buf, 0xCu);
  }

  [(NSFileManager *)self->_fileManager removeItemAtURL:instanceURL error:0];
  v23 = 0;
LABEL_19:

  return v23;
}

- (BOOL)_accessQueue_configureFileSystemForNewContents:(id)contents atPath:(id)path error:(id *)error
{
  v118 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  pathCopy = path;
  context = objc_autoreleasePoolPush();
  v7 = MEMORY[0x277D3EB88];
  role = [(PBFPosterModelStoreCoordinator *)self role];
  v77 = [v7 temporaryPathForRole:role];

  identity = [pathCopy identity];
  v9 = MEMORY[0x277CBEBC0];
  contentsURL = [v77 contentsURL];
  v75 = [v9 pf_posterPathInstanceURLForVersionsURL:contentsURL version:{objc_msgSend(identity, "version")}];

  fileManager = self->_fileManager;
  v12 = PFFileProtectionNoneAttributes();
  v98 = 0;
  LODWORD(fileManager) = [(NSFileManager *)fileManager createDirectoryAtURL:v75 withIntermediateDirectories:1 attributes:v12 error:&v98];
  v73 = v98;

  if (!fileManager)
  {
    if (v73)
    {
      v107 = *MEMORY[0x277CCA7E8];
      v108 = v73;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
    }

    else
    {
      v13 = 0;
    }

    v31 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:v13];
    goto LABEL_36;
  }

  v13 = [MEMORY[0x277CBEBC0] pf_posterPathContentsURLForInstanceURL:v75];
  v14 = self->_fileManager;
  if (!contentsCopy)
  {
    v32 = PFFileProtectionNoneAttributes();
    v83 = 0;
    v33 = [(NSFileManager *)v14 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:v32 error:&v83];
    v69 = v83;

    if (v33)
    {
      goto LABEL_49;
    }

    if (v69)
    {
      v111 = *MEMORY[0x277CCA7E8];
      v112 = v69;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
    }

    else
    {
      v34 = 0;
    }

    v68 = v34;
    v37 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:?];
LABEL_32:
    v31 = v37;
    goto LABEL_35;
  }

  v97 = 0;
  v15 = [(NSFileManager *)v14 copyItemAtURL:contentsCopy toURL:v13 error:&v97];
  v16 = v97;
  v69 = v16;
  if (!v15)
  {
    if (v16)
    {
      v113 = *MEMORY[0x277CCA7E8];
      v114 = v16;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
    }

    else
    {
      v35 = 0;
    }

    v68 = v35;
    v37 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:?];
    goto LABEL_32;
  }

  v17 = self->_fileManager;
  v18 = PFFileProtectionNoneAttributes();
  path = [v13 path];
  v96 = 0;
  v20 = [(NSFileManager *)v17 setAttributes:v18 ofItemAtPath:path error:&v96];
  v68 = v96;

  if (!v20)
  {
    if (v68)
    {
      v115 = *MEMORY[0x277CCA7E8];
      v116 = v68;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
    }

    else
    {
      v36 = 0;
    }

    v31 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:v36];

    goto LABEL_35;
  }

  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__1;
  v94 = __Block_byref_object_dispose__1;
  v95 = 0;
  v21 = self->_fileManager;
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __94__PBFPosterModelStoreCoordinator__accessQueue_configureFileSystemForNewContents_atPath_error___block_invoke;
  v89[3] = &unk_2782C7570;
  v89[4] = &v90;
  [(NSFileManager *)v21 enumeratorAtURL:v13 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 errorHandler:v89];
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v22 = v86 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v85 objects:v117 count:16];
  if (v23)
  {
    v24 = *v86;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v86 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v85 + 1) + 8 * i);
        v27 = self->_fileManager;
        v28 = PFFileProtectionNoneAttributes();
        path2 = [v26 path];
        v84 = 0;
        LOBYTE(v26) = [(NSFileManager *)v27 setAttributes:v28 ofItemAtPath:path2 error:&v84];
        v30 = v84;

        if ((v26 & 1) == 0)
        {
          v38 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:0];
          v39 = v91[5];
          v91[5] = v38;

          goto LABEL_28;
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v85 objects:v117 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:

  v40 = v91[5];
  if (v40)
  {
    v31 = v40;

    _Block_object_dispose(&v90, 8);
LABEL_35:

LABEL_36:
    v41 = 0;
    goto LABEL_37;
  }

  _Block_object_dispose(&v90, 8);
LABEL_49:

  v51 = [MEMORY[0x277CBEBC0] pf_posterPathSupplementURLForInstanceURL:v75 supplement:{objc_msgSend(identity, "supplement")}];
  v52 = self->_fileManager;
  v53 = PFFileProtectionNoneAttributes();
  v82 = 0;
  LOBYTE(v52) = [(NSFileManager *)v52 createDirectoryAtURL:v51 withIntermediateDirectories:1 attributes:v53 error:&v82];
  v54 = v82;

  if ((v52 & 1) == 0)
  {
    if (v54)
    {
      v109 = *MEMORY[0x277CCA7E8];
      v110 = v54;
      v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
    }

    else
    {
      v61 = 0;
    }

    v31 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:v61];

    goto LABEL_36;
  }

  v55 = self->_fileManager;
  versionsURL = [pathCopy versionsURL];
  v57 = PFFileProtectionNoneAttributes();
  v81 = 0;
  LODWORD(v55) = [(NSFileManager *)v55 createDirectoryAtURL:versionsURL withIntermediateDirectories:1 attributes:v57 error:&v81];
  v13 = v81;

  if (v55)
  {
    v58 = self->_fileManager;
    instanceURL = [pathCopy instanceURL];
    v80 = 0;
    v41 = [(NSFileManager *)v58 moveItemAtURL:v75 toURL:instanceURL error:&v80];
    v60 = v80;

    if (v41)
    {
      v31 = 0;
    }

    else
    {
      if (v60)
      {
        v105 = *MEMORY[0x277CCA7E8];
        v106 = v60;
        v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
      }

      else
      {
        v62 = 0;
      }

      v31 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:v62];
    }
  }

  else
  {
    if (v13)
    {
      v103 = *MEMORY[0x277CCA7E8];
      v104 = v13;
      v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
    }

    else
    {
      v60 = 0;
    }

    v31 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:v60];
    v41 = 0;
  }

  v79 = 0;
  v63 = [pathCopy ensureScratchURLIsReachableAndReturnError:&v79];
  v64 = v79;
  v65 = v64;
  if ((v63 & 1) == 0)
  {
    if (v64)
    {
      v101 = *MEMORY[0x277CCA7E8];
      v102 = v64;
      v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
    }

    else
    {
      v66 = 0;
    }

    v67 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:v66];

    v41 = 0;
    v31 = v67;
  }

LABEL_37:
  [v77 invalidate];

  objc_autoreleasePoolPop(context);
  if (v41)
  {
    instanceURL2 = [pathCopy instanceURL];
    v78 = 0;
    v43 = [instanceURL2 checkResourceIsReachableAndReturnError:&v78];
    v44 = v78;

    if (v43)
    {
      instanceURL3 = [pathCopy instanceURL];
      [(PBFPosterModelStoreCoordinator *)self _accessQueue_fixupResourceValuesWithinURL:instanceURL3 synchronous:1];

      v46 = 1;
      goto LABEL_47;
    }

    if (v44)
    {
      v99 = *MEMORY[0x277CCA7E8];
      v100 = v44;
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    }

    else
    {
      v47 = 0;
    }

    v48 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:v47];

    v31 = v48;
  }

  if (error)
  {
    v49 = v31;
    v46 = 0;
    *error = v31;
  }

  else
  {
    v46 = 0;
  }

LABEL_47:

  return v46;
}

uint64_t __94__PBFPosterModelStoreCoordinator__accessQueue_configureFileSystemForNewContents_atPath_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v11 = *MEMORY[0x277CCA7E8];
    v12[0] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:v6];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return 0;
}

- (id)_accessQueue_setupNewSupplementWithOptions:(unint64_t)options error:(id *)error
{
  v41[1] = *MEMORY[0x277D85DE8];
  _accessQueue_identityOfLatestVersion = [(PBFPosterModelStoreCoordinator *)self _accessQueue_identityOfLatestVersion];
  v9 = _accessQueue_identityOfLatestVersion;
  if (_accessQueue_identityOfLatestVersion)
  {
    v10 = -[PBFPosterModelStoreCoordinator _accessQueue_buildIdentityForVersion:supplement:](self, "_accessQueue_buildIdentityForVersion:supplement:", [_accessQueue_identityOfLatestVersion version], objc_msgSend(_accessQueue_identityOfLatestVersion, "supplement") + 1);
    if (([v10 isNewerVersionOfIdentity:v9] & 1) == 0)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"nextIdentity=%@ must be a newer form of latestIdentity=%@", v10, v9];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator _accessQueue_setupNewSupplementWithOptions:a2 error:self];
      }

      [v31 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x21B57660CLL);
    }

    v33 = a2;
    v34 = __providerURLForOptions(options, self->_providerURL, v10);
    v11 = [MEMORY[0x277D3EBA0] pathWithProviderURL:? identity:?];
    v12 = 104;
    if (!options)
    {
      v12 = 96;
    }

    v13 = *(&self->super.isa + v12);
    fileManager = self->_fileManager;
    supplementURL = [v11 supplementURL];
    v16 = PFFileProtectionNoneAttributes();
    v35 = 0;
    v17 = [(NSFileManager *)fileManager createDirectoryAtURL:supplementURL withIntermediateDirectories:1 attributes:v16 error:&v35];
    v18 = v35;

    if (v17)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "version")}];
      supplementURL3 = [v13 objectForKey:v19];

      if (!supplementURL3)
      {
        supplementURL3 = objc_opt_new();
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "version")}];
        [v13 setObject:supplementURL3 forKey:v21];
      }

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "supplement")}];
      [supplementURL3 setObject:v10 forKey:v22];

      supplementURL2 = [v11 supplementURL];
      [(PBFPosterModelStoreCoordinator *)self _accessQueue_fixupResourceValuesWithinURL:supplementURL2 synchronous:1];

      if (!supplementURL3)
      {
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"posterIdentityBySupplement should be guaranteed nonnull here : identity=%@ _posterIdentityBySupplementByVersion=%@", v10, v13];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [PBFPosterModelStoreCoordinator _accessQueue_setupNewSupplementWithOptions:v33 error:self];
        }

        [v32 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x21B576668);
      }

      v24 = v10;
    }

    else
    {
      if (error)
      {
        if (v18)
        {
          v38 = *MEMORY[0x277CCA7E8];
          v39 = v18;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        }

        else
        {
          v26 = 0;
        }

        *error = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:v26];
      }

      supplementURL3 = [v11 supplementURL];
      v27 = PBFLogReaper(supplementURL3);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v37 = supplementURL3;
        _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEFAULT, "REAPING supplementURL %{public}@", buf, 0xCu);
      }

      v28 = self->_fileManager;
      supplementURL4 = [v11 supplementURL];
      [(NSFileManager *)v28 removeItemAtURL:supplementURL4 error:0];

      v24 = 0;
    }
  }

  else
  {
    if (!error)
    {
      v24 = 0;
      goto LABEL_23;
    }

    v40 = *MEMORY[0x277CCA450];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to find latest identity of %@", self->_posterUUID];
    v41[0] = v25;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];

    [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3329 userInfo:v10];
    *error = v24 = 0;
  }

LABEL_23:

  return v24;
}

- (void)_accessQueue_invalidateSnapshotCoordinatorForIdentity:(id)identity
{
  if (identity)
  {
    accessQueue_identityToPosterSnapshotCoordinator = self->_accessQueue_identityToPosterSnapshotCoordinator;
    identityCopy = identity;
    v6 = [(NSMapTable *)accessQueue_identityToPosterSnapshotCoordinator objectForKey:identityCopy];
    [v6 invalidate];
    [(NSMapTable *)self->_accessQueue_identityToPosterSnapshotCoordinator removeObjectForKey:identityCopy];
  }
}

- (void)_accessQueue_removeSupplement:(unint64_t)supplement forVersion:(unint64_t)version error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  v51 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_buildIdentityForVersion:version supplement:supplement];
  [(PBFPosterModelStoreCoordinator *)self _accessQueue_invalidateSnapshotCoordinatorForIdentity:?];
  v54 = [MEMORY[0x277CBEBC0] pf_posterPathInstanceURLForProviderURL:self->_providerURL type:objc_msgSend(objc_opt_class() posterUUID:"type") version:{self->_posterUUID, version}];
  accessQueue_posterIdentityBySupplementByVersion = self->_accessQueue_posterIdentityBySupplementByVersion;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:version];
  v10 = [(NSMutableDictionary *)accessQueue_posterIdentityBySupplementByVersion objectForKey:v9];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:supplement];
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    if ([v10 count] >= 2)
    {
      v13 = [MEMORY[0x277CBEBC0] pf_posterPathSupplementURLForInstanceURL:v54 supplement:supplement];
      v14 = PBFLogReaper(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v60 = v13;
        _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, "REAPING supplementURL %{public}@", buf, 0xCu);
      }

      fileManager = self->_fileManager;
      v58 = 0;
      [(NSFileManager *)fileManager removeItemAtURL:v13 error:&v58];
      v16 = v58;
      v17 = v16;
      if (v16)
      {
        if (error)
        {
          v16 = v16;
          *error = v17;
        }

        v18 = PBFLogPosterContents(v16);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterModelStoreCoordinator _accessQueue_removeSupplement:forVersion:error:];
        }
      }
    }

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:supplement];
    [v10 removeObjectForKey:v19];
  }

  v20 = MEMORY[0x277CBEBC0];
  v21 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_buildIdentityForVersion:version supplement:supplement];
  v22 = __stagedProviderURLForIdentity(v21);
  v53 = [v20 pf_posterPathInstanceURLForProviderURL:v22 type:objc_msgSend(objc_opt_class() posterUUID:"type") version:{self->_posterUUID, version}];

  accessQueue_stagedPosterIdentityBySupplementByVersion = self->_accessQueue_stagedPosterIdentityBySupplementByVersion;
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:version];
  v25 = [(NSMutableDictionary *)accessQueue_stagedPosterIdentityBySupplementByVersion objectForKey:v24];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:supplement];
  v27 = [v25 objectForKey:v26];

  if (v27)
  {
    if ([v10 count] >= 2)
    {
      v28 = [MEMORY[0x277CBEBC0] pf_posterPathSupplementURLForInstanceURL:v53 supplement:supplement];
      v29 = PBFLogReaper(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v60 = v28;
        _os_log_impl(&dword_21B526000, v29, OS_LOG_TYPE_DEFAULT, "REAPING supplementURL %{public}@", buf, 0xCu);
      }

      v30 = self->_fileManager;
      v57 = 0;
      [(NSFileManager *)v30 removeItemAtURL:v28 error:&v57];
      v31 = v57;
      v32 = v31;
      if (v31)
      {
        if (error)
        {
          v31 = v31;
          *error = v32;
        }

        v33 = PBFLogPosterContents(v31);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterModelStoreCoordinator _accessQueue_removeSupplement:forVersion:error:];
        }
      }
    }

    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:supplement];
    [v10 removeObjectForKey:v34];
  }

  v35 = [v10 count];
  if (v12 && !v35)
  {
    v36 = PBFLogReaper([(PBFPosterModelStoreCoordinator *)self _accessQueue_invalidateSnapshotCoordinatorForIdentity:v51]);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v60 = v54;
      _os_log_impl(&dword_21B526000, v36, OS_LOG_TYPE_DEFAULT, "REAPING instanceURL %{public}@", buf, 0xCu);
    }

    v37 = self->_fileManager;
    v56 = 0;
    [(NSFileManager *)v37 removeItemAtURL:v54 error:&v56];
    v38 = v56;
    v39 = v38;
    if (v38)
    {
      if (error)
      {
        v38 = v38;
        *error = v39;
      }

      v40 = PBFLogPosterContents(v38);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator _accessQueue_removeSupplement:forVersion:error:];
      }
    }

    v41 = self->_accessQueue_posterIdentityBySupplementByVersion;
    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:version];
    [(NSMutableDictionary *)v41 removeObjectForKey:v42];
  }

  v43 = [v25 count];
  if (v27 && !v43)
  {
    v44 = PBFLogReaper(0);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v60 = v53;
      _os_log_impl(&dword_21B526000, v44, OS_LOG_TYPE_DEFAULT, "REAPING stagedInstanceURL %{public}@", buf, 0xCu);
    }

    v45 = self->_fileManager;
    v55 = 0;
    [(NSFileManager *)v45 removeItemAtURL:v53 error:&v55];
    v46 = v55;
    v47 = v46;
    if (v46)
    {
      if (error)
      {
        v46 = v46;
        *error = v47;
      }

      v48 = PBFLogPosterContents(v46);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator _accessQueue_removeSupplement:forVersion:error:];
      }
    }

    v49 = self->_accessQueue_stagedPosterIdentityBySupplementByVersion;
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:version];
    [(NSMutableDictionary *)v49 removeObjectForKey:v50];
  }
}

- (id)_accessQueue_buildIdentityForVersion:(unint64_t)version supplement:(unint64_t)supplement
{
  supplement = [MEMORY[0x277CCACA8] stringWithFormat:@"Please implement in your subclass.", supplement];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = 138544642;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    selfCopy = self;
    v17 = 2114;
    v18 = @"PBFPosterModelStoreCoordinator.m";
    v19 = 1024;
    v20 = 1425;
    v21 = 2114;
    v22 = supplement;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
  }

  [supplement UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)_accessQueue_fixupResourceValuesWithinURL:(id)l synchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  v68 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!self->_readonly)
  {
    expectedURLResourceValuesForFiles = [objc_opt_class() expectedURLResourceValuesForFiles];
    expectedURLResourceValuesForDirectories = [objc_opt_class() expectedURLResourceValuesForDirectories];
    if ([expectedURLResourceValuesForFiles count] || objc_msgSend(expectedURLResourceValuesForDirectories, "count"))
    {
      v45 = synchronousCopy;
      if (!lCopy)
      {
        lCopy = self->_identifierURL;
      }

      [objc_opt_class() type];
      v9 = NSStringFromPFServerPosterType();
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = self->_posterUUID;
      v49 = self->_extensionIdentifier;
      v13 = PBFLogPosterContents(v49);
      v14 = os_signpost_id_generate(v13);

      v16 = PBFLogPosterContents(v15);
      v17 = v16;
      v41 = v14 - 1;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *buf = 138544386;
        v59 = v49;
        v60 = 2114;
        v61 = v11;
        v62 = 2114;
        v63 = v12;
        v64 = 2114;
        v65 = v9;
        v66 = 2114;
        v67 = lCopy;
        _os_signpost_emit_with_name_impl(&dword_21B526000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v14, "gather resources for fixupResourceValues", "extension: %{public}@; class: %{public}@; posterUUID %{public}@; type %{public}@; URL: %{public}@", buf, 0x34u);
      }

      spid = v14;
      v42 = v12;
      v43 = v11;
      v44 = v9;

      v18 = [MEMORY[0x277CBEB58] setWithObject:*MEMORY[0x277CBE818]];
      allKeys = [expectedURLResourceValuesForFiles allKeys];
      [v18 addObjectsFromArray:allKeys];

      allKeys2 = [expectedURLResourceValuesForDirectories allKeys];
      [v18 addObjectsFromArray:allKeys2];

      v21 = MEMORY[0x277CCAC30];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __88__PBFPosterModelStoreCoordinator__accessQueue_fixupResourceValuesWithinURL_synchronous___block_invoke;
      v54[3] = &unk_2782C7598;
      v46 = expectedURLResourceValuesForDirectories;
      v39 = expectedURLResourceValuesForDirectories;
      v55 = v39;
      v47 = expectedURLResourceValuesForFiles;
      v38 = expectedURLResourceValuesForFiles;
      v56 = v38;
      v22 = [v21 predicateWithBlock:v54];
      v48 = lCopy;
      v23 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_contentsOfURLWithinStore:lCopy resourceKeys:v18 standardizeURLs:0];
      v40 = v22;
      v24 = [v23 filteredOrderedSetUsingPredicate:v22];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v50 objects:v57 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = 0;
        v29 = 0;
        v30 = *v51;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v51 != v30)
            {
              objc_enumerationMutation(v25);
            }

            v32 = *(*(&v50 + 1) + 8 * i);
            if ([v32 pbf_isDirectory])
            {
              if (v28)
              {
                v33 = v28;
              }

              else
              {
                v33 = objc_opt_new();
                v28 = v33;
              }
            }

            else if (v29)
            {
              v33 = v29;
            }

            else
            {
              v33 = objc_opt_new();
              v29 = v33;
            }

            [v33 addObject:v32];
          }

          v27 = [v25 countByEnumeratingWithState:&v50 objects:v57 count:16];
        }

        while (v27);
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      v35 = PBFLogPosterContents(v34);
      v36 = v35;
      lCopy = v48;
      if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        *buf = 138544386;
        v59 = v49;
        v60 = 2114;
        v61 = v43;
        v62 = 2114;
        v63 = v42;
        v64 = 2114;
        v65 = v44;
        v66 = 2114;
        v67 = v48;
        _os_signpost_emit_with_name_impl(&dword_21B526000, v36, OS_SIGNPOST_INTERVAL_END, spid, "gather resources for fixupResourceValues", "extension: %{public}@; class: %{public}@; posterUUID %{public}@; type %{public}@; URL: %{public}@", buf, 0x34u);
      }

      [(PBFPosterModelStoreCoordinator *)self _accessQueue_applyResourceValuesForURLs:v29 expectedResourceValues:v38 synchronous:v45];
      [(PBFPosterModelStoreCoordinator *)self _accessQueue_applyResourceValuesForURLs:v28 expectedResourceValues:v39 synchronous:v45];

      expectedURLResourceValuesForDirectories = v46;
      expectedURLResourceValuesForFiles = v47;
    }
  }
}

uint64_t __88__PBFPosterModelStoreCoordinator__accessQueue_fixupResourceValuesWithinURL_synchronous___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 pbf_isLegacyPosterSnapshot] & 1) != 0 || (objc_msgSend(v3, "pbf_isSnapshotBundle"))
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 pbf_isDirectory];
    v6 = 40;
    if (v5)
    {
      v6 = 32;
    }

    v4 = [v3 pbf_URLConformsToExpectedResourceValues:*(a1 + v6) error:0] ^ 1;
  }

  return v4;
}

- (void)_accessQueue_applyResourceValuesForURLs:(id)ls expectedResourceValues:(id)values synchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  lsCopy = ls;
  valuesCopy = values;
  if ([lsCopy count])
  {
    [objc_opt_class() type];
    v10 = NSStringFromPFServerPosterType();
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = self->_posterUUID;
    v14 = self->_extensionIdentifier;
    v15 = PBFLogPosterContents(v14);
    v16 = os_signpost_id_generate(v15);

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __109__PBFPosterModelStoreCoordinator__accessQueue_applyResourceValuesForURLs_expectedResourceValues_synchronous___block_invoke;
    aBlock[3] = &unk_2782C75C0;
    v30 = v16;
    v24 = v14;
    v25 = v12;
    v26 = v13;
    v27 = v10;
    v28 = lsCopy;
    v29 = valuesCopy;
    v17 = v10;
    v18 = v13;
    v19 = v12;
    v20 = v14;
    v21 = _Block_copy(aBlock);
    v22 = v21;
    if (synchronousCopy)
    {
      v21[2](v21);
    }

    else
    {
      PBFDispatchAsyncWithString(@"FixupResourceValues", QOS_CLASS_BACKGROUND, v21);
    }
  }
}

void __109__PBFPosterModelStoreCoordinator__accessQueue_applyResourceValuesForURLs_expectedResourceValues_synchronous___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = PBFLogPosterContents(a1);
  v3 = v2;
  v4 = *(a1 + 80);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    *buf = 138544386;
    v39 = v5;
    v40 = 2114;
    v41 = v6;
    v42 = 2114;
    v43 = v7;
    v44 = 2114;
    v45 = v8;
    v46 = 2114;
    v47 = v9;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "fixupResourceValues", "extension: %{public}@; class: %{public}@; posterUUID %{public}@; type %{public}@; URLs: %{public}@", buf, 0x34u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = *(a1 + 64);
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v34;
    *&v12 = 138412546;
    v31 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v33 + 1) + 8 * v15);
        v17 = *(a1 + 72);
        v32 = 0;
        v18 = [v16 setResourceValues:v17 error:{&v32, v31}];
        v19 = v32;
        v20 = PBFLogPosterContents(v19);
        v21 = v20;
        if (v18)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v39 = v16;
            _os_log_debug_impl(&dword_21B526000, v21, OS_LOG_TYPE_DEBUG, "Corrected resource values for %@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = v31;
          v39 = v16;
          v40 = 2114;
          v41 = v19;
          _os_log_error_impl(&dword_21B526000, v21, OS_LOG_TYPE_ERROR, "Failed to correct resource values for %@: %{public}@", buf, 0x16u);
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  v23 = PBFLogPosterContents(v22);
  v24 = v23;
  v25 = *(a1 + 80);
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v28 = *(a1 + 48);
    v29 = *(a1 + 56);
    v30 = *(a1 + 64);
    *buf = 138544386;
    v39 = v26;
    v40 = 2114;
    v41 = v27;
    v42 = 2114;
    v43 = v28;
    v44 = 2114;
    v45 = v29;
    v46 = 2114;
    v47 = v30;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v24, OS_SIGNPOST_INTERVAL_END, v25, "fixupResourceValues", "extension: %{public}@; class: %{public}@; posterUUID %{public}@; type %{public}@; URLs: %{public}@", buf, 0x34u);
  }
}

- (id)_accessQueue_fetchIdentityForVersion:(unint64_t)version supplement:(unint64_t)supplement error:(id *)error
{
  v9 = [MEMORY[0x277CBEBC0] pf_posterPathInstanceURLForProviderURL:self->_providerURL type:objc_msgSend(objc_opt_class() posterUUID:"type") version:{self->_posterUUID, version}];
  v10 = [MEMORY[0x277CBEBC0] pf_posterPathContentsURLForInstanceURL:v9];
  if ([v10 checkResourceIsReachableAndReturnError:error])
  {
    v11 = [MEMORY[0x277CBEBC0] pf_posterPathSupplementURLForInstanceURL:v9 supplement:supplement];
    if ([v11 checkResourceIsReachableAndReturnError:error])
    {
      accessQueue_posterIdentityBySupplementByVersion = self->_accessQueue_posterIdentityBySupplementByVersion;
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:version];
      dictionary = [(NSMutableDictionary *)accessQueue_posterIdentityBySupplementByVersion objectForKey:v13];

      if (!dictionary)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v15 = self->_accessQueue_posterIdentityBySupplementByVersion;
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:version];
        [(NSMutableDictionary *)v15 setObject:dictionary forKey:v16];
      }

      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:supplement];
      v18 = [dictionary objectForKey:v17];

      if (!v18)
      {
        v18 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_buildIdentityForVersion:version supplement:supplement];
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:supplement];
        [dictionary setObject:v18 forKey:v19];
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  extensionIdentifier = [(PBFPosterModelStoreCoordinator *)self extensionIdentifier];
  v5 = [v3 appendObject:extensionIdentifier withName:@"extensionIdentifier"];

  posterUUID = [(PBFPosterModelStoreCoordinator *)self posterUUID];
  v7 = [v3 appendObject:posterUUID withName:@"posterUUID"];

  role = [(PBFPosterModelStoreCoordinator *)self role];
  v9 = [v3 appendObject:role withName:@"role"];

  build = [v3 build];

  return build;
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSUUIDClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"PFPosterRoleIsValid(role)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.6(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[descriptorIdentifier length] > 0"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createNewStoreCoordinatorWithPath:error:.cold.7()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_0(&dword_21B526000, v0, v1, "%s> error: %@", v2, v3, v4, v5, v6);
}

+ (void)createNewStoreCoordinatorWithPath:error:.cold.8()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_0(&dword_21B526000, v0, v1, "writeToProvider %s> error: %@", v2, v3, v4, v5, v6);
}

+ (void)createNewStoreCoordinatorWithPath:error:.cold.9()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_0(&dword_21B526000, v0, v1, "storeCoordinator %s> error: %@", v2, v3, v4, v5, v6);
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.10(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[roleIdentifierData length] > 0"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.11(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.12(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.13(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_accessQueue_correctPermissionsForInternalDirectories:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_16(&dword_21B526000, v3, v4, "[%{public}@ _accessQueue_correctPermissionsForInternalDirectories]> could not setup scratch URL: %{public}@", v5, v6, v7, v8);
}

- (void)_accessQueue_correctPermissionsForInternalDirectories:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_16(&dword_21B526000, v3, v4, "[%{public}@ _accessQueue_correctPermissionsForInternalDirectories]> could not exclude scratch URL from backup: %{public}@", v5, v6, v7, v8);
}

- (void)setObject:(char *)a1 forKeyedSubscript:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object conformsToProtocol:@protocol(NSSecureCoding)]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setObject:(char *)a1 forKeyedSubscript:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object conformsToProtocol:@protocol(NSCopying)]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setObject:(char *)a1 forKeyedSubscript:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addNewVersionWithContents:error:.cold.1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  v6 = 136315394;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8_0(&dword_21B526000, v0, v1, "%s> error: %@", v2, v3, v4, v5, v6);
}

- (void)addNewSupplementWithError:.cold.1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  v6 = 136315394;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8_0(&dword_21B526000, v0, v1, "%s> error: %@", v2, v3, v4, v5, v6);
}

- (void)stageNewVersionWithContents:error:.cold.1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  v6 = 136315394;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8_0(&dword_21B526000, v0, v1, "%s> error: %@", v2, v3, v4, v5, v6);
}

- (void)stageNewSupplementWithError:.cold.1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  v6 = 136315394;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8_0(&dword_21B526000, v0, v1, "%s> error: %@", v2, v3, v4, v5, v6);
}

- (void)removeSupplement:forVersion:error:.cold.1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  v6 = 136315394;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8_0(&dword_21B526000, v0, v1, "%s> error: %@", v2, v3, v4, v5, v6);
}

- (void)_accessQueue_checkEnvironmentConsistency
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_accessQueue_setupNewVersionWithOptions:(const char *)a1 contents:(uint64_t)a2 error:.cold.1(const char *a1, uint64_t a2)
{
  v2 = NSStringFromSelector(a1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
}

- (void)_accessQueue_setupNewSupplementWithOptions:(const char *)a1 error:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v2 = NSStringFromSelector(a1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
}

- (void)_accessQueue_setupNewSupplementWithOptions:(const char *)a1 error:(uint64_t)a2 .cold.2(const char *a1, uint64_t a2)
{
  v2 = NSStringFromSelector(a1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
}

- (void)_accessQueue_removeSupplement:forVersion:error:.cold.1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_9_0(&dword_21B526000, v0, v1, "%s> error removing supplement=%llu : %@", v2);
}

- (void)_accessQueue_removeSupplement:forVersion:error:.cold.3()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_9_0(&dword_21B526000, v0, v1, "%s> error removing version %llu: %@", v2);
}

@end