@interface WCFileStorage
+ (id)sharedInstance;
- (BOOL)removeItemAtURL:(id)l numberOfRetries:(unint64_t)retries error:(id *)error;
- (WCFileStorage)init;
- (id)appContextFolderURL:(BOOL)l;
- (id)appendPathForFileTransfer:(id)transfer toPath:(id)path;
- (id)homeDirectoryURL;
- (id)loadAppContextDataFromInbox;
- (id)loadAppContextReceived:(BOOL)received;
- (id)loadOutstandingFileTransfers;
- (id)loadOutstandingUserInfoTransfersAndComplicationUserInfo:(id *)info;
- (id)localAppContextFolderURL;
- (id)outgoingFileTransferPath;
- (id)persistOutgoingUserInfoTransfer:(id)transfer;
- (id)receivedAppContextFolderURL;
- (void)cleanUpOldPairingIDFolderInFolder:(id)folder pairedDevicesPairingIDs:(id)ds;
- (void)cleanUpOldPairingIDFoldersWithPairedDevicesPairingIDs:(id)ds;
- (void)cleanUpWatchContentDirectoryWithCurrentAppInstallationID:(id)d;
- (void)cleanupSessionFileFromInbox:(id)inbox;
- (void)createWatchDirectoryIfNeeded:(id)needed;
- (void)deleteAppContextDataFromInbox;
- (void)deleteAppContextReceived:(BOOL)received;
- (void)deleteFileFolderForSessionFileFromInbox:(id)inbox;
- (void)deleteOutstandingFileTransfer:(id)transfer;
- (void)deleteOutstandingUserInfoTransfer:(id)transfer;
- (void)deleteRelatedMetadataForSessionFileFromInbox:(id)inbox;
- (void)deleteUserInfoTransferFromInbox:(id)inbox;
- (void)enumerateFileTransferResultsWithBlock:(id)block;
- (void)enumerateIncomingFilesWithBlock:(id)block;
- (void)enumerateIncomingUserInfosWithBlock:(id)block;
- (void)enumerateUserInfoResultsWithBlock:(id)block;
- (void)loadAppContextDataFromInbox;
- (void)persistAppContextData:(id)data received:(BOOL)received;
- (void)persistOutgoingFileTransfer:(id)transfer;
- (void)resetIndexes;
- (void)setPairingID:(id)d;
@end

@implementation WCFileStorage

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__WCFileStorage_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __31__WCFileStorage_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (WCFileStorage)init
{
  v6.receiver = self;
  v6.super_class = WCFileStorage;
  v2 = [(WCFileStorage *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.private.watchconnectivity.file-storage-queue", 0);
    fileQueue = v2->_fileQueue;
    v2->_fileQueue = v3;
  }

  return v2;
}

- (void)setPairingID:(id)d
{
  dCopy = d;
  if (([(NSString *)self->_pairingID isEqual:?]& 1) == 0)
  {
    v4 = [dCopy copy];
    pairingID = self->_pairingID;
    self->_pairingID = v4;

    [(WCFileStorage *)self resetIndexes];
  }
}

- (void)resetIndexes
{
  fileIndex = [(WCFileStorage *)self fileIndex];
  [fileIndex invalidate];

  [(WCFileStorage *)self setFileIndex:0];
  fileResultsIndex = [(WCFileStorage *)self fileResultsIndex];
  [fileResultsIndex invalidate];

  [(WCFileStorage *)self setFileResultsIndex:0];
  userInfoIndex = [(WCFileStorage *)self userInfoIndex];
  [userInfoIndex invalidate];

  [(WCFileStorage *)self setUserInfoIndex:0];
  userInfoResultsIndex = [(WCFileStorage *)self userInfoResultsIndex];
  [userInfoResultsIndex invalidate];

  [(WCFileStorage *)self setUserInfoResultsIndex:0];
}

- (id)loadOutstandingFileTransfers
{
  v35[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEBC0];
  outgoingFileTransferPath = [(WCFileStorage *)self outgoingFileTransferPath];
  v4 = [v2 fileURLWithPath:outgoingFileTransferPath isDirectory:1];

  v35[0] = *MEMORY[0x277CBE8A8];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager enumeratorAtURL:v4 includingPropertiesForKeys:v5 options:4 errorHandler:&__block_literal_global_3];

  v8 = objc_opt_new();
  nextObject = [v7 nextObject];
  if (nextObject)
  {
    v10 = nextObject;
    do
    {
      lastPathComponent = [v10 lastPathComponent];
      v12 = [lastPathComponent isEqual:@"file-transfer-data"];

      if (v12)
      {
        v13 = MEMORY[0x277CBEA90];
        path = [v10 path];
        v15 = [v13 dataWithContentsOfFile:path];

        if (v15)
        {
          v17 = MEMORY[0x277CCAAC8];
          v18 = objc_opt_class();
          v28 = 0;
          v19 = [v17 unarchivedObjectOfClass:v18 fromData:v15 error:&v28];
          v20 = v28;
          v21 = v20;
          if (v19)
          {
            transferIdentifier = [v19 transferIdentifier];
            [v8 setObject:v19 forKeyedSubscript:transferIdentifier];
          }

          else
          {
            transferIdentifier = wc_log(v20);
            if (os_log_type_enabled(transferIdentifier, OS_LOG_TYPE_ERROR))
            {
              path2 = [v10 path];
              v26 = NSPrintF("%{error}", v21);
              *buf = 136446722;
              v30 = "[WCFileStorage loadOutstandingFileTransfers]";
              v31 = 2114;
              v32 = path2;
              v33 = 2114;
              v34 = v26;
              _os_log_error_impl(&dword_23B2FA000, transferIdentifier, OS_LOG_TYPE_ERROR, "%{public}s could not unarchive file at path %{public}@ due to %{public}@", buf, 0x20u);
            }
          }
        }

        else
        {
          v21 = wc_log(v16);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            path3 = [v10 path];
            *buf = 136446466;
            v30 = "[WCFileStorage loadOutstandingFileTransfers]";
            v31 = 2114;
            v32 = path3;
            _os_log_error_impl(&dword_23B2FA000, v21, OS_LOG_TYPE_ERROR, "%{public}s could not find file at path %{public}@", buf, 0x16u);
          }
        }
      }

      nextObject2 = [v7 nextObject];

      v10 = nextObject2;
    }

    while (nextObject2);
  }

  return v8;
}

uint64_t __45__WCFileStorage_loadOutstandingFileTransfers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ([v3 code] != -1100)
  {
    v4 = [v3 code];
    if (v4 != 260)
    {
      v5 = wc_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __45__WCFileStorage_loadOutstandingFileTransfers__block_invoke_cold_1(v3);
      }
    }
  }

  return 1;
}

- (void)persistOutgoingFileTransfer:(id)transfer
{
  transferCopy = transfer;
  outgoingFileTransferPath = [(WCFileStorage *)self outgoingFileTransferPath];
  v6 = [(WCFileStorage *)self appendPathForFileTransfer:transferCopy toPath:outgoingFileTransferPath];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v19 = 0;
  [defaultManager createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v19];
  v8 = v19;

  if (v8)
  {
    v10 = wc_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WCFileStorage persistOutgoingFileTransfer:];
    }
  }

  else
  {
    v18 = 0;
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:transferCopy requiringSecureCoding:1 error:&v18];
    v11 = v18;
    v8 = v11;
    if (v10)
    {
      v12 = [v6 stringByAppendingPathComponent:@"file-transfer-data"];
      v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12 isDirectory:0];

      v17 = 0;
      v14 = [v10 writeToURL:v13 options:1073741825 error:&v17];
      v15 = v17;
      v8 = v15;
      if ((v14 & 1) == 0)
      {
        v16 = wc_log(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [WCFileStorage persistOutgoingFileTransfer:];
        }
      }
    }

    else
    {
      v12 = wc_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [WCFileStorage persistOutgoingFileTransfer:];
      }
    }
  }
}

- (void)deleteOutstandingFileTransfer:(id)transfer
{
  transferCopy = transfer;
  outgoingFileTransferPath = [(WCFileStorage *)self outgoingFileTransferPath];
  v6 = [(WCFileStorage *)self appendPathForFileTransfer:transferCopy toPath:outgoingFileTransferPath];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  v8 = [defaultManager removeItemAtPath:v6 error:&v12];
  v9 = v12;

  if ((v8 & 1) == 0 && [v9 code] != -1100 && objc_msgSend(v9, "code") != 260)
  {
    code = [v9 code];
    if (code != 4)
    {
      v11 = wc_log(code);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [WCFileStorage deleteOutstandingFileTransfer:];
      }
    }
  }
}

- (id)persistOutgoingUserInfoTransfer:(id)transfer
{
  transferCopy = transfer;
  homeDirectoryURL = [(WCFileStorage *)self homeDirectoryURL];
  pairingID = [(WCFileStorage *)self pairingID];
  v7 = WCUserInfoTransfersInContainer(homeDirectoryURL, pairingID);

  transferIdentifier = [transferCopy transferIdentifier];
  v9 = [v7 URLByAppendingPathComponent:transferIdentifier isDirectory:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v28 = 0;
  LODWORD(v7) = [defaultManager createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v28];
  v11 = v28;

  if (v7)
  {
    v13 = [v9 URLByAppendingPathComponent:@"userinfo-transfer-object-data" isDirectory:0];

    v27 = 0;
    v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:transferCopy requiringSecureCoding:1 error:&v27];
    v15 = v27;
    v11 = v15;
    if (v14)
    {
      v26 = v15;
      v16 = [v14 writeToURL:v13 options:1073741825 error:&v26];
      v17 = v26;

      if (!v16)
      {
        protobufData = wc_log(v18);
        if (os_log_type_enabled(protobufData, OS_LOG_TYPE_ERROR))
        {
          [WCFileStorage persistOutgoingUserInfoTransfer:];
        }

        v19 = 0;
        v11 = v17;
        goto LABEL_17;
      }

      v19 = [v9 URLByAppendingPathComponent:@"userinfo-transfer-wire-data" isDirectory:0];
      protobufData = [transferCopy protobufData];
      v25 = v17;
      v21 = [protobufData writeToURL:v19 options:1073741825 error:&v25];
      v11 = v25;

      if (v21)
      {
LABEL_17:

        goto LABEL_18;
      }

      v23 = wc_log(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [WCFileStorage persistOutgoingUserInfoTransfer:];
      }
    }

    else
    {
      protobufData = wc_log(v15);
      if (os_log_type_enabled(protobufData, OS_LOG_TYPE_ERROR))
      {
        [WCFileStorage persistOutgoingUserInfoTransfer:];
      }
    }

    v19 = 0;
    goto LABEL_17;
  }

  v13 = wc_log(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [WCFileStorage persistOutgoingUserInfoTransfer:];
  }

  v19 = 0;
LABEL_18:

  return v19;
}

- (id)loadOutstandingUserInfoTransfersAndComplicationUserInfo:(id *)info
{
  v42[1] = *MEMORY[0x277D85DE8];
  homeDirectoryURL = [(WCFileStorage *)self homeDirectoryURL];
  pairingID = [(WCFileStorage *)self pairingID];
  v7 = WCUserInfoTransfersInContainer(homeDirectoryURL, pairingID);

  v42[0] = *MEMORY[0x277CBE8A8];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v34 = v7;
  v10 = [defaultManager enumeratorAtURL:v7 includingPropertiesForKeys:v8 options:4 errorHandler:&__block_literal_global_12];

  v11 = objc_opt_new();
  nextObject = [v10 nextObject];
  if (nextObject)
  {
    v13 = nextObject;
    do
    {
      lastPathComponent = [v13 lastPathComponent];
      v15 = [lastPathComponent isEqual:@"userinfo-transfer-object-data"];

      if (v15)
      {
        v16 = MEMORY[0x277CBEA90];
        path = [v13 path];
        v18 = [v16 dataWithContentsOfFile:path];

        if (v18)
        {
          v20 = MEMORY[0x277CCAAC8];
          v21 = objc_opt_class();
          v35 = 0;
          v22 = [v20 unarchivedObjectOfClass:v21 fromData:v18 error:&v35];
          v23 = v35;
          v24 = v23;
          if (v22)
          {
            transferIdentifier = [v22 transferIdentifier];
            [v11 setObject:v22 forKeyedSubscript:transferIdentifier];

            isCurrentComplicationInfo = [v22 isCurrentComplicationInfo];
            if (info && isCurrentComplicationInfo)
            {
              v27 = v22;
              *info = v22;
            }
          }

          else
          {
            v29 = wc_log(v23);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              path2 = [v13 path];
              v32 = NSPrintF("%{error}", v24);
              *buf = 136446722;
              v37 = "[WCFileStorage loadOutstandingUserInfoTransfersAndComplicationUserInfo:]";
              v38 = 2114;
              v39 = path2;
              v40 = 2114;
              v41 = v32;
              _os_log_error_impl(&dword_23B2FA000, v29, OS_LOG_TYPE_ERROR, "%{public}s could not unarchive user info at path %{public}@ due to %{public}@", buf, 0x20u);
            }
          }
        }

        else
        {
          v24 = wc_log(v19);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            path3 = [v13 path];
            *buf = 136446466;
            v37 = "[WCFileStorage loadOutstandingUserInfoTransfersAndComplicationUserInfo:]";
            v38 = 2114;
            v39 = path3;
            _os_log_error_impl(&dword_23B2FA000, v24, OS_LOG_TYPE_ERROR, "%{public}s could not find file at path %{public}@", buf, 0x16u);
          }
        }
      }

      nextObject2 = [v10 nextObject];

      v13 = nextObject2;
    }

    while (nextObject2);
  }

  return v11;
}

uint64_t __73__WCFileStorage_loadOutstandingUserInfoTransfersAndComplicationUserInfo___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ([v3 code] != -1100)
  {
    v4 = [v3 code];
    if (v4 != 260)
    {
      v5 = wc_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __73__WCFileStorage_loadOutstandingUserInfoTransfersAndComplicationUserInfo___block_invoke_cold_1(v3);
      }
    }
  }

  return 1;
}

- (void)deleteOutstandingUserInfoTransfer:(id)transfer
{
  transferCopy = transfer;
  pairingID = [(WCFileStorage *)self pairingID];

  if (pairingID)
  {
    homeDirectoryURL = [(WCFileStorage *)self homeDirectoryURL];
    pairingID2 = [(WCFileStorage *)self pairingID];
    v8 = WCUserInfoTransfersInContainer(homeDirectoryURL, pairingID2);

    transferIdentifier = [transferCopy transferIdentifier];
    v10 = [v8 URLByAppendingPathComponent:transferIdentifier isDirectory:1];

    v15 = 0;
    LOBYTE(transferIdentifier) = [(WCFileStorage *)self removeItemAtURL:v10 numberOfRetries:5 error:&v15];
    v11 = v15;
    v12 = v11;
    if ((transferIdentifier & 1) == 0 && [v11 code] != -1100 && objc_msgSend(v12, "code") != 260)
    {
      code = [v12 code];
      if (code != 4)
      {
        v14 = wc_log(code);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [WCFileStorage deleteOutstandingUserInfoTransfer:];
        }
      }
    }
  }
}

- (void)enumerateFileTransferResultsWithBlock:(id)block
{
  v71 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  homeDirectoryURL = [(WCFileStorage *)self homeDirectoryURL];
  pairingID = [(WCFileStorage *)self pairingID];
  v7 = WCFileTransfersURLInContainer(homeDirectoryURL, pairingID);

  v8 = v7;
  fileResultsIndex = [(WCFileStorage *)self fileResultsIndex];

  if (!fileResultsIndex)
  {
    v10 = [[WCContentIndex alloc] initWithContainingFolder:v7];
    [(WCFileStorage *)self setFileResultsIndex:v10];
  }

  fileResultsIndex2 = [(WCFileStorage *)self fileResultsIndex];
  index = [fileResultsIndex2 index];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = index;
  v13 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
  v51 = v13;
  if (v13)
  {
    v50 = *v60;
    v46 = blockCopy;
    v47 = v7;
    do
    {
      v14 = 0;
      do
      {
        if (*v60 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v59 + 1) + 8 * v14);
        v16 = wc_log(v13);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v64 = "[WCFileStorage enumerateFileTransferResultsWithBlock:]";
          v65 = 2114;
          v66 = v15;
          _os_log_impl(&dword_23B2FA000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
        }

        v17 = [v8 URLByAppendingPathComponent:v15 isDirectory:1];
        v18 = [v17 URLByAppendingPathComponent:@"file-transfer-result" isDirectory:0];

        v19 = MEMORY[0x277CBEA90];
        path = [v18 path];
        v58 = 0;
        v21 = [v19 dataWithContentsOfFile:path options:2 error:&v58];
        v22 = v58;

        if (v21)
        {
          v24 = MEMORY[0x277CBEB98];
          v69[0] = objc_opt_class();
          v69[1] = objc_opt_class();
          v69[2] = objc_opt_class();
          v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];
          v26 = [v24 setWithArray:v25];

          v57 = 0;
          v27 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v26 fromData:v21 error:&v57];
          v28 = v57;
          v22 = v28;
          if (v27)
          {
            v49 = v27;
            uRLByDeletingLastPathComponent = [v18 URLByDeletingLastPathComponent];
            v30 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"file-transfer-data" isDirectory:0];

            v31 = MEMORY[0x277CBEA90];
            log = v30;
            path2 = [v30 path];
            v56 = 0;
            v33 = [v31 dataWithContentsOfFile:path2 options:2 error:&v56];
            v22 = v56;

            v34 = v15;
            if (v33)
            {

              v35 = MEMORY[0x277CCAAC8];
              v36 = objc_opt_class();
              v55 = 0;
              v37 = [v35 unarchivedObjectOfClass:v36 fromData:v33 error:&v55];
              v38 = v55;
              v22 = v38;
              if (v37)
              {
                v39 = [v49 objectForKeyedSubscript:@"WCFileTransferResultError"];
                [v37 setTransferError:v39];
                goto LABEL_24;
              }

              v39 = wc_log(v38);
              v8 = v47;
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                v45 = NSPrintF("%{error}", v22);
                *buf = 136446722;
                v64 = "[WCFileStorage enumerateFileTransferResultsWithBlock:]";
                v65 = 2114;
                v66 = v34;
                v67 = 2114;
                v68 = v45;
                _os_log_error_impl(&dword_23B2FA000, v39, OS_LOG_TYPE_ERROR, "%{public}s could not unarchive file %{public}@ due to %{public}@", buf, 0x20u);

                v8 = v47;
              }

              v37 = 0;
            }

            else
            {
              uRLByDeletingLastPathComponent2 = [v18 URLByDeletingLastPathComponent];

              WCDeleteItemAtURL(uRLByDeletingLastPathComponent2);
              v39 = wc_log(v41);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                [(WCFileStorage *)&v53 enumerateFileTransferResultsWithBlock:v54, v39];
              }

              v37 = 0;
              v18 = uRLByDeletingLastPathComponent2;
LABEL_24:
              v8 = v47;
            }

            blockCopy = v46;
            v27 = v49;
          }

          else
          {
            log = wc_log(v28);
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              v44 = NSPrintF("%{error}", v22);
              *buf = 136446722;
              v64 = "[WCFileStorage enumerateFileTransferResultsWithBlock:]";
              v65 = 2114;
              v34 = v15;
              v66 = v15;
              v67 = 2114;
              v68 = v44;
              _os_log_error_impl(&dword_23B2FA000, log, OS_LOG_TYPE_ERROR, "%{public}s could not unarchive results %{public}@ due to %{public}@", buf, 0x20u);

              v27 = 0;
            }

            else
            {
              v34 = v15;
            }

            v37 = 0;
          }

          goto LABEL_30;
        }

        v34 = v15;
        v26 = wc_log(v23);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          path3 = [v18 path];
          *buf = 136446466;
          v64 = "[WCFileStorage enumerateFileTransferResultsWithBlock:]";
          v65 = 2114;
          v66 = path3;
          _os_log_error_impl(&dword_23B2FA000, v26, OS_LOG_TYPE_ERROR, "%{public}s could not load file data at path %{public}@", buf, 0x16u);
        }

        v37 = 0;
LABEL_30:

        buf[0] = 0;
        (blockCopy)[2](blockCopy, v37, v34, buf);
        v42 = buf[0];

        if (v42)
        {
          goto LABEL_35;
        }

        ++v14;
      }

      while (v51 != v14);
      v13 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
      v51 = v13;
    }

    while (v13);
  }

LABEL_35:
}

- (void)persistAppContextData:(id)data received:(BOOL)received
{
  receivedCopy = received;
  dataCopy = data;
  v7 = [(WCFileStorage *)self appContextFolderURL:receivedCopy];
  v8 = [v7 URLByAppendingPathComponent:@"context" isDirectory:0];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v18 = 0;
  v10 = [defaultManager createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v18];
  v11 = v18;

  if (!v10)
  {
    v16 = wc_log(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [WCFileStorage persistAppContextData:received:];
    }

    v14 = v11;
    goto LABEL_8;
  }

  v17 = v11;
  v13 = [dataCopy writeToURL:v8 options:1073741825 error:&v17];
  v14 = v17;

  if ((v13 & 1) == 0)
  {
    v16 = wc_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [WCFileStorage persistAppContextData:received:];
    }

LABEL_8:
  }
}

- (id)loadAppContextReceived:(BOOL)received
{
  v3 = [(WCFileStorage *)self appContextFolderURL:?];
  v4 = [v3 URLByAppendingPathComponent:@"context" isDirectory:0];
  v15 = 0;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4 options:0 error:&v15];
  v6 = v15;
  v7 = v6;
  if (v5)
  {
    v14 = v6;
    v8 = WCDeserializePayloadData(v5, &v14);
    v9 = v14;

    if (v9)
    {
      v11 = wc_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [WCFileStorage loadAppContextReceived:];
      }

LABEL_6:
      v8 = MEMORY[0x277CBEC10];
      v7 = v9;
      goto LABEL_13;
    }

    v7 = 0;
  }

  else
  {
    if (v6)
    {
      if ([v6 code] != -1100 && objc_msgSend(v7, "code") != 260)
      {
        code = [v7 code];
        if (code != 4)
        {
          v8 = wc_log(code);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [WCFileStorage loadAppContextReceived:];
          }

          v9 = v7;
          goto LABEL_6;
        }
      }
    }

    v8 = MEMORY[0x277CBEC10];
  }

LABEL_13:

  return v8;
}

- (void)deleteAppContextReceived:(BOOL)received
{
  receivedCopy = received;
  pairingID = [(WCFileStorage *)self pairingID];

  if (pairingID)
  {
    v6 = [(WCFileStorage *)self appContextFolderURL:receivedCopy];
    v12 = 0;
    v7 = [(WCFileStorage *)self removeItemAtURL:v6 numberOfRetries:5 error:&v12];
    v8 = v12;
    v9 = v8;
    if (!v7 && [v8 code] != -1100 && objc_msgSend(v9, "code") != 260)
    {
      code = [v9 code];
      if (code != 4)
      {
        v11 = wc_log(code);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [WCFileStorage deleteAppContextReceived:];
        }
      }
    }
  }
}

- (id)loadAppContextDataFromInbox
{
  homeDirectoryURL = [(WCFileStorage *)self homeDirectoryURL];
  pairingID = [(WCFileStorage *)self pairingID];
  v5 = WCInboxAppContextFolderURLInContainer(homeDirectoryURL, pairingID);

  v6 = [v5 URLByAppendingPathComponent:@"context" isDirectory:0];
  v13 = 0;
  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v6 options:0 error:&v13];
  v8 = v13;
  v9 = v8;
  if (v8)
  {
    if ([v8 code] != -1100 && objc_msgSend(v9, "code") != 260)
    {
      code = [v9 code];
      if (code != 4)
      {
        v11 = wc_log(code);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(WCFileStorage *)v9 loadAppContextDataFromInbox];
        }
      }
    }
  }

  return v7;
}

- (void)deleteAppContextDataFromInbox
{
  OUTLINED_FUNCTION_17();
  path = [v1 path];
  v3 = NSPrintF("%{error}", v0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)enumerateIncomingFilesWithBlock:(id)block
{
  v48 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  homeDirectoryURL = [(WCFileStorage *)self homeDirectoryURL];
  pairingID = [(WCFileStorage *)self pairingID];
  v34 = WCSessionFilesURLInContainer(homeDirectoryURL, pairingID);

  fileIndex = [(WCFileStorage *)self fileIndex];

  if (!fileIndex)
  {
    v8 = [[WCContentIndex alloc] initWithContainingFolder:v34];
    [(WCFileStorage *)self setFileIndex:v8];
  }

  fileIndex2 = [(WCFileStorage *)self fileIndex];
  index = [fileIndex2 index];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = index;
  v11 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v11)
  {
    v12 = v11;
    v33 = *v38;
    do
    {
      v13 = 0;
      do
      {
        if (*v38 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * v13);
        v15 = wc_log(v11);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v42 = "[WCFileStorage enumerateIncomingFilesWithBlock:]";
          v43 = 2114;
          v44 = v14;
          _os_log_impl(&dword_23B2FA000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
        }

        v16 = [v34 URLByAppendingPathComponent:v14 isDirectory:1];
        v17 = [v16 URLByAppendingPathComponent:@"session-file-data" isDirectory:0];

        v18 = MEMORY[0x277CBEA90];
        path = [v17 path];
        v36 = 0;
        v20 = [v18 dataWithContentsOfFile:path options:2 error:&v36];
        v21 = v36;

        if (v20)
        {

          v23 = MEMORY[0x277CCAAC8];
          v24 = objc_opt_class();
          v35 = 0;
          v25 = [v23 unarchivedObjectOfClass:v24 fromData:v20 error:&v35];
          v26 = v35;
          v21 = v26;
          if (v25)
          {
            goto LABEL_17;
          }

          v27 = wc_log(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = NSPrintF("%{error}", v21);
            *buf = 136446722;
            v42 = "[WCFileStorage enumerateIncomingFilesWithBlock:]";
            v43 = 2114;
            v44 = v14;
            v45 = 2114;
            v46 = v28;
            _os_log_error_impl(&dword_23B2FA000, v27, OS_LOG_TYPE_ERROR, "%{public}s couldn't unarchive file %{public}@ due to %{public}@", buf, 0x20u);
          }
        }

        else
        {
          v27 = wc_log(v22);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            path2 = [v17 path];
            v31 = NSPrintF("%{error}", v21);
            *buf = 136446722;
            v42 = "[WCFileStorage enumerateIncomingFilesWithBlock:]";
            v43 = 2114;
            v44 = path2;
            v45 = 2114;
            v46 = v31;
            _os_log_error_impl(&dword_23B2FA000, v27, OS_LOG_TYPE_ERROR, "%{public}s could not load file data at path %{public}@ due to %{public}@", buf, 0x20u);
          }
        }

        v25 = 0;
LABEL_17:
        buf[0] = 0;
        (blockCopy)[2](blockCopy, v25, v14, buf);
        v29 = buf[0];

        if (v29)
        {
          goto LABEL_20;
        }

        ++v13;
      }

      while (v12 != v13);
      v11 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
      v12 = v11;
    }

    while (v11);
  }

LABEL_20:
}

- (void)cleanupSessionFileFromInbox:(id)inbox
{
  inboxCopy = inbox;
  [(WCFileStorage *)self deleteRelatedMetadataForSessionFileFromInbox:inboxCopy];
  [(WCFileStorage *)self deleteFileFolderForSessionFileFromInbox:inboxCopy];
}

- (void)deleteRelatedMetadataForSessionFileFromInbox:(id)inbox
{
  v24 = *MEMORY[0x277D85DE8];
  inboxCopy = inbox;
  homeDirectoryURL = [(WCFileStorage *)self homeDirectoryURL];
  pairingID = [(WCFileStorage *)self pairingID];
  v7 = WCSessionFilesURLInContainer(homeDirectoryURL, pairingID);

  fileIdentifier = [inboxCopy fileIdentifier];
  v9 = [v7 URLByAppendingPathComponent:fileIdentifier isDirectory:1];

  v15 = 0;
  LOBYTE(fileIdentifier) = [(WCFileStorage *)self removeItemAtURL:v9 numberOfRetries:5 error:&v15];
  v10 = v15;
  v11 = v10;
  if ((fileIdentifier & 1) == 0)
  {
    v12 = wc_log(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      path = [v9 path];
      v14 = NSPrintF("%{error}", v11);
      *buf = 136446978;
      v17 = "[WCFileStorage deleteRelatedMetadataForSessionFileFromInbox:]";
      v18 = 2114;
      v19 = inboxCopy;
      v20 = 2114;
      v21 = path;
      v22 = 2114;
      v23 = v14;
      _os_log_error_impl(&dword_23B2FA000, v12, OS_LOG_TYPE_ERROR, "%{public}s couldn't delete persistent session file %{public}@ %{public}@ %{public}@", buf, 0x2Au);
    }
  }
}

- (void)deleteFileFolderForSessionFileFromInbox:(id)inbox
{
  v24 = *MEMORY[0x277D85DE8];
  inboxCopy = inbox;
  homeDirectoryURL = [(WCFileStorage *)self homeDirectoryURL];
  pairingID = [(WCFileStorage *)self pairingID];
  v7 = WCTransferredFilesURLInContainer(homeDirectoryURL, pairingID);

  fileIdentifier = [inboxCopy fileIdentifier];
  v9 = [v7 URLByAppendingPathComponent:fileIdentifier isDirectory:1];

  v15 = 0;
  LOBYTE(fileIdentifier) = [(WCFileStorage *)self removeItemAtURL:v9 numberOfRetries:5 error:&v15];
  v10 = v15;
  v11 = v10;
  if ((fileIdentifier & 1) == 0)
  {
    v12 = wc_log(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      path = [v9 path];
      v14 = NSPrintF("%{error}", v11);
      *buf = 136446978;
      v17 = "[WCFileStorage deleteFileFolderForSessionFileFromInbox:]";
      v18 = 2114;
      v19 = inboxCopy;
      v20 = 2114;
      v21 = path;
      v22 = 2114;
      v23 = v14;
      _os_log_error_impl(&dword_23B2FA000, v12, OS_LOG_TYPE_ERROR, "%{public}s couldn't delete file folder %{public}@ %{public}@ %{public}@", buf, 0x2Au);
    }
  }
}

- (void)enumerateIncomingUserInfosWithBlock:(id)block
{
  v49 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  homeDirectoryURL = [(WCFileStorage *)self homeDirectoryURL];
  pairingID = [(WCFileStorage *)self pairingID];
  v35 = WCTransferredUserInfoInboxURLInContainer(homeDirectoryURL, pairingID);

  userInfoIndex = [(WCFileStorage *)self userInfoIndex];

  if (!userInfoIndex)
  {
    v8 = [[WCContentIndex alloc] initWithContainingFolder:v35];
    [(WCFileStorage *)self setUserInfoIndex:v8];
  }

  userInfoIndex2 = [(WCFileStorage *)self userInfoIndex];
  index = [userInfoIndex2 index];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = index;
  v11 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v34 = *v39;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = [v35 URLByAppendingPathComponent:v14 isDirectory:1];
        v16 = [v15 URLByAppendingPathComponent:@"userinfo-transfer-object-data" isDirectory:0];

        v17 = MEMORY[0x277CBEA90];
        path = [v16 path];
        v37 = 0;
        v19 = [v17 dataWithContentsOfFile:path options:2 error:&v37];
        v20 = v37;

        if (!v19)
        {
          v28 = wc_log(v21);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            path2 = [v16 path];
            v32 = NSPrintF("%{error}", v20);
            *buf = 136446722;
            v43 = "[WCFileStorage enumerateIncomingUserInfosWithBlock:]";
            v44 = 2114;
            v45 = path2;
            v46 = 2114;
            v47 = v32;
            _os_log_error_impl(&dword_23B2FA000, v28, OS_LOG_TYPE_ERROR, "%{public}s could not load user info data at path %{public}@ due to %{public}@", buf, 0x20u);
          }

          goto LABEL_17;
        }

        v22 = MEMORY[0x277CCAAC8];
        v23 = objc_opt_class();
        v36 = 0;
        v24 = [v22 unarchivedObjectOfClass:v23 fromData:v19 error:&v36];
        v25 = v36;
        v20 = v25;
        if (!v24 || ([v24 transferIdentifier], v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
        {
          v27 = wc_log(v25);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v31 = NSPrintF("%{error}", v20);
            *buf = 136446722;
            v43 = "[WCFileStorage enumerateIncomingUserInfosWithBlock:]";
            v44 = 2114;
            v45 = v14;
            v46 = 2114;
            v47 = v31;
            _os_log_error_impl(&dword_23B2FA000, v27, OS_LOG_TYPE_ERROR, "%{public}s user info malformed %{public}@ due to %{public}@", buf, 0x20u);
          }

          WCDeleteItemAtURL(v16);
LABEL_17:
          v24 = 0;
        }

        buf[0] = 0;
        (blockCopy)[2](blockCopy, v24, v14, buf);
        v29 = buf[0];

        if (v29)
        {
          goto LABEL_21;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v12);
  }

LABEL_21:
}

- (void)deleteUserInfoTransferFromInbox:(id)inbox
{
  inboxCopy = inbox;
  homeDirectoryURL = [(WCFileStorage *)self homeDirectoryURL];
  pairingID = [(WCFileStorage *)self pairingID];
  v7 = WCTransferredUserInfoInboxURLInContainer(homeDirectoryURL, pairingID);

  transferIdentifier = [inboxCopy transferIdentifier];

  v9 = [v7 URLByAppendingPathComponent:transferIdentifier isDirectory:0];

  v13 = 0;
  LOBYTE(transferIdentifier) = [(WCFileStorage *)self removeItemAtURL:v9 numberOfRetries:5 error:&v13];
  v10 = v13;
  v11 = v10;
  if ((transferIdentifier & 1) == 0)
  {
    v12 = wc_log(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WCFileStorage deleteUserInfoTransferFromInbox:v9];
    }
  }
}

- (void)enumerateUserInfoResultsWithBlock:(id)block
{
  v63 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  homeDirectoryURL = [(WCFileStorage *)self homeDirectoryURL];
  pairingID = [(WCFileStorage *)self pairingID];
  v7 = WCUserInfoTransfersInContainer(homeDirectoryURL, pairingID);

  userInfoResultsIndex = [(WCFileStorage *)self userInfoResultsIndex];

  if (!userInfoResultsIndex)
  {
    v9 = [[WCContentIndex alloc] initWithContainingFolder:v7];
    [(WCFileStorage *)self setUserInfoResultsIndex:v9];
  }

  userInfoResultsIndex2 = [(WCFileStorage *)self userInfoResultsIndex];
  index = [userInfoResultsIndex2 index];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = index;
  v43 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (v43)
  {
    v42 = *v52;
    v38 = blockCopy;
    v39 = v7;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v52 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v51 + 1) + 8 * v12);
      v14 = [v7 URLByAppendingPathComponent:v13 isDirectory:1];
      v15 = [v14 URLByAppendingPathComponent:@"userinfo-transfer-result" isDirectory:0];

      v50 = 0;
      v16 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v15 options:2 error:&v50];
      v17 = v50;
      v18 = v17;
      if (v16)
      {
        v44 = v13;
        v19 = MEMORY[0x277CBEB98];
        v61[0] = objc_opt_class();
        v61[1] = objc_opt_class();
        v61[2] = objc_opt_class();
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
        v21 = [v19 setWithArray:v20];

        v49 = 0;
        v22 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v21 fromData:v16 error:&v49];
        v23 = v49;
        v18 = v23;
        if (v22)
        {
          v41 = v22;
          uRLByDeletingLastPathComponent = [v15 URLByDeletingLastPathComponent];
          v25 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"userinfo-transfer-object-data" isDirectory:0];

          v48 = 0;
          v26 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v25 options:2 error:&v48];
          v27 = v48;
          v18 = v27;
          if (v26)
          {

            v28 = MEMORY[0x277CCAAC8];
            v29 = objc_opt_class();
            v47 = 0;
            v30 = [v28 unarchivedObjectOfClass:v29 fromData:v26 error:&v47];
            v31 = v47;
            v18 = v31;
            if (v30)
            {
              v32 = [v41 objectForKeyedSubscript:@"WCUserInfoTransferResultError"];
              [v30 setTransferError:v32];
            }

            else
            {
              v32 = wc_log(v31);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v56 = "[WCFileStorage enumerateUserInfoResultsWithBlock:]";
                v57 = 2114;
                v58 = v44;
                _os_log_error_impl(&dword_23B2FA000, v32, OS_LOG_TYPE_ERROR, "%{public}s didn't unarchive transfer %{public}@", buf, 0x16u);
              }

              v30 = 0;
            }
          }

          else
          {
            uRLByDeletingLastPathComponent2 = [v15 URLByDeletingLastPathComponent];

            WCDeleteItemAtURL(uRLByDeletingLastPathComponent2);
            v32 = wc_log(v35);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              [(WCFileStorage *)&v45 enumerateUserInfoResultsWithBlock:v46, v32];
            }

            v30 = 0;
            v15 = uRLByDeletingLastPathComponent2;
            blockCopy = v38;
          }

          v7 = v39;
          v22 = v41;
        }

        else
        {
          v25 = wc_log(v23);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v37 = NSPrintF("%{error}", v18);
            *buf = 136446722;
            v56 = "[WCFileStorage enumerateUserInfoResultsWithBlock:]";
            v57 = 2114;
            v58 = v44;
            v59 = 2114;
            v60 = v37;
            _os_log_error_impl(&dword_23B2FA000, v25, OS_LOG_TYPE_ERROR, "%{public}s didn't unarchive results %{public}@ due to %{public}@", buf, 0x20u);

            v22 = 0;
          }

          v30 = 0;
        }

        v13 = v44;
      }

      else
      {
        v21 = wc_log(v17);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v33 = NSPrintF("%{error}", v18);
          *buf = 136446722;
          v56 = "[WCFileStorage enumerateUserInfoResultsWithBlock:]";
          v57 = 2114;
          v58 = v13;
          v59 = 2114;
          v60 = v33;
          _os_log_impl(&dword_23B2FA000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s result does not exist, removing from index %{public}@ due to %{public}@", buf, 0x20u);
        }

        v30 = 0;
      }

      buf[0] = 0;
      blockCopy[2](blockCopy, v30, v13, buf);
      v36 = buf[0];

      if (v36)
      {
        break;
      }

      if (v43 == ++v12)
      {
        v43 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
        if (v43)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

- (void)createWatchDirectoryIfNeeded:(id)needed
{
  neededCopy = needed;
  v15 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [neededCopy path];
  v6 = [defaultManager fileExistsAtPath:path isDirectory:&v15];

  if (v6)
  {
    if (v15)
    {
LABEL_12:
      v11 = 0;
      goto LABEL_13;
    }

    v8 = wc_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WCFileStorage createWatchDirectoryIfNeeded:v8];
    }

    WCDeleteItemAtURL(neededCopy);
  }

  if (!neededCopy)
  {
    goto LABEL_12;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  v10 = [defaultManager2 createDirectoryAtURL:neededCopy withIntermediateDirectories:1 attributes:0 error:&v14];
  v11 = v14;

  if ((v10 & 1) == 0 && v11)
  {
    v13 = wc_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WCFileStorage createWatchDirectoryIfNeeded:neededCopy];
    }
  }

LABEL_13:
}

- (void)cleanUpWatchContentDirectoryWithCurrentAppInstallationID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  pairingID = [(WCFileStorage *)self pairingID];

  if (pairingID)
  {
    homeDirectoryURL = [(WCFileStorage *)self homeDirectoryURL];
    pairingID2 = [(WCFileStorage *)self pairingID];
    v8 = WCWatchDirectoryLocationInContainer(homeDirectoryURL, pairingID2);

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    v10 = [defaultManager contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:4 error:&v26];
    v11 = v26;

    if (v11)
    {
      if ([v11 code] == -1100)
      {
        goto LABEL_18;
      }

      code = [v11 code];
      if (code == 260)
      {
        goto LABEL_18;
      }

      v13 = wc_log(code);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [WCFileStorage cleanUpWatchContentDirectoryWithCurrentAppInstallationID:];
      }
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v14)
      {
        v15 = v14;
        v21 = v10;
        v16 = *v23;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v22 + 1) + 8 * i);
            lastPathComponent = [v18 lastPathComponent];
            v20 = [dCopy isEqual:lastPathComponent];

            if ((v20 & 1) == 0)
            {
              WCDeleteItemAtURL(v18);
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v15);
        v10 = v21;
      }
    }

LABEL_18:
  }
}

- (void)cleanUpOldPairingIDFoldersWithPairedDevicesPairingIDs:(id)ds
{
  dsCopy = ds;
  pairingID = [(WCFileStorage *)self pairingID];
  v6 = pairingID;
  if (dsCopy && pairingID)
  {
    pairingID2 = [(WCFileStorage *)self pairingID];
    v8 = [dsCopy containsObject:pairingID2];

    if (v8)
    {
      homeDirectoryURL = [(WCFileStorage *)self homeDirectoryURL];
      pairingID3 = [(WCFileStorage *)self pairingID];
      v12 = WCInboxURLInContainer(homeDirectoryURL, pairingID3);

      uRLByDeletingLastPathComponent = [v12 URLByDeletingLastPathComponent];

      homeDirectoryURL2 = [(WCFileStorage *)self homeDirectoryURL];
      pairingID4 = [(WCFileStorage *)self pairingID];
      v16 = WCApplicationSupportURLInContainer(homeDirectoryURL2, pairingID4);

      uRLByDeletingLastPathComponent2 = [v16 URLByDeletingLastPathComponent];

      [(WCFileStorage *)self cleanUpOldPairingIDFolderInFolder:uRLByDeletingLastPathComponent pairedDevicesPairingIDs:dsCopy];
      [(WCFileStorage *)self cleanUpOldPairingIDFolderInFolder:uRLByDeletingLastPathComponent2 pairedDevicesPairingIDs:dsCopy];

      goto LABEL_8;
    }
  }

  else
  {
  }

  uRLByDeletingLastPathComponent = wc_log(v9);
  if (os_log_type_enabled(uRLByDeletingLastPathComponent, OS_LOG_TYPE_ERROR))
  {
    [WCFileStorage cleanUpOldPairingIDFoldersWithPairedDevicesPairingIDs:];
  }

LABEL_8:
}

- (void)cleanUpOldPairingIDFolderInFolder:(id)folder pairedDevicesPairingIDs:(id)ds
{
  v35 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  dsCopy = ds;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v27 = 0;
  v8 = [defaultManager contentsOfDirectoryAtURL:folderCopy includingPropertiesForKeys:0 options:4 error:&v27];
  v9 = v27;

  if (!v9)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v21 = v8;
      v22 = folderCopy;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          lastPathComponent = [v16 lastPathComponent];
          v18 = [dsCopy containsObject:lastPathComponent];
          if ((v18 & 1) == 0)
          {
            v19 = wc_log(v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              path = [v16 path];
              *buf = 136446722;
              v29 = "[WCFileStorage cleanUpOldPairingIDFolderInFolder:pairedDevicesPairingIDs:]";
              v30 = 2114;
              v31 = dsCopy;
              v32 = 2114;
              v33 = path;
              _os_log_impl(&dword_23B2FA000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@, deleting %{public}@", buf, 0x20u);
            }

            WCDeleteItemAtURL(v16);
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v34 count:16];
      }

      while (v13);
      v8 = v21;
      folderCopy = v22;
    }

    goto LABEL_18;
  }

  if ([v9 code] != -1100)
  {
    code = [v9 code];
    if (code != 260)
    {
      v11 = wc_log(code);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [WCFileStorage cleanUpOldPairingIDFolderInFolder:pairedDevicesPairingIDs:];
      }

LABEL_18:
    }
  }
}

- (BOOL)removeItemAtURL:(id)l numberOfRetries:(unint64_t)retries error:(id *)error
{
  lCopy = l;
  if (retries)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [defaultManager removeItemAtURL:lCopy error:error];

    v11 = (v10 & 1) != 0 || [(WCFileStorage *)self removeItemAtURL:lCopy numberOfRetries:retries - 1 error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)appendPathForFileTransfer:(id)transfer toPath:(id)path
{
  pathCopy = path;
  transferIdentifier = [transfer transferIdentifier];
  v7 = [pathCopy stringByAppendingPathComponent:transferIdentifier];

  return v7;
}

- (id)outgoingFileTransferPath
{
  homeDirectoryURL = [(WCFileStorage *)self homeDirectoryURL];
  pairingID = [(WCFileStorage *)self pairingID];
  v5 = WCFileTransfersURLInContainer(homeDirectoryURL, pairingID);
  path = [v5 path];

  return path;
}

- (id)homeDirectoryURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = NSHomeDirectory();
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  return v4;
}

- (id)appContextFolderURL:(BOOL)l
{
  if (l)
  {
    [(WCFileStorage *)self receivedAppContextFolderURL];
  }

  else
  {
    [(WCFileStorage *)self localAppContextFolderURL];
  }
  v3 = ;

  return v3;
}

- (id)localAppContextFolderURL
{
  homeDirectoryURL = [(WCFileStorage *)self homeDirectoryURL];
  pairingID = [(WCFileStorage *)self pairingID];
  v5 = WCApplicationSupportURLInContainer(homeDirectoryURL, pairingID);

  v6 = [v5 URLByAppendingPathComponent:@"ApplicationContext" isDirectory:1];

  return v6;
}

- (id)receivedAppContextFolderURL
{
  homeDirectoryURL = [(WCFileStorage *)self homeDirectoryURL];
  pairingID = [(WCFileStorage *)self pairingID];
  v5 = WCApplicationSupportURLInContainer(homeDirectoryURL, pairingID);

  v6 = [v5 URLByAppendingPathComponent:@"ReceivedApplicationContext" isDirectory:1];

  return v6;
}

void __45__WCFileStorage_loadOutstandingFileTransfers__block_invoke_cold_1(uint64_t a1)
{
  v1 = NSPrintF("%{error}", a1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)persistOutgoingFileTransfer:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF("%{error}");
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)persistOutgoingFileTransfer:.cold.2()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF("%{error}");
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)persistOutgoingFileTransfer:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136446722;
  OUTLINED_FUNCTION_4_0();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_23B2FA000, v2, OS_LOG_TYPE_ERROR, "%{public}s error serializing file transfer %{public}@ due to %{public}@", v3, 0x20u);
}

- (void)deleteOutstandingFileTransfer:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF("%{error}");
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)persistOutgoingUserInfoTransfer:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF("%{error}");
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)persistOutgoingUserInfoTransfer:.cold.2()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF("%{error}");
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)persistOutgoingUserInfoTransfer:.cold.3()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF("%{error}");
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)persistOutgoingUserInfoTransfer:.cold.4()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF("%{error}");
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void __73__WCFileStorage_loadOutstandingUserInfoTransfersAndComplicationUserInfo___block_invoke_cold_1(uint64_t a1)
{
  v1 = NSPrintF("%{error}", a1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)deleteOutstandingUserInfoTransfer:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(&dword_23B2FA000, v0, OS_LOG_TYPE_ERROR, "%{public}s failed to remove user info transfer %{public}@", v1, 0x16u);
}

- (void)enumerateFileTransferResultsWithBlock:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23B2FA000, log, OS_LOG_TYPE_ERROR, "result exists without file transfer", buf, 2u);
}

- (void)persistAppContextData:received:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v0 = NSPrintF("%{error}");
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)persistAppContextData:received:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v0 = NSPrintF("%{error}");
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)loadAppContextReceived:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v0 = NSPrintF("%{error}");
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)loadAppContextReceived:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v0 = NSPrintF("%{error}");
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)deleteAppContextReceived:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v0 = NSPrintF("%{error}");
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)loadAppContextDataFromInbox
{
  v1 = NSPrintF("%{error}", self);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)deleteUserInfoTransferFromInbox:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)enumerateUserInfoResultsWithBlock:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23B2FA000, log, OS_LOG_TYPE_ERROR, "results exist without file transfer", buf, 2u);
}

- (void)createWatchDirectoryIfNeeded:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)cleanUpWatchContentDirectoryWithCurrentAppInstallationID:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v2 = [v1 path];
  v3 = NSPrintF("%{error}", v0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)cleanUpOldPairingIDFoldersWithPairedDevicesPairingIDs:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v2 = [v1 pairingID];
  v8 = WCCompactStringFromCollection(v0);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)cleanUpOldPairingIDFolderInFolder:pairedDevicesPairingIDs:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v2 = [v1 path];
  v3 = NSPrintF("%{error}", v0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

@end