@interface SecureMobileAssetBundle
+ (BOOL)_requiresLiveExclaveNonce;
+ (BOOL)_shouldUseConclave:(BOOL)conclave;
+ (BOOL)assetIsSecureMobileAsset:(id)asset;
+ (BOOL)clearBootTaskPlist:(id *)plist;
+ (BOOL)commitStagedManifestsForSelectors:(id)selectors darwinOnly:(BOOL)only error:(id *)error;
+ (BOOL)commitStagedManifestsToExclavesForSelectors:(id)selectors darwinOnly:(BOOL)only error:(id *)error;
+ (BOOL)fsTag:(unsigned int *)tag forAssetType:(id)type specifier:(id)specifier;
+ (BOOL)isErrorDueToDeviceBeingLocked:(id)locked;
+ (OS_dispatch_queue)personalizationQueue;
+ (id)getBootTaskPlistLock;
+ (id)getExclaveManager:(id *)manager;
+ (id)getSigningServerURL:(id)l;
+ (id)readBootTaskPlist:(id *)plist;
- (BOOL)_activateManifestInExclaves:(unsigned int)exclaves error:(id *)error;
- (BOOL)_beginAccessWithOptions_nowait:(id)options_nowait accessMechanismPtr:(int64_t *)ptr errorPtr:(id *)errorPtr;
- (BOOL)_generateNonceProposalForHandle:(unint64_t)handle digest:(id *)digest nonce:(id *)nonce error:(id *)error;
- (BOOL)_personalize:(id)_personalize error:(id *)error;
- (BOOL)_queryNonceForHandle:(unint64_t)handle domain:(unsigned int)domain digest:(id *)digest error:(id *)error;
- (BOOL)_shouldForcePersonalizationFailure;
- (BOOL)_storeManifest:(id)manifest manifestType:(unint64_t)type stage:(BOOL)stage error:(id *)error;
- (BOOL)_storeManifestToExclaves:(id)exclaves infoPlist:(id)plist stage:(BOOL)stage error:(id *)error;
- (BOOL)beginAccessWithOptions:(id)options accessMechanismPtr:(int64_t *)ptr errorPtr:(id *)errorPtr;
- (BOOL)bundleAccessPermitted:(id *)permitted;
- (BOOL)depersonalize:(id *)depersonalize;
- (BOOL)endAccessWithOptions:(id)options accessMechanismPtr:(int64_t *)ptr errorPtr:(id *)errorPtr;
- (BOOL)endAccessWithOptions_nowait:(id)options_nowait accessMechanismPtr:(int64_t *)ptr errorPtr:(id *)errorPtr;
- (BOOL)graft:(id *)graft;
- (BOOL)graftOrMount:(int64_t *)mount graftingError:(id *)error;
- (BOOL)isAccessible;
- (BOOL)isGrafted;
- (BOOL)isGraftedPath:(id)path;
- (BOOL)isMappableToExclaves:(unsigned int *)exclaves;
- (BOOL)isMounted;
- (BOOL)isPersonalized:(int64_t *)personalized;
- (BOOL)isPersonalizedForExclaves:(unsigned int)exclaves staged:(BOOL)staged;
- (BOOL)isPersonalizedManifestStaged:(int64_t *)staged;
- (BOOL)isSecureMobileAsset;
- (BOOL)loadTrustCache:(id *)cache;
- (BOOL)mapToExclaves:(id *)exclaves;
- (BOOL)mount:(id *)mount;
- (BOOL)personalize:(id)personalize error:(id *)error;
- (BOOL)ungraft:(id *)ungraft;
- (BOOL)ungraftOrUnmount:(int64_t *)unmount ungraftingError:(id *)error;
- (BOOL)unmapFromExclaves:(id *)exclaves;
- (BOOL)unmount:(id *)unmount;
- (NSDictionary)assetAttributes;
- (NSDictionary)insecureInfoPlist;
- (NSDictionary)secureInfoPlist;
- (NSString)assetSpecifier;
- (NSString)assetType;
- (NSString)cryptexPath;
- (NSString)graftPath;
- (NSString)insecureInfoPlistPath;
- (NSString)rootHashPath;
- (NSString)secureAssetDataPath;
- (NSString)secureInfoPlistPath;
- (NSString)stagedPersonalizedManifestPath;
- (NSString)ticketPath;
- (NSString)trustCachePath;
- (SecureMobileAssetBundle)initWithPath:(id)path;
- (id)_manifestDataFromStoredTicket:(id)ticket manifestType:(unint64_t)type;
- (id)_personalizedBundleTicketData;
- (id)assetValues;
- (id)attach:(id)attach error:(id *)error;
- (id)description;
- (id)devnodesForDiskImageID:(id)d error:(id *)error;
- (id)integrityCatalogPath;
- (unint64_t)manifestType;
- (unsigned)graftdmgType;
- (unsigned)secureMountAuthType;
- (void)personalize:(id)personalize completionQueue:(id)queue completion:(id)completion;
- (void)recordAssetGraftStateForEarlyBootTask:(BOOL)task options:(id)options;
@end

@implementation SecureMobileAssetBundle

+ (BOOL)assetIsSecureMobileAsset:(id)asset
{
  v3 = [asset stringByAppendingPathComponent:@"AssetData"];
  v4 = [v3 stringByAppendingPathComponent:@"Restore"];
  v5 = [v4 stringByAppendingPathComponent:@"BuildManifest.plist"];

  defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v5];

  return v7;
}

+ (BOOL)fsTag:(unsigned int *)tag forAssetType:(id)type specifier:(id)specifier
{
  specifierCopy = specifier;
  typeCopy = type;
  v9 = +[MASecureMobileAssetTypes sharedInstance];
  LOBYTE(tag) = [v9 fsTag:tag forAssetType:typeCopy specifier:specifierCopy];

  return tag;
}

+ (OS_dispatch_queue)personalizationQueue
{
  if (personalizationQueue_once != -1)
  {
    +[SecureMobileAssetBundle personalizationQueue];
  }

  v3 = personalizationQueue_queue;

  return v3;
}

uint64_t __47__SecureMobileAssetBundle_personalizationQueue__block_invoke()
{
  personalizationQueue_queue = dispatch_queue_create("com.apple.MobileAsset.SecureMobileAsset.Personalization", 0);

  return MEMORY[0x2A1C71028]();
}

+ (BOOL)commitStagedManifestsForSelectors:(id)selectors darwinOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v27 = *MEMORY[0x29EDCA608];
  selectorsCopy = selectors;
  v8 = objc_alloc_init(MEMORY[0x29EDC5D30]);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v13 = _MAClientLog(@"SecureMA");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2981ED000, v13, OS_LOG_TYPE_ERROR, "[SMA] Warning: MASecureManifestStorage does not support staging, commit is a no-op", buf, 2u);
    }

    goto LABEL_10;
  }

  v9 = [selectorsCopy count];
  v10 = _MAClientLog(@"SecureMA");
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = selectorsCopy;
      _os_log_impl(&dword_2981ED000, v11, OS_LOG_TYPE_DEFAULT, "[SMA] Committing staged manifests for selectors: %@", buf, 0xCu);
    }

    v24 = 0;
    v12 = [v8 commitStagedManifestsForSelectors:selectorsCopy error:&v24];
    v13 = v24;
    if ((v12 & 1) == 0)
    {
      v18 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v13;
        _os_log_impl(&dword_2981ED000, v18, OS_LOG_TYPE_ERROR, "[SMA] Failed to commit staged manifests: %@", buf, 0xCu);
      }

      if (error)
      {
        v19 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to commit staged manifests"];
        dictionary = [MEMORY[0x29EDB8E00] dictionary];
        [dictionary setObject:v19 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
        [dictionary setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
        v21 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:114 userInfo:dictionary];

        v22 = v21;
        *error = v21;
      }

      v14 = 0;
      goto LABEL_20;
    }

    if (+[SecureMobileAssetBundle _requiresLiveExclaveNonce])
    {
      v14 = [SecureMobileAssetBundle commitStagedManifestsToExclavesForSelectors:selectorsCopy darwinOnly:onlyCopy error:error];
      goto LABEL_20;
    }

LABEL_10:
    v14 = 1;
    goto LABEL_20;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2981ED000, v11, OS_LOG_TYPE_ERROR, "[SMA] No selectors specified", buf, 2u);
  }

  if (!error)
  {
    v14 = 0;
    goto LABEL_21;
  }

  v13 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No selectors specified"];
  dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
  [dictionary2 setObject:v13 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
  [dictionary2 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
  v16 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:-3 userInfo:dictionary2];

  v17 = v16;
  v14 = 0;
  *error = v16;
LABEL_20:

LABEL_21:
  return v14;
}

+ (BOOL)commitStagedManifestsToExclavesForSelectors:(id)selectors darwinOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v66 = *MEMORY[0x29EDCA608];
  selectorsCopy = selectors;
  if ([SecureMobileAssetBundle _shouldUseConclave:onlyCopy])
  {
    errorCopy = error;
    array = [MEMORY[0x29EDB8DE8] array];
    array2 = [MEMORY[0x29EDB8DE8] array];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v8 = selectorsCopy;
    v9 = [v8 countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v58;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v58 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v57 + 1) + 8 * i);
          v56 = 0;
          assetType = [v13 assetType];
          assetSpecifier = [v13 assetSpecifier];
          v16 = [SecureMobileAssetBundle fsTag:&v56 forAssetType:assetType specifier:assetSpecifier];

          if (v16)
          {
            v17 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v56];
            if (!v17)
            {
              v27 = _MAClientLog(@"SecureMA");
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                LODWORD(v62) = v56;
                _os_log_impl(&dword_2981ED000, v27, OS_LOG_TYPE_ERROR, "[SMA] Failed to allocate NSNumber for fstag=%d", buf, 8u);
              }

              v28 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to allocate NSNumber for fstag"];
              dictionary = [MEMORY[0x29EDB8E00] dictionary];
              [dictionary setObject:v28 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
              [dictionary setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
              v30 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:100 userInfo:dictionary];

              v31 = v30;
              *errorCopy = v30;

              v26 = 0;
              goto LABEL_22;
            }

            v18 = v17;
            [array addObject:v17];
            assetSpecifier2 = [v13 assetSpecifier];
            [array2 addObject:assetSpecifier2];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v57 objects:v65 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    if (![array count])
    {
      v26 = 1;
      goto LABEL_23;
    }

    v55 = 0;
    v20 = [SecureMobileAssetBundle getExclaveManager:&v55];
    v8 = v55;
    if ([v20 conformsToProtocol:&unk_2A1EB0A08])
    {
      v21 = v20;
      v22 = _MAClientLog(@"SecureMA");
      v23 = errorCopy;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v62 = array;
        v63 = 2112;
        v64 = array2;
        _os_log_impl(&dword_2981ED000, v22, OS_LOG_TYPE_DEFAULT, "[SMA] Committing staged exclave manifests for fsTags and specifiers: [%@] [%@]", buf, 0x16u);
      }

      v54 = v8;
      v24 = [v21 commitStagedManifestForFSTags:array specifiers:array2 error:&v54];
      v25 = v54;

      if (v24)
      {
        goto LABEL_17;
      }

      v37 = _MAClientLog(@"SecureMA");
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 0;
    }

    else
    {
      v23 = errorCopy;
      if (![v20 conformsToProtocol:&unk_2A1EB0A68])
      {
        if (!errorCopy)
        {
LABEL_51:

          v26 = 0;
          goto LABEL_22;
        }

        v21 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to get shared instance of SecureMobileAssetExclave"];
        v43 = MEMORY[0x29EDB8E00];
        if (v8)
        {
          v25 = v8;
          dictionary2 = [v43 dictionary];
          [dictionary2 setObject:v21 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
          [dictionary2 setObject:v25 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
          v45 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:114 userInfo:dictionary2];

          v46 = v45;
        }

        else
        {
          dictionary3 = [MEMORY[0x29EDB8E00] dictionary];
          [dictionary3 setObject:v21 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
          [dictionary3 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
          v45 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:114 userInfo:dictionary3];

          v49 = v45;
          v25 = 0;
        }

        *errorCopy = v45;
LABEL_50:

        v8 = v25;
        goto LABEL_51;
      }

      v21 = v20;
      v33 = objc_opt_respondsToSelector();
      v34 = _MAClientLog(@"SecureMA");
      v35 = v34;
      if ((v33 & 1) == 0)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2981ED000, v35, OS_LOG_TYPE_ERROR, "[SMA] Warning: MAExclaveManifestStorageService does not support staging, commit is a no-op", buf, 2u);
        }

        goto LABEL_45;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v62 = array;
        _os_log_impl(&dword_2981ED000, v35, OS_LOG_TYPE_DEFAULT, "[SMA] Committing staged exclave manifests for fsTags: %@", buf, 0xCu);
      }

      v53 = v8;
      v36 = [v21 commitStagedManifestForFSTags:array error:&v53];
      v25 = v53;

      if (v36)
      {
LABEL_17:
        v8 = v25;
LABEL_45:

        v26 = 1;
LABEL_22:

LABEL_23:
        goto LABEL_24;
      }

      v37 = _MAClientLog(@"SecureMA");
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
LABEL_36:

        if (v23)
        {
          v38 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to commit staged manifests to Exclaves"];
          v39 = MEMORY[0x29EDB8E00];
          if (v25)
          {
            v40 = v25;
            dictionary4 = [v39 dictionary];
            [dictionary4 setObject:v38 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
            [dictionary4 setObject:v40 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
            v42 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:114 userInfo:dictionary4];
          }

          else
          {
            dictionary4 = [MEMORY[0x29EDB8E00] dictionary];
            [dictionary4 setObject:v38 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
            [dictionary4 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
            v42 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:114 userInfo:dictionary4];
          }

          v47 = v42;
          *v23 = v42;
        }

        goto LABEL_50;
      }

      *buf = 0;
    }

    _os_log_impl(&dword_2981ED000, v37, OS_LOG_TYPE_ERROR, "[SMA] Failed to commit staged manifests to Exclaves", buf, 2u);
    goto LABEL_36;
  }

  v26 = 1;
LABEL_24:

  return v26;
}

- (SecureMobileAssetBundle)initWithPath:(id)path
{
  v20 = *MEMORY[0x29EDCA608];
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = SecureMobileAssetBundle;
  v5 = [(SecureMobileAssetBundle *)&v17 init];
  if (v5)
  {
    v6 = pathCopy;
    v7 = realpath_DARWIN_EXTSN([pathCopy fileSystemRepresentation], 0);
    if (v7)
    {
      v8 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v7];
    }

    else
    {
      v8 = pathCopy;
    }

    assetBundlePath = v5->_assetBundlePath;
    v5->_assetBundlePath = v8;

    v5->_darwinOnly = 0;
    if (initWithPath__secureAssetErrorInfoOnce != -1)
    {
      [SecureMobileAssetBundle initWithPath:];
    }

    assetType = [(SecureMobileAssetBundle *)v5 assetType];
    if (assetType)
    {
      v11 = [MAAssetTypeDescriptor descriptorForAssetType:assetType];
    }

    else
    {
      v12 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = pathCopy;
        _os_log_impl(&dword_2981ED000, v12, OS_LOG_TYPE_ERROR, "[SMA] Cannot create an MAAssetTypeDescriptor because assetType is nil for bundle: %{public}@", buf, 0xCu);
      }

      v11 = 0;
    }

    typeDescriptor = v5->_typeDescriptor;
    v5->_typeDescriptor = v11;

    v14 = +[SecureMobileAssetManifestVerifier sharedInstance];
    manifestVerifier = v5->_manifestVerifier;
    v5->_manifestVerifier = v14;

    free(v7);
  }

  return v5;
}

void __40__SecureMobileAssetBundle_initWithPath___block_invoke()
{
  v15 = *MEMORY[0x29EDCA608];
  v0 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  [v0 setObject:@"Unsupported" forKey:&unk_2A1EACB60];
  [v0 setObject:@"UnexpectedFailure" forKey:&unk_2A1EACB78];
  [v0 setObject:@"InvalidArgument" forKey:&unk_2A1EACB90];
  [v0 setObject:@"InvalidCommand" forKey:&unk_2A1EACBA8];
  [v0 setObject:@"Unimplemented" forKey:&unk_2A1EACBC0];
  [v0 setObject:@"None" forKey:&unk_2A1EACBD8];
  [v0 setObject:@"Alloc" forKey:&unk_2A1EACBF0];
  [v0 setObject:@"Personalize" forKey:&unk_2A1EACC08];
  [v0 setObject:@"Depersonalize" forKey:&unk_2A1EACC20];
  [v0 setObject:@"Graft" forKey:&unk_2A1EACC38];
  [v0 setObject:@"Ungraft" forKey:&unk_2A1EACC50];
  [v0 setObject:@"Mount" forKey:&unk_2A1EACC68];
  [v0 setObject:@"Unmount" forKey:&unk_2A1EACC80];
  [v0 setObject:@"ExclavesUnsupported" forKey:&unk_2A1EACC98];
  [v0 setObject:@"MapToExclaves" forKey:&unk_2A1EACCB0];
  [v0 setObject:@"UnmapFromExclaves" forKey:&unk_2A1EACCC8];
  [v0 setObject:@"DiskImageAttach" forKey:&unk_2A1EACCE0];
  [v0 setObject:@"DiskImageEject" forKey:&unk_2A1EACCF8];
  [v0 setObject:@"CommitManifests" forKey:&unk_2A1EACD10];
  [v0 setObject:@"TrustCache" forKey:&unk_2A1EACD28];
  [v0 setObject:@"AccessNotPermitted" forKey:&unk_2A1EACD40];
  [v0 setObject:@"CompatibilityVersionMismatch" forKey:&unk_2A1EACD58];
  [v0 setObject:@"GraftPersonalizedBundleTicketDataNil" forKey:&unk_2A1EACD70];
  [v0 setObject:@"GraftCommittedTicketDataNil" forKey:&unk_2A1EACD88];
  [v0 setObject:@"GraftTicketMismatch" forKey:&unk_2A1EACDA0];
  [v0 setObject:@"GraftNotPersonalizedForExclaves" forKey:&unk_2A1EACDB8];
  [v0 setObject:@"GraftPath" forKey:&unk_2A1EACDD0];
  [v0 setObject:@"GraftTicketVerificationFailed" forKey:&unk_2A1EACDE8];
  [v0 setObject:@"MountPersonalizedBundleTicketDataNil" forKey:&unk_2A1EACE00];
  [v0 setObject:@"MountCommittedTicketDataNil" forKey:&unk_2A1EACE18];
  [v0 setObject:@"MountTicketMismatch" forKey:&unk_2A1EACE30];
  [v0 setObject:@"MountNotPersonalizedForExclaves" forKey:&unk_2A1EACE48];
  [v0 setObject:@"MountPath" forKey:&unk_2A1EACE60];
  [v0 setObject:@"MountAttachDiskImage" forKey:&unk_2A1EACE78];
  [v0 setObject:@"MountFindDevNodes" forKey:&unk_2A1EACE90];
  [v0 setObject:@"MountFindAPFSVolume" forKey:&unk_2A1EACEA8];
  [v0 setObject:@"MountFoundMultipleAPFSVolumes" forKey:&unk_2A1EACEC0];
  [v0 setObject:@"MountTicket" forKey:&unk_2A1EACED8];
  [v0 setObject:@"MountRootHash" forKey:&unk_2A1EACEF0];
  [v0 setObject:@"MountTicketVerificationFailed" forKey:&unk_2A1EACF08];
  [v0 setObject:@"MapToExclavesPersonalizedBundleTicketDataNil" forKey:&unk_2A1EACF20];
  [v0 setObject:@"MapToExclavesCommittedTicketDataNil" forKey:&unk_2A1EACF38];
  [v0 setObject:@"MapToExclavesTicketMismatch" forKey:&unk_2A1EACF50];
  [v0 setObject:@"MapToExclavesNotPersonalizedForExclaves" forKey:&unk_2A1EACF68];
  [v0 setObject:@"MapToExclavesDetermineState" forKey:&unk_2A1EACF80];
  [v0 setObject:@"MapToExclavesUnregisterExisting" forKey:&unk_2A1EACF98];
  [v0 setObject:@"MapToExclavesTicketPathNil" forKey:&unk_2A1EACFB0];
  [v0 setObject:@"MapToExclavesInfoPlistPathNil" forKey:&unk_2A1EACFC8];
  [v0 setObject:@"MapToExclavesIntegrityCatalogPathNil" forKey:&unk_2A1EACFE0];
  [v0 setObject:@"MapToExclavesTicketDataNil" forKey:&unk_2A1EACFF8];
  [v0 setObject:@"MapToExclavesInfoPlistDataNil" forKey:&unk_2A1EAD010];
  [v0 setObject:@"MapToExclavesIntegrityCatalogDataNil" forKey:&unk_2A1EAD028];
  [v0 setObject:@"MapToExclavesStoreManifestFailed" forKey:&unk_2A1EAD040];
  [v0 setObject:@"MapToExclavesActivateManifestFailed" forKey:&unk_2A1EAD058];
  [v0 setObject:@"MapToExclavesTicketVerificationFailed" forKey:&unk_2A1EAD070];
  [v0 setObject:@"TrustCachePersonalizedBundleTicketDataNil" forKey:&unk_2A1EAD088];
  [v0 setObject:@"TrustCacheCommittedTicketDataNil" forKey:&unk_2A1EAD0A0];
  [v0 setObject:@"TrustCacheTicketMismatch" forKey:&unk_2A1EAD0B8];
  [v0 setObject:@"TrustCacheNotPersonalizedForExclaves" forKey:&unk_2A1EAD0D0];
  [v0 setObject:@"TrustCacheTicketReadError" forKey:&unk_2A1EAD0E8];
  [v0 setObject:@"TrustCacheReadError" forKey:&unk_2A1EAD100];
  [v0 setObject:@"TrustCacheDataOrTicketEmpty" forKey:&unk_2A1EAD118];
  [v0 setObject:@"TrustCacheAMFILoadError" forKey:&unk_2A1EAD130];
  [v0 setObject:@"TrustCacheAMFILoadDeviceLocked" forKey:&unk_2A1EAD148];
  [v0 setObject:@"TrustCacheTicketVerificationFailed" forKey:&unk_2A1EAD160];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = v0;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = MEMORY[0x29EDC6C88];
        v8 = [v6 integerValue];
        v9 = [v1 objectForKeyedSubscript:v6];
        [v7 attributesOfErrorForDomain:@"SecureMobileAssetErrorDomain" withCode:v8 codeName:v9];
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

+ (id)getExclaveManager:(id *)manager
{
  if (!objc_opt_class())
  {
    v5 = 0;
LABEL_5:
    v6 = 0;
    if (!manager)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  mEMORY[0x29EDC5D38] = [MEMORY[0x29EDC5D38] sharedInstance];
  if (mEMORY[0x29EDC5D38])
  {
    v5 = mEMORY[0x29EDC5D38];
    goto LABEL_5;
  }

  v9 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v12 = 0;
    _os_log_impl(&dword_2981ED000, v9, OS_LOG_TYPE_ERROR, "[SMA] Failed to get shared instance of SecureMobileAssetExclave", v12, 2u);
  }

  v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to get shared instance of SecureMobileAssetExclave"];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
  [dictionary setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
  v6 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:-4 userInfo:dictionary];

  v5 = 0;
  if (manager)
  {
LABEL_6:
    v7 = v6;
    *manager = v6;
  }

LABEL_7:

  return v5;
}

+ (BOOL)_shouldUseConclave:(BOOL)conclave
{
  conclaveCopy = conclave;
  v4 = MABrainUtilityConclaveEnabled(self, a2);
  if (v4)
  {
    has_internal_content = os_variant_has_internal_content();
    LOBYTE(v4) = 1;
    if (has_internal_content)
    {
      if (conclaveCopy)
      {
        v6 = _MAClientLog(@"SecureMA");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&dword_2981ED000, v6, OS_LOG_TYPE_DEFAULT, "[SMA] Operations will be restricted to darwin only", v8, 2u);
        }

        LOBYTE(v4) = 0;
      }
    }
  }

  return v4;
}

+ (BOOL)_requiresLiveExclaveNonce
{
  if (_requiresLiveExclaveNonce_onceToken != -1)
  {
    +[SecureMobileAssetBundle _requiresLiveExclaveNonce];
  }

  return _requiresLiveExclaveNonce_required;
}

void __52__SecureMobileAssetBundle__requiresLiveExclaveNonce__block_invoke()
{
  if (_os_feature_enabled_impl())
  {
    v0 = objc_opt_class();
    if (v0)
    {
      v1 = [MEMORY[0x29EDC5D38] sharedInstance];
      if (objc_opt_respondsToSelector())
      {
        _requiresLiveExclaveNonce_required = 1;
      }

      v0 = v1;
    }
  }

  else
  {
    v0 = 0;
  }
}

- (BOOL)personalize:(id)personalize error:(id *)error
{
  personalizeCopy = personalize;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v7 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __45__SecureMobileAssetBundle_personalize_error___block_invoke;
  v11[3] = &unk_29EE8C3A8;
  v13 = &v21;
  v14 = &v15;
  v8 = v7;
  v12 = v8;
  [(SecureMobileAssetBundle *)self personalize:personalizeCopy completionQueue:0 completion:v11];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v16[5];
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __45__SecureMobileAssetBundle_personalize_error___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)personalize:(id)personalize completionQueue:(id)queue completion:(id)completion
{
  v22 = *MEMORY[0x29EDCA608];
  personalizeCopy = personalize;
  queueCopy = queue;
  completionCopy = completion;
  v11 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_2981ED000, v11, OS_LOG_TYPE_DEFAULT, "[SMA] [Personalization] enqueue %@", buf, 0xCu);
  }

  personalizationQueue = [objc_opt_class() personalizationQueue];
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __66__SecureMobileAssetBundle_personalize_completionQueue_completion___block_invoke;
  v16[3] = &unk_29EE8C3F8;
  v16[4] = self;
  v17 = personalizeCopy;
  v18 = queueCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = queueCopy;
  v15 = personalizeCopy;
  dispatch_async(personalizationQueue, v16);
}

void __66__SecureMobileAssetBundle_personalize_completionQueue_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&dword_2981ED000, v2, OS_LOG_TYPE_DEFAULT, "[SMA] [Personalization] start %@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v18 = 0;
  v6 = [v4 _personalize:v5 error:&v18];
  v7 = v18;
  v8 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138412802;
    v20 = v9;
    v21 = 1024;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_2981ED000, v8, OS_LOG_TYPE_DEFAULT, "[SMA] [Personalization] finish %@ (success = %i, error = %@)", buf, 0x1Cu);
  }

  v10 = *(a1 + 48);
  v11 = v10;
  if (!v10)
  {
    v11 = dispatch_get_global_queue(0, 0);
  }

  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __66__SecureMobileAssetBundle_personalize_completionQueue_completion___block_invoke_1261;
  v14[3] = &unk_29EE8C3D0;
  v12 = *(a1 + 56);
  v17 = v6;
  v15 = v7;
  v16 = v12;
  v13 = v7;
  dispatch_async(v11, v14);
  if (!v10)
  {
  }
}

+ (id)getSigningServerURL:(id)l
{
  v14 = *MEMORY[0x29EDCA608];
  lCopy = l;
  v4 = _MAPreferencesCopyNSStringValue(@"TatsuURLOverride");
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MEMORY[0x29EDB8E70] URLWithString:v4];
      v6 = _MAClientLog(@"SecureMA");
      v7 = v6;
      if (v5)
      {
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        v12 = 138412290;
        v13 = v5;
        v8 = "[SMA] Overridden signing server is '%@'";
        goto LABEL_15;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_2981ED000, v7, OS_LOG_TYPE_ERROR, "[SMA] signing server override was set but was invalid", &v12, 2u);
      }
    }
  }

  if (lCopy && ([lCopy isEqualToString:@"com.apple.MobileAsset.MobileAssetBrain"] & 1) != 0)
  {
    v9 = @"https://gs.apple.com";
  }

  else
  {
    v9 = @"https://gsra.apple.com:443";
  }

  v5 = [MEMORY[0x29EDB8E70] URLWithString:v9];
  v7 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    v8 = "[SMA] Signing server is '%@'";
LABEL_15:
    _os_log_impl(&dword_2981ED000, v7, OS_LOG_TYPE_DEFAULT, v8, &v12, 0xCu);
  }

LABEL_16:

  v10 = v5;

  return v10;
}

- (BOOL)_shouldForcePersonalizationFailure
{
  v28 = *MEMORY[0x29EDCA608];
  if (!_MAPreferencesIsInternalAllowed(self, a2))
  {
    goto LABEL_25;
  }

  v4 = _MAPreferencesCopyNSStringValue(@"FailPersonalizationConfig");
  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = v4;
  v6 = [v4 componentsSeparatedByString:@":"];
  if ([v6 count])
  {
    v14 = _MAClientLog(@"SecureMA");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412546;
      v25 = @"FailPersonalizationConfig";
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_2981ED000, v14, OS_LOG_TYPE_ERROR, "[SMA] Default %@ invalid. Uneven number of ':' separated elements:[%@]", &v24, 0x16u);
    }

    goto LABEL_25;
  }

  objectEnumerator = [v6 objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (!nextObject)
  {
LABEL_8:
    v13 = 1;
    goto LABEL_24;
  }

  nextObject3 = nextObject;
  while (1)
  {
    v10 = nextObject3;
    nextObject2 = [objectEnumerator nextObject];
    assetType = [(SecureMobileAssetBundle *)self assetType];
    v2 = [v10 isEqualToString:assetType];

    if (v2)
    {
      break;
    }

    nextObject3 = [objectEnumerator nextObject];

    if (!nextObject3)
    {
      goto LABEL_8;
    }
  }

  if ([nextObject2 isEqualToString:@"*"])
  {
    v15 = _MAClientLog(@"SecureMA");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      assetType2 = [(SecureMobileAssetBundle *)self assetType];
      v24 = 138412290;
      v25 = assetType2;
      _os_log_impl(&dword_2981ED000, v15, OS_LOG_TYPE_DEFAULT, "[SMA] All specifiers of AssetType %@ are configured to fail personalization", &v24, 0xCu);
    }

    LOBYTE(v2) = 1;
    goto LABEL_23;
  }

  v15 = [nextObject2 componentsSeparatedByString:{@", "}];
  assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
  v2 = [v15 containsObject:assetSpecifier];

  v18 = _MAClientLog(@"SecureMA");
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v19)
    {
      assetSpecifier2 = [(SecureMobileAssetBundle *)self assetSpecifier];
      assetType3 = [(SecureMobileAssetBundle *)self assetType];
      v24 = 138412546;
      v25 = assetSpecifier2;
      v26 = 2112;
      v27 = assetType3;
      v22 = "[SMA] The current specifier(%@) of AssetType %@ is configured to fail personalization";
LABEL_21:
      _os_log_impl(&dword_2981ED000, v18, OS_LOG_TYPE_DEFAULT, v22, &v24, 0x16u);
    }
  }

  else if (v19)
  {
    assetSpecifier2 = [(SecureMobileAssetBundle *)self assetType];
    assetType3 = [(SecureMobileAssetBundle *)self assetSpecifier];
    v24 = 138412546;
    v25 = assetSpecifier2;
    v26 = 2112;
    v27 = assetType3;
    v22 = "[SMA] The current AssetType(%@) is in the list of those configured to fail personalization but the current specifier(%@) is not";
    goto LABEL_21;
  }

LABEL_23:
  v13 = 0;
LABEL_24:

  if (v13)
  {
LABEL_25:
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

- (BOOL)_personalize:(id)_personalize error:(id *)error
{
  v89[6] = *MEMORY[0x29EDCA608];
  _personalizeCopy = _personalize;
  personalizationQueue = [objc_opt_class() personalizationQueue];
  dispatch_assert_queue_V2(personalizationQueue);

  AMAuthInstallLogSetHandler();
  cf = AMAuthInstallCreate();
  v71 = [(NSString *)self->_assetBundlePath stringByAppendingPathComponent:@"AssetData"];
  v72 = [v71 stringByAppendingPathComponent:@"Restore"];
  v7 = [MEMORY[0x29EDB8E70] fileURLWithPath:?];
  secureAssetDataPath = [(SecureMobileAssetBundle *)self secureAssetDataPath];
  v74 = [MEMORY[0x29EDB8E70] fileURLWithPath:secureAssetDataPath];
  [(SecureMobileAssetBundle *)self manifestType];
  v82 = [_personalizeCopy objectForKeyedSubscript:@"ssoToken"];
  [_personalizeCopy objectForKeyedSubscript:@"AuthInstallOptions"];

  v9 = [_personalizeCopy objectForKeyedSubscript:@"stageManifest"];
  bOOLValue = [v9 BOOLValue];

  v73 = v7;
  if ([(SecureMobileAssetBundle *)self isPersonalized])
  {
    v11 = _MAClientLog(@"SecureMA");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      v14 = 0;
      v68 = 0;
      v69 = 0;
      v80 = 0;
      v81 = 0;
      v78 = 0;
      v79 = 0;
      v70 = 0;
      v66 = 0;
      v75 = 0;
      v76 = 0;
      v67 = MEMORY[0x29EDB8EA0];
      v15 = 1;
LABEL_19:
      v23 = cf;
      goto LABEL_20;
    }

    assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
    *buf = 138412290;
    v85 = assetBundlePath;
    v13 = "[SMA] Bundle already personalized, skipping: %@";
LABEL_4:
    _os_log_impl(&dword_2981ED000, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);

    goto LABEL_5;
  }

  if (bOOLValue && [(SecureMobileAssetBundle *)self isPersonalizedManifestStaged])
  {
    v11 = _MAClientLog(@"SecureMA");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
    *buf = 138412290;
    v85 = assetBundlePath;
    v13 = "[SMA] Bundle already personalized and personalized manifest staged, skipping: %@";
    goto LABEL_4;
  }

  if (!MEMORY[0x2A1C7B540])
  {
    v24 = MEMORY[0x29EDBA0F8];
    v25 = "AMAuthInstallUpdaterCryptex1MobileAssetSetInfo";
LABEL_17:
    v26 = [v24 stringWithFormat:@"Symbol not found: _%s", v25];
    dictionary = [MEMORY[0x29EDB8E00] dictionary];
    [dictionary setObject:v26 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
    [dictionary setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
    v14 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:-5 userInfo:dictionary];

    v15 = 0;
    v68 = 0;
    v69 = 0;
    v80 = 0;
    v81 = 0;
    v78 = 0;
    v79 = 0;
    v70 = 0;
LABEL_18:
    v66 = 0;
    v75 = 0;
    v76 = 0;
    v67 = MEMORY[0x29EDB8EA0];
    goto LABEL_19;
  }

  if (!MEMORY[0x2A1C7B538])
  {
    v24 = MEMORY[0x29EDBA0F8];
    v25 = "AMAuthInstallUpdaterCryptex1MobileAssetCopyImg4WithRestoreInfo";
    goto LABEL_17;
  }

  defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
  v64 = secureAssetDataPath;
  [defaultManager removeItemAtPath:secureAssetDataPath error:0];

  assetType = [(SecureMobileAssetBundle *)self assetType];
  v18 = [SecureMobileAssetBundle getSigningServerURL:assetType];

  v19 = cf;
  v70 = v18;
  v20 = AMAuthInstallSetSigningServerURL();
  if (v20)
  {
    v21 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"AMAuthInstallSetSigningServerURL() failed with error %d (%@)", v20, AMAuthInstallGetLocalizedStatusString()];
    dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
    [dictionary2 setObject:v21 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
    [dictionary2 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
    v14 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary2];

    v15 = 0;
    v68 = 0;
    v69 = 0;
    v80 = 0;
    v81 = 0;
    v78 = 0;
    v79 = 0;
    v66 = 0;
    v75 = 0;
    v76 = 0;
    v67 = MEMORY[0x29EDB8EA0];
LABEL_14:
    v23 = v19;
    secureAssetDataPath = v64;
    goto LABEL_20;
  }

  secureAssetDataPath = v64;
  if (v82)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = AMAuthInstallSsoSetToken();
      v32 = _MAClientLog(@"SecureMA");
      v33 = v32;
      if (v31)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v34 = "[SMA] Unable to set SSO token for user authlisting";
          v35 = v33;
          v36 = OS_LOG_TYPE_ERROR;
LABEL_38:
          v37 = 2;
          goto LABEL_39;
        }
      }

      else if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v34 = "[SMA] User-authlisting enabled.";
        v35 = v33;
        v36 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_38;
      }
    }

    else
    {
      v33 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v85 = v82;
        v34 = "[SMA] Invalid ssoToken=%@";
        v35 = v33;
        v36 = OS_LOG_TYPE_ERROR;
        v37 = 12;
LABEL_39:
        _os_log_impl(&dword_2981ED000, v35, v36, v34, buf, v37);
      }
    }
  }

  if ([(SecureMobileAssetBundle *)self _shouldForcePersonalizationFailure])
  {
    v38 = _MAClientLog(@"SecureMA");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      assetType2 = [(SecureMobileAssetBundle *)self assetType];
      *buf = 138412290;
      v85 = assetType2;
      _os_log_impl(&dword_2981ED000, v38, OS_LOG_TYPE_DEFAULT, "[SMA] Simulating personalization failure of asset(%@) due to default", buf, 0xCu);
    }

    v40 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Simulated personalization failure due to default"];
    dictionary3 = [MEMORY[0x29EDB8E00] dictionary];
    [dictionary3 setObject:v40 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
    [dictionary3 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
    v14 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary3];

    v15 = 0;
    v68 = 0;
    v69 = 0;
    v80 = 0;
    v81 = 0;
    v78 = 0;
    v79 = 0;
    goto LABEL_18;
  }

  v42 = MABrainUtilityCopyEcid();
  v43 = MABrainUtilityCopyChipId();
  v81 = MABrainUtilityCopyBoardId();
  v80 = MABrainUtilityCopySecurityDomain();
  v79 = MABrainUtilityCopyCertificateSecurityMode();
  v44 = MABrainUtilityCopySigningFuse();
  v45 = MEMORY[0x29EDB8EA0];
  v78 = v44;
  if (!v42)
  {
    goto LABEL_52;
  }

  v19 = cf;
  if (v43 && v81 && v80 && v79 && v44)
  {
    v46 = *MEMORY[0x29EDC9210];
    v88[0] = *MEMORY[0x29EDC9218];
    v88[1] = v46;
    v89[0] = v42;
    v89[1] = v43;
    v47 = *MEMORY[0x29EDC9240];
    v88[2] = *MEMORY[0x29EDC9208];
    v88[3] = v47;
    v89[2] = v81;
    v89[3] = v80;
    v48 = *MEMORY[0x29EDC9238];
    v88[4] = *MEMORY[0x29EDC9248];
    v88[5] = v48;
    v89[4] = v79;
    v89[5] = v44;
    v45 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v89 forKeys:v88 count:6];
LABEL_52:
    v19 = cf;
  }

  v69 = v42;
  v67 = v45;
  v49 = AMAuthInstallApSetParameters();
  v68 = v43;
  if (v49)
  {
    v50 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"AMAuthInstallApSetParameters() failed with error %d (%@)", v49, AMAuthInstallGetLocalizedStatusString()];
    dictionary4 = [MEMORY[0x29EDB8E00] dictionary];
    [dictionary4 setObject:v50 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
    [dictionary4 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
    v14 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary4];

    v15 = 0;
    v66 = 0;
    v75 = 0;
    v76 = 0;
    goto LABEL_14;
  }

  if (_cryptex1_product_class_onceToken != -1)
  {
    [SecureMobileAssetBundle _personalize:error:];
  }

  secureAssetDataPath = v64;
  v52 = _cryptex1_product_class_productClass;
  v53 = *MEMORY[0x29EDC92F8];
  v86[0] = *MEMORY[0x29EDC92B0];
  v86[1] = v53;
  v87[0] = @"0xFF10";
  v87[1] = &unk_2A1EACB00;
  v86[2] = *MEMORY[0x29EDC92D8];
  v66 = v52;
  v87[2] = v52;
  v54 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v87 forKeys:v86 count:3];
  v55 = [_personalizeCopy objectForKeyedSubscript:@"scpParametersOverride"];
  objc_opt_class();
  v75 = v55;
  if (objc_opt_isKindOfClass())
  {
    v77 = v54;
    v56 = _MAClientLog(@"SecureMA");
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v85 = v55;
      _os_log_impl(&dword_2981ED000, v56, OS_LOG_TYPE_DEFAULT, "[SMA] WARNING: Using software coprocessor parameters override:\n%@", buf, 0xCu);
    }

    v54 = v55;
  }

  v76 = v54;
  v57 = AMAuthInstallApSoftwareCoprocessorSetParameters();
  if (v57)
  {
    [MEMORY[0x29EDBA0F8] stringWithFormat:@"AMAuthInstallApSoftwareCoprocessorSetParameters() failed with error %d (%@)", v57, AMAuthInstallGetLocalizedStatusString()];
  }

  else
  {
    v58 = AMAuthInstallBundleCopyBuildIdentityForVariant();
    if (!v58)
    {
      v61 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"AMAuthInstallBundleCopyBuildIdentityForVariant() returned a NULL buildIdentity"];
      dictionary5 = [MEMORY[0x29EDB8E00] dictionary];
      [dictionary5 setObject:v61 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary5 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      v14 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary5];

      v15 = 0;
      goto LABEL_19;
    }

    [MEMORY[0x29EDBA0F8] stringWithFormat:@"AMAuthInstallBundleCopyBuildIdentityForVariant() failed with error %d (%@)", v58, AMAuthInstallGetLocalizedStatusString()];
  }
  v59 = ;
  dictionary6 = [MEMORY[0x29EDB8E00] dictionary];
  [dictionary6 setObject:v59 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
  [dictionary6 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
  v14 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary6];

  v15 = 0;
  v23 = cf;
LABEL_20:
  if (v23)
  {
    CFRelease(v23);
  }

  if (!v15)
  {
    v28 = _MAClientLog(@"SecureMA");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v85 = v14;
      _os_log_impl(&dword_2981ED000, v28, OS_LOG_TYPE_ERROR, "[SMA] Failed to personalize asset bundle: %@", buf, 0xCu);
    }

    if (error)
    {
      v29 = v14;
      *error = v14;
    }

    [(SecureMobileAssetBundle *)self depersonalize:0, v63];
  }

  return v15;
}

- (BOOL)_generateNonceProposalForHandle:(unint64_t)handle digest:(id *)digest nonce:(id *)nonce error:(id *)error
{
  v29 = *MEMORY[0x29EDCA608];
  if (image4_environment_new())
  {
    memset(v28, 0, sizeof(v28));
    v27[0] = 0;
    v27[1] = 0;
    nonce_proposal = image4_environment_generate_nonce_proposal();
    image4_environment_destroy();
    v10 = nonce_proposal == 0;
    v11 = _MAClientLog(@"SecureMA");
    v12 = v11;
    if (nonce_proposal)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        *v26 = nonce_proposal;
        *&v26[4] = 2080;
        *&v26[6] = strerror(nonce_proposal);
        _os_log_impl(&dword_2981ED000, v12, OS_LOG_TYPE_ERROR, "[SMA] Failed to generate nonce proposal: %d (%s)", buf, 0x12u);
      }

      v13 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:nonce_proposal userInfo:0];
      v14 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"image4_environment_generate_nonce_proposal() failed"];
      v15 = MEMORY[0x29EDB8E00];
      v16 = v13;
      dictionary = [v15 dictionary];
      [dictionary setObject:v14 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x29EDB9F18]];

      v18 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary];

      v19 = v18;
      *error = v18;
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *v26 = 16;
        *&v26[8] = 2048;
        *&v26[10] = 0;
        _os_log_impl(&dword_2981ED000, v12, OS_LOG_TYPE_DEFAULT, "[SMA] Obtained nonce (%lu bytes) and digest (%lu bytes)", buf, 0x16u);
      }

      *digest = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:v28 length:0];
      *nonce = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:v27 length:16];
    }
  }

  else
  {
    v20 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"image4_environment_new() failed"];
    dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
    [dictionary2 setObject:v20 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
    [dictionary2 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
    v22 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary2];

    v23 = v22;
    *error = v22;

    return 0;
  }

  return v10;
}

- (BOOL)_queryNonceForHandle:(unint64_t)handle domain:(unsigned int)domain digest:(id *)digest error:(id *)error
{
  v31 = *MEMORY[0x29EDCA608];
  if (image4_environment_new())
  {
    image4_environment_set_nonce_domain();
    memset(v30, 0, sizeof(v30));
    v9 = image4_environment_copy_nonce_digest();
    image4_environment_destroy();
    v10 = v9 == 0;
    if (v9)
    {
      v11 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        domainCopy2 = domain;
        v28 = 1024;
        LODWORD(v29[0]) = v9;
        WORD2(v29[0]) = 2080;
        *(v29 + 6) = strerror(v9);
        _os_log_impl(&dword_2981ED000, v11, OS_LOG_TYPE_ERROR, "[SMA] Failed to query nonce domain %d: %d (%s)", buf, 0x18u);
      }

      v12 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v9 userInfo:0];
      v13 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"image4_environment_copy_nonce_digest() failed"];
      v14 = MEMORY[0x29EDB8E00];
      v15 = v12;
      dictionary = [v14 dictionary];
      [dictionary setObject:v13 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x29EDB9F18]];

      v17 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary];

      v18 = v17;
      *error = v17;
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:v30 length:0];
      v23 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        domainCopy2 = domain;
        v28 = 2112;
        v29[0] = v15;
        _os_log_impl(&dword_2981ED000, v23, OS_LOG_TYPE_DEFAULT, "[SMA] Queried nonce digest for domain %d: %@", buf, 0x12u);
      }

      v24 = v15;
      *digest = v15;
    }
  }

  else
  {
    v19 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"image4_environment_new() failed"];
    dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
    [dictionary2 setObject:v19 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
    [dictionary2 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
    v21 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary2];

    v22 = v21;
    *error = v21;

    return 0;
  }

  return v10;
}

- (BOOL)_storeManifest:(id)manifest manifestType:(unint64_t)type stage:(BOOL)stage error:(id *)error
{
  stageCopy = stage;
  v62 = *MEMORY[0x29EDCA608];
  manifestCopy = manifest;
  v11 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"Storing";
    if (stageCopy)
    {
      v12 = @"Staging";
    }

    *buf = 138412802;
    v57 = v12;
    if (type == 1)
    {
      v13 = "classic";
    }

    else
    {
      v13 = "code";
    }

    v58 = 2112;
    selfCopy = self;
    v60 = 2080;
    v61 = v13;
    _os_log_impl(&dword_2981ED000, v11, OS_LOG_TYPE_DEFAULT, "[SMA] %@ manifest for %@ (type = %s)", buf, 0x20u);
  }

  secureInfoPlistPath = [(SecureMobileAssetBundle *)self secureInfoPlistPath];
  if (secureInfoPlistPath)
  {
    v55 = 0;
    v15 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:secureInfoPlistPath options:0 error:&v55];
    v16 = v55;
    if (!v15)
    {
      v17 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"failed to read cryptex info plist"];
      v22 = MEMORY[0x29EDB8E00];
      v16 = v16;
      dictionary = [v22 dictionary];
      [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      v24 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary];

      v25 = v24;
      v21 = 0;
      *error = v24;
LABEL_40:

      goto LABEL_41;
    }

    v17 = objc_alloc_init(MEMORY[0x29EDC5D30]);
    if (stageCopy)
    {
      if (objc_opt_respondsToSelector())
      {
        stageCopy = 1;
      }

      else
      {
        v26 = _MAClientLog(@"SecureMA");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2981ED000, v26, OS_LOG_TYPE_ERROR, "[SMA] Warning: MASecureManifestStorage does not support staging, storing manifest instead", buf, 2u);
        }

        stageCopy = 0;
      }
    }

    if (type == 2 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      v35 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"MASecureManifestStorage does not support SMAC"];
      dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
      [dictionary2 setObject:v35 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary2 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      v37 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary2];

      v38 = v37;
      *error = v37;
LABEL_39:

      v21 = 0;
      goto LABEL_40;
    }

    if (objc_opt_respondsToSelector())
    {
      errorCopy = error;
      v54 = v16;
      v27 = [v17 storeManifest:manifestCopy manifestType:type infoPlist:v15 stage:stageCopy error:&v54];
      v28 = v54;

      if (v27)
      {
        v16 = v28;
        v29 = errorCopy;
        goto LABEL_34;
      }

      v39 = "store";
      if (stageCopy)
      {
        v39 = "stage";
      }

      v40 = "code";
      if (type == 1)
      {
        v40 = "classic";
      }

      v35 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"failed to %s %s manifest", v39, v40];
      v41 = MEMORY[0x29EDB8E00];
      v16 = v28;
      dictionary3 = [v41 dictionary];
      [dictionary3 setObject:v35 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary3 setObject:v16 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      v43 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary3];

      v44 = v43;
      *errorCopy = v43;
      goto LABEL_39;
    }

    errorCopy2 = error;
    if (stageCopy)
    {
      v53 = v16;
      v31 = [v17 stageManifest:manifestCopy infoPlist:v15 error:&v53];
      v32 = v53;

      if ((v31 & 1) == 0)
      {
        v33 = MEMORY[0x29EDBA0F8];
        v34 = @"failed to stage manifest";
LABEL_38:
        v35 = [v33 stringWithFormat:v34];
        v46 = MEMORY[0x29EDB8E00];
        v16 = v32;
        dictionary4 = [v46 dictionary];
        [dictionary4 setObject:v35 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
        [dictionary4 setObject:v16 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
        v48 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary4];

        v49 = v48;
        *errorCopy2 = v48;
        goto LABEL_39;
      }
    }

    else
    {
      v52 = v16;
      v45 = [v17 storeManifest:manifestCopy infoPlist:v15 error:&v52];
      v32 = v52;

      if ((v45 & 1) == 0)
      {
        v33 = MEMORY[0x29EDBA0F8];
        v34 = @"failed to store manifest";
        goto LABEL_38;
      }
    }

    v16 = v32;
    v29 = errorCopy2;
LABEL_34:
    if (+[SecureMobileAssetBundle _requiresLiveExclaveNonce])
    {
      v21 = [(SecureMobileAssetBundle *)self _storeManifestToExclaves:manifestCopy infoPlist:v15 stage:stageCopy error:v29];
    }

    else
    {
      v21 = 1;
    }

    goto LABEL_40;
  }

  v16 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"failed to get cryptex info plist path"];
  dictionary5 = [MEMORY[0x29EDB8E00] dictionary];
  [dictionary5 setObject:v16 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
  [dictionary5 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
  v19 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary5];

  v20 = v19;
  v21 = 0;
  *error = v19;
LABEL_41:

  return v21;
}

- (BOOL)_storeManifestToExclaves:(id)exclaves infoPlist:(id)plist stage:(BOOL)stage error:(id *)error
{
  stageCopy = stage;
  v72[1] = *MEMORY[0x29EDCA608];
  exclavesCopy = exclaves;
  plistCopy = plist;
  v12 = objc_opt_class();
  objc_sync_enter(v12);
  v69 = 0;
  if ([(SecureMobileAssetBundle *)self isMappableToExclaves:&v69]&& [SecureMobileAssetBundle _shouldUseConclave:[(SecureMobileAssetBundle *)self darwinOnly]])
  {
    integrityCatalogPath = [(SecureMobileAssetBundle *)self integrityCatalogPath];
    if (!integrityCatalogPath)
    {
      v26 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"failed to get integrity catalog path"];
      dictionary = [MEMORY[0x29EDB8E00] dictionary];
      [dictionary setObject:v26 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      v28 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary];

      v29 = v28;
      v25 = 0;
      *error = v28;
LABEL_36:

      goto LABEL_37;
    }

    v68 = 0;
    v58 = integrityCatalogPath;
    v14 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:integrityCatalogPath options:0 error:&v68];
    v15 = v68;
    v59 = v14;
    if (!v14)
    {
      v30 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"failed to read cryptex integrity catalog"];
      v26 = v15;
      dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
      [dictionary2 setObject:v30 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary2 setObject:v26 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      v32 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary2];

      v33 = v32;
      *error = v32;

LABEL_32:
      v25 = 0;
      goto LABEL_36;
    }

    v67 = v15;
    v60 = [SecureMobileAssetBundle getExclaveManager:&v67];
    v16 = v67;

    if ([v60 conformsToProtocol:&unk_2A1EB0A08])
    {
      v57 = v60;
      v17 = v69;
      assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
      v66 = v16;
      LOBYTE(v17) = [v57 stageManifestForFSTag:v17 specifier:assetSpecifier manifest:exclavesCopy infoPlist:plistCopy catalog:v59 error:&v66];
      v19 = v66;

      if (v17)
      {
        if (stageCopy)
        {
LABEL_10:

LABEL_35:
          v25 = 1;
          v26 = v58;
          goto LABEL_36;
        }

        v56 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v69];
        v72[0] = v56;
        v20 = [MEMORY[0x29EDB8D80] arrayWithObjects:v72 count:1];
        assetSpecifier2 = [(SecureMobileAssetBundle *)self assetSpecifier];
        v71 = assetSpecifier2;
        v22 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v71 count:1];
        v65 = v19;
        v23 = [v57 commitStagedManifestForFSTags:v20 specifiers:v22 error:&v65];
        v24 = v65;

        if (v23)
        {
          v19 = v24;
          goto LABEL_10;
        }

        v42 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"failed to store manifest in Exclave Secure Storage"];
        v26 = v24;
        dictionary3 = [MEMORY[0x29EDB8E00] dictionary];
        [dictionary3 setObject:v42 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
        [dictionary3 setObject:v26 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
        v44 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary3];
      }

      else
      {
        v42 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"failed to stage manifest in Exclave Secure Storage"];
        v26 = v19;
        dictionary3 = [MEMORY[0x29EDB8E00] dictionary];
        [dictionary3 setObject:v42 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
        [dictionary3 setObject:v26 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
        v44 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary3];
      }

      v45 = v44;

      v46 = v45;
      *error = v45;

      goto LABEL_31;
    }

    if (![v60 conformsToProtocol:&unk_2A1EB0A68])
    {
      if (!v16)
      {
        v19 = _MAClientLog(@"SecureMA");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2981ED000, v19, OS_LOG_TYPE_DEFAULT, "[SMA] Unable to get SecureMobileAssetExclave instance in this environment", buf, 2u);
        }

        goto LABEL_35;
      }

      v57 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to get shared instance of SecureMobileAssetExclave"];
      v26 = v16;
      dictionary4 = [MEMORY[0x29EDB8E00] dictionary];
      [dictionary4 setObject:v57 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary4 setObject:v26 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      v40 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary4];

      v41 = v40;
      *error = v40;
      goto LABEL_31;
    }

    v57 = v60;
    v34 = objc_opt_respondsToSelector();
    if (v34 & 1 | !stageCopy)
    {
      if (stageCopy)
      {
        v63 = v16;
        v35 = [v57 stageManifest:exclavesCopy infoPlist:plistCopy catalog:v14 error:&v63];
        v19 = v63;

        if ((v35 & 1) == 0)
        {
          v36 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"failed to stage manifest in Exclave Secure Storage"];
          v26 = v19;
          dictionary5 = [MEMORY[0x29EDB8E00] dictionary];
          [dictionary5 setObject:v36 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
          [dictionary5 setObject:v26 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
          v38 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary5];
LABEL_30:
          v53 = v38;

          v54 = v53;
          *error = v53;

LABEL_31:
          goto LABEL_32;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v47 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2981ED000, v47, OS_LOG_TYPE_ERROR, "[SMA] Warning: MAExclaveManifestStorageService does not support staging, storing manifest instead", buf, 2u);
      }
    }

    v62 = v16;
    v48 = [v57 storeManifest:exclavesCopy infoPlist:plistCopy catalog:v14 error:&v62];
    v49 = v62;

    if ((v48 & v34) != 1 || ([MEMORY[0x29EDBA070] numberWithUnsignedInt:v69], v50 = objc_claimAutoreleasedReturnValue(), v70 = v50, objc_msgSend(MEMORY[0x29EDB8D80], "arrayWithObjects:count:", &v70, 1), v51 = objc_claimAutoreleasedReturnValue(), v61 = v49, v52 = objc_msgSend(v57, "commitStagedManifestForFSTags:error:", v51, &v61), v19 = v61, v49, v51, v50, v49 = v19, (v52 & 1) == 0))
    {
      v36 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"failed to store manifest in Exclave Secure Storage"];
      v26 = v49;
      dictionary5 = [MEMORY[0x29EDB8E00] dictionary];
      [dictionary5 setObject:v36 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary5 setObject:v26 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      v38 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:dictionary5];
      goto LABEL_30;
    }

LABEL_28:

    goto LABEL_35;
  }

  v25 = 1;
LABEL_37:
  objc_sync_exit(v12);

  return v25;
}

- (BOOL)_activateManifestInExclaves:(unsigned int)exclaves error:(id *)error
{
  v5 = *&exclaves;
  v37 = *MEMORY[0x29EDCA608];
  v28 = 0;
  v7 = [SecureMobileAssetBundle getExclaveManager:&v28];
  v8 = v28;
  if (v7)
  {
    if (![v7 conformsToProtocol:&unk_2A1EB0A08])
    {
      v23 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2981ED000, v23, OS_LOG_TYPE_ERROR, "[SMA] Activating committed manifest is not supported on this OS", buf, 2u);
      }

      v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Activating committed manifest is not supported on this OS"];
      dictionary = [MEMORY[0x29EDB8E00] dictionary];
      [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      v15 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:-5 userInfo:dictionary];

      goto LABEL_17;
    }

    v9 = v7;
    v10 = _MAClientLog(@"SecureMA");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      assetType = [(SecureMobileAssetBundle *)self assetType];
      assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
      *buf = 138412802;
      v30 = assetType;
      v31 = 2112;
      v32 = assetSpecifier;
      v33 = 1024;
      v34 = v5;
      _os_log_impl(&dword_2981ED000, v10, OS_LOG_TYPE_DEFAULT, "[SMA] Activating committed manifest for %@:%@ fstag=%u", buf, 0x1Cu);
    }

    assetSpecifier2 = [(SecureMobileAssetBundle *)self assetSpecifier];
    v27 = v8;
    v14 = [v9 activateCommittedManifestForFSTag:v5 specifier:assetSpecifier2 error:&v27];
    v15 = v27;

    v16 = _MAClientLog(@"SecureMA");
    v8 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        assetType2 = [(SecureMobileAssetBundle *)self assetType];
        assetSpecifier3 = [(SecureMobileAssetBundle *)self assetSpecifier];
        *buf = 138412802;
        v30 = assetType2;
        v31 = 2112;
        v32 = assetSpecifier3;
        v33 = 1024;
        v34 = v5;
        v19 = "[SMA] Successfully activated committed manifest for %@:%@ fstag=%u";
        v20 = v8;
        v21 = OS_LOG_TYPE_DEFAULT;
        v22 = 28;
LABEL_16:
        _os_log_impl(&dword_2981ED000, v20, v21, v19, buf, v22);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      assetType2 = [(SecureMobileAssetBundle *)self assetType];
      assetSpecifier3 = [(SecureMobileAssetBundle *)self assetSpecifier];
      *buf = 138413058;
      v30 = assetType2;
      v31 = 2112;
      v32 = assetSpecifier3;
      v33 = 1024;
      v34 = v5;
      v35 = 2112;
      v36 = v15;
      v19 = "[SMA] Failed to activate committed manifest for %@:%@ fstag=%u %@";
      v20 = v8;
      v21 = OS_LOG_TYPE_ERROR;
      v22 = 38;
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  v9 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v30 = v8;
    _os_log_impl(&dword_2981ED000, v9, OS_LOG_TYPE_ERROR, "[SMA] Failed to activate committed manifest because conclave manager instance is nil: %@", buf, 0xCu);
  }

  v15 = v8;
LABEL_18:

  if (error && v15)
  {
    v25 = v15;
    *error = v15;
  }

  return v15 == 0;
}

- (BOOL)depersonalize:(id *)depersonalize
{
  v23 = *MEMORY[0x29EDCA608];
  secureAssetDataPath = [(SecureMobileAssetBundle *)self secureAssetDataPath];
  v6 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_2981ED000, v6, OS_LOG_TYPE_DEFAULT, "[SMA] Depersonalizing %@", buf, 0xCu);
  }

  defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
  v8 = [defaultManager fileExistsAtPath:secureAssetDataPath];

  if (!v8)
  {
    v11 = 0;
LABEL_14:
    v18 = 1;
    goto LABEL_15;
  }

  defaultManager2 = [MEMORY[0x29EDB9FB8] defaultManager];
  v20 = 0;
  v10 = [defaultManager2 removeItemAtPath:secureAssetDataPath error:&v20];
  v11 = v20;

  if (v10)
  {
    v12 = _MAClientLog(@"SecureMA");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = secureAssetDataPath;
      _os_log_impl(&dword_2981ED000, v12, OS_LOG_TYPE_DEFAULT, "[SMA] Removed personalized bundle: %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to remove personalized bundle for %@: %@", self, v11];
    v13 = MEMORY[0x29EDB8E00];
    v14 = v11;
    dictionary = [v13 dictionary];
    [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
    [dictionary setObject:v14 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
    v11 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:103 userInfo:dictionary];
  }

  if (!v11)
  {
    goto LABEL_14;
  }

  v16 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    selfCopy = v11;
    _os_log_impl(&dword_2981ED000, v16, OS_LOG_TYPE_ERROR, "[SMA] Failed to depersonalize: %@", buf, 0xCu);
  }

  if (depersonalize)
  {
    v17 = v11;
    v18 = 0;
    *depersonalize = v11;
  }

  else
  {
    v18 = 0;
  }

LABEL_15:

  return v18;
}

- (BOOL)isGrafted
{
  selfCopy = self;
  graftPath = [(SecureMobileAssetBundle *)self graftPath];
  LOBYTE(selfCopy) = [(SecureMobileAssetBundle *)selfCopy isGraftedPath:graftPath];

  return selfCopy;
}

- (BOOL)isGraftedPath:(id)path
{
  v6[0] = 0;
  v6[1] = 0;
  v3 = fsctl([path fileSystemRepresentation], 0xC0104A66uLL, v6, 1u);
  return BYTE4(v6[0]) && v3 == 0;
}

- (BOOL)loadTrustCache:(id *)cache
{
  v85[5] = *MEMORY[0x29EDCA608];
  v5 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
    *buf = 138412290;
    v73 = assetBundlePath;
    _os_log_impl(&dword_2981ED000, v5, OS_LOG_TYPE_DEFAULT, "[SMA] Loading trustcache for %@", buf, 0xCu);
  }

  cryptexPath = [(SecureMobileAssetBundle *)self cryptexPath];
  trustCachePath = [(SecureMobileAssetBundle *)self trustCachePath];
  ticketPath = [(SecureMobileAssetBundle *)self ticketPath];
  v10 = ticketPath;
  if (!cryptexPath)
  {
    if (cache)
    {
      v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"cryptexPath is nil"];
      dictionary = [MEMORY[0x29EDB8E00] dictionary];
      [dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      v13 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:115 userInfo:dictionary];

      v14 = v13;
      *cache = v13;
    }

    goto LABEL_74;
  }

  if (!trustCachePath)
  {
    if (cache)
    {
      v15 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"trustCachePath is nil"];
      dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
      [dictionary2 setObject:v15 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary2 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      v17 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:115 userInfo:dictionary2];

      v18 = v17;
      *cache = v17;
    }

    goto LABEL_74;
  }

  if (!ticketPath)
  {
    if (cache)
    {
      v19 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"ticketPath is nil"];
      dictionary3 = [MEMORY[0x29EDB8E00] dictionary];
      [dictionary3 setObject:v19 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary3 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      v21 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:115 userInfo:dictionary3];

      v22 = v21;
      *cache = v21;
    }

    goto LABEL_74;
  }

  v67 = -1;
  if (![(SecureMobileAssetBundle *)self isPersonalized:&v67])
  {
    if (cache)
    {
      v23 = MEMORY[0x29EDB9FA0];
      if (v67 >= 0x33)
      {
        v24 = 115;
      }

      else
      {
        v24 = v67 + 11500;
      }

      v84[0] = *MEMORY[0x29EDB9E38];
      if (v67 > 0x32)
      {
        v35 = @"cannot load trustcache for an unpersonalized cryptex";
      }

      else
      {
        v25 = @"Unknown";
        if (v67 <= 1)
        {
          if (v67)
          {
            v25 = @"Committed ticket data is nil";
          }

          else
          {
            v25 = @"Personalized bundle ticket data is nil";
          }
        }

        else
        {
          switch(v67)
          {
            case 2:
              v25 = @"Personalized bundle ticket data and committed ticket data do not match";
              break;
            case 3:
              v25 = @"Bundle is not personalized and committed for Exclaves";
              break;
            case 50:
              v25 = @"Personalized manifest failed to verify (nonce rolled?)";
              break;
          }
        }

        v35 = [@"cannot load trustcache for an unpersonalized cryptex" stringByAppendingFormat:@" (%@)", v25];
      }

      v85[0] = v35;
      v85[1] = cryptexPath;
      v84[1] = @"cryptexPath";
      v84[2] = @"ticketpath";
      v85[2] = v10;
      v85[3] = trustCachePath;
      v84[3] = @"trustCachePath";
      v84[4] = @"AssetBundlePath";
      assetBundlePath2 = [(SecureMobileAssetBundle *)self assetBundlePath];
      v85[4] = assetBundlePath2;
      v54 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v85 forKeys:v84 count:5];
      *cache = [v23 errorWithDomain:@"SecureMobileAssetErrorDomain" code:v24 userInfo:v54];
    }

LABEL_74:
    v34 = 0;
    goto LABEL_75;
  }

  v82[0] = @"MKBAssertionKey";
  v82[1] = @"MKBAssertionTimeout";
  v83[0] = @"Other";
  v83[1] = &unk_2A1EACB18;
  v63 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
  v66 = 0;
  cf = MKBDeviceLockAssertion();
  if (cf)
  {
    v62 = 0;
  }

  else
  {
    v62 = v66;
    v26 = _MAClientLog(@"SecureMA");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v73 = trustCachePath;
      v74 = 2112;
      v75 = v66;
      _os_log_impl(&dword_2981ED000, v26, OS_LOG_TYPE_DEFAULT, "[SMA] Unable to acquiring unlock assertion %@: %@", buf, 0x16u);
    }
  }

  v65 = 0;
  v27 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:trustCachePath options:1 error:&v65];
  v28 = v65;
  if (v27)
  {
    v64 = v28;
    v29 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:v10 options:1 error:&v64];
    v60 = v64;

    if (v29)
    {
      if ([v27 length] >> 32)
      {
        v30 = 0;
      }

      else
      {
        v30 = [v27 length];
      }

      if (!([v29 length] >> 32) && objc_msgSend(v29, "length") && v30)
      {
        v41 = v27;
        [v27 bytes];
        v42 = v29;
        [v29 bytes];
        if (!amfi_load_trust_cache())
        {
          v56 = _MAClientLog(@"SecureMA");
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            assetBundlePath3 = [(SecureMobileAssetBundle *)self assetBundlePath];
            *buf = 138412290;
            v73 = assetBundlePath3;
            _os_log_impl(&dword_2981ED000, v56, OS_LOG_TYPE_DEFAULT, "[SMA] Successfully loaded trust cache for Secure Asset bundle: %@", buf, 0xCu);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          cf = 0;
          v34 = 1;
          goto LABEL_62;
        }

        __errnum = *__error();
        v43 = _MAClientLog(@"SecureMA");
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          assetBundlePath4 = [(SecureMobileAssetBundle *)self assetBundlePath];
          v44 = strerror(__errnum);
          *buf = 138412546;
          v73 = assetBundlePath4;
          v74 = 2080;
          v75 = v44;
          _os_log_impl(&dword_2981ED000, v43, OS_LOG_TYPE_ERROR, "[SMA] Failed to load trust cache for asset bundle %@. (%s)", buf, 0x16u);
        }

        if (__errnum != 35 || cf != 0)
        {
          v46 = 11507;
        }

        else
        {
          v46 = 11508;
        }

        if (!cache)
        {
LABEL_61:
          v34 = 0;
LABEL_62:
          v28 = v60;
          goto LABEL_63;
        }

        v47 = *MEMORY[0x29EDB9E38];
        v69[0] = @"amfi_load_trust_cache() returned an error.";
        v48 = *MEMORY[0x29EDB9F18];
        v68[0] = v47;
        v68[1] = v48;
        v49 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:? userInfo:?];
        v69[1] = v49;
        v68[2] = @"AssetBundlePath";
        assetBundlePath5 = [(SecureMobileAssetBundle *)self assetBundlePath];
        v69[2] = assetBundlePath5;
        v69[3] = v10;
        v68[3] = @"ticketpath";
        v68[4] = @"trustCachePath";
        v69[4] = trustCachePath;
        v39 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v69 forKeys:v68 count:5];

        v40 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:v46 userInfo:v39];
      }

      else
      {
        v51 = _MAClientLog(@"SecureMA");
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v73 = trustCachePath;
          v74 = 2112;
          v75 = v27;
          v76 = 2112;
          v77 = v29;
          _os_log_impl(&dword_2981ED000, v51, OS_LOG_TYPE_ERROR, "[SMA] Trust cache and/or ticket for %@ are invalid\ntrustCache=%@\nticket=%@", buf, 0x20u);
        }

        if (!cache)
        {
          goto LABEL_61;
        }

        v70[0] = *MEMORY[0x29EDB9E38];
        v70[1] = @"AssetBundlePath";
        v71[0] = @"Trust cache and/or ticket is empty.";
        assetBundlePath6 = [(SecureMobileAssetBundle *)self assetBundlePath];
        v71[1] = assetBundlePath6;
        v39 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v71 forKeys:v70 count:2];

        v40 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:11506 userInfo:v39];
      }
    }

    else
    {
      v36 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v73 = v10;
        v74 = 2112;
        v75 = v60;
        _os_log_impl(&dword_2981ED000, v36, OS_LOG_TYPE_ERROR, "[SMA] Error loading Cryptex1 ticket at %@: %@", buf, 0x16u);
      }

      if (!cache)
      {
        goto LABEL_61;
      }

      v37 = *MEMORY[0x29EDB9F18];
      v78[0] = *MEMORY[0x29EDB9E60];
      v78[1] = v37;
      v79[0] = v10;
      v79[1] = v60;
      v78[2] = @"AssetBundlePath";
      assetBundlePath7 = [(SecureMobileAssetBundle *)self assetBundlePath];
      v79[2] = assetBundlePath7;
      v39 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v79 forKeys:v78 count:3];

      v40 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:11504 userInfo:v39];
    }

    *cache = v40;

    goto LABEL_61;
  }

  v31 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v73 = trustCachePath;
    v74 = 2112;
    v75 = v28;
    _os_log_impl(&dword_2981ED000, v31, OS_LOG_TYPE_ERROR, "[SMA] Error loading trust cache at %@: %@", buf, 0x16u);
  }

  if (cache)
  {
    v32 = *MEMORY[0x29EDB9F18];
    v80[0] = *MEMORY[0x29EDB9E60];
    v80[1] = v32;
    v81[0] = trustCachePath;
    v81[1] = v28;
    v80[2] = @"AssetBundlePath";
    assetBundlePath8 = [(SecureMobileAssetBundle *)self assetBundlePath];
    v81[2] = assetBundlePath8;
    v29 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v81 forKeys:v80 count:3];

    [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:11505 userInfo:v29];
    *cache = v34 = 0;
LABEL_63:

    goto LABEL_64;
  }

  v34 = 0;
LABEL_64:

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_75:

  return v34;
}

- (BOOL)bundleAccessPermitted:(id *)permitted
{
  if ([(SecureMobileAssetBundle *)self manifestType]== 2)
  {
    ticketPath = [(SecureMobileAssetBundle *)self ticketPath];
    v6 = [(SecureMobileAssetBundle *)self _manifestDataFromStoredTicket:ticketPath manifestType:2];

    if (!v6)
    {
      if (permitted)
      {
        v23 = MEMORY[0x29EDBA0F8];
        ticketPath2 = [(SecureMobileAssetBundle *)self ticketPath];
        v25 = [v23 stringWithFormat:@"Stored personalized manifest ticket (%@) could not be read", ticketPath2];
        dictionary = [MEMORY[0x29EDB8E00] dictionary];
        [dictionary setObject:v25 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
        [dictionary setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
        v27 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:116 userInfo:dictionary];

        v28 = v27;
        *permitted = v27;
      }

      v19 = 0;
      goto LABEL_31;
    }

    secureInfoPlistPath = [(SecureMobileAssetBundle *)self secureInfoPlistPath];
    if (!secureInfoPlistPath)
    {
      if (permitted)
      {
        v29 = MEMORY[0x29EDBA0F8];
        secureInfoPlistPath2 = [(SecureMobileAssetBundle *)self secureInfoPlistPath];
        v31 = [v29 stringWithFormat:@"Secure cryptex info plist (%@) is missing on the bundle.", secureInfoPlistPath2];
        dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
        [dictionary2 setObject:v31 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
        [dictionary2 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
        v33 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:116 userInfo:dictionary2];

        v34 = v33;
        *permitted = v33;
      }

      v19 = 0;
      goto LABEL_30;
    }

    v58 = 0;
    v8 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:secureInfoPlistPath options:1 error:&v58];
    v9 = v58;
    if (!v8)
    {
      if (!permitted)
      {
        v19 = 0;
LABEL_29:

LABEL_30:
LABEL_31:

        return v19 & 1;
      }

      v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Unable to read cryptex info path %@", secureInfoPlistPath];
      v35 = MEMORY[0x29EDB8E00];
      v36 = v9;
      dictionary3 = [v35 dictionary];
      [dictionary3 setObject:v12 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary3 setObject:v36 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      v38 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:116 userInfo:dictionary3];

      v39 = v38;
      v19 = 0;
      *permitted = v38;
LABEL_28:

      goto LABEL_29;
    }

    manifestVerifier = [(SecureMobileAssetBundle *)self manifestVerifier];
    v57 = 0;
    v11 = [manifestVerifier verifyPlist:v8 manifest:v6 manifestType:2 result:0 error:&v57];
    v12 = v57;

    if ((v11 & 1) == 0)
    {
      if (!permitted)
      {
        v19 = 0;
        goto LABEL_28;
      }

      v15 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to validate cryptex info plist with manifest from disk."];
      v40 = MEMORY[0x29EDB8E00];
      v41 = v12;
      dictionary4 = [v40 dictionary];
      [dictionary4 setObject:v15 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary4 setObject:v41 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      v43 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:116 userInfo:dictionary4];

      v44 = v43;
      v19 = 0;
      *permitted = v43;
      goto LABEL_27;
    }

    v56 = 0;
    v13 = [MEMORY[0x29EDBA0C0] propertyListWithData:v8 options:0 format:0 error:&v56];
    v14 = v56;
    v15 = v14;
    if (v13)
    {
      v53 = v14;
      v16 = *MEMORY[0x29EDB8F10];
      v17 = [v13 objectForKey:*MEMORY[0x29EDB8F10]];
      objc_opt_class();
      v55 = v17;
      isKindOfClass = objc_opt_isKindOfClass();
      v19 = isKindOfClass;
      if (permitted && (isKindOfClass & 1) == 0)
      {
        v52 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"CryptexInfo plist is missing its asset-type defined in: %@", v16];
        dictionary5 = [MEMORY[0x29EDB8E00] dictionary];
        [dictionary5 setObject:v52 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
        [dictionary5 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
        v21 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:116 userInfo:dictionary5];

        v22 = v21;
        *permitted = v21;
      }

      v15 = v53;
    }

    else
    {
      if (!permitted)
      {
        v19 = 0;
        goto LABEL_26;
      }

      v45 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to parse CryptexInfo as a plist."];
      v46 = MEMORY[0x29EDB8E00];
      v54 = v9;
      v47 = v15;
      dictionary6 = [v46 dictionary];
      v55 = v45;
      [dictionary6 setObject:v45 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary6 setObject:v47 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      v49 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:116 userInfo:dictionary6];

      v9 = v54;
      v50 = v49;
      v19 = 0;
      *permitted = v49;
    }

LABEL_26:
LABEL_27:

    goto LABEL_28;
  }

  v19 = 1;
  return v19 & 1;
}

- (BOOL)graft:(id *)graft
{
  v111 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v68 = -1;
  graftPath = [(SecureMobileAssetBundle *)self graftPath];
  cryptexPath = [(SecureMobileAssetBundle *)self cryptexPath];
  ticketPath = [(SecureMobileAssetBundle *)self ticketPath];
  v67 = 0;
  memset(&v66, 0, sizeof(v66));
  v109 = 0u;
  memset(v110, 0, sizeof(v110));
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v79 = xmmword_2982113E0;
  v80 = -1;
  v9 = *MEMORY[0x29EDB9E48];
  v77[0] = *MEMORY[0x29EDB9E50];
  v77[1] = v9;
  v78[0] = &unk_2A1EACB30;
  v78[1] = &unk_2A1EACB30;
  v77[2] = *MEMORY[0x29EDB9E68];
  v78[2] = &unk_2A1EACB48;
  v62 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v78 forKeys:v77 count:3];
  if (graftPath)
  {
    if (cryptexPath)
    {
      if ([(SecureMobileAssetBundle *)self isGraftedPath:graftPath])
      {
        v10 = 0;
        v11 = 1;
        goto LABEL_16;
      }

      v59 = cryptexPath;
      v60 = dictionary;
      v22 = ticketPath;
      defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
      v24 = [defaultManager fileExistsAtPath:graftPath isDirectory:&v67];

      if (v24)
      {
        if (v67)
        {
          v10 = 0;
          goto LABEL_22;
        }

        graftCopy = graft;
        defaultManager2 = [MEMORY[0x29EDB9FB8] defaultManager];
        v64 = 0;
        v33 = [defaultManager2 removeItemAtPath:graftPath error:&v64];
        v10 = v64;

        if (v33)
        {
          defaultManager3 = [MEMORY[0x29EDB9FB8] defaultManager];
          v63 = v10;
          v35 = [defaultManager3 createDirectoryAtPath:graftPath withIntermediateDirectories:1 attributes:v62 error:&v63];
          v36 = v63;

          if (v35)
          {
            v10 = v36;
            ticketPath = v22;
            graft = graftCopy;
            goto LABEL_22;
          }

          v11 = 0;
          v10 = v36;
        }

        else
        {
          v11 = 0;
        }

        ticketPath = v22;
        graft = graftCopy;
        cryptexPath = v59;
        goto LABEL_10;
      }

      graftCopy2 = graft;
      defaultManager4 = [MEMORY[0x29EDB9FB8] defaultManager];
      v65 = 0;
      v27 = [defaultManager4 createDirectoryAtPath:graftPath withIntermediateDirectories:1 attributes:v62 error:&v65];
      v10 = v65;

      if ((v27 & 1) == 0)
      {
        v11 = 0;
        cryptexPath = v59;
        graft = graftCopy2;
        goto LABEL_10;
      }

      graft = graftCopy2;
LABEL_22:
      cryptexPath = v59;
      if (lstat([graftPath fileSystemRepresentation], &v66))
      {
        v28 = _MAClientLog(@"SecureMA");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          fileSystemRepresentation = [graftPath fileSystemRepresentation];
          *buf = 136315138;
          v70 = fileSystemRepresentation;
          _os_log_impl(&dword_2981ED000, v28, OS_LOG_TYPE_ERROR, "[SMA] Could not lstat %s", buf, 0xCu);
        }

        dictionary3 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];

        v30 = MEMORY[0x29EDB9FA0];
        v31 = *MEMORY[0x29EDB9F18];
        v75[0] = *MEMORY[0x29EDB9E38];
        v75[1] = v31;
        v76[0] = @"lstat failed";
        v76[1] = dictionary3;
        v75[2] = @"graftPath";
        v76[2] = graftPath;
        v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v76 forKeys:v75 count:3];
        v16 = v30;
        v17 = 10504;
        v18 = v14;
        goto LABEL_8;
      }

      graftCopy3 = graft;
      if (![(SecureMobileAssetBundle *)self isPersonalized:&v68])
      {
        v43 = MEMORY[0x29EDB9FA0];
        if (v68 >= 0x33)
        {
          v44 = 105;
        }

        else
        {
          v44 = v68 + 10500;
        }

        v73[0] = *MEMORY[0x29EDB9E38];
        if (v68 > 0x32)
        {
          v14 = @"cannot graft an unpersonalized cryptex";
        }

        else
        {
          v45 = @"Unknown";
          if (v68 <= 1)
          {
            if (v68)
            {
              v45 = @"Committed ticket data is nil";
            }

            else
            {
              v45 = @"Personalized bundle ticket data is nil";
            }
          }

          else
          {
            switch(v68)
            {
              case 2:
                v45 = @"Personalized bundle ticket data and committed ticket data do not match";
                break;
              case 3:
                v45 = @"Bundle is not personalized and committed for Exclaves";
                break;
              case 50:
                v45 = @"Personalized manifest failed to verify (nonce rolled?)";
                break;
            }
          }

          v14 = [@"cannot graft an unpersonalized cryptex" stringByAppendingFormat:@" (%@)", v45];
        }

        v74[0] = v14;
        v74[1] = v59;
        v73[1] = @"cryptexPath";
        v73[2] = @"graftPath";
        v74[2] = graftPath;
        v54 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v74 forKeys:v73 count:3];
        v55 = [v43 errorWithDomain:@"SecureMobileAssetErrorDomain" code:v44 userInfo:v54];

        v11 = 0;
        v10 = v55;
        goto LABEL_69;
      }

      cryptexPath2 = [(SecureMobileAssetBundle *)self cryptexPath];
      v38 = open([cryptexPath2 fileSystemRepresentation], 0);

      if (v38 < 0)
      {
        v42 = v60;
        [v60 setObject:@"open()" forKeyedSubscript:@"syscall"];
        cryptexPath3 = [(SecureMobileAssetBundle *)self cryptexPath];
        [v60 setObject:cryptexPath3 forKeyedSubscript:@"path"];
      }

      else
      {
        v39 = open([ticketPath fileSystemRepresentation], 0);
        if (v39 < 0)
        {
          v42 = v60;
          [v60 setObject:@"open()" forKeyedSubscript:@"syscall"];
          [v60 setObject:ticketPath forKeyedSubscript:@"path"];
        }

        else
        {
          v56 = v39;
          rootHashPath = [(SecureMobileAssetBundle *)self rootHashPath];
          v41 = open([rootHashPath fileSystemRepresentation], 0);

          if ((v41 & 0x80000000) == 0)
          {
            DWORD2(v79) = v56;
            v80 = v41;
            *&v81 = 16;
            [graftPath fileSystemRepresentation];
            [(SecureMobileAssetBundle *)self graftdmgType];
            if (!graftdmg())
            {
              close(v41);
              close(v56);
              close(v38);
              v14 = _MAClientLog(@"SecureMA");
              graft = graftCopy3;
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v70 = v59;
                v71 = 2112;
                v72 = graftPath;
                _os_log_impl(&dword_2981ED000, v14, OS_LOG_TYPE_DEFAULT, "[SMA] Successfully grafted %@ onto %@", buf, 0x16u);
              }

              v11 = 1;
              goto LABEL_9;
            }

            [v60 setObject:@"graftdmg()" forKeyedSubscript:@"syscall"];
            if ((v81 & 0x10) != 0)
            {
              [v60 setObject:@"SBC_STRICT_AUTH" forKeyedSubscript:@"sbc_flags"];
            }

            close(v41);
            close(v56);
            close(v38);
            v42 = v60;
            goto LABEL_57;
          }

          v42 = v60;
          [v60 setObject:@"open()" forKeyedSubscript:@"syscall"];
          rootHashPath2 = [(SecureMobileAssetBundle *)self rootHashPath];
          [v60 setObject:rootHashPath2 forKeyedSubscript:@"path"];

          close(v56);
        }

        close(v38);
      }

LABEL_57:
      v61 = MEMORY[0x29EDB9FA0];
      v48 = *MEMORY[0x29EDB9EF8];
      v49 = *__error();
      if ([v42 count])
      {
        v50 = v42;
      }

      else
      {
        v50 = 0;
      }

      v14 = [v61 errorWithDomain:v48 code:v49 userInfo:v50];

      dictionary2 = [MEMORY[0x29EDB8E00] dictionary];

      [dictionary2 setObject:@"graft failed" forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary2 setObject:v14 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      [dictionary2 setObject:ticketPath forKeyedSubscript:@"ticketPath"];
      cryptexPath4 = [(SecureMobileAssetBundle *)self cryptexPath];
      [dictionary2 setObject:cryptexPath4 forKeyedSubscript:@"cryptexPath"];

      rootHashPath3 = [(SecureMobileAssetBundle *)self rootHashPath];
      [dictionary2 setObject:rootHashPath3 forKeyedSubscript:@"rootHashPath"];

      [dictionary2 setObject:graftPath forKeyedSubscript:@"graftPath"];
      v10 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:105 userInfo:dictionary2];
      v11 = 0;
      v60 = dictionary2;
LABEL_69:
      graft = graftCopy3;
      goto LABEL_9;
    }

    v60 = dictionary;
    v12 = MEMORY[0x29EDBA0F8];
    v13 = @"cryptexPath is nil";
  }

  else
  {
    v60 = dictionary;
    v12 = MEMORY[0x29EDBA0F8];
    v13 = @"graftPath is nil";
  }

  v14 = [v12 stringWithFormat:v13];
  dictionary3 = [MEMORY[0x29EDB8E00] dictionary];
  [dictionary3 setObject:v14 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
  [dictionary3 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
  v16 = MEMORY[0x29EDB9FA0];
  v17 = 100;
  v18 = dictionary3;
LABEL_8:
  v10 = [v16 errorWithDomain:@"SecureMobileAssetErrorDomain" code:v17 userInfo:v18];

  v11 = 0;
LABEL_9:

LABEL_10:
  if (v10)
  {
    v19 = _MAClientLog(@"SecureMA");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v70 = v10;
      _os_log_impl(&dword_2981ED000, v19, OS_LOG_TYPE_ERROR, "[SMA] Failed to graft: %@", buf, 0xCu);
    }

    if (graft)
    {
      v20 = v10;
      *graft = v10;
    }
  }

  dictionary = v60;
LABEL_16:

  return v11;
}

- (BOOL)ungraft:(id *)ungraft
{
  v30[3] = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  graftPath = [(SecureMobileAssetBundle *)self graftPath];
  if (graftPath)
  {
    if ([(SecureMobileAssetBundle *)self isGraftedPath:graftPath])
    {
      if (MABrainUtilitySupportsGracefulUngraft())
      {
        [dictionary setObject:@"UNGRAFTDMG_NOFORCE" forKeyedSubscript:@"ungraft_param"];
      }

      [graftPath fileSystemRepresentation];
      v10 = ungraftdmg();
      v11 = _MAClientLog(@"SecureMA");
      v12 = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v25 = 136315138;
          fileSystemRepresentation = [graftPath fileSystemRepresentation];
          _os_log_impl(&dword_2981ED000, v12, OS_LOG_TYPE_ERROR, "[SMA] Could not ungraft %s", &v25, 0xCu);
        }

        [dictionary setObject:@"ungraftdmg()" forKeyedSubscript:@"syscall"];
        v13 = MEMORY[0x29EDB9FA0];
        v14 = *MEMORY[0x29EDB9EF8];
        v15 = *__error();
        if ([dictionary count])
        {
          v16 = dictionary;
        }

        else
        {
          v16 = 0;
        }

        v17 = [v13 errorWithDomain:v14 code:v15 userInfo:v16];
        v18 = MEMORY[0x29EDB9FA0];
        v19 = *MEMORY[0x29EDB9F18];
        v29[0] = *MEMORY[0x29EDB9E38];
        v29[1] = v19;
        v30[0] = @"ungraft failed";
        v30[1] = v17;
        v29[2] = @"graftPath";
        v30[2] = graftPath;
        v20 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
        v9 = [v18 errorWithDomain:@"SecureMobileAssetErrorDomain" code:106 userInfo:v20];

        if (!v9)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412546;
        fileSystemRepresentation = graftPath;
        v27 = 2112;
        v28 = @"ungraftdmg()";
        _os_log_impl(&dword_2981ED000, v12, OS_LOG_TYPE_DEFAULT, "[SMA] Successfully ungrafted %@ from the file system using %@", &v25, 0x16u);
      }
    }

    v9 = 0;
    v23 = 1;
    goto LABEL_23;
  }

  v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"graftPath is nil"];
  dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
  [dictionary2 setObject:v7 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
  [dictionary2 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
  v9 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:100 userInfo:dictionary2];

  if (!v9)
  {
LABEL_18:
    v23 = 0;
    goto LABEL_23;
  }

LABEL_14:
  v21 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v25 = 138412290;
    fileSystemRepresentation = v9;
    _os_log_impl(&dword_2981ED000, v21, OS_LOG_TYPE_ERROR, "[SMA] Failed to ungraft: %@", &v25, 0xCu);
  }

  if (!ungraft)
  {
    goto LABEL_18;
  }

  v22 = v9;
  v23 = 0;
  *ungraft = v9;
LABEL_23:

  return v23;
}

- (BOOL)isMounted
{
  graftPath = [(SecureMobileAssetBundle *)self graftPath];
  v3 = realpath_DARWIN_EXTSN([graftPath fileSystemRepresentation], 0);
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v3];
    stringByDeletingLastPathComponent = [v5 stringByDeletingLastPathComponent];
    memset(&v10, 0, sizeof(v10));
    memset(&v9, 0, sizeof(v9));
    v7 = !stat([v5 fileSystemRepresentation], &v10) && !stat(objc_msgSend(stringByDeletingLastPathComponent, "fileSystemRepresentation"), &v9) && v10.st_dev != v9.st_dev;
    free(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)attach:(id)attach error:(id *)error
{
  v62[1] = *MEMORY[0x29EDCA608];
  attachCopy = attach;
  outputStructCnt = 0;
  *connect = 0;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  inputStruct = 0u;
  LODWORD(v6) = -1;
  v7 = 0x29EDBA000;
  outputStruct = 0;
  if (attachCopy)
  {
    dictionary = [MEMORY[0x29EDB8E00] dictionary];
    if (dictionary)
    {
      uUID = [MEMORY[0x29EDBA140] UUID];
      uUIDString = [uUID UUIDString];

      if (uUIDString)
      {
        [dictionary setObject:uUIDString forKeyedSubscript:@"hdik-unique-identifier"];
        [dictionary setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"OSInternal"];
        [dictionary setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"write-protected"];
        [dictionary setObject:MEMORY[0x29EDB8EA8] forKeyedSubscript:@"autodiskmount"];
        v36 = [MEMORY[0x29EDB8DA0] dataWithBytes:objc_msgSend(attachCopy length:{"UTF8String"), objc_msgSend(attachCopy, "length")}];
        if (v36)
        {
          [dictionary setObject:v36 forKeyedSubscript:@"image-path"];
          v6 = open([attachCopy fileSystemRepresentation], 0);
          if ((v6 & 0x80000000) != 0)
          {
            Data = 0;
            0x3FFF = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to open %@: %{errno}d", attachCopy, *__error()];
            v14 = 0;
          }

          else
          {
            v10 = [MEMORY[0x29EDBA070] numberWithInt:v6];
            [dictionary setObject:v10 forKeyedSubscript:@"image-fd"];

            Data = CFPropertyListCreateData(*MEMORY[0x29EDB8ED8], dictionary, kCFPropertyListXMLFormat_v1_0, 0, 0);
            if (Data)
            {
              v12 = IOServiceMatching("IOHDIXController");
              MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v12);
              v14 = MatchingService;
              connect[1] = MatchingService;
              if (MatchingService)
              {
                v15 = IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 0, connect);
                if (v15)
                {
                  v16 = @"Failed to open disk image kernel extension: 0x%04x";
                }

                else
                {
                  *&inputStruct = 0x1BEEFFEEDLL;
                  *(&inputStruct + 1) = CFDataGetBytePtr(Data);
                  *&v42 = CFDataGetLength(Data);
                  outputStructCnt = 4;
                  v15 = IOConnectCallStructMethod(connect[0], 0, &inputStruct, 0x100uLL, &outputStruct, &outputStructCnt);
                  if (!v15)
                  {
                    v27 = _MAClientLog(@"SecureMA");
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *&buf[4] = attachCopy;
                      *&buf[12] = 2112;
                      *&buf[14] = uUIDString;
                      _os_log_impl(&dword_2981ED000, v27, OS_LOG_TYPE_DEFAULT, "[SMA] Successfully attached %@ with ID: %@", buf, 0x16u);
                    }

                    v23 = uUIDString;
                    0x3FFF = 0;
                    uUIDString = v23;
                    goto LABEL_26;
                  }

                  v16 = @"Failed to attach disk image: 0x%04x";
                }

                0x3FFF = [MEMORY[0x29EDBA0F8] stringWithFormat:v16, v15 & 0x3FFF];
              }

              else
              {
                0x3FFF = @"Failed to connect to disk image kernel extension.";
              }
            }

            else
            {
              v14 = 0;
              0x3FFF = @"Failed to create dictionary with data.";
            }
          }
        }

        else
        {
          v14 = 0;
          Data = 0;
          v36 = 0;
          0x3FFF = @"Failed to create data.";
        }
      }

      else
      {
        v14 = 0;
        Data = 0;
        v36 = 0;
        uUIDString = 0;
        0x3FFF = @"Failed to create UUID string.";
      }
    }

    else
    {
      v14 = 0;
      Data = 0;
      v36 = 0;
      uUIDString = 0;
      0x3FFF = @"Failed to create dictionary.";
    }

    v7 = 0x29EDBA000uLL;
  }

  else
  {
    v14 = 0;
    Data = 0;
    v36 = 0;
    uUIDString = 0;
    dictionary = 0;
    0x3FFF = @"Invalid input.";
  }

  v18 = [*(v7 + 248) stringWithFormat:@"%@", 0x3FFF];
  dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
  [dictionary2 setObject:v18 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
  [dictionary2 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
  v20 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:112 userInfo:dictionary2];

  v21 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v20;
    _os_log_impl(&dword_2981ED000, v21, OS_LOG_TYPE_ERROR, "[SMA] Failed to attach cryptex disk image: %@", buf, 0xCu);
  }

  if (error)
  {
    v22 = v20;
    *error = v20;
  }

  v23 = 0;
  if (v6 != -1)
  {
LABEL_26:
    if (close(v6) == -1)
    {
      v62[0] = 0;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      memset(buf, 0, sizeof(buf));
      v28 = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
      v29 = *__error();
      if (v28)
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v57[0] = 67109120;
      v57[1] = v29;
      LODWORD(v35) = 8;
      _os_log_send_and_compose_impl(v30, v62, buf, 80, &dword_2981ED000, MEMORY[0x29EDCA988], 16, "assertion failure: close(fd) -> %{errno}d", v57, v35);
      _os_crash_msg();
      [SecureMobileAssetBundle attach:error:];
    }
  }

  if (connect[0])
  {
    v24 = IOServiceClose(connect[0]);
    if (v24)
    {
      *buf = 0;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      inputStruct = 0u;
      v31 = MEMORY[0x29EDCA988];
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      LODWORD(v62[0]) = 67109120;
      HIDWORD(v62[0]) = v24;
      LODWORD(v35) = 8;
      _os_log_send_and_compose_impl(v32, buf, &inputStruct, 80, &dword_2981ED000, v31, 16, "IOObjectRelease: %{mach.errno}d", v62, v35);
      _os_crash_msg();
      [SecureMobileAssetBundle attach:error:];
    }
  }

  if (v14)
  {
    v25 = IOObjectRelease(v14);
    if (v25)
    {
      *buf = 0;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      inputStruct = 0u;
      v33 = MEMORY[0x29EDCA988];
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      LODWORD(v62[0]) = 67109120;
      HIDWORD(v62[0]) = v25;
      LODWORD(v35) = 8;
      _os_log_send_and_compose_impl(v34, buf, &inputStruct, 80, &dword_2981ED000, v33, 16, "IOObjectRetain: %{mach.errno}d", v62, v35);
      _os_crash_msg();
      [SecureMobileAssetBundle attach:error:];
    }
  }

  if (Data)
  {
    CFRelease(Data);
  }

  return v23;
}

- (id)devnodesForDiskImageID:(id)d error:(id *)error
{
  v71 = *MEMORY[0x29EDCA608];
  dCopy = d;
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  array = [MEMORY[0x29EDB8DE8] array];
  array2 = [MEMORY[0x29EDB8DE8] array];
  array3 = [MEMORY[0x29EDB8DE8] array];
  array4 = [MEMORY[0x29EDB8DE8] array];
  notification = 0;
  v4 = IONotificationPortCreate(0);
  if (!v4)
  {
    v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"failed to get notification port"];
    dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
    [dictionary2 setObject:v12 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
    [dictionary2 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
    v51 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:-4 userInfo:dictionary2];

    v11 = 0;
    goto LABEL_45;
  }

  v5 = v4;
  v6 = IOServiceMatching("IOMedia");
  notify = v5;
  v7 = IOServiceAddMatchingNotification(v5, "IOServiceMatched", v6, 0, 0, &notification);
  if (v7)
  {
    v8 = MEMORY[0x29EDB9FA0];
    v61 = *MEMORY[0x29EDB9E38];
    0x3FFF = [MEMORY[0x29EDBA0F8] stringWithFormat:@"IOServiceAddMatchingNotification() failed: 0x%04x", v7 & 0x3FFF];
    v62 = 0x3FFF;
    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v51 = [v8 errorWithDomain:@"IOKitErrorDomain" code:v7 userInfo:v10];

    goto LABEL_4;
  }

  v14 = IOIteratorNext(notification);
  if (v14)
  {
    v51 = 0;
    v11 = 0;
    v15 = *MEMORY[0x29EDB8ED8];
    v49 = *MEMORY[0x29EDB9E38];
    while (1)
    {
      v57 = v14;
      v16 = IORegistryEntrySearchCFProperty(v14, "IOService", @"hdik-unique-identifier", 0, 3u);
      if (v16)
      {
        if ([dCopy isEqual:v16])
        {
          break;
        }
      }

      v25 = 0;
LABEL_40:

      if (v16)
      {
        CFRelease(v16);
      }

      if (IOObjectRelease(v57))
      {
        [SecureMobileAssetBundle devnodesForDiskImageID:parent error:?];
      }

      v14 = IOIteratorNext(notification);
      if (!v14)
      {
        goto LABEL_44;
      }
    }

    CFProperty = IORegistryEntryCreateCFProperty(v14, @"BSD Name", v15, 0);
    v18 = NSStringFromCFType(CFProperty);
    v19 = IOObjectConformsTo(v14, "AppleAPFSVolume");
    v20 = array;
    if ((v19 || (v21 = IOObjectConformsTo(v14, "AppleAPFSMedia"), v20 = array2, v21) || (v22 = IOObjectConformsTo(v14, "AppleAPFSContainer"), v20 = array3, v22) || (v23 = IOObjectConformsTo(v14, "AppleAPFSContainerScheme"), v20 = array4, v23)) && (v24 = v20) != 0)
    {
      v25 = v24;
      if (!v18)
      {
        goto LABEL_38;
      }

      v26 = [@"/dev/" stringByAppendingPathComponent:v18];
      [v25 addObject:v26];
    }

    else
    {
      if (v11)
      {
        v25 = 0;
        goto LABEL_38;
      }

      object = 0;
      IOObjectRetain(v14);
      v27 = 0;
      object = v14;
      while (1)
      {
        v28 = IORegistryEntryCreateCFProperty(v14, @"Whole", v15, 0);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v28 BOOLValue])
          {
            break;
          }
        }

        parent[0] = 0;
        ParentEntry = IORegistryEntryGetParentEntry(v14, "IOService", parent);
        IOObjectRelease(v14);
        v14 = parent[0];
        object = parent[0];
        if (ParentEntry)
        {
          v30 = MEMORY[0x29EDB9FA0];
          v63 = v49;
          0x3FFF2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"IORegistryEntryGetParentEntry() failed: 0x%04x", ParentEntry & 0x3FFF];
          v64 = 0x3FFF2;
          v32 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
          v33 = [v30 errorWithDomain:@"IOKitErrorDomain" code:ParentEntry userInfo:v32];

          v14 = object;
          v27 = v33;
        }

        if (!v14)
        {
          v34 = 0;
LABEL_27:
          v35 = v27;
          v36 = v27;
          goto LABEL_34;
        }
      }

      v37 = IORegistryEntryCreateCFProperty(v14, @"BSD Name", v15, 0);
      v38 = NSStringFromCFType(v37);
      if (v38)
      {
        v34 = [@"/dev/" stringByAppendingPathComponent:v38];
      }

      else
      {
        v34 = 0;
      }

      if (v37)
      {
        CFRelease(v37);
      }

      v36 = v51;
      if (!v38)
      {
        goto LABEL_27;
      }

LABEL_34:
      v11 = v34;
      if (object)
      {
        v39 = IOObjectRelease(object);
        if (v39)
        {
          v60 = 0;
          v70 = 0u;
          v68 = 0u;
          v69 = 0u;
          *parent = 0u;
          v67 = 0u;
          v45 = MEMORY[0x29EDCA988];
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            v46 = 3;
          }

          else
          {
            v46 = 2;
          }

          v65[0] = 67109120;
          v65[1] = v39;
          _os_log_send_and_compose_impl(v46, &v60, parent, 80, &dword_2981ED000, v45, 16, "IOObjectRetain: %{mach.errno}d", v65, 8);
          _os_crash_msg();
          [SecureMobileAssetBundle attach:error:];
        }
      }

      v25 = 0;
      v26 = v51;
      v51 = v36;
    }

LABEL_38:
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    goto LABEL_40;
  }

  v51 = 0;
LABEL_4:
  v11 = 0;
LABEL_44:
  IONotificationPortDestroy(notify);
LABEL_45:
  if ([array count])
  {
    [dictionary setObject:array forKeyedSubscript:@"volumes"];
  }

  if ([array2 count])
  {
    [dictionary setObject:array2 forKeyedSubscript:@"media"];
  }

  if ([array3 count])
  {
    [dictionary setObject:array3 forKeyedSubscript:@"containers"];
  }

  if ([array4 count])
  {
    [dictionary setObject:array4 forKeyedSubscript:@"schemes"];
  }

  [dictionary setObject:v11 forKeyedSubscript:@"wholeDisk"];
  if (error)
  {
    v40 = v51;
    *error = v51;
  }

  v41 = [dictionary count];
  v42 = dictionary;
  if (!v41)
  {
    v42 = 0;
  }

  v43 = v42;

  return v43;
}

- (BOOL)mount:(id *)mount
{
  v103 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v76 = -1;
  graftPath = [(SecureMobileAssetBundle *)self graftPath];
  cryptexPath = [(SecureMobileAssetBundle *)self cryptexPath];
  ticketPath = [(SecureMobileAssetBundle *)self ticketPath];
  rootHashPath = [(SecureMobileAssetBundle *)self rootHashPath];
  v75 = 0;
  memset(&v74, 0, sizeof(v74));
  v101 = 0u;
  memset(v102, 0, 60);
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v8 = *MEMORY[0x29EDB9E48];
  v83[0] = *MEMORY[0x29EDB9E50];
  v83[1] = v8;
  v84[0] = &unk_2A1EACB30;
  v84[1] = &unk_2A1EACB30;
  v83[2] = *MEMORY[0x29EDB9E68];
  v84[2] = &unk_2A1EACB48;
  v9 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v84 forKeys:v83 count:3];
  v64 = v9;
  if (!graftPath)
  {
    v60 = ticketPath;
    v61 = dictionary;
    v62 = cryptexPath;
    v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"mountPath is nil"];
    dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
    [dictionary2 setObject:v12 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
    [dictionary2 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
    v16 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:100 userInfo:dictionary2];

    v17 = 0;
    v18 = 0;
    v58 = 0;
    v59 = 0;
    v19 = 0;
    v20 = 0;
    v11 = 0;
    cryptexPath = 0;
    goto LABEL_38;
  }

  if (!cryptexPath)
  {
    v60 = ticketPath;
    v61 = dictionary;
    v62 = 0;
    v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"cryptexPath is nil"];
    dictionary3 = [MEMORY[0x29EDB8E00] dictionary];
    [dictionary3 setObject:v12 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
    [dictionary3 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
    v16 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:100 userInfo:dictionary3];

LABEL_36:
    v17 = 0;
    v18 = 0;
    v58 = 0;
    v59 = 0;
    v19 = 0;
    v20 = 0;
LABEL_37:
    v11 = 0;
    goto LABEL_38;
  }

  v10 = v9;
  if (![(SecureMobileAssetBundle *)self isMounted])
  {
    v60 = ticketPath;
    if ([(SecureMobileAssetBundle *)self isPersonalized:&v76])
    {
      v22 = 0;
    }

    else
    {
      v23 = MEMORY[0x29EDB9FA0];
      if (v76 >= 0x33)
      {
        v24 = 107;
      }

      else
      {
        v24 = v76 + 10700;
      }

      v81[0] = *MEMORY[0x29EDB9E38];
      if (v76 > 0x32)
      {
        v26 = @"cannot mount an unpersonalized cryptex";
      }

      else
      {
        v25 = @"Unknown";
        if (v76 <= 1)
        {
          if (v76)
          {
            v25 = @"Committed ticket data is nil";
          }

          else
          {
            v25 = @"Personalized bundle ticket data is nil";
          }
        }

        else
        {
          switch(v76)
          {
            case 2:
              v25 = @"Personalized bundle ticket data and committed ticket data do not match";
              break;
            case 3:
              v25 = @"Bundle is not personalized and committed for Exclaves";
              break;
            case 50:
              v25 = @"Personalized manifest failed to verify (nonce rolled?)";
              break;
          }
        }

        v26 = [@"cannot mount an unpersonalized cryptex" stringByAppendingFormat:@" (%@)", v25];
      }

      v82[0] = v26;
      v82[1] = cryptexPath;
      v81[1] = @"cryptexPath";
      v81[2] = @"mountPath";
      v82[2] = graftPath;
      v27 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v82 forKeys:v81 count:3];
      v22 = [v23 errorWithDomain:@"SecureMobileAssetErrorDomain" code:v24 userInfo:v27];
    }

    defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
    v29 = [defaultManager fileExistsAtPath:graftPath isDirectory:&v75];

    v61 = dictionary;
    v62 = cryptexPath;
    if (v29)
    {
      if (v75)
      {
        v12 = v22;
LABEL_32:
        if (lstat([graftPath fileSystemRepresentation], &v74))
        {
          v32 = _MAClientLog(@"SecureMA");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            fileSystemRepresentation = [graftPath fileSystemRepresentation];
            *buf = 136315138;
            v78 = fileSystemRepresentation;
            _os_log_impl(&dword_2981ED000, v32, OS_LOG_TYPE_ERROR, "[SMA] Could not lstat %s", buf, 0xCu);
          }

          cryptexPath = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
          [dictionary setObject:@"lstat() failed" forKeyedSubscript:*MEMORY[0x29EDB9E38]];
          [dictionary setObject:cryptexPath forKeyedSubscript:*MEMORY[0x29EDB9F18]];
          [dictionary setObject:graftPath forKeyedSubscript:@"mountPath"];
          v16 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:10704 userInfo:dictionary];
          goto LABEL_36;
        }

        v70 = 0;
        v20 = [(SecureMobileAssetBundle *)self attach:cryptexPath error:&v70];
        v49 = v70;
        v50 = cryptexPath;
        cryptexPath = v49;
        if (!v20)
        {
          [dictionary setObject:@"Failed to attach disk image" forKeyedSubscript:*MEMORY[0x29EDB9E38]];
          [dictionary setObject:cryptexPath forKeyedSubscript:*MEMORY[0x29EDB9F18]];
          [dictionary setObject:v50 forKeyedSubscript:@"cryptexPath"];
          v16 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:10705 userInfo:dictionary];
          v17 = 0;
          v18 = 0;
          v58 = 0;
          v59 = 0;
          v19 = 0;
          goto LABEL_37;
        }

        v69 = v49;
        v59 = v20;
        v18 = [(SecureMobileAssetBundle *)self devnodesForDiskImageID:v20 error:&v69];
        v51 = v69;

        v19 = [v18 objectForKeyedSubscript:@"wholeDisk"];
        v52 = [v18 objectForKeyedSubscript:@"volumes"];
        v53 = _MAClientLog(@"SecureMA");
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v78 = v18;
          _os_log_impl(&dword_2981ED000, v53, OS_LOG_TYPE_DEBUG, "[SMA] \ndevnodes=%@", buf, 0xCu);
        }

        v58 = v52;
        if (v18)
        {
          if ([v52 count])
          {
            if ([v52 count] < 2)
            {
              v17 = [v52 objectAtIndexedSubscript:0];
              *&v85 = [v17 fileSystemRepresentation];
              DWORD1(v102[3]) = getuid();
              DWORD2(v102[3]) = getgid();
              LOWORD(v86) = 8;
              DWORD2(v85) = 1048577;
              v68 = v51;
              v11 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:v60 options:0 error:&v68];
              cryptexPath = v68;

              if (v11)
              {
                v67 = cryptexPath;
                v20 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:rootHashPath options:0 error:&v67];
                v13 = v67;

                LOWORD(v86) = 8;
                HIDWORD(v102[2]) = 1735681910;
                LODWORD(v102[3]) = [(SecureMobileAssetBundle *)self secureMountAuthType];
                *(&v102[1] + 12) = [v11 bytes];
                *(&v102[2] + 4) = [v11 length];
                *(v102 + 12) = [v20 bytes];
                *(&v102[1] + 4) = [v20 length];
                if (!mount("apfs", [graftPath fileSystemRepresentation], 1048577, &v85))
                {
                  v57 = _MAClientLog(@"SecureMA");
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v78 = v17;
                    v79 = 2112;
                    v80 = graftPath;
                    _os_log_impl(&dword_2981ED000, v57, OS_LOG_TYPE_DEFAULT, "[SMA] Successfully mounted cryptex volume %@ at %@", buf, 0x16u);
                  }

                  v14 = 1;
                  goto LABEL_52;
                }

                cryptexPath = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];

                [v61 setObject:@"mount() failed" forKeyedSubscript:*MEMORY[0x29EDB9E38]];
                [v61 setObject:cryptexPath forKeyedSubscript:*MEMORY[0x29EDB9F18]];
                [v61 setObject:v62 forKeyedSubscript:@"cryptexPath"];
                [v61 setObject:graftPath forKeyedSubscript:@"mountPath"];
                [v61 setObject:v17 forKeyedSubscript:@"volumeDevNode"];
                v16 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:107 userInfo:v61];
              }

              else
              {
                [v61 setObject:@"Failed to load im4m for cryptex" forKeyedSubscript:*MEMORY[0x29EDB9E38]];
                [v61 setObject:cryptexPath forKeyedSubscript:*MEMORY[0x29EDB9F18]];
                [v61 setObject:v62 forKeyedSubscript:@"cryptexPath"];
                [v61 setObject:v60 forKeyedSubscript:@"ticketPath"];
                v16 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:10709 userInfo:v61];
                v20 = 0;
              }

              goto LABEL_38;
            }

            v54 = v61;
            [v61 setObject:@"Found more than one APFS volume in attached disk image" forKeyedSubscript:*MEMORY[0x29EDB9E38]];
            [v61 setObject:v51 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
            [v61 setObject:v62 forKeyedSubscript:@"cryptexPath"];
            v55 = MEMORY[0x29EDB9FA0];
            v56 = 10708;
          }

          else
          {
            v54 = v61;
            [v61 setObject:@"Failed to find APFS volume for attached disk image" forKeyedSubscript:*MEMORY[0x29EDB9E38]];
            [v61 setObject:v51 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
            [v61 setObject:v62 forKeyedSubscript:@"cryptexPath"];
            v55 = MEMORY[0x29EDB9FA0];
            v56 = 10707;
          }
        }

        else
        {
          v54 = v61;
          [v61 setObject:@"Failed to find devnodes for attached disk image" forKeyedSubscript:*MEMORY[0x29EDB9E38]];
          [v61 setObject:v51 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
          [v61 setObject:v62 forKeyedSubscript:@"cryptexPath"];
          v55 = MEMORY[0x29EDB9FA0];
          v56 = 10706;
        }

        v16 = [v55 errorWithDomain:@"SecureMobileAssetErrorDomain" code:v56 userInfo:v54];
        v17 = 0;
        v20 = 0;
        v11 = 0;
        cryptexPath = v51;
LABEL_38:

        v13 = cryptexPath;
        v12 = v16;
        goto LABEL_39;
      }

      defaultManager2 = [MEMORY[0x29EDB9FB8] defaultManager];
      v72 = v22;
      v45 = [defaultManager2 removeItemAtPath:graftPath error:&v72];
      v12 = v72;

      if (v45)
      {
        defaultManager3 = [MEMORY[0x29EDB9FB8] defaultManager];
        v71 = v12;
        v47 = [defaultManager3 createDirectoryAtPath:graftPath withIntermediateDirectories:1 attributes:v10 error:&v71];
        v48 = v71;

        if (v47)
        {
          v12 = v48;
          cryptexPath = v62;
          goto LABEL_32;
        }

        v17 = 0;
        v18 = 0;
        v58 = 0;
        v59 = 0;
        v19 = 0;
        v20 = 0;
        v11 = 0;
        v13 = 0;
        v12 = v48;
LABEL_39:
        v34 = _MAClientLog(@"SecureMA");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v78 = v12;
          _os_log_impl(&dword_2981ED000, v34, OS_LOG_TYPE_ERROR, "[SMA] Failed to attach and mount cryptex disk image: %@", buf, 0xCu);
        }

        v66 = 0;
        v35 = eject(v17, &v66);
        v36 = v66;
        if (v35)
        {
          if (!v19)
          {
LABEL_49:
            if (mount)
            {
              v42 = v12;
              *mount = v12;
            }

            v14 = 0;
LABEL_52:
            dictionary = v61;
            cryptexPath = v62;
            ticketPath = v60;
            goto LABEL_53;
          }

          v37 = _MAClientLog(@"SecureMA");
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v78 = v19;
            v38 = "[SMA] Ejected %@ after mount failure";
            v39 = v37;
            v40 = OS_LOG_TYPE_DEFAULT;
            v41 = 12;
LABEL_47:
            _os_log_impl(&dword_2981ED000, v39, v40, v38, buf, v41);
          }
        }

        else
        {
          v37 = _MAClientLog(@"SecureMA");
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v78 = v19;
            v79 = 2112;
            v80 = v36;
            v38 = "[SMA] WARNING: Failed to eject %@ after mount failure: %@";
            v39 = v37;
            v40 = OS_LOG_TYPE_ERROR;
            v41 = 22;
            goto LABEL_47;
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      defaultManager4 = [MEMORY[0x29EDB9FB8] defaultManager];
      v73 = v22;
      v31 = [defaultManager4 createDirectoryAtPath:graftPath withIntermediateDirectories:1 attributes:v10 error:&v73];
      v12 = v73;

      if (v31)
      {
        goto LABEL_32;
      }
    }

    v17 = 0;
    v18 = 0;
    v58 = 0;
    v59 = 0;
    v19 = 0;
    v20 = 0;
    v11 = 0;
    v13 = 0;
    goto LABEL_39;
  }

  v11 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2981ED000, v11, OS_LOG_TYPE_DEFAULT, "[SMA] Crytex is already dmg mounted", buf, 2u);
  }

  v12 = 0;
  v13 = 0;
  v14 = 1;
LABEL_53:

  return v14;
}

- (BOOL)unmount:(id *)unmount
{
  v36 = *MEMORY[0x29EDCA608];
  graftPath = [(SecureMobileAssetBundle *)self graftPath];
  bzero(&v35, 0x878uLL);
  if (statfs([graftPath fileSystemRepresentation], &v35))
  {
    v5 = *__error();
    v6 = MEMORY[0x29EDB9FA0];
    v7 = *MEMORY[0x29EDB9EF8];
    v8 = v5;
    v33[0] = *MEMORY[0x29EDB9E38];
    v9 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:strerror(v5)];
    v34[0] = v9;
    v34[1] = @"statfs";
    v33[1] = @"syscall";
    v33[2] = @"mountPath";
    v34[2] = graftPath;
    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
    v11 = [v6 errorWithDomain:v7 code:v8 userInfo:v10];

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  if (unmount([graftPath fileSystemRepresentation], 0))
  {
    v9 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
    v12 = MEMORY[0x29EDB9FA0];
    v13 = *MEMORY[0x29EDB9F18];
    v31[0] = *MEMORY[0x29EDB9E38];
    v31[1] = v13;
    v32[0] = @"unmount failed";
    v32[1] = v9;
    v31[2] = @"mountPath";
    v32[2] = graftPath;
    v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
    v11 = [v12 errorWithDomain:@"SecureMobileAssetErrorDomain" code:108 userInfo:v14];

    goto LABEL_5;
  }

  v15 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v35.f_mntfromname];
  v19 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v15;
    v29 = 2112;
    v30 = graftPath;
    _os_log_impl(&dword_2981ED000, v19, OS_LOG_TYPE_DEFAULT, "[SMA] Successfully unmounted cryptex volume %@ from %@", buf, 0x16u);
  }

  v26 = 0;
  v20 = eject(v15, &v26);
  v11 = v26;
  v21 = _MAClientLog(@"SecureMA");
  v9 = v21;
  if (v20)
  {
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    *buf = 138412290;
    v28 = graftPath;
    v22 = "[SMA] Successfully ejected cryptex disk image previously mounted at %@";
    v23 = v9;
    v24 = OS_LOG_TYPE_DEFAULT;
    v25 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    *buf = 138412546;
    v28 = graftPath;
    v29 = 2112;
    v30 = v11;
    v22 = "[SMA] Failed to eject cryptex disk image previously mounted at %@: %@";
    v23 = v9;
    v24 = OS_LOG_TYPE_ERROR;
    v25 = 22;
  }

  _os_log_impl(&dword_2981ED000, v23, v24, v22, buf, v25);
LABEL_6:

  if (v11)
  {
    v16 = _MAClientLog(@"SecureMA");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v11;
      _os_log_impl(&dword_2981ED000, v16, OS_LOG_TYPE_ERROR, "[SMA] Failed to unmount and eject cryptex disk image: %@", buf, 0xCu);
    }

    if (unmount)
    {
      v17 = v11;
      *unmount = v11;
    }
  }

  return v11 == 0;
}

- (BOOL)graftOrMount:(int64_t *)mount graftingError:(id *)error
{
  v37 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  cryptexPath = [(SecureMobileAssetBundle *)self cryptexPath];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (MABrainUtilityForceSecureAssetMount())
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_21;
  }

  v12 = open([cryptexPath fileSystemRepresentation], 0);
  v13 = v12;
  v33 = v12;
  if ((v12 & 0x80000000) == 0)
  {
    v14 = ffsctl(v12, 0x20004A85uLL, 0, 0);
    v15 = v14 == 0;
    if (v14)
    {
      if (*__error() == 45)
      {
        v16 = _MAClientLog(@"SecureMA");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0]) = 138412290;
          *(buf + 4) = cryptexPath;
          v17 = "[SMA] Cryptex at %@ is not graftable";
LABEL_12:
          v18 = v16;
          v19 = OS_LOG_TYPE_DEFAULT;
          v20 = 12;
LABEL_15:
          _os_log_impl(&dword_2981ED000, v18, v19, v17, buf, v20);
        }
      }

      else
      {
        v16 = _MAClientLog(@"SecureMA");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v21 = __error();
          v22 = strerror(*v21);
          LODWORD(buf[0]) = 138412546;
          *(buf + 4) = cryptexPath;
          WORD6(buf[0]) = 2080;
          *(buf + 14) = v22;
          v17 = "[SMA] Could not determine whether cryptex at %@ is graftable: %s";
          v18 = v16;
          v19 = OS_LOG_TYPE_ERROR;
          v20 = 22;
          goto LABEL_15;
        }
      }
    }

    else
    {
      v16 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 138412290;
        *(buf + 4) = cryptexPath;
        v17 = "[SMA] Cryptex at %@ is graftable";
        goto LABEL_12;
      }
    }

    v10 = 0;
    v11 = 0;
    goto LABEL_17;
  }

  v11 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
  [dictionary setObject:@"Failed to open cryptex file" forKeyedSubscript:*MEMORY[0x29EDB9E38]];
  [dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
  [dictionary setObject:cryptexPath forKeyedSubscript:@"cryptexPath"];
  v10 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:-4 userInfo:dictionary];
  if (v13 == -1)
  {
    goto LABEL_23;
  }

  v15 = 0;
LABEL_17:
  if (close(v13) == -1)
  {
    v34 = 0;
    memset(buf, 0, sizeof(buf));
    v28 = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    v29 = *__error();
    if (v28)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    v35[0] = 67109120;
    v35[1] = v29;
    _os_log_send_and_compose_impl(v30, &v34, buf, 80, &dword_2981ED000, MEMORY[0x29EDCA988], 16, "assertion failure: close(fd) -> %{errno}d", v35, 8);
    _os_crash_msg();
    [SecureMobileAssetBundle attach:error:];
  }

  if ((v13 & 0x80000000) == 0)
  {
    if (v15)
    {
      v32 = v10;
      v23 = [(SecureMobileAssetBundle *)selfCopy graft:&v32];
      v24 = v32;

      v25 = 1;
LABEL_22:
      v10 = v24;
      goto LABEL_24;
    }

LABEL_21:
    v31 = v10;
    v23 = [(SecureMobileAssetBundle *)selfCopy mount:&v31];
    v24 = v31;

    v25 = 2;
    goto LABEL_22;
  }

LABEL_23:
  v23 = 0;
  v25 = 0;
LABEL_24:
  objc_sync_exit(selfCopy);

  if (mount)
  {
    *mount = v25;
  }

  if (error && v10)
  {
    v26 = v10;
    *error = v10;
  }

  return v23;
}

- (BOOL)ungraftOrUnmount:(int64_t *)unmount ungraftingError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(SecureMobileAssetBundle *)selfCopy isGrafted])
  {
    v14 = 0;
    v7 = &v14;
    v8 = [(SecureMobileAssetBundle *)selfCopy ungraft:&v14];
    v9 = 1;
LABEL_5:
    v10 = *v7;
    goto LABEL_7;
  }

  if ([(SecureMobileAssetBundle *)selfCopy isMounted])
  {
    v13 = 0;
    v7 = &v13;
    v8 = [(SecureMobileAssetBundle *)selfCopy unmount:&v13];
    v9 = 2;
    goto LABEL_5;
  }

  v10 = 0;
  v9 = 0;
  v8 = 1;
LABEL_7:
  objc_sync_exit(selfCopy);

  if (unmount)
  {
    *unmount = v9;
  }

  if (error && v10)
  {
    v11 = v10;
    *error = v10;
  }

  return v8;
}

- (BOOL)beginAccessWithOptions:(id)options accessMechanismPtr:(int64_t *)ptr errorPtr:(id *)errorPtr
{
  optionsCopy = options;
  v9 = objc_opt_class();
  objc_sync_enter(v9);
  LOBYTE(errorPtr) = [(SecureMobileAssetBundle *)self _beginAccessWithOptions_nowait:optionsCopy accessMechanismPtr:ptr errorPtr:errorPtr];
  objc_sync_exit(v9);

  return errorPtr;
}

+ (id)getBootTaskPlistLock
{
  if (getBootTaskPlistLock_onceToken != -1)
  {
    +[SecureMobileAssetBundle getBootTaskPlistLock];
  }

  v3 = getBootTaskPlistLock_lock;

  return v3;
}

uint64_t __47__SecureMobileAssetBundle_getBootTaskPlistLock__block_invoke()
{
  getBootTaskPlistLock_lock = objc_alloc_init(MEMORY[0x29EDBA070]);

  return MEMORY[0x2A1C71028]();
}

- (void)recordAssetGraftStateForEarlyBootTask:(BOOL)task options:(id)options
{
  taskCopy = task;
  v81 = *MEMORY[0x29EDCA608];
  optionsCopy = options;
  v5 = +[SecureMobileAssetBundle getBootTaskPlistLock];
  objc_sync_enter(v5);
  v6 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
  if (v6)
  {
    dictionary = [MEMORY[0x29EDB8E00] dictionary];
    v72 = 0;
    v8 = [SecureMobileAssetBundle readBootTaskPlist:&v72];
    v69 = v72;
    if (v8)
    {
      v9 = [v8 objectForKeyedSubscript:@"GraftOperations"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        dictionary = v9;
      }

      else
      {
        dictionary = [MEMORY[0x29EDB8E00] dictionary];

        [v8 setObject:dictionary forKeyedSubscript:@"GraftOperations"];
      }
    }

    else
    {
      v11 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2981ED000, v11, OS_LOG_TYPE_DEFAULT, "[SMA] [SecureMAHelper]: Creating new boot task plist for tracking assets", buf, 2u);
      }

      v8 = objc_alloc_init(MEMORY[0x29EDB8E00]);
      [v8 setObject:dictionary forKeyedSubscript:@"GraftOperations"];
    }

    if (taskCopy)
    {
      v76[0] = @"PerformGraft";
      v12 = [MEMORY[0x29EDBA070] numberWithInt:{(objc_msgSend(optionsCopy, "flags") & 2) == 0}];
      v76[1] = @"PathsToDeleteOnGraftFailure";
      v77[0] = v12;
      pathsToPurgeOnGraftFailureInEarlyBootTask = [optionsCopy pathsToPurgeOnGraftFailureInEarlyBootTask];
      allObjects = [pathsToPurgeOnGraftFailureInEarlyBootTask allObjects];
      v77[1] = allObjects;
      assetBundlePath2 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v77 forKeys:v76 count:2];

      assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
      [dictionary setObject:assetBundlePath2 forKeyedSubscript:assetBundlePath];
    }

    else
    {
      assetBundlePath2 = [(SecureMobileAssetBundle *)self assetBundlePath];
      [dictionary removeObjectForKey:assetBundlePath2];
    }

    v71 = 0;
    v17 = [MEMORY[0x29EDBA0C0] dataWithPropertyList:v8 format:200 options:0 error:&v71];
    v66 = v71;
    if (v17)
    {
      v18 = MEMORY[0x29EDBA0F8];
      v75[0] = v6;
      v75[1] = @"EarlyBootTaskInfo.plist";
      v19 = [MEMORY[0x29EDB8D80] arrayWithObjects:v75 count:2];
      v65 = [v18 pathWithComponents:v19];

      v20 = MEMORY[0x29EDBA0F8];
      v74[0] = v6;
      v74[1] = @"EarlyBootTaskInfo-Temp.plist";
      v21 = [MEMORY[0x29EDB8D80] arrayWithObjects:v74 count:2];
      v22 = [v20 pathWithComponents:v21];

      v23 = v22;
      v24 = open([v22 fileSystemRepresentation], 1538, 420);
      if (v24 == -1)
      {
        v50 = _MAClientLog(@"SecureMA");
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          if (taskCopy)
          {
            v51 = @"graft";
          }

          else
          {
            v51 = @"ungraft";
          }

          assetType = [(SecureMobileAssetBundle *)self assetType];
          v53 = __error();
          v54 = strerror(*v53);
          *buf = 138413058;
          *&buf[4] = v51;
          *&buf[12] = 2112;
          *&buf[14] = assetType;
          *&buf[22] = 2112;
          *&buf[24] = v22;
          *&buf[32] = 2080;
          *&buf[34] = v54;
          _os_log_impl(&dword_2981ED000, v50, OS_LOG_TYPE_ERROR, "[SMA] [SecureMAHelper]: Failed to record %@ entry for asset of type %@. Opening %@ for writing failed. %s", buf, 0x2Au);
        }
      }

      else
      {
        *__error() = 3;
        v25 = v17;
        v26 = write(v24, [v17 bytes], objc_msgSend(v17, "length"));
        if (v26 == -1 || v26 != [v17 length])
        {
          v33 = _MAClientLog(@"SecureMA");
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            loga = v33;
            v42 = @"ungraft";
            if (taskCopy)
            {
              v42 = @"graft";
            }

            v68 = v42;
            assetType2 = [(SecureMobileAssetBundle *)self assetType];
            v44 = [v17 length];
            v45 = __error();
            v46 = strerror(*v45);
            *buf = 138413314;
            *&buf[4] = v68;
            *&buf[12] = 2112;
            *&buf[14] = assetType2;
            *&buf[22] = 2048;
            *&buf[24] = v44;
            *&buf[32] = 2048;
            *&buf[34] = v26;
            *&buf[42] = 2080;
            *&buf[44] = v46;
            v33 = loga;
            _os_log_impl(&dword_2981ED000, loga, OS_LOG_TYPE_ERROR, "[SMA] [SecureMAHelper]: Failed to record %@ entry for asset of type %@. Writing (expected:%zd, actual:%zd) failed. %s", buf, 0x34u);
          }
        }

        else
        {
          fsync(v24);
          if (fcntl(v24, 85) == -1)
          {
            v33 = _MAClientLog(@"SecureMA");
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              logb = v33;
              if (taskCopy)
              {
                v55 = @"graft";
              }

              else
              {
                v55 = @"ungraft";
              }

              assetType3 = [(SecureMobileAssetBundle *)self assetType];
              v57 = __error();
              v58 = strerror(*v57);
              *buf = 138412802;
              *&buf[4] = v55;
              *&buf[12] = 2112;
              *&buf[14] = assetType3;
              *&buf[22] = 2080;
              *&buf[24] = v58;
              v33 = logb;
              _os_log_impl(&dword_2981ED000, logb, OS_LOG_TYPE_ERROR, "[SMA] [SecureMAHelper]: Failed to record %@ entry for asset of type %@. Taking a write barrier failed. %s", buf, 0x20u);
            }
          }

          else
          {
            v27 = v22;
            fileSystemRepresentation = [v22 fileSystemRepresentation];
            v29 = v65;
            fileSystemRepresentation2 = [v65 fileSystemRepresentation];
            rename(fileSystemRepresentation, fileSystemRepresentation2, v31);
            if (v32)
            {
              v33 = _MAClientLog(@"SecureMA");
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                log = v33;
                if (taskCopy)
                {
                  v34 = @"graft";
                }

                else
                {
                  v34 = @"ungraft";
                }

                assetType4 = [(SecureMobileAssetBundle *)self assetType];
                v36 = __error();
                v37 = strerror(*v36);
                *buf = 138413314;
                *&buf[4] = v34;
                *&buf[12] = 2112;
                *&buf[14] = assetType4;
                *&buf[22] = 2112;
                *&buf[24] = v22;
                *&buf[32] = 2112;
                v33 = log;
                *&buf[34] = v65;
                *&buf[42] = 2080;
                *&buf[44] = v37;
                _os_log_impl(&dword_2981ED000, log, OS_LOG_TYPE_ERROR, "[SMA] [SecureMAHelper]: Failed to record %@ entry for asset of type %@. Renaming file from (%@) -> (%@) failed. %s", buf, 0x34u);
              }
            }

            else
            {
              v33 = _MAClientLog(@"SecureMA");
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                assetType5 = [(SecureMobileAssetBundle *)self assetType];
                v60 = assetType5;
                v61 = @"N";
                if (taskCopy)
                {
                  v61 = @"Y";
                }

                *buf = 138412546;
                *&buf[4] = assetType5;
                *&buf[12] = 2112;
                *&buf[14] = v61;
                _os_log_impl(&dword_2981ED000, v33, OS_LOG_TYPE_DEFAULT, "[SMA] [SecureMAHelper]: Successfully recorded graft entry | assetType:%@ | grafted:%@", buf, 0x16u);
              }
            }
          }
        }

        if (close(v24) == -1)
        {
          v73 = 0;
          v80 = 0u;
          memset(buf, 0, sizeof(buf));
          v47 = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
          v48 = *__error();
          if (v47)
          {
            v49 = 3;
          }

          else
          {
            v49 = 2;
          }

          v78[0] = 67109120;
          v78[1] = v48;
          _os_log_send_and_compose_impl(v49, &v73, buf, 80, &dword_2981ED000, MEMORY[0x29EDCA988], 16, "assertion failure: close(fd) -> %{errno}d", v78, 8);
          _os_crash_msg();
          [SecureMobileAssetBundle attach:error:];
        }
      }

      v38 = v65;
    }

    else
    {
      v38 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        assetType6 = [(SecureMobileAssetBundle *)self assetType];
        v40 = assetType6;
        v41 = @"ungraft";
        *buf = 138412802;
        if (taskCopy)
        {
          v41 = @"graft";
        }

        *&buf[4] = v41;
        *&buf[12] = 2112;
        *&buf[14] = assetType6;
        *&buf[22] = 2112;
        *&buf[24] = v66;
        _os_log_impl(&dword_2981ED000, v38, OS_LOG_TYPE_ERROR, "[SMA] [SecureMAHelper]: Failed to record %@ entry for asset of type %@ into a property list. %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v10 = _MAClientLog(@"SecureMA");
    v69 = v10;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2981ED000, v10, OS_LOG_TYPE_ERROR, "[SMA] [SecureMAHelper]: Unable to get MA repository path.", buf, 2u);
    }
  }

  objc_sync_exit(v5);
}

+ (BOOL)clearBootTaskPlist:(id *)plist
{
  v27[2] = *MEMORY[0x29EDCA608];
  v4 = +[SecureMobileAssetBundle getBootTaskPlistLock];
  objc_sync_enter(v4);
  v5 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x29EDBA0F8];
    v27[0] = v5;
    v27[1] = @"EarlyBootTaskInfo.plist";
    v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v27 count:2];
    v9 = [v7 pathWithComponents:v8];

    v10 = [MEMORY[0x29EDB8E70] fileURLWithPath:v9];
    defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
    v22 = 0;
    [defaultManager removeItemAtURL:v10 error:&v22];
    v12 = v22;

    v13 = v12 == 0;
    if (v12)
    {
      if (plist)
      {
        v14 = v12;
        *plist = v12;
      }

      v15 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        checkedDescription = [v12 checkedDescription];
        *buf = 138412546;
        v24 = v10;
        v25 = 2112;
        v26 = checkedDescription;
        _os_log_impl(&dword_2981ED000, v15, OS_LOG_TYPE_ERROR, "[SMA] [SecureMAHelper]: Failed to delete graft list file at %@ : %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (plist)
    {
      v17 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Unable to get MA repo path"];
      dictionary = [MEMORY[0x29EDB8E00] dictionary];
      [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      v19 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:-4 userInfo:dictionary];

      v20 = v19;
      *plist = v19;
    }

    v13 = 0;
  }

  objc_sync_exit(v4);
  return v13;
}

+ (id)readBootTaskPlist:(id *)plist
{
  v43[2] = *MEMORY[0x29EDCA608];
  v4 = +[SecureMobileAssetBundle getBootTaskPlistLock];
  objc_sync_enter(v4);
  v5 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
  if (v5)
  {
    defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
    v38 = 0;
    if (![defaultManager fileExistsAtPath:v5 isDirectory:&v38] || (v38 & 1) == 0)
    {
      if (!plist)
      {
        v17 = 0;
LABEL_32:

        goto LABEL_33;
      }

      v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"MA repo path does not exist."];
      dictionary = [MEMORY[0x29EDB8E00] dictionary];
      [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      v15 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:-4 userInfo:dictionary];

      v16 = v15;
      v17 = 0;
      *plist = v15;
LABEL_31:

      goto LABEL_32;
    }

    v7 = MEMORY[0x29EDBA0F8];
    v43[0] = v5;
    v43[1] = @"EarlyBootTaskInfo.plist";
    v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v43 count:2];
    v9 = [v7 pathWithComponents:v8];

    v10 = [MEMORY[0x29EDB8E70] fileURLWithPath:v9];
    if (![defaultManager fileExistsAtPath:v9])
    {
      v13 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v10;
        _os_log_impl(&dword_2981ED000, v13, OS_LOG_TYPE_DEFAULT, "[SMA] [SecureMAHelper]: Boot task plist does not exist at %@", buf, 0xCu);
      }

      v12 = 0;
      goto LABEL_17;
    }

    v37 = 0;
    v34 = [MEMORY[0x29EDB8DA0] dataWithContentsOfURL:v10 options:1 error:&v37];
    v11 = v37;
    if (v34)
    {
      v36 = 0;
      v12 = [MEMORY[0x29EDBA0C0] propertyListWithData:v34 options:2 format:0 error:&v36];
      v13 = v36;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

LABEL_17:
        v12 = v12;
        v17 = v12;
LABEL_30:

        goto LABEL_31;
      }

      v26 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v40 = v9;
        v41 = 2112;
        v42 = v13;
        _os_log_impl(&dword_2981ED000, v26, OS_LOG_TYPE_ERROR, "[SMA] [SecureMAHelper]: Failed to load existing boot plist at path %@. Error: %@", buf, 0x16u);
      }

      if (plist)
      {
        v33 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Unable to parse boot task plist data into dictionary."];
        v32 = v13;
        dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
        [dictionary2 setObject:v33 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
        [dictionary2 setObject:v32 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
        v28 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:10504 userInfo:dictionary2];

        v29 = v28;
        *plist = v28;
      }

      v35 = v13;
      v30 = [defaultManager removeItemAtURL:v10 error:&v35];
      v11 = v35;

      if (v30)
      {
LABEL_29:

        v17 = 0;
        goto LABEL_30;
      }

      v22 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v40 = v10;
        v41 = 2112;
        v42 = v11;
        _os_log_impl(&dword_2981ED000, v22, OS_LOG_TYPE_ERROR, "[SMA] [SecureMAHelper]: Failed to delete boot plist file at path %@. Error: %@", buf, 0x16u);
      }
    }

    else
    {
      if (!plist)
      {
        v12 = 0;
        goto LABEL_29;
      }

      v22 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Unable to load grafted asset list"];
      v11 = v11;
      dictionary3 = [MEMORY[0x29EDB8E00] dictionary];
      [dictionary3 setObject:v22 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      [dictionary3 setObject:v11 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      v24 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:10504 userInfo:dictionary3];

      v25 = v24;
      v12 = 0;
      *plist = v24;
    }

    goto LABEL_29;
  }

  if (plist)
  {
    v18 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Unable to get MA repo path"];
    dictionary4 = [MEMORY[0x29EDB8E00] dictionary];
    [dictionary4 setObject:v18 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
    [dictionary4 setObject:0 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
    v20 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:-4 userInfo:dictionary4];

    v21 = v20;
    *plist = v20;
  }

  v17 = 0;
LABEL_33:

  objc_sync_exit(v4);

  return v17;
}

+ (BOOL)isErrorDueToDeviceBeingLocked:(id)locked
{
  lockedCopy = locked;
  domain = [lockedCopy domain];
  v5 = [domain isEqualToString:@"SecureMobileAssetErrorDomain"];

  if (v5)
  {
    v6 = [lockedCopy code] == 11508;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_beginAccessWithOptions_nowait:(id)options_nowait accessMechanismPtr:(int64_t *)ptr errorPtr:(id *)errorPtr
{
  v111 = *MEMORY[0x29EDCA608];
  options_nowaitCopy = options_nowait;
  if ([(SecureMobileAssetBundle *)self manifestType]!= 2)
  {
    v13 = 0;
LABEL_6:
    v97 = v13;
    v98 = 0;
    v14 = [(SecureMobileAssetBundle *)self graftOrMount:&v98 graftingError:&v97];
    v11 = v97;

    if (!v14)
    {
      goto LABEL_51;
    }

    if (ptr)
    {
      *ptr = v98;
    }

    [(SecureMobileAssetBundle *)self recordAssetGraftStateForEarlyBootTask:1 options:options_nowaitCopy];
    if (([options_nowaitCopy flags] & 1) == 0)
    {
      goto LABEL_51;
    }

    assetType = [(SecureMobileAssetBundle *)self assetType];
    assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
    v96 = 0;
    if ([(SecureMobileAssetBundle *)self isMappableToExclaves:&v96])
    {
      v95 = -1;
      if ([(SecureMobileAssetBundle *)self isPersonalized:&v95])
      {
        if (+[SecureMobileAssetBundle _requiresLiveExclaveNonce])
        {
          v94 = 0;
          v17 = [(SecureMobileAssetBundle *)self _activateManifestInExclaves:v96 error:&v94];
          v18 = v94;
          v19 = v18;
          if (!v17)
          {
            v35 = _MAClientLog(@"SecureMA");
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_2981ED000, v35, OS_LOG_TYPE_ERROR, "[SMA] Cannot map to Exclaves: activate manifest failed", buf, 2u);
            }

            v36 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to activate committed manifest in Exclaves"];
            v37 = MEMORY[0x29EDB8E00];
            ticketPath = v19;
            dictionary = [v37 dictionary];
            [dictionary setObject:v36 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
            [dictionary setObject:ticketPath forKeyedSubscript:*MEMORY[0x29EDB9F18]];
            v39 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:11013 userInfo:dictionary];

            v11 = v36;
            goto LABEL_50;
          }

          v20 = 0;
          goto LABEL_67;
        }

        ticketPath = [(SecureMobileAssetBundle *)self ticketPath];
        secureInfoPlistPath = [(SecureMobileAssetBundle *)self secureInfoPlistPath];
        v85 = secureInfoPlistPath;
        if (ticketPath)
        {
          v29 = secureInfoPlistPath;
          if (secureInfoPlistPath)
          {
            v30 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:ticketPath];
            v31 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:v29];
            v80 = v31;
            v82 = v30;
            if (v30)
            {
              if (v31)
              {
                v93 = 0;
                v32 = [(SecureMobileAssetBundle *)self _storeManifestToExclaves:v30 infoPlist:v31 stage:0 error:&v93];
                v20 = v93;
                if (v32)
                {
                  v79 = 0;
                  v33 = 1;
                  goto LABEL_66;
                }

                dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
                [dictionary2 setObject:v20 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
                [dictionary2 setObject:@"Cannot map to Exclaves: _storeManifestToExclaves failed" forKeyedSubscript:*MEMORY[0x29EDB9E38]];
                v55 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v96];
                [dictionary2 setObject:v55 forKeyedSubscript:@"fstag"];

                v54 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:11012 userInfo:dictionary2];
LABEL_65:

                v33 = 0;
                v79 = 1;
                v11 = v54;
LABEL_66:

                if (!v33)
                {

                  if ((v79 & 1) == 0)
                  {
                    goto LABEL_60;
                  }

                  goto LABEL_51;
                }

LABEL_67:
                v39 = v11;
                v91 = v20;
                v92 = 0;
                MappedExclavePath = getMappedExclavePath(v96, &v92, &v91);
                ticketPath = v92;
                v11 = v91;

                if (MappedExclavePath)
                {
                  if (ticketPath)
                  {
                    accessPath = [(SecureMobileAssetBundle *)self accessPath];
                    v58 = [accessPath isEqualToString:ticketPath];

                    v59 = _MAClientLog(@"SecureMA");
                    v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
                    if (v58)
                    {
                      if (v60)
                      {
                        *buf = 67109890;
                        *v108 = v96;
                        *&v108[4] = 2112;
                        *&v108[6] = assetType;
                        *&v108[14] = 2112;
                        *&v108[16] = assetSpecifier;
                        v109 = 2112;
                        v110 = ticketPath;
                        v61 = "[SMA] Matching registration found for Exclave mapped path [fstag=%d] %@:%@: %@";
LABEL_88:
                        _os_log_impl(&dword_2981ED000, v59, OS_LOG_TYPE_DEFAULT, v61, buf, 0x26u);
                        goto LABEL_89;
                      }

                      goto LABEL_89;
                    }

                    if (v60)
                    {
                      *buf = 67109890;
                      *v108 = v96;
                      *&v108[4] = 2112;
                      *&v108[6] = assetType;
                      *&v108[14] = 2112;
                      *&v108[16] = assetSpecifier;
                      v109 = 2112;
                      v110 = ticketPath;
                      _os_log_impl(&dword_2981ED000, v59, OS_LOG_TYPE_DEFAULT, "[SMA] Conflicting registration found for Exclave mapped path [fstag=%d] %@:%@: %@", buf, 0x26u);
                    }

                    v90 = v11;
                    v65 = unregisterMappedExclavePath([ticketPath fileSystemRepresentation], &v90);
                    v66 = v90;

                    if (v65)
                    {
                      v86 = MEMORY[0x29EDB9FA0];
                      v67 = *MEMORY[0x29EDB9E38];
                      v105[0] = *MEMORY[0x29EDB9F18];
                      v105[1] = v67;
                      v106[1] = @"Unable to unregister existing asset path for fstag";
                      v106[2] = ticketPath;
                      v105[2] = @"path";
                      v105[3] = @"assetType";
                      v68 = @"nil";
                      if (assetType)
                      {
                        v68 = assetType;
                      }

                      v106[3] = v68;
                      v105[4] = @"fstag";
                      v106[0] = v66;
                      v69 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v96];
                      v106[4] = v69;
                      v70 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v106 forKeys:v105 count:5];
                      v87 = [v86 errorWithDomain:@"SecureMobileAssetErrorDomain" code:11005 userInfo:v70];

                      v11 = v66;
                      v39 = v87;
                      goto LABEL_50;
                    }

                    v11 = v66;
                  }

                  accessPath2 = [(SecureMobileAssetBundle *)self accessPath];
                  fileSystemRepresentation = [accessPath2 fileSystemRepresentation];

                  v89 = v96;
                  if (fsctl(fileSystemRepresentation, 0x80044119uLL, &v89, 0))
                  {
                    v73 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
                    v83 = MEMORY[0x29EDB9FA0];
                    v88 = v73;
                    v74 = *MEMORY[0x29EDB9E38];
                    v103[0] = *MEMORY[0x29EDB9F18];
                    v103[1] = v74;
                    v104[0] = v73;
                    v104[1] = @"Unable to register asset path with fstag";
                    v103[2] = @"path";
                    assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
                    v81 = assetBundlePath;
                    v76 = @"nil";
                    if (assetType)
                    {
                      v76 = assetType;
                    }

                    v104[2] = assetBundlePath;
                    v104[3] = v76;
                    v103[3] = @"assetType";
                    v103[4] = @"fstag";
                    v77 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v96];
                    v104[4] = v77;
                    v78 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v104 forKeys:v103 count:5];
                    v84 = [v83 errorWithDomain:@"SecureMobileAssetErrorDomain" code:110 userInfo:v78];

                    v59 = v88;
                    v39 = v84;
                    goto LABEL_89;
                  }

                  v59 = _MAClientLog(@"SecureMA");
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109890;
                    *v108 = v96;
                    *&v108[4] = 2112;
                    *&v108[6] = assetType;
                    *&v108[14] = 2112;
                    *&v108[16] = assetSpecifier;
                    v109 = 2080;
                    v110 = fileSystemRepresentation;
                    v61 = "[SMA] Successfully registered Exclave mapped path [fstag=%d] %@:%@: %s";
                    goto LABEL_88;
                  }

LABEL_89:

                  goto LABEL_50;
                }

                dictionary3 = [MEMORY[0x29EDB8E00] dictionary];
                [dictionary3 setObject:v11 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
                [dictionary3 setObject:@"Could not determine Exclave mapped path registration state" forKeyedSubscript:*MEMORY[0x29EDB9E38]];
                v63 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v96];
                [dictionary3 setObject:v63 forKeyedSubscript:@"fstag"];

                v64 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:11004 userInfo:dictionary3];

                v39 = v64;
LABEL_50:

                v11 = v39;
                goto LABEL_51;
              }

              dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
              [dictionary2 setObject:@"Cannot map to Exclaves: info plist data is nil" forKeyedSubscript:*MEMORY[0x29EDB9E38]];
              v53 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v96];
              [dictionary2 setObject:v53 forKeyedSubscript:@"fstag"];

              v51 = MEMORY[0x29EDB9FA0];
              v52 = 11010;
            }

            else
            {
              dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
              [dictionary2 setObject:@"Cannot map to Exclaves: ticket data is nil" forKeyedSubscript:*MEMORY[0x29EDB9E38]];
              v50 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v96];
              [dictionary2 setObject:v50 forKeyedSubscript:@"fstag"];

              v51 = MEMORY[0x29EDB9FA0];
              v52 = 11009;
            }

            v54 = [v51 errorWithDomain:@"SecureMobileAssetErrorDomain" code:v52 userInfo:dictionary2];
            v20 = 0;
            goto LABEL_65;
          }

          dictionary4 = [MEMORY[0x29EDB8E00] dictionary];
          [dictionary4 setObject:@"Cannot map to Exclaves: info plist path is nil" forKeyedSubscript:*MEMORY[0x29EDB9E38]];
          v44 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v96];
          [dictionary4 setObject:v44 forKeyedSubscript:@"fstag"];

          v42 = MEMORY[0x29EDB9FA0];
          v43 = 11007;
        }

        else
        {
          dictionary4 = [MEMORY[0x29EDB8E00] dictionary];
          [dictionary4 setObject:@"Cannot map to Exclaves: ticket path is nil" forKeyedSubscript:*MEMORY[0x29EDB9E38]];
          v41 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v96];
          [dictionary4 setObject:v41 forKeyedSubscript:@"fstag"];

          v42 = MEMORY[0x29EDB9FA0];
          v43 = 11006;
        }

        v39 = [v42 errorWithDomain:@"SecureMobileAssetErrorDomain" code:v43 userInfo:dictionary4];

        v11 = v85;
        goto LABEL_50;
      }

      ticketPath = [MEMORY[0x29EDB8E00] dictionary];
      if (v95 > 0x32)
      {
        v34 = @"Cannot map an unpersonalized asset to Exclaves";
      }

      else
      {
        v27 = @"Unknown";
        if (v95 <= 1)
        {
          if (v95)
          {
            v27 = @"Committed ticket data is nil";
          }

          else
          {
            v27 = @"Personalized bundle ticket data is nil";
          }
        }

        else
        {
          switch(v95)
          {
            case 2:
              v27 = @"Personalized bundle ticket data and committed ticket data do not match";
              break;
            case 3:
              v27 = @"Bundle is not personalized and committed for Exclaves";
              break;
            case 50:
              v27 = @"Personalized manifest failed to verify (nonce rolled?)";
              break;
          }
        }

        v34 = [@"Cannot map an unpersonalized asset to Exclaves" stringByAppendingFormat:@" (%@)", v27];
      }

      [ticketPath setObject:v34 forKeyedSubscript:*MEMORY[0x29EDB9E38]];

      v45 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v96];
      [ticketPath setObject:v45 forKeyedSubscript:@"fstag"];

      v25 = MEMORY[0x29EDB9FA0];
      if (v95 >= 0x33)
      {
        v26 = 110;
      }

      else
      {
        v26 = v95 + 11000;
      }
    }

    else
    {
      v21 = MEMORY[0x29EDB9FA0];
      v101[0] = *MEMORY[0x29EDB9E38];
      v101[1] = @"assetType";
      v22 = @"nil";
      if (assetType)
      {
        v23 = assetType;
      }

      else
      {
        v23 = @"nil";
      }

      v102[0] = @"Asset type+specifier is unsupported in Exclaves";
      v102[1] = v23;
      v101[2] = @"specifier";
      if (assetSpecifier)
      {
        v22 = assetSpecifier;
      }

      v102[2] = v22;
      ticketPath = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v102 forKeys:v101 count:3];
      v25 = v21;
      v26 = 109;
    }

    v39 = [v25 errorWithDomain:@"SecureMobileAssetErrorDomain" code:v26 userInfo:ticketPath];
    goto LABEL_50;
  }

  [options_nowaitCopy setFlags:{objc_msgSend(options_nowaitCopy, "flags") | 2}];
  v100 = 0;
  v9 = [(SecureMobileAssetBundle *)self bundleAccessPermitted:&v100];
  v10 = v100;
  v11 = v10;
  if (v9)
  {
    v99 = v10;
    v12 = [(SecureMobileAssetBundle *)self loadTrustCache:&v99];
    v13 = v99;

    v11 = v13;
    if (v12)
    {
      goto LABEL_6;
    }
  }

LABEL_51:
  v46 = _MAClientLog(@"SecureMA");
  assetType = v46;
  if (v11)
  {
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v108 = self;
      *&v108[8] = 2112;
      *&v108[10] = v11;
      _os_log_impl(&dword_2981ED000, assetType, OS_LOG_TYPE_ERROR, "[SMA] Begin access failed for secure asset (%@): %@", buf, 0x16u);
    }

    if (errorPtr)
    {
      v47 = v11;
      LOBYTE(assetType) = 0;
      *errorPtr = v11;
    }

    else
    {
      LOBYTE(assetType) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v108 = self;
      _os_log_impl(&dword_2981ED000, assetType, OS_LOG_TYPE_DEFAULT, "[SMA] Begin access successful for secure asset: %@", buf, 0xCu);
    }

    v11 = 0;
    LOBYTE(assetType) = 1;
  }

LABEL_60:

  return assetType & 1;
}

- (BOOL)endAccessWithOptions:(id)options accessMechanismPtr:(int64_t *)ptr errorPtr:(id *)errorPtr
{
  optionsCopy = options;
  v9 = objc_opt_class();
  objc_sync_enter(v9);
  LOBYTE(errorPtr) = [(SecureMobileAssetBundle *)self endAccessWithOptions_nowait:optionsCopy accessMechanismPtr:ptr errorPtr:errorPtr];
  objc_sync_exit(v9);

  return errorPtr;
}

- (BOOL)endAccessWithOptions_nowait:(id)options_nowait accessMechanismPtr:(int64_t *)ptr errorPtr:(id *)errorPtr
{
  v38 = *MEMORY[0x29EDCA608];
  options_nowaitCopy = options_nowait;
  assetType = [(SecureMobileAssetBundle *)self assetType];
  v35 = 0;
  if ([(SecureMobileAssetBundle *)self isMappableToExclaves:&v35])
  {
    v33 = 0;
    v34 = 0;
    MappedExclavePath = getMappedExclavePath(v35, &v34, &v33);
    v11 = v34;
    v12 = v33;
    if (!MappedExclavePath)
    {
      dictionary = [MEMORY[0x29EDB8E00] dictionary];
      [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
      [dictionary setObject:@"Could not determine Exclave mapped path registration state" forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      v14 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v35];
      [dictionary setObject:v14 forKeyedSubscript:@"fstag"];

      v15 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:111 userInfo:dictionary];
      v16 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v37 = v15;
        _os_log_impl(&dword_2981ED000, v16, OS_LOG_TYPE_ERROR, "[SMA] WARNING: %@", buf, 0xCu);
      }
    }

    accessPath = [(SecureMobileAssetBundle *)self accessPath];
    v18 = [v11 isEqualToString:accessPath];

    if (v18)
    {
      v19 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *v37 = self;
        *&v37[8] = 1024;
        *&v37[10] = v35;
        *&v37[14] = 2112;
        *&v37[16] = v11;
        _os_log_impl(&dword_2981ED000, v19, OS_LOG_TYPE_DEFAULT, "[SMA] <%@> has a registered Exclave mapped path [fstag=%d]: %@", buf, 0x1Cu);
      }

      v32 = v12;
      v20 = unregisterMappedExclavePath([v11 fileSystemRepresentation], &v32);
      v21 = v32;

      if (v20)
      {
        dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
        [dictionary2 setObject:v21 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
        [dictionary2 setObject:@"Unable to unregister fstag mapping" forKeyedSubscript:*MEMORY[0x29EDB9E38]];
        [dictionary2 setObject:v11 forKeyedSubscript:@"mappedPath"];
        if (assetType)
        {
          v23 = assetType;
        }

        else
        {
          v23 = @"nil";
        }

        [dictionary2 setObject:v23 forKeyedSubscript:@"assetType"];
        v24 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v35];
        [dictionary2 setObject:v24 forKeyedSubscript:@"fstag"];

        v25 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SecureMobileAssetErrorDomain" code:111 userInfo:dictionary2];
      }

      else
      {
        dictionary2 = _MAClientLog(@"SecureMA");
        if (os_log_type_enabled(dictionary2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v37 = v35;
          *&v37[4] = 2112;
          *&v37[6] = v11;
          _os_log_impl(&dword_2981ED000, dictionary2, OS_LOG_TYPE_DEFAULT, "[SMA] Successfully unregistered Exclave mapped path [fstag=%d]: %@", buf, 0x12u);
        }

        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
      v21 = v12;
    }
  }

  else
  {
    v25 = 0;
  }

  if (([options_nowaitCopy flags] & 1) == 0)
  {
    v31 = v25;
    [(SecureMobileAssetBundle *)self ungraftOrUnmount:ptr ungraftingError:&v31];
    v26 = v31;

    v25 = v26;
  }

  v27 = _MAClientLog(@"SecureMA");
  v28 = v27;
  if (v25)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v37 = self;
      *&v37[8] = 2112;
      *&v37[10] = v25;
      _os_log_impl(&dword_2981ED000, v28, OS_LOG_TYPE_ERROR, "[SMA] End access failed for secure asset (%@): %@", buf, 0x16u);
    }

    if (errorPtr)
    {
      v29 = v25;
      *errorPtr = v25;
    }
  }

  else
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v37 = self;
      _os_log_impl(&dword_2981ED000, v28, OS_LOG_TYPE_DEFAULT, "[SMA] End access successful for secure asset: %@", buf, 0xCu);
    }
  }

  [(SecureMobileAssetBundle *)self recordAssetGraftStateForEarlyBootTask:0 options:options_nowaitCopy];

  return v25 == 0;
}

- (BOOL)mapToExclaves:(id *)exclaves
{
  v5 = objc_opt_new();
  [v5 setFlags:1];
  LOBYTE(exclaves) = [(SecureMobileAssetBundle *)self beginAccessWithOptions:v5 accessMechanismPtr:0 errorPtr:exclaves];

  return exclaves;
}

- (BOOL)unmapFromExclaves:(id *)exclaves
{
  v5 = objc_opt_new();
  LOBYTE(exclaves) = [(SecureMobileAssetBundle *)self endAccessWithOptions:v5 accessMechanismPtr:0 errorPtr:exclaves];

  return exclaves;
}

- (BOOL)isSecureMobileAsset
{
  assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
  v3 = [SecureMobileAssetBundle assetIsSecureMobileAsset:assetBundlePath];

  return v3;
}

- (BOOL)isMappableToExclaves:(unsigned int *)exclaves
{
  v22 = *MEMORY[0x29EDCA608];
  if (MABrainUtilityDeviceSupportsExclaves(self, a2))
  {
    v15 = 0;
    assetType = [(SecureMobileAssetBundle *)self assetType];
    assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
    v7 = [SecureMobileAssetBundle fsTag:&v15 forAssetType:assetType specifier:assetSpecifier];

    v8 = _MAClientLog(@"SecureMA");
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        assetType2 = [(SecureMobileAssetBundle *)self assetType];
        assetSpecifier2 = [(SecureMobileAssetBundle *)self assetSpecifier];
        *buf = 138412802;
        v17 = assetType2;
        v18 = 2112;
        v19 = assetSpecifier2;
        v20 = 1024;
        v21 = v15;
        _os_log_impl(&dword_2981ED000, v9, OS_LOG_TYPE_DEFAULT, "[SMA] Allow listed for Exclaves: %@:%@ fstag=%u", buf, 0x1Cu);
      }

      if (exclaves)
      {
        *exclaves = v15;
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        assetType3 = [(SecureMobileAssetBundle *)self assetType];
        assetSpecifier3 = [(SecureMobileAssetBundle *)self assetSpecifier];
        *buf = 138412546;
        v17 = assetType3;
        v18 = 2112;
        v19 = assetSpecifier3;
        _os_log_impl(&dword_2981ED000, v9, OS_LOG_TYPE_DEBUG, "[SMA] Not allow listed for Exclaves: %@:%@", buf, 0x16u);
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)_personalizedBundleTicketData
{
  v15 = *MEMORY[0x29EDCA608];
  secureAssetDataPath = [(SecureMobileAssetBundle *)self secureAssetDataPath];
  defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
  v4 = [defaultManager fileExistsAtPath:secureAssetDataPath];

  if (!v4)
  {
    v8 = 0;
    goto LABEL_16;
  }

  v5 = [MEMORY[0x29EDB8E70] fileURLWithPath:secureAssetDataPath isDirectory:1];
  v6 = AMAuthInstallCreate();
  if (v6)
  {
    if (MEMORY[0x2A1C7B530])
    {
      v7 = v6;
      v8 = AMAuthInstallUpdaterCryptex1CopyTicket();
      CFRelease(v7);
      if (!v8)
      {
        v9 = _MAClientLog(@"SecureMA");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v14 = 0;
          _os_log_impl(&dword_2981ED000, v9, OS_LOG_TYPE_ERROR, "[SMA] AMAuthInstallUpdaterCryptex1CopyTicket() failed: %@", buf, 0xCu);
        }
      }

      goto LABEL_15;
    }

    v10 = _MAClientLog(@"SecureMA");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "[SMA] AMAuthInstallUpdaterCryptex1CopyTicket() is unavailable";
      goto LABEL_13;
    }
  }

  else
  {
    v10 = _MAClientLog(@"SecureMA");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "[SMA] AMAuthInstallCreate() failed";
LABEL_13:
      _os_log_impl(&dword_2981ED000, v10, OS_LOG_TYPE_ERROR, v11, buf, 2u);
    }
  }

  v8 = 0;
LABEL_15:

LABEL_16:

  return v8;
}

- (id)_manifestDataFromStoredTicket:(id)ticket manifestType:(unint64_t)type
{
  v50 = *MEMORY[0x29EDCA608];
  ticketCopy = ticket;
  v6 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:ticketCopy];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_13;
  }

  if (type == 2)
  {
    v8 = v6;
LABEL_4:
    v9 = v8;
    goto LABEL_14;
  }

  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  [v6 bytes];
  [v7 length];
  v10 = Img4DecodeInit();
  if (!v10)
  {
    Manifest = Img4DecodeGetManifest();
    if (!Manifest)
    {
      v8 = [MEMORY[0x29EDB8DA0] dataWithBytes:0 length:0];
      goto LABEL_4;
    }

    v15 = Manifest;
    v12 = _MAClientLog(@"SecureMA");
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 138412546;
    v18 = ticketCopy;
    v19 = 1024;
    v20 = v15;
    v13 = "[SMA] Img4DecodeGetManifest() failed for %@: %d";
    goto LABEL_11;
  }

  v11 = v10;
  v12 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v18 = ticketCopy;
    v19 = 1024;
    v20 = v11;
    v13 = "[SMA] Img4DecodeInit() failed for %@: %d";
LABEL_11:
    _os_log_impl(&dword_2981ED000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
  }

LABEL_12:

LABEL_13:
  v9 = 0;
LABEL_14:

  return v9;
}

- (BOOL)isPersonalized:(int64_t *)personalized
{
  _personalizedBundleTicketData = [(SecureMobileAssetBundle *)self _personalizedBundleTicketData];
  if (_personalizedBundleTicketData)
  {
    manifestType = [(SecureMobileAssetBundle *)self manifestType];
    ticketPath = [(SecureMobileAssetBundle *)self ticketPath];
    v8 = [(SecureMobileAssetBundle *)self _manifestDataFromStoredTicket:ticketPath manifestType:manifestType];

    if (v8)
    {
      if ([_personalizedBundleTicketData isEqualToData:v8])
      {
        if (manifestType != 2 || (-[SecureMobileAssetBundle manifestVerifier](self, "manifestVerifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 verifyManifest:v8 manifestType:2], v9, (v10 & 1) != 0))
        {
          v14 = 0;
          if (![(SecureMobileAssetBundle *)self isMappableToExclaves:&v14]|| ![SecureMobileAssetBundle _shouldUseConclave:[(SecureMobileAssetBundle *)self darwinOnly]]|| [(SecureMobileAssetBundle *)self isPersonalizedForExclaves:v14 staged:0])
          {
            v11 = 1;
LABEL_20:

            goto LABEL_21;
          }

          v11 = 0;
          if (!personalized)
          {
            goto LABEL_20;
          }

          v12 = 3;
LABEL_16:
          *personalized = v12;
          goto LABEL_20;
        }

        if (personalized)
        {
          v11 = 0;
          v12 = 50;
          goto LABEL_16;
        }
      }

      else if (personalized)
      {
        v11 = 0;
        v12 = 2;
        goto LABEL_16;
      }
    }

    else if (personalized)
    {
      v11 = 0;
      v12 = 1;
      goto LABEL_16;
    }

    v11 = 0;
    goto LABEL_20;
  }

  v11 = 0;
  if (personalized)
  {
    *personalized = 0;
  }

LABEL_21:

  return v11;
}

- (BOOL)isPersonalizedManifestStaged:(int64_t *)staged
{
  _personalizedBundleTicketData = [(SecureMobileAssetBundle *)self _personalizedBundleTicketData];
  if (_personalizedBundleTicketData)
  {
    manifestType = [(SecureMobileAssetBundle *)self manifestType];
    stagedPersonalizedManifestPath = [(SecureMobileAssetBundle *)self stagedPersonalizedManifestPath];
    v8 = [(SecureMobileAssetBundle *)self _manifestDataFromStoredTicket:stagedPersonalizedManifestPath manifestType:manifestType];

    if (v8)
    {
      if ([_personalizedBundleTicketData isEqualToData:v8])
      {
        if (manifestType != 2 || (-[SecureMobileAssetBundle manifestVerifier](self, "manifestVerifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 verifyManifest:v8 manifestType:2], v9, (v10 & 1) != 0))
        {
          v14 = 0;
          if (![(SecureMobileAssetBundle *)self isMappableToExclaves:&v14]|| ![SecureMobileAssetBundle _shouldUseConclave:[(SecureMobileAssetBundle *)self darwinOnly]])
          {
            v11 = 1;
            goto LABEL_22;
          }

          v11 = 1;
          if ([(SecureMobileAssetBundle *)self isPersonalizedForExclaves:v14 staged:1])
          {
            goto LABEL_22;
          }

          v11 = 0;
          if (!staged)
          {
            goto LABEL_22;
          }

          v12 = 3;
LABEL_17:
          *staged = v12;
LABEL_22:

          goto LABEL_23;
        }

        if (staged)
        {
          v11 = 0;
          v12 = 50;
          goto LABEL_17;
        }
      }

      else if (staged)
      {
        v11 = 0;
        v12 = 2;
        goto LABEL_17;
      }
    }

    else if (staged)
    {
      v11 = 0;
      v12 = 1;
      goto LABEL_17;
    }

    v11 = 0;
    goto LABEL_22;
  }

  v11 = 0;
  if (staged)
  {
    *staged = 0;
  }

LABEL_23:

  return v11;
}

- (BOOL)isPersonalizedForExclaves:(unsigned int)exclaves staged:(BOOL)staged
{
  stagedCopy = staged;
  v5 = *&exclaves;
  v38 = *MEMORY[0x29EDCA608];
  v35 = 0;
  v7 = [SecureMobileAssetBundle getExclaveManager:&v35];
  v8 = v35;
  if (v7)
  {
    if (stagedCopy)
    {
      [(SecureMobileAssetBundle *)self stagedPersonalizedManifestPath];
    }

    else
    {
      [(SecureMobileAssetBundle *)self ticketPath];
    }
    v9 = ;
    secureInfoPlistPath = [(SecureMobileAssetBundle *)self secureInfoPlistPath];
    integrityCatalogPath = [(SecureMobileAssetBundle *)self integrityCatalogPath];
    v14 = integrityCatalogPath;
    v11 = 0;
    if (!v9 || !secureInfoPlistPath || !integrityCatalogPath)
    {
      goto LABEL_32;
    }

    v30 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:v9];
    v29 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:secureInfoPlistPath];
    v28 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:v14];
    v11 = 0;
    if (!v30 || !v29 || !v28)
    {
LABEL_31:

LABEL_32:
      goto LABEL_33;
    }

    buf[0] = 0;
    if (+[SecureMobileAssetBundle _requiresLiveExclaveNonce])
    {
      if ([v7 conformsToProtocol:&unk_2A1EB0A08])
      {
        v15 = v7;
        assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
        if (stagedCopy)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        v34 = v8;
        v18 = [v15 checkManifestForFSTag:v5 specifier:assetSpecifier state:v17 manifest:v30 infoPlist:v29 catalog:v28 isValid:buf error:&v34];
        v19 = v34;
      }

      else
      {
        v33 = v8;
        v26 = v7;
        v18 = [v26 checkManifestForFSTag:v5 staged:stagedCopy manifest:v30 infoPlist:v29 catalog:v28 isValid:buf error:&v33];
        v19 = v33;
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = objc_opt_class();
      objc_sync_enter(v20);
      v21 = [v7 conformsToProtocol:&unk_2A1EB0A08];
      v22 = v7;
      v23 = v22;
      if (v21)
      {
        assetSpecifier2 = [(SecureMobileAssetBundle *)self assetSpecifier];
        v32 = v8;
        v25 = [v23 stageManifestForFSTag:v5 specifier:assetSpecifier2 manifest:v30 infoPlist:v29 catalog:v28 error:&v32];
        v19 = v32;
      }

      else
      {
        v31 = v8;
        v25 = [v22 storeManifest:v30 infoPlist:v29 catalog:v28 error:&v31];
        v19 = v31;
        assetSpecifier2 = v8;
      }

      buf[0] = v25;
      objc_sync_exit(v20);

      if (!v25)
      {
        goto LABEL_29;
      }
    }

    if (buf[0])
    {
      v11 = 1;
LABEL_30:
      v8 = v19;
      goto LABEL_31;
    }

LABEL_29:
    v11 = 0;
    goto LABEL_30;
  }

  v9 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    checkedDescription = [v8 checkedDescription];
    *buf = 138412290;
    v37 = checkedDescription;
    _os_log_impl(&dword_2981ED000, v9, OS_LOG_TYPE_ERROR, "[SMA] Failed to get shared instance of SecureMobileAssetExclave: %@", buf, 0xCu);
  }

  v11 = 0;
LABEL_33:

  return v11;
}

- (NSString)secureAssetDataPath
{
  assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
  v3 = [assetBundlePath stringByAppendingPathComponent:@"SecureAssetData"];

  return v3;
}

- (NSString)graftPath
{
  assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
  v3 = [assetBundlePath stringByAppendingPathComponent:@".AssetData"];

  return v3;
}

- (NSString)cryptexPath
{
  secureAssetDataPath = [(SecureMobileAssetBundle *)self secureAssetDataPath];
  v3 = [secureAssetDataPath stringByAppendingPathComponent:@"SecureMobileAsset.dmg"];

  v4 = realpath_DARWIN_EXTSN([v3 UTF8String], 0);
  if (v4)
  {
    v5 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v4];

    v3 = v5;
  }

  free(v4);

  return v3;
}

- (NSString)secureInfoPlistPath
{
  secureAssetDataPath = [(SecureMobileAssetBundle *)self secureAssetDataPath];
  v3 = [secureAssetDataPath stringByAppendingPathComponent:@"SecureMobileAsset-Info.plist"];

  return v3;
}

- (NSString)insecureInfoPlistPath
{
  assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
  v3 = [assetBundlePath stringByAppendingPathComponent:@"Info.plist"];

  return v3;
}

- (NSString)ticketPath
{
  v3 = objc_alloc_init(MEMORY[0x29EDC5D30]);
  assetType = [(SecureMobileAssetBundle *)self assetType];
  assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
  v6 = [v3 manifestPathForAssetType:assetType specifier:assetSpecifier];

  return v6;
}

- (NSString)stagedPersonalizedManifestPath
{
  v3 = objc_alloc_init(MEMORY[0x29EDC5D30]);
  if (objc_opt_respondsToSelector())
  {
    assetType = [(SecureMobileAssetBundle *)self assetType];
    assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
    v6 = [v3 stagedManifestPathForAssetType:assetType specifier:assetSpecifier];
  }

  else
  {
    v7 = _MAClientLog(@"SecureMA");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&dword_2981ED000, v7, OS_LOG_TYPE_DEBUG, "[SMA] Warning: MASecureManifestStorage does not support staging, returning nil", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (unint64_t)manifestType
{
  v3 = +[MASecureMobileAssetTypes sharedInstance];
  if (objc_opt_respondsToSelector())
  {
    v4 = +[MASecureMobileAssetTypes sharedInstance];
    assetType = [(SecureMobileAssetBundle *)self assetType];
    v6 = [v4 supportsLoadableTrustCache:assetType];

    if (v6)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {

    return 1;
  }
}

- (unsigned)graftdmgType
{
  if ([(SecureMobileAssetBundle *)self manifestType]== 1)
  {
    return 8;
  }

  else
  {
    return 9;
  }
}

- (unsigned)secureMountAuthType
{
  if ([(SecureMobileAssetBundle *)self manifestType]== 1)
  {
    return 8;
  }

  else
  {
    return 9;
  }
}

- (NSString)rootHashPath
{
  secureAssetDataPath = [(SecureMobileAssetBundle *)self secureAssetDataPath];
  v3 = [secureAssetDataPath stringByAppendingPathComponent:@"SecureMobileAsset.root_hash"];

  return v3;
}

- (NSString)trustCachePath
{
  secureAssetDataPath = [(SecureMobileAssetBundle *)self secureAssetDataPath];
  v3 = [secureAssetDataPath stringByAppendingPathComponent:@"SecureMobileAsset.trustcache"];

  return v3;
}

- (id)integrityCatalogPath
{
  secureAssetDataPath = [(SecureMobileAssetBundle *)self secureAssetDataPath];
  v3 = [secureAssetDataPath stringByAppendingPathComponent:@"SecureMobileAsset.integritycatalog"];

  return v3;
}

- (BOOL)isAccessible
{
  if ([(SecureMobileAssetBundle *)self isGrafted])
  {
    return 1;
  }

  return [(SecureMobileAssetBundle *)self isMounted];
}

- (NSDictionary)secureInfoPlist
{
  v2 = MEMORY[0x29EDB8DC0];
  secureInfoPlistPath = [(SecureMobileAssetBundle *)self secureInfoPlistPath];
  v4 = [v2 dictionaryWithContentsOfFile:secureInfoPlistPath];

  return v4;
}

- (NSDictionary)insecureInfoPlist
{
  v2 = MEMORY[0x29EDB8DC0];
  insecureInfoPlistPath = [(SecureMobileAssetBundle *)self insecureInfoPlistPath];
  v4 = [v2 dictionaryWithContentsOfFile:insecureInfoPlistPath];

  return v4;
}

- (NSDictionary)assetAttributes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_assetAttributes)
  {
    insecureInfoPlist = [(SecureMobileAssetBundle *)selfCopy insecureInfoPlist];
    v4 = [insecureInfoPlist objectForKeyedSubscript:@"MobileAssetProperties"];
    assetAttributes = selfCopy->_assetAttributes;
    selfCopy->_assetAttributes = v4;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_assetAttributes;

  return v6;
}

- (NSString)assetType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_assetType)
  {
    insecureInfoPlist = [(SecureMobileAssetBundle *)selfCopy insecureInfoPlist];
    v4 = [insecureInfoPlist objectForKeyedSubscript:*MEMORY[0x29EDB8F10]];
    assetType = selfCopy->_assetType;
    selfCopy->_assetType = v4;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_assetType;

  return v6;
}

- (NSString)assetSpecifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_assetSpecifier)
  {
    assetAttributes = [(SecureMobileAssetBundle *)selfCopy assetAttributes];
    v4 = [assetAttributes objectForKeyedSubscript:@"AssetSpecifier"];
    assetSpecifier = selfCopy->_assetSpecifier;
    selfCopy->_assetSpecifier = v4;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_assetSpecifier;

  return v6;
}

- (id)description
{
  assetType = [(SecureMobileAssetBundle *)self assetType];
  assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
  assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
  lastPathComponent = [assetBundlePath lastPathComponent];

  v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@:%@ (%@)", assetType, assetSpecifier, lastPathComponent];

  return v7;
}

- (id)assetValues
{
  v3 = objc_opt_new();
  assetType = [(SecureMobileAssetBundle *)self assetType];
  [v3 setSafeObject:assetType forKey:@"AssetType"];

  assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
  [v3 setSafeObject:assetSpecifier forKey:@"AssetSpecifier"];

  return v3;
}

- (void)devnodesForDiskImageID:(void *)a1 error:(_OWORD *)a2 .cold.2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_2981ED000, v6, v7, "IOObjectRetain: %{mach.errno}d");
  _os_crash_msg();
  __break(1u);
}

@end