@interface UARPiCloudAssetManager
- (BOOL)checkLocalUARPCacheForAccessory:(id)accessory versionAvailable:(id *)available firmwarePath:(id *)path releaseNotesPath:(id *)notesPath;
- (BOOL)isFirmwareHash:(id)hash equalToHash:(id)toHash;
- (BOOL)moveFileAtURL:(id)l toTempURL:(id)rL;
- (UARPiCloudAssetManager)initWithManager:(id)manager;
- (id)moveToUARPCacheFromRemoteURL:(id)l assetType:(int64_t)type forAcessory:(id)acessory;
- (id)pathToSuperBinaryInAccessoryVersionDirectory:(id)directory uarpVersion:(id *)version;
- (int64_t)downloadFirmwareForAccessory:(id)accessory;
- (int64_t)downloadReleaseNotesForAccessory:(id)accessory;
- (int64_t)getAttestationCertificates:(id)certificates inContainer:(id)container;
- (int64_t)getSupportedAccessories:(id)accessories batchRequest:(BOOL)request inContainer:(id)container;
- (int64_t)handleReleaseNotesDownloadRequestForAccessory:(id)accessory;
- (int64_t)handleRemoteFirmwareDownloadRequestForAccessory:(id)accessory;
- (int64_t)handleRemoteQueryRequestForAccessories:(id)accessories inContainer:(id)container;
- (int64_t)performRemoteUpdateCheckForAccessories:(id)accessories inContainer:(id)container;
- (unsigned)_getCoreCryptoDigestAlgorithmFromCHIPFirmwareAlgorithm:(unint64_t)algorithm;
- (void)cleanupAssetCache;
- (void)handleFirmwareDownloadResponseFromLocation:(id)location forAccessory:(id)accessory;
- (void)handleReleaseNotesDownloadResponseFromLocation:(id)location forAccessory:(id)accessory;
- (void)handleRemoteDownloadRequestForAttestationCertificatesForSubjectKeyIdentifier:(id)identifier inContainer:(id)container;
- (void)handleRemoteDownloadRequestForSupportedAccessoriesForProductGroup:(id)group batchRequest:(BOOL)request inContainer:(id)container;
- (void)handleRemoteDownloadResponseForAttestationCertificates:(id)certificates forSubKeyIdentifier:(id)identifier;
- (void)handleRemoteDownloadResponseForSupportedAccessories:(id)accessories forProductGroup:(id)group isComplete:(BOOL)complete;
- (void)handleRemoteFetchCompletion:(id)completion error:(id)error;
- (void)remoteFetchCompletion:(id)completion error:(id)error;
- (void)remoteFetchCompletionForAttestationCertificates:(id)certificates subjectKeyIdentifier:(id)identifier error:(id)error;
- (void)setFirmwareDownloadFailureStatusForAccessory:(id)accessory;
- (void)setFirmwareDownloadSuccessStatusForAccessory:(id)accessory;
- (void)setReleaseNotesDownloadFailureStatusForAccessory:(id)accessory;
- (void)setReleaseNotesDownloadSuccessStatusForAccessory:(id)accessory;
@end

@implementation UARPiCloudAssetManager

- (UARPiCloudAssetManager)initWithManager:(id)manager
{
  managerCopy = manager;
  v16.receiver = self;
  v16.super_class = UARPiCloudAssetManager;
  v6 = [(UARPiCloudAssetManager *)&v16 init];
  if (v6)
  {
    v7 = os_log_create("com.apple.accessoryupdater.uarp", "iCloudAssetManager");
    log = v6->_log;
    v6->_log = v7;

    objc_storeStrong(&v6->_assetManager, manager);
    v9 = dispatch_queue_create("com.apple.aam.uarpiCloudAssetManager", 0);
    workQueue = v6->_workQueue;
    v6->_workQueue = v9;

    v11 = dispatch_queue_create("com.apple.aam.uarpiCloudAssetManager.queue", 0);
    delegateQueue = v6->_delegateQueue;
    v6->_delegateQueue = v11;

    v13 = dispatch_queue_create("com.apple.aam.uarpiCloudAssetManager.batched", 0);
    batchedProcessingQueue = v6->_batchedProcessingQueue;
    v6->_batchedProcessingQueue = v13;
  }

  return v6;
}

- (void)cleanupAssetCache
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = InternalStorageDirectoryPath(v3);
  v5 = UARPArrayOfExpiredFiles(v4, 0, 2592000.0);

  v6 = MEMORY[0x277CCACA8];
  v7 = MEMORY[0x277CCAC68];
  v9 = InternalStorageDirectoryPath(v8);
  v10 = [v7 escapedPatternForString:v9];
  v11 = [v6 stringWithFormat:@"^%@\\S+\\/\\S+\\/(%@|%@)\\/.+$", v10, *MEMORY[0x277D02638], *MEMORY[0x277D02640]];

  v40 = v11;
  v41 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v11 options:1 error:0];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v50 objects:v57 count:16];
  obj = v12;
  if (!v13)
  {
LABEL_14:

    goto LABEL_15;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v51;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v51 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v50 + 1) + 8 * i);
      pathExtension = [v18 pathExtension];
      v20 = [@"urlasset" isEqualToString:pathExtension];

      if (v20)
      {
        v21 = v15;
      }

      else
      {
        v21 = 1;
        if ([v41 rangeOfFirstMatchInString:v18 options:1 range:{0, objc_msgSend(v18, "length")}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          continue;
        }
      }

      [v3 addObject:v18];
      v15 = v21;
    }

    v14 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
  }

  while (v14);

  if (v15)
  {
    v23 = MEMORY[0x277CCACA8];
    v24 = InternalStorageDirectoryPath(v22);
    v12 = [v23 stringWithFormat:@"%@%@", v24, @"icloudTokens.plist"];

    [v3 addObject:v12];
    goto LABEL_14;
  }

LABEL_15:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v42 = v3;
  v45 = [v42 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v45)
  {
    v44 = *v47;
    do
    {
      for (j = 0; j != v45; ++j)
      {
        if (*v47 != v44)
        {
          objc_enumerationMutation(v42);
        }

        v26 = *(*(&v46 + 1) + 8 * j);
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v55 = v26;
          _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEFAULT, "Deleting iCloud Cache file:%@", buf, 0xCu);
        }

        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        [defaultManager removeItemAtPath:v26 error:0];

        stringByDeletingLastPathComponent = [v26 stringByDeletingLastPathComponent];
        v30 = InternalStorageDirectoryPath(stringByDeletingLastPathComponent);
        v31 = [stringByDeletingLastPathComponent isEqualToString:v30];

        if ((v31 & 1) == 0)
        {
          while (1)
          {
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            v33 = [defaultManager2 contentsOfDirectoryAtPath:stringByDeletingLastPathComponent error:0];

            if ([v33 count])
            {
              break;
            }

            v34 = self->_log;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v55 = stringByDeletingLastPathComponent;
              _os_log_impl(&dword_2701F5000, v34, OS_LOG_TYPE_DEFAULT, "Deleting iCloud Cache directory:%@", buf, 0xCu);
            }

            defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
            [defaultManager3 removeItemAtPath:stringByDeletingLastPathComponent error:0];

            v29StringByDeletingLastPathComponent = [stringByDeletingLastPathComponent stringByDeletingLastPathComponent];

            v38 = InternalStorageDirectoryPath(v37);
            v39 = [v29StringByDeletingLastPathComponent isEqualToString:v38];

            stringByDeletingLastPathComponent = v29StringByDeletingLastPathComponent;
            if (v39)
            {
              goto LABEL_30;
            }
          }
        }

        v29StringByDeletingLastPathComponent = stringByDeletingLastPathComponent;
LABEL_30:
      }

      v45 = [v42 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v45);
  }
}

- (int64_t)performRemoteUpdateCheckForAccessories:(id)accessories inContainer:(id)container
{
  accessoriesCopy = accessories;
  containerCopy = container;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  workQueue = self->_workQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__UARPiCloudAssetManager_performRemoteUpdateCheckForAccessories_inContainer___block_invoke;
  v13[3] = &unk_279DFCF70;
  v13[4] = self;
  v14 = accessoriesCopy;
  v15 = containerCopy;
  v16 = &v17;
  v9 = containerCopy;
  v10 = accessoriesCopy;
  dispatch_sync(workQueue, v13);
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

void *__77__UARPiCloudAssetManager_performRemoteUpdateCheckForAccessories_inContainer___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) handleRemoteQueryRequestForAccessories:*(a1 + 40) inContainer:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (int64_t)downloadFirmwareForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__UARPiCloudAssetManager_downloadFirmwareForAccessory___block_invoke;
  block[3] = &unk_279DFCF98;
  v10 = accessoryCopy;
  v11 = &v12;
  block[4] = self;
  v6 = accessoryCopy;
  dispatch_sync(workQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void *__55__UARPiCloudAssetManager_downloadFirmwareForAccessory___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) handleRemoteFirmwareDownloadRequestForAccessory:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int64_t)downloadReleaseNotesForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__UARPiCloudAssetManager_downloadReleaseNotesForAccessory___block_invoke;
  block[3] = &unk_279DFCF98;
  v10 = accessoryCopy;
  v11 = &v12;
  block[4] = self;
  v6 = accessoryCopy;
  dispatch_sync(workQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void *__59__UARPiCloudAssetManager_downloadReleaseNotesForAccessory___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) handleReleaseNotesDownloadRequestForAccessory:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int64_t)getSupportedAccessories:(id)accessories batchRequest:(BOOL)request inContainer:(id)container
{
  accessoriesCopy = accessories;
  containerCopy = container;
  workQueue = self->_workQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__UARPiCloudAssetManager_getSupportedAccessories_batchRequest_inContainer___block_invoke;
  v14[3] = &unk_279DFCFC0;
  v14[4] = self;
  v15 = accessoriesCopy;
  requestCopy = request;
  v16 = containerCopy;
  v11 = containerCopy;
  v12 = accessoriesCopy;
  dispatch_sync(workQueue, v14);

  return 0;
}

- (int64_t)handleRemoteQueryRequestForAccessories:(id)accessories inContainer:(id)container
{
  v55 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  containerCopy = container;
  array = [MEMORY[0x277CBEB18] array];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = containerCopy;
    *&buf[12] = 2112;
    *&buf[14] = accessoriesCopy;
    _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEFAULT, "Performing Remote Check on iCloud ContainerID:%@ for accessories: %@", buf, 0x16u);
  }

  v10 = [[UARPiCloudManager alloc] initWithDelegate:self containerID:containerCopy];
  cloudManager = self->_cloudManager;
  self->_cloudManager = v10;

  if (self->_cloudManager)
  {
    if (!self->_accessories)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      accessories = self->_accessories;
      self->_accessories = v12;
    }

    v40 = containerCopy;
    v14 = self->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_accessories;
      *buf = 136315394;
      *&buf[4] = "[UARPiCloudAssetManager handleRemoteQueryRequestForAccessories:inContainer:]";
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_2701F5000, v14, OS_LOG_TYPE_DEFAULT, "%s: Current _accessories %@", buf, 0x16u);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v41 = accessoriesCopy;
    obj = accessoriesCopy;
    v45 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v45)
    {
      v43 = *v48;
      v44 = array;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v48 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v47 + 1) + 8 * i);
          accessoryID = [v17 accessoryID];
          firmwareVersion = [accessoryID firmwareVersion];

          accessoryID2 = [v17 accessoryID];
          stagedFirmwareVersion = [accessoryID2 stagedFirmwareVersion];

          assetID = [v17 assetID];
          if ([assetID type] == 15)
          {

LABEL_16:
            if (stagedFirmwareVersion && ([stagedFirmwareVersion isEqualToString:firmwareVersion] & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_22;
          }

          assetID2 = [v17 assetID];
          type = [assetID2 type];

          if (type == 16)
          {
            goto LABEL_16;
          }

          *buf = 0;
          *&buf[8] = 0;
          v25 = MEMORY[0x277D02628];
          accessoryID3 = [v17 accessoryID];
          firmwareVersion2 = [accessoryID3 firmwareVersion];
          [v25 versionFromString:firmwareVersion2 version:buf];

          if (stagedFirmwareVersion)
          {
            v46[0] = 0;
            v46[1] = 0;
            [MEMORY[0x277D02628] versionFromString:stagedFirmwareVersion version:v46];
            if (uarpVersionCompare(buf, v46) == 1)
            {
LABEL_21:
              v28 = stagedFirmwareVersion;

              firmwareVersion = v28;
            }
          }

LABEL_22:
          v29 = [UARPiCloudAccessory alloc];
          accessoryID4 = [v17 accessoryID];
          productGroup = [accessoryID4 productGroup];
          accessoryID5 = [v17 accessoryID];
          productNumber = [accessoryID5 productNumber];
          v34 = [(UARPiCloudAccessory *)v29 initWithProductGroup:productGroup productNumber:productNumber firmwareVersion:firmwareVersion];

          assetID3 = [v17 assetID];
          -[UARPiCloudAccessory setSignatureValidationNeeded:](v34, "setSignatureValidationNeeded:", [assetID3 signatureValidationNeeded]);

          array = v44;
          [v44 addObject:v34];
          [(NSMutableDictionary *)self->_accessories setObject:v17 forKey:v34];
          v36 = self->_log;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = self->_accessories;
            *buf = 136315650;
            *&buf[4] = "[UARPiCloudAssetManager handleRemoteQueryRequestForAccessories:inContainer:]";
            *&buf[12] = 2112;
            *&buf[14] = v17;
            v52 = 2112;
            v53 = v37;
            _os_log_impl(&dword_2701F5000, v36, OS_LOG_TYPE_DEFAULT, "%s: Added internalAccessory %@ to _accessories %@", buf, 0x20u);
          }
        }

        v45 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
      }

      while (v45);
    }

    [self->_cloudManager performRemoteFetchForAccessories:array];
    v38 = 0;
    containerCopy = v40;
    accessoriesCopy = v41;
  }

  else
  {
    v38 = 2;
  }

  return v38;
}

- (int64_t)getAttestationCertificates:(id)certificates inContainer:(id)container
{
  certificatesCopy = certificates;
  containerCopy = container;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__UARPiCloudAssetManager_getAttestationCertificates_inContainer___block_invoke;
  block[3] = &unk_279DFCFE8;
  block[4] = self;
  v13 = certificatesCopy;
  v14 = containerCopy;
  v9 = containerCopy;
  v10 = certificatesCopy;
  dispatch_sync(workQueue, block);

  return 0;
}

- (void)remoteFetchCompletion:(id)completion error:(id)error
{
  completionCopy = completion;
  errorCopy = error;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__UARPiCloudAssetManager_remoteFetchCompletion_error___block_invoke;
  block[3] = &unk_279DFCFE8;
  block[4] = self;
  v12 = completionCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = completionCopy;
  dispatch_async(workQueue, block);
}

void __60__UARPiCloudAssetManager_handleRemoteFetchCompletion_error___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_2701F5000, v2, OS_LOG_TYPE_DEFAULT, "Updated internalAccessory.assetID state, notifying client for accessory %@", &v7, 0xCu);
  }

  v4 = *(*(a1 + 32) + 16);
  v5 = [*(a1 + 40) accessoryID];
  v6 = [*(a1 + 40) assetID];
  [v4 assetAvailabilityUpdateForAccessory:v5 assetID:v6 downstreamAppleModelNumber:0];
}

void __60__UARPiCloudAssetManager_handleRemoteFetchCompletion_error___block_invoke_311(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_2701F5000, v2, OS_LOG_TYPE_DEFAULT, "Updated internalAccessory.assetID state, notifying client for accessory %@", &v7, 0xCu);
  }

  v4 = *(*(a1 + 32) + 16);
  v5 = [*(a1 + 40) accessoryID];
  v6 = [*(a1 + 40) assetID];
  [v4 assetAvailabilityUpdateForAccessory:v5 assetID:v6 downstreamAppleModelNumber:0];
}

void __60__UARPiCloudAssetManager_handleRemoteFetchCompletion_error___block_invoke_312(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_2701F5000, v2, OS_LOG_TYPE_DEFAULT, "Updated internalAccessory.assetID state, notifying client for accessory %@", &v7, 0xCu);
  }

  v4 = *(*(a1 + 32) + 16);
  v5 = [*(a1 + 40) accessoryID];
  v6 = [*(a1 + 40) assetID];
  [v4 assetAvailabilityUpdateForAccessory:v5 assetID:v6 downstreamAppleModelNumber:0];
}

- (BOOL)moveFileAtURL:(id)l toTempURL:(id)rL
{
  v23 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v8 = 0;
  if ([rLCopy checkResourceIsReachableAndReturnError:0])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v16 = 0;
    [defaultManager removeItemAtURL:rLCopy error:&v16];
    v8 = v16;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = v8;
  v11 = [defaultManager2 moveItemAtURL:lCopy toURL:rLCopy error:&v15];
  v12 = v15;

  if ((v11 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v18 = lCopy;
      v19 = 2112;
      v20 = rLCopy;
      v21 = 2112;
      v22 = v12;
      _os_log_error_impl(&dword_2701F5000, log, OS_LOG_TYPE_ERROR, "Failed to moved file from %@ to temporary location %@ for validation: %@", buf, 0x20u);
    }
  }

  return v11;
}

- (int64_t)handleRemoteFirmwareDownloadRequestForAccessory:(id)accessory
{
  v24 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    assetID = [accessoryCopy assetID];
    remoteURL = [assetID remoteURL];
    accessoryID = [accessoryCopy accessoryID];
    *buf = 138412546;
    v21 = remoteURL;
    v22 = 2112;
    v23 = accessoryID;
    _os_log_impl(&dword_2701F5000, v6, OS_LOG_TYPE_INFO, "Downloading asset from remote url %@ for accessory %@", buf, 0x16u);
  }

  assetID2 = [accessoryCopy assetID];
  remoteURL2 = [assetID2 remoteURL];

  mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__UARPiCloudAssetManager_handleRemoteFirmwareDownloadRequestForAccessory___block_invoke;
  v17[3] = &unk_279DFD038;
  v17[4] = self;
  v18 = accessoryCopy;
  v19 = remoteURL2;
  v13 = remoteURL2;
  v14 = accessoryCopy;
  v15 = [mEMORY[0x277CCAD30] downloadTaskWithURL:v13 completionHandler:v17];

  [v15 resume];
  return 0;
}

void __74__UARPiCloudAssetManager_handleRemoteFirmwareDownloadRequestForAccessory___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 1);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v11)
  {
    v12 = a1[5];
    v13 = v10;
    v14 = [v12 assetID];
    v15 = [v14 remoteURL];
    v16 = [a1[5] accessoryID];
    *buf = 138413314;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    v41 = 2112;
    v42 = v15;
    v43 = 2112;
    v44 = v16;
    v45 = 2112;
    v46 = v7;
    _os_log_impl(&dword_2701F5000, v13, OS_LOG_TYPE_INFO, "Download result: %@ error:%@ from remote url %@ for accessory %@ %@", buf, 0x34u);
  }

  if (!v7 || v9)
  {
    [a1[4] setFirmwareDownloadFailureStatusForAccessory:a1[5]];
    v27 = [a1[4] delegateQueue];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __74__UARPiCloudAssetManager_handleRemoteFirmwareDownloadRequestForAccessory___block_invoke_314;
    v35[3] = &unk_279DFD010;
    v28 = a1[5];
    v35[4] = a1[4];
    v36 = v28;
    dispatch_async(v27, v35);
  }

  else
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = InternalStorageDirectoryPath(v11);
    v19 = [a1[6] lastPathComponent];
    v20 = [v17 stringWithFormat:@"%@/%@.%@", v18, v19, @"urlasset"];

    v21 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:objc_msgSend(v20 isDirectory:"UTF8String") relativeToURL:{0, 0}];
    v22 = [a1[4] moveFileAtURL:v7 toTempURL:v21];
    v23 = a1[4];
    if (v22)
    {
      v24 = v23[5];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__UARPiCloudAssetManager_handleRemoteFirmwareDownloadRequestForAccessory___block_invoke_3;
      block[3] = &unk_279DFCFE8;
      block[4] = v23;
      v25 = &v31;
      v31 = v21;
      v32 = a1[5];
      dispatch_sync(v24, block);
      v26 = v32;
    }

    else
    {
      [v23 setFirmwareDownloadFailureStatusForAccessory:a1[5]];
      v26 = [a1[4] delegateQueue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __74__UARPiCloudAssetManager_handleRemoteFirmwareDownloadRequestForAccessory___block_invoke_2;
      v33[3] = &unk_279DFD010;
      v29 = a1[5];
      v33[4] = a1[4];
      v25 = &v34;
      v34 = v29;
      dispatch_async(v26, v33);
    }
  }
}

void __74__UARPiCloudAssetManager_handleRemoteFirmwareDownloadRequestForAccessory___block_invoke_314(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v4 = [*(a1 + 40) accessoryID];
  v3 = [*(a1 + 40) assetID];
  [v2 assetAvailabilityUpdateForAccessory:v4 assetID:v3 downstreamAppleModelNumber:0];
}

void __74__UARPiCloudAssetManager_handleRemoteFirmwareDownloadRequestForAccessory___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v4 = [*(a1 + 40) accessoryID];
  v3 = [*(a1 + 40) assetID];
  [v2 assetAvailabilityUpdateForAccessory:v4 assetID:v3 downstreamAppleModelNumber:0];
}

- (BOOL)isFirmwareHash:(id)hash equalToHash:(id)toHash
{
  result = 0;
  if (hash)
  {
    if (toHash)
    {
      return [toHash caseInsensitiveCompare:?] == 0;
    }
  }

  return result;
}

- (void)handleFirmwareDownloadResponseFromLocation:(id)location forAccessory:(id)accessory
{
  v50 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  accessoryCopy = accessory;
  assetID = [accessoryCopy assetID];
  signatureValidationNeeded = [assetID signatureValidationNeeded];

  if (signatureValidationNeeded)
  {
    record = [accessoryCopy record];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      record2 = [accessoryCopy record];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        record3 = [accessoryCopy record];
        hashAlgorithmType = [record3 hashAlgorithmType];
        unsignedLongValue = [hashAlgorithmType unsignedLongValue];
      }

      else
      {
        unsignedLongValue = 1;
      }

      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v21 = log;
        record4 = [accessoryCopy record];
        *buf = 136315650;
        v45 = "[UARPiCloudAssetManager handleFirmwareDownloadResponseFromLocation:forAccessory:]";
        v46 = 2112;
        v47 = accessoryCopy;
        v48 = 2112;
        v49 = record4;
        _os_log_impl(&dword_2701F5000, v21, OS_LOG_TYPE_DEFAULT, "%s: UARPAccessoryInternal %@, record %@", buf, 0x20u);
      }

      v23 = [(UARPiCloudAssetManager *)self _getCoreCryptoDigestAlgorithmFromCHIPFirmwareAlgorithm:unsignedLongValue];
      record5 = [accessoryCopy record];
      firmwareBinaryHash = [record5 firmwareBinaryHash];

      v43 = 0;
      v26 = generateHashForDataAtLocation(locationCopy, v23, &v43);
      v27 = v43;
      v28 = self->_log;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v45 = v26;
        v46 = 2114;
        v47 = firmwareBinaryHash;
        v48 = 2114;
        v49 = v27;
        _os_log_impl(&dword_2701F5000, v28, OS_LOG_TYPE_DEFAULT, "calculatedHash: %{public}@, expectedHash:%{public}@, error:%{public}@", buf, 0x20u);
      }

      assetID2 = [accessoryCopy assetID];
      [assetID2 setFirmwareHash:v26];

      if (-[UARPiCloudAssetManager isFirmwareHash:equalToHash:](self, "isFirmwareHash:equalToHash:", firmwareBinaryHash, v26) || ([accessoryCopy record], v31 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v32 = objc_opt_isKindOfClass(), v31, (v32 & 1) != 0) && (v42 = v27, generateBase64HashForDataAtLocation(locationCopy, v23, &v42), v33 = objc_claimAutoreleasedReturnValue(), v34 = v42, v27, v26, objc_msgSend(accessoryCopy, "assetID"), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "setFirmwareHash:", v33), v35, v26 = v33, v27 = v34, -[UARPiCloudAssetManager isFirmwareHash:equalToHash:](self, "isFirmwareHash:equalToHash:", firmwareBinaryHash, v33)))
      {
        assetID3 = [accessoryCopy assetID];
        [assetID3 setValidationStatus:1];

        v18 = [(UARPiCloudAssetManager *)self moveToUARPCacheFromRemoteURL:locationCopy assetType:0 forAcessory:accessoryCopy];
      }

      else
      {
        assetID4 = [accessoryCopy assetID];
        [assetID4 setValidationStatus:2];

        v18 = 0;
      }

      if (v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v19 = self->_log;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [UARPiCloudAssetManager handleFirmwareDownloadResponseFromLocation:v19 forAccessory:accessoryCopy];
      }
    }

LABEL_21:
    [(UARPiCloudAssetManager *)self setFirmwareDownloadFailureStatusForAccessory:accessoryCopy];
    goto LABEL_22;
  }

  assetID5 = [accessoryCopy assetID];
  [assetID5 setValidationStatus:0];

  v18 = [(UARPiCloudAssetManager *)self moveToUARPCacheFromRemoteURL:locationCopy assetType:0 forAcessory:accessoryCopy];
  if (!v18)
  {
    goto LABEL_21;
  }

LABEL_20:
  assetID6 = [accessoryCopy assetID];
  [assetID6 setLocalURL:v18];

  [(UARPiCloudAssetManager *)self setFirmwareDownloadSuccessStatusForAccessory:accessoryCopy];
LABEL_22:
  delegateQueue = [(UARPiCloudAssetManager *)self delegateQueue];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __82__UARPiCloudAssetManager_handleFirmwareDownloadResponseFromLocation_forAccessory___block_invoke;
  v40[3] = &unk_279DFD010;
  v40[4] = self;
  v41 = accessoryCopy;
  v39 = accessoryCopy;
  dispatch_async(delegateQueue, v40);
}

void __82__UARPiCloudAssetManager_handleFirmwareDownloadResponseFromLocation_forAccessory___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v7 = 136315394;
    v8 = "[UARPiCloudAssetManager handleFirmwareDownloadResponseFromLocation:forAccessory:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_2701F5000, v2, OS_LOG_TYPE_DEFAULT, "%s: Updated assetID state %@, notifying client", &v7, 0x16u);
  }

  v4 = *(*(a1 + 32) + 16);
  v5 = [*(a1 + 40) accessoryID];
  v6 = [*(a1 + 40) assetID];
  [v4 assetAvailabilityUpdateForAccessory:v5 assetID:v6 downstreamAppleModelNumber:0];
}

- (void)setFirmwareDownloadFailureStatusForAccessory:(id)accessory
{
  v14 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  assetID = [accessoryCopy assetID];
  [assetID setLocalURL:0];

  assetID2 = [accessoryCopy assetID];
  [assetID2 setDownloadStatus:2];

  assetID3 = [accessoryCopy assetID];
  [assetID3 setUpdateAvailabilityStatus:0];

  assetID4 = [accessoryCopy assetID];
  [accessoryCopy analyticsSetDownloadCompleteForAssetID:assetID4 status:3];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[UARPiCloudAssetManager setFirmwareDownloadFailureStatusForAccessory:]";
    v12 = 2112;
    v13 = accessoryCopy;
    _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEFAULT, "%s: Set Download Failure Status for accessory %@", &v10, 0x16u);
  }
}

- (void)setFirmwareDownloadSuccessStatusForAccessory:(id)accessory
{
  v13 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  assetID = [accessoryCopy assetID];
  [assetID setDownloadStatus:1];

  assetID2 = [accessoryCopy assetID];
  [assetID2 setUpdateAvailabilityStatus:3];

  assetID3 = [accessoryCopy assetID];
  [accessoryCopy analyticsSetDownloadCompleteForAssetID:assetID3 status:1];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[UARPiCloudAssetManager setFirmwareDownloadSuccessStatusForAccessory:]";
    v11 = 2112;
    v12 = accessoryCopy;
    _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEFAULT, "%s: Set Download Success Status for accessory %@", &v9, 0x16u);
  }
}

- (int64_t)handleReleaseNotesDownloadRequestForAccessory:(id)accessory
{
  v24 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    assetID = [accessoryCopy assetID];
    releaseNotesRemoteURL = [assetID releaseNotesRemoteURL];
    accessoryID = [accessoryCopy accessoryID];
    *buf = 138412546;
    v21 = releaseNotesRemoteURL;
    v22 = 2112;
    v23 = accessoryID;
    _os_log_impl(&dword_2701F5000, v6, OS_LOG_TYPE_INFO, "Downloading Release Notes from remote url %@ for accessory %@", buf, 0x16u);
  }

  assetID2 = [accessoryCopy assetID];
  releaseNotesRemoteURL2 = [assetID2 releaseNotesRemoteURL];

  mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__UARPiCloudAssetManager_handleReleaseNotesDownloadRequestForAccessory___block_invoke;
  v17[3] = &unk_279DFD038;
  v17[4] = self;
  v18 = accessoryCopy;
  v19 = releaseNotesRemoteURL2;
  v13 = releaseNotesRemoteURL2;
  v14 = accessoryCopy;
  v15 = [mEMORY[0x277CCAD30] downloadTaskWithURL:v13 completionHandler:v17];

  [v15 resume];
  return 0;
}

void __72__UARPiCloudAssetManager_handleReleaseNotesDownloadRequestForAccessory___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 1);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v11)
  {
    v12 = a1[5];
    v13 = v10;
    v14 = [v12 assetID];
    v15 = [v14 remoteURL];
    v16 = [a1[5] accessoryID];
    *buf = 138413058;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    v41 = 2112;
    v42 = v15;
    v43 = 2112;
    v44 = v16;
    _os_log_impl(&dword_2701F5000, v13, OS_LOG_TYPE_INFO, "Download result: %@ error:%@ from remote url %@ for accessory %@", buf, 0x2Au);
  }

  if (!v7 || v9)
  {
    [a1[4] setReleaseNotesDownloadFailureStatusForAccessory:a1[5]];
    v27 = [a1[4] delegateQueue];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __72__UARPiCloudAssetManager_handleReleaseNotesDownloadRequestForAccessory___block_invoke_322;
    v35[3] = &unk_279DFD010;
    v28 = a1[5];
    v35[4] = a1[4];
    v36 = v28;
    dispatch_async(v27, v35);
  }

  else
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = InternalStorageDirectoryPath(v11);
    v19 = [a1[6] lastPathComponent];
    v20 = [v17 stringWithFormat:@"%@/%@.%@", v18, v19, @"urlasset"];

    v21 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:objc_msgSend(v20 isDirectory:"UTF8String") relativeToURL:{0, 0}];
    v22 = [a1[4] moveFileAtURL:v7 toTempURL:v21];
    v23 = a1[4];
    if (v22)
    {
      v24 = v23[5];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__UARPiCloudAssetManager_handleReleaseNotesDownloadRequestForAccessory___block_invoke_3;
      block[3] = &unk_279DFCFE8;
      block[4] = v23;
      v25 = &v31;
      v31 = v21;
      v32 = a1[5];
      dispatch_sync(v24, block);
      v26 = v32;
    }

    else
    {
      [v23 setReleaseNotesDownloadFailureStatusForAccessory:a1[5]];
      v26 = [a1[4] delegateQueue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __72__UARPiCloudAssetManager_handleReleaseNotesDownloadRequestForAccessory___block_invoke_2;
      v33[3] = &unk_279DFD010;
      v29 = a1[5];
      v33[4] = a1[4];
      v25 = &v34;
      v34 = v29;
      dispatch_async(v26, v33);
    }
  }
}

void __72__UARPiCloudAssetManager_handleReleaseNotesDownloadRequestForAccessory___block_invoke_322(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v4 = [*(a1 + 40) accessoryID];
  v3 = [*(a1 + 40) assetID];
  [v2 assetAvailabilityUpdateForAccessory:v4 assetID:v3 downstreamAppleModelNumber:0];
}

void __72__UARPiCloudAssetManager_handleReleaseNotesDownloadRequestForAccessory___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v4 = [*(a1 + 40) accessoryID];
  v3 = [*(a1 + 40) assetID];
  [v2 assetAvailabilityUpdateForAccessory:v4 assetID:v3 downstreamAppleModelNumber:0];
}

- (void)setReleaseNotesDownloadFailureStatusForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  assetID = [accessoryCopy assetID];
  [assetID setReleaseNotesLocalURL:0];

  assetID2 = [accessoryCopy assetID];
  [assetID2 setReleaseNotesDownloadStatus:2];

  assetID3 = [accessoryCopy assetID];
  [assetID3 setReleaseNotesAvailabilityStatus:0];

  assetID4 = [accessoryCopy assetID];
  [accessoryCopy analyticsSetDownloadCompleteForAssetID:assetID4 status:3];
}

- (void)setReleaseNotesDownloadSuccessStatusForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  assetID = [accessoryCopy assetID];
  [assetID setReleaseNotesDownloadStatus:1];

  assetID2 = [accessoryCopy assetID];
  [assetID2 setReleaseNotesAvailabilityStatus:3];

  assetID3 = [accessoryCopy assetID];
  [accessoryCopy analyticsSetDownloadCompleteForAssetID:assetID3 status:1];
}

- (void)handleReleaseNotesDownloadResponseFromLocation:(id)location forAccessory:(id)accessory
{
  v40 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  accessoryCopy = accessory;
  assetID = [accessoryCopy assetID];
  signatureValidationNeeded = [assetID signatureValidationNeeded];

  if (signatureValidationNeeded)
  {
    record = [accessoryCopy record];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      record2 = [accessoryCopy record];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        record3 = [accessoryCopy record];
        hashAlgorithmType = [record3 hashAlgorithmType];
        unsignedLongValue = [hashAlgorithmType unsignedLongValue];
      }

      else
      {
        unsignedLongValue = 1;
      }

      v20 = [(UARPiCloudAssetManager *)self _getCoreCryptoDigestAlgorithmFromCHIPFirmwareAlgorithm:unsignedLongValue];
      record4 = [accessoryCopy record];
      releaseNotesHash = [record4 releaseNotesHash];

      v33 = 0;
      v23 = generateHashForDataAtLocation(locationCopy, v20, &v33);
      v24 = v33;
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v35 = v23;
        v36 = 2114;
        v37 = releaseNotesHash;
        v38 = 2114;
        v39 = v24;
        _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEFAULT, "calculatedHash: %{public}@, expectedHash:%{public}@, error:%{public}@", buf, 0x20u);
      }

      if (releaseNotesHash && [v23 isEqualToString:releaseNotesHash])
      {
        assetID2 = [accessoryCopy assetID];
        [assetID2 setValidationStatus:1];

        v18 = [(UARPiCloudAssetManager *)self moveToUARPCacheFromRemoteURL:locationCopy assetType:1 forAcessory:accessoryCopy];
      }

      else
      {
        assetID3 = [accessoryCopy assetID];
        [assetID3 setValidationStatus:2];

        v18 = 0;
      }

      if (v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v19 = self->_log;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [UARPiCloudAssetManager handleReleaseNotesDownloadResponseFromLocation:v19 forAccessory:accessoryCopy];
      }
    }

LABEL_18:
    [(UARPiCloudAssetManager *)self setReleaseNotesDownloadFailureStatusForAccessory:accessoryCopy];
    goto LABEL_19;
  }

  assetID4 = [accessoryCopy assetID];
  [assetID4 setValidationStatus:0];

  v18 = [(UARPiCloudAssetManager *)self moveToUARPCacheFromRemoteURL:locationCopy assetType:1 forAcessory:accessoryCopy];
  if (!v18)
  {
    goto LABEL_18;
  }

LABEL_17:
  assetID5 = [accessoryCopy assetID];
  [assetID5 setReleaseNotesLocalURL:v18];

  [(UARPiCloudAssetManager *)self setReleaseNotesDownloadSuccessStatusForAccessory:accessoryCopy];
LABEL_19:
  delegateQueue = [(UARPiCloudAssetManager *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__UARPiCloudAssetManager_handleReleaseNotesDownloadResponseFromLocation_forAccessory___block_invoke;
  block[3] = &unk_279DFD010;
  block[4] = self;
  v32 = accessoryCopy;
  v30 = accessoryCopy;
  dispatch_async(delegateQueue, block);
}

void __86__UARPiCloudAssetManager_handleReleaseNotesDownloadResponseFromLocation_forAccessory___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v4 = [*(a1 + 40) accessoryID];
  v3 = [*(a1 + 40) assetID];
  [v2 assetAvailabilityUpdateForAccessory:v4 assetID:v3 downstreamAppleModelNumber:0];
}

- (BOOL)checkLocalUARPCacheForAccessory:(id)accessory versionAvailable:(id *)available firmwarePath:(id *)path releaseNotesPath:(id *)notesPath
{
  accessoryCopy = accessory;
  assetID = [accessoryCopy assetID];
  if ([assetID type] != 15)
  {
    assetID2 = [accessoryCopy assetID];
    type = [assetID2 type];

    if (type == 16)
    {
      goto LABEL_4;
    }

    v17 = MEMORY[0x277CCAB68];
    v18 = InternalStorageDirectoryPath(v14);
    identifier = [accessoryCopy identifier];
    v20 = [v17 stringWithFormat:@"%@/%@", v18, identifier];

    v21 = [MEMORY[0x277CBEBC0] fileURLWithPath:v20];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v23 = [defaultManager contentsOfDirectoryAtURL:v21 includingPropertiesForKeys:0 options:4 error:0];
    v24 = [v23 mutableCopy];

    if ([v24 count])
    {
      if ([v24 count] == 1)
      {
        goto LABEL_11;
      }

      if ([v24 count] >= 2)
      {
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __105__UARPiCloudAssetManager_checkLocalUARPCacheForAccessory_versionAvailable_firmwarePath_releaseNotesPath___block_invoke;
        v55[3] = &unk_279DFD060;
        v55[4] = self;
        [v24 sortUsingComparator:v55];
LABEL_11:
        firstObject = [v24 firstObject];
        v26 = firstObject;
        if (firstObject)
        {
          v53 = v20;
          v27 = [firstObject URLByAppendingPathComponent:*MEMORY[0x277D02638]];
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          v54 = v27;
          v29 = [defaultManager2 contentsOfDirectoryAtURL:v27 includingPropertiesForKeys:0 options:4 error:0];

          v30 = v29;
          if ([v29 count] == 1)
          {
            v49 = v21;
            v50 = v29;
            firstObject2 = [v29 firstObject];
            path = [firstObject2 path];
            v32 = getSuperBinaryVersionForAsset(path);

            lastPathComponent = [v26 lastPathComponent];
            v52 = v32;
            v34 = [v32 isEqualToString:lastPathComponent];

            v20 = v53;
            v48 = v34;
            if (v34)
            {
              accessoryID = [accessoryCopy accessoryID];
              firmwareVersion = [accessoryID firmwareVersion];
              v46 = uarpVersionCompareStrings();

              v16 = v46 == 1;
              if (v46 == 1)
              {
                *available = [v52 copy];
                *path = [firstObject2 copy];
              }

              v37 = [v26 URLByAppendingPathComponent:*MEMORY[0x277D02640]];
              defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
              v47 = v37;
              v39 = [defaultManager3 contentsOfDirectoryAtURL:v37 includingPropertiesForKeys:0 options:4 error:0];

              if ([v39 count] == 1)
              {
                firstObject3 = [v39 firstObject];
                *notesPath = [firstObject3 copy];

                v41 = v52;
                v42 = v47;
              }

              else
              {
                v44 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
                v41 = v52;
                v42 = v47;
                if (v44)
                {
                  [UARPiCloudAssetManager checkLocalUARPCacheForAccessory:versionAvailable:firmwarePath:releaseNotesPath:];
                }
              }
            }

            else
            {
              v41 = v52;
              if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
              {
                v45 = v54;
                [UARPiCloudAssetManager checkLocalUARPCacheForAccessory:versionAvailable:firmwarePath:releaseNotesPath:];
                v16 = 0;
                goto LABEL_31;
              }

              v16 = 0;
            }

            v45 = v54;
LABEL_31:

            if (!v48)
            {
              v16 = 0;
            }

            v21 = v49;
            goto LABEL_23;
          }

          v20 = v53;
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            [UARPiCloudAssetManager checkLocalUARPCacheForAccessory:versionAvailable:firmwarePath:releaseNotesPath:];
          }
        }

LABEL_22:
        v16 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v26 = 0;
    goto LABEL_22;
  }

LABEL_4:
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [UARPiCloudAssetManager checkLocalUARPCacheForAccessory:accessoryCopy versionAvailable:? firmwarePath:? releaseNotesPath:?];
  }

  v16 = 0;
LABEL_24:

  return v16;
}

uint64_t __105__UARPiCloudAssetManager_checkLocalUARPCacheForAccessory_versionAvailable_firmwarePath_releaseNotesPath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v17 = 0;
  v6 = a3;
  v7 = [v5 pathToSuperBinaryInAccessoryVersionDirectory:a2 uarpVersion:&v17];
  v8 = v17;
  v9 = [v7 path];

  v10 = *(a1 + 32);
  v16 = 0;
  v11 = [v10 pathToSuperBinaryInAccessoryVersionDirectory:v6 uarpVersion:&v16];

  v12 = v16;
  v13 = [v11 path];

  v14 = -1;
  if (v9 && v13)
  {
    v14 = uarpVersionCompareStrings();
  }

  return v14;
}

- (id)pathToSuperBinaryInAccessoryVersionDirectory:(id)directory uarpVersion:(id *)version
{
  v24 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [directoryCopy URLByAppendingPathComponent:*MEMORY[0x277D02638]];
  v8 = [defaultManager contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:0 options:4 error:0];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        path = [v14 path];
        v16 = getSuperBinaryVersionForAsset(path);

        if (v16)
        {
          *version = [v16 copy];
          v17 = [v14 copy];

          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (id)moveToUARPCacheFromRemoteURL:(id)l assetType:(int64_t)type forAcessory:(id)acessory
{
  v53 = *MEMORY[0x277D85DE8];
  lCopy = l;
  acessoryCopy = acessory;
  v10 = acessoryCopy;
  if (type)
  {
    if (type != 1)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPiCloudAssetManager moveToUARPCacheFromRemoteURL:assetType:forAcessory:];
      }

      goto LABEL_32;
    }

    v11 = MEMORY[0x277D02640];
  }

  else
  {
    v11 = MEMORY[0x277D02638];
  }

  v12 = MEMORY[0x277CCAB68];
  v13 = InternalStorageDirectoryPath(acessoryCopy);
  identifier = [v10 identifier];
  assetID = [v10 assetID];
  assetVersion = [assetID assetVersion];
  v17 = [v12 stringWithFormat:@"%@/%@/%@/%@", v13, identifier, assetVersion, *v11];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(identifier) = [defaultManager fileExistsAtPath:v17];

  if (identifier)
  {
    v19 = 0;
  }

  else
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v46 = 0;
    v21 = [defaultManager2 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:&v46];
    v22 = v46;

    log = self->_log;
    v24 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
    if ((v21 & 1) == 0)
    {
      if (v24)
      {
        *buf = 138412290;
        v52 = v22;
        _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_INFO, "Failed to create UARP Firmware directory error: %@", buf, 0xCu);
      }

LABEL_31:

LABEL_32:
      v39 = 0;
      goto LABEL_33;
    }

    if (v24)
    {
      *buf = 138412290;
      v52 = v17;
      _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_INFO, "UARP Firmware directory created %@", buf, 0xCu);
    }

    v49 = *MEMORY[0x277CCA180];
    v50 = &unk_288030CB8;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    v45 = v22;
    v27 = [defaultManager3 setAttributes:v25 ofItemAtPath:v17 error:&v45];
    v19 = v45;

    if ((v27 & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPiCloudAssetManager moveToUARPCacheFromRemoteURL:assetType:forAcessory:];
    }
  }

  uRLByDeletingPathExtension = [lCopy URLByDeletingPathExtension];
  lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];
  [v17 appendFormat:@"/%@", lastPathComponent];

  v22 = [MEMORY[0x277CBEBC0] fileURLWithPath:v17];
  if (([v22 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
    v44 = v19;
    v32 = [defaultManager4 copyItemAtURL:lCopy toURL:v22 error:&v44];
    v33 = v44;

    if (v32)
    {
      v42 = v10;
      v30 = lCopy;
      v19 = v33;
      goto LABEL_20;
    }

    v40 = self->_log;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v52 = v22;
      _os_log_impl(&dword_2701F5000, v40, OS_LOG_TYPE_INFO, "Failed to write to path %@", buf, 0xCu);
    }

    goto LABEL_31;
  }

  v42 = v10;
  v30 = lCopy;
LABEL_20:
  v47 = *MEMORY[0x277CCA180];
  v48 = &unk_288030CD0;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
  path = [v22 path];
  v43 = v19;
  v37 = [defaultManager5 setAttributes:v34 ofItemAtPath:path error:&v43];
  v38 = v43;

  if (v37)
  {
    v39 = v22;
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPiCloudAssetManager moveToUARPCacheFromRemoteURL:assetType:forAcessory:];
    }

    v39 = 0;
  }

  lCopy = v30;

  v10 = v42;
LABEL_33:

  return v39;
}

- (void)handleRemoteDownloadRequestForSupportedAccessoriesForProductGroup:(id)group batchRequest:(BOOL)request inContainer:(id)container
{
  groupCopy = group;
  containerCopy = container;
  v10 = [[UARPiCloudManager alloc] initWithDelegate:self containerID:containerCopy];

  batchedProcessingQueue = self->_batchedProcessingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__UARPiCloudAssetManager_handleRemoteDownloadRequestForSupportedAccessoriesForProductGroup_batchRequest_inContainer___block_invoke;
  block[3] = &unk_279DFD088;
  v15 = v10;
  v16 = groupCopy;
  requestCopy = request;
  v12 = groupCopy;
  v13 = v10;
  dispatch_async(batchedProcessingQueue, block);
}

- (void)handleRemoteDownloadResponseForSupportedAccessories:(id)accessories forProductGroup:(id)group isComplete:(BOOL)complete
{
  accessoriesCopy = accessories;
  groupCopy = group;
  delegateQueue = [(UARPiCloudAssetManager *)self delegateQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __105__UARPiCloudAssetManager_handleRemoteDownloadResponseForSupportedAccessories_forProductGroup_isComplete___block_invoke;
  v13[3] = &unk_279DFCFC0;
  v13[4] = self;
  v14 = accessoriesCopy;
  v15 = groupCopy;
  completeCopy = complete;
  v11 = groupCopy;
  v12 = accessoriesCopy;
  dispatch_async(delegateQueue, v13);
}

- (void)handleRemoteDownloadRequestForAttestationCertificatesForSubjectKeyIdentifier:(id)identifier inContainer:(id)container
{
  containerCopy = container;
  identifierCopy = identifier;
  v8 = [[UARPiCloudManager alloc] initWithDelegate:self containerID:containerCopy];

  [(UARPiCloudManager *)v8 performRemoteFetchForAttestationCertificates:identifierCopy];
}

- (void)remoteFetchCompletionForAttestationCertificates:(id)certificates subjectKeyIdentifier:(id)identifier error:(id)error
{
  certificatesCopy = certificates;
  identifierCopy = identifier;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__UARPiCloudAssetManager_remoteFetchCompletionForAttestationCertificates_subjectKeyIdentifier_error___block_invoke;
  block[3] = &unk_279DFCFE8;
  block[4] = self;
  v13 = certificatesCopy;
  v14 = identifierCopy;
  v10 = identifierCopy;
  v11 = certificatesCopy;
  dispatch_sync(workQueue, block);
}

- (void)handleRemoteDownloadResponseForAttestationCertificates:(id)certificates forSubKeyIdentifier:(id)identifier
{
  certificatesCopy = certificates;
  identifierCopy = identifier;
  delegateQueue = [(UARPiCloudAssetManager *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__UARPiCloudAssetManager_handleRemoteDownloadResponseForAttestationCertificates_forSubKeyIdentifier___block_invoke;
  block[3] = &unk_279DFCFE8;
  block[4] = self;
  v12 = certificatesCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = certificatesCopy;
  dispatch_async(delegateQueue, block);
}

- (unsigned)_getCoreCryptoDigestAlgorithmFromCHIPFirmwareAlgorithm:(unint64_t)algorithm
{
  if (algorithm - 1 > 0xB)
  {
    return 0;
  }

  else
  {
    return dword_270213280[algorithm - 1];
  }
}

- (void)handleRemoteFetchCompletion:(id)completion error:(id)error
{
  v132 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v9 setNumberStyle:1];
  v10 = [(NSMutableDictionary *)self->_accessories objectForKeyedSubscript:completionCopy];
  if (OUTLINED_FUNCTION_12())
  {
    accessories = self->_accessories;
    v126 = 136315650;
    v127 = "[UARPiCloudAssetManager handleRemoteFetchCompletion:error:]";
    v128 = 2112;
    v129 = v10;
    v130 = 2112;
    v131 = accessories;
    OUTLINED_FUNCTION_5();
    _os_log_impl(v12, v13, v14, v15, v16, 0x20u);
  }

  if (v10)
  {
    [(NSMutableDictionary *)self->_accessories removeObjectForKey:completionCopy];
    chipFirmwareRecord = [completionCopy chipFirmwareRecord];

    if (chipFirmwareRecord)
    {
      if (OUTLINED_FUNCTION_12())
      {
        chipFirmwareRecord = chipFirmwareRecord;
        chipFirmwareRecord2 = [completionCopy chipFirmwareRecord];
        firmwareURL = [chipFirmwareRecord2 firmwareURL];
        OUTLINED_FUNCTION_11(firmwareURL, 5.778e-34);
        OUTLINED_FUNCTION_5();
        _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
      }

      [completionCopy chipFirmwareRecord];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_2_1() setRecord:?];

      chipFirmwareRecord3 = [completionCopy chipFirmwareRecord];
      [chipFirmwareRecord3 firmwareVersion];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_14() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_13();
      [v24 setAssetVersion:?];

      chipFirmwareRecord4 = [completionCopy chipFirmwareRecord];
      [chipFirmwareRecord4 firmwareVersionNumber];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_14() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_13();
      [v26 setAssetVersionNumber:?];

      chipFirmwareRecord5 = [OUTLINED_FUNCTION_18() chipFirmwareRecord];
      [chipFirmwareRecord5 firmwareURL];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_1() URLWithString:?];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_4() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_10();
      [v28 setRemoteURL:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_15();
      [v29 setDownloadStatus:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_16();
      [v30 setUpdateAvailabilityStatus:?];

      chipFirmwareRecord6 = [OUTLINED_FUNCTION_18() chipFirmwareRecord];
      [chipFirmwareRecord6 releaseNotesURL];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_1() URLWithString:?];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_4() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_10();
      [v32 setReleaseNotesRemoteURL:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_15();
      [v33 setReleaseNotesDownloadStatus:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_16();
      [v34 setReleaseNotesAvailabilityStatus:?];

      chipFirmwareRecord7 = [completionCopy chipFirmwareRecord];
      [chipFirmwareRecord7 firmwareFileSize];
      objc_claimAutoreleasedReturnValue();
      v36 = [OUTLINED_FUNCTION_8() numberFromString:?];
      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_17();
      [v37 setFirmwareFileSize:?];

      chipFirmwareRecord8 = [completionCopy chipFirmwareRecord];
      [chipFirmwareRecord8 releaseDate];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_14() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_13();
      [v39 setAssetReleaseDate:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_2_1() analyticsSetDownloadAvailableForAssetID:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_2_1() analyticsSetDownloadConsentRequestedForAssetID:?];

      delegateQueue = [(UARPiCloudAssetManager *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__UARPiCloudAssetManager_handleRemoteFetchCompletion_error___block_invoke;
      block[3] = &unk_279DFD010;
      block[4] = self;
      v125 = v10;
      dispatch_async(delegateQueue, block);

      v41 = v125;
LABEL_16:

      goto LABEL_17;
    }

    record = [completionCopy record];

    v43 = OUTLINED_FUNCTION_12();
    if (record)
    {
      if (v43)
      {
        v44 = 0;
        record2 = [completionCopy record];
        firmwareURL = [record2 firmwareURL];
        OUTLINED_FUNCTION_11(firmwareURL, 5.778e-34);
        OUTLINED_FUNCTION_5();
        _os_log_impl(v46, v47, v48, v49, v50, 0x16u);
      }

      record3 = [completionCopy record];
      deploymentList = [record3 deploymentList];

      if (deploymentList)
      {
        assetID = [(NSMutableDictionary *)v10 assetID];
        record4 = [completionCopy record];
        [record4 deploymentList];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_1_1() processUARPDeploymentRules:?];
      }

      record5 = [completionCopy record];
      releaseDate = [record5 releaseDate];

      if (releaseDate)
      {
        v57 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v57 setDateFormat:@"MM/dd/yyyy"];
        record6 = [completionCopy record];
        [record6 releaseDate];
        objc_claimAutoreleasedReturnValue();
        v6 = [OUTLINED_FUNCTION_1_1() dateFromString:?];
        assetID2 = [(NSMutableDictionary *)v10 assetID];
        [assetID2 setAssetReleaseDate:v6];
      }

      assetID3 = [(NSMutableDictionary *)v10 assetID];
      signatureValidationNeeded = [assetID3 signatureValidationNeeded];

      assetID4 = [(NSMutableDictionary *)v10 assetID];
      [assetID4 setValidationStatus:signatureValidationNeeded];

      [completionCopy record];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_2_1() setRecord:?];

      record7 = [completionCopy record];
      [record7 firmwareVersion];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_14() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_13();
      [v64 setAssetVersion:?];

      record8 = [OUTLINED_FUNCTION_18() record];
      [record8 firmwareURL];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_1() URLWithString:?];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_4() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_10();
      [v66 setRemoteURL:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_15();
      [v67 setDownloadStatus:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_16();
      [v68 setUpdateAvailabilityStatus:?];

      record9 = [OUTLINED_FUNCTION_18() record];
      [record9 releaseNotesURL];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_1() URLWithString:?];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_4() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_10();
      [v70 setReleaseNotesRemoteURL:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_15();
      [v71 setReleaseNotesDownloadStatus:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_16();
      [v72 setReleaseNotesAvailabilityStatus:?];

      record10 = [completionCopy record];
      [record10 releaseNotesFileSize];
      objc_claimAutoreleasedReturnValue();
      v74 = [OUTLINED_FUNCTION_8() numberFromString:?];
      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_17();
      [v75 setReleaseNotesFileSize:?];

      record11 = [completionCopy record];
      [record11 firmwareFileSize];
      objc_claimAutoreleasedReturnValue();
      v77 = [OUTLINED_FUNCTION_8() numberFromString:?];
      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_17();
      [v78 setFirmwareFileSize:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_2_1() analyticsSetDownloadAvailableForAssetID:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_2_1() analyticsSetDownloadConsentRequestedForAssetID:?];

      delegateQueue2 = [(UARPiCloudAssetManager *)self delegateQueue];
      v122[0] = MEMORY[0x277D85DD0];
      v122[1] = 3221225472;
      v122[2] = __60__UARPiCloudAssetManager_handleRemoteFetchCompletion_error___block_invoke_311;
      v122[3] = &unk_279DFD010;
      v122[4] = self;
      v123 = v10;
      dispatch_async(delegateQueue2, v122);

      v41 = v123;
      goto LABEL_16;
    }

    if (v43)
    {
      v126 = 138412290;
      v127 = v10;
      OUTLINED_FUNCTION_5();
      _os_log_impl(v80, v81, v82, v83, v84, 0xCu);
    }

    v120 = 0;
    v121 = 0;
    v119 = 0;
    v85 = [(UARPiCloudAssetManager *)self checkLocalUARPCacheForAccessory:v10 versionAvailable:&v121 firmwarePath:&v120 releaseNotesPath:&v119];
    v86 = v121;
    v87 = v120;
    v88 = v119;
    v89 = os_log_type_enabled(self->_log, OS_LOG_TYPE_DEFAULT);
    if (v85 && v86 && v87)
    {
      if (v89)
      {
        v126 = 138412802;
        v127 = v86;
        v128 = 2112;
        v129 = v87;
        v130 = 2112;
        v131 = v10;
        OUTLINED_FUNCTION_9();
        _os_log_impl(v90, v91, v92, v93, v94, 0x20u);
      }

      assetID5 = [(NSMutableDictionary *)v10 assetID];
      [(NSMutableDictionary *)v10 analyticsSetDownloadCompleteForAssetID:assetID5 status:2];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_10();
      [v96 setAssetVersion:?];

      assetID6 = [(NSMutableDictionary *)v10 assetID];
      [assetID6 setRemoteURL:v87];

      assetID7 = [(NSMutableDictionary *)v10 assetID];
      [assetID7 setLocalURL:v87];

      assetID8 = [(NSMutableDictionary *)v10 assetID];
      [assetID8 setDownloadStatus:1];

      assetID9 = [(NSMutableDictionary *)v10 assetID];
      [assetID9 setUpdateAvailabilityStatus:3];

      if (v88)
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          log = log;
          accessoryID = [(NSMutableDictionary *)v10 accessoryID];
          v126 = 138412546;
          v127 = v88;
          v128 = 2112;
          v129 = accessoryID;
          OUTLINED_FUNCTION_9();
          _os_log_impl(v103, v104, v105, v106, v107, 0x16u);
        }

        [(NSMutableDictionary *)v10 assetID];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_17();
        [v108 setReleaseNotesLocalURL:?];

        assetID10 = [(NSMutableDictionary *)v10 assetID];
        [assetID10 setReleaseNotesDownloadStatus:1];

        assetID11 = [(NSMutableDictionary *)v10 assetID];
        [assetID11 setReleaseNotesAvailabilityStatus:3];
      }

      delegateQueue3 = [(UARPiCloudAssetManager *)self delegateQueue];
      v117[0] = MEMORY[0x277D85DD0];
      v117[1] = 3221225472;
      v117[2] = __60__UARPiCloudAssetManager_handleRemoteFetchCompletion_error___block_invoke_312;
      v117[3] = &unk_279DFD010;
      v117[4] = self;
      v118 = v10;
      dispatch_async(delegateQueue3, v117);
    }

    else if (v89)
    {
      v126 = 138412290;
      v127 = v10;
      OUTLINED_FUNCTION_9();
      _os_log_impl(v112, v113, v114, v115, v116, 0xCu);
    }
  }

LABEL_17:
}

- (void)handleFirmwareDownloadResponseFromLocation:(void *)a1 forAccessory:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 record];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7(&dword_2701F5000, v5, v6, "Downloaded firmware record %@ missing 'firmwareBinaryHash' property", v7, v8, v9, v10);
}

- (void)handleReleaseNotesDownloadResponseFromLocation:(void *)a1 forAccessory:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 record];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7(&dword_2701F5000, v5, v6, "Downloaded firmware record %@ missing 'releaseNotesHash' property", v7, v8, v9, v10);
}

- (void)checkLocalUARPCacheForAccessory:(void *)a1 versionAvailable:(void *)a2 firmwarePath:releaseNotesPath:.cold.4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 assetID];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7(&dword_2701F5000, v5, v6, "Asset with CHIP iCloud asset type not supported for cache %@", v7, v8, v9, v10);
}

- (void)moveToUARPCacheFromRemoteURL:assetType:forAcessory:.cold.3()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(&dword_2701F5000, v0, OS_LOG_TYPE_ERROR, "Invalid assetType %ld", v1, 0xCu);
}

@end