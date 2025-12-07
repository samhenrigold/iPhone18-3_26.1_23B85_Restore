@interface SSBookDownload
- (BOOL)addAsset:(id)asset forType:(id)type;
- (BOOL)isBackgroundNetworkingUserInitiated;
- (BOOL)isEligibleForRestore:(id *)restore;
- (BOOL)removeAsset:(id)asset;
- (SSBookDownload)initWithDownloadStatus:(id)status;
- (double)estimatedSecondsRemaining;
- (double)percentComplete;
- (id)assetsForType:(id)type;
- (id)backgroundNetworkingJobGroupName;
- (id)downloadPhaseIdentifier;
- (id)downloadPolicy;
- (id)metadata;
- (id)networkConstraints;
- (id)status;
- (id)valueForProperty:(id)property;
- (int64_t)bytesDownloaded;
- (int64_t)bytesTotal;
- (int64_t)downloadSizeLimit;
- (void)pause;
- (void)prioritizeAboveDownload:(id)download completionBlock:(id)block;
- (void)restart;
- (void)resume;
- (void)setBackgroundNetworkingJobGroupName:(id)name;
- (void)setBackgroundNetworkingUserInitiated:(BOOL)initiated;
- (void)setDownloadHandler:(id)handler completionBlock:(id)block;
- (void)setDownloadPolicy:(id)policy;
- (void)setMetadata:(id)metadata;
- (void)setNetworkConstraints:(id)constraints;
- (void)setStatus:(id)status;
- (void)setValuesWithStoreDownloadMetadata:(id)metadata;
@end

@implementation SSBookDownload

- (SSBookDownload)initWithDownloadStatus:(id)status
{
  v33 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  downloadID = [statusCopy downloadID];
  numberFromHexDigits = [downloadID numberFromHexDigits];
  longLongValue = [numberFromHexDigits longLongValue];

  v30.receiver = self;
  v30.super_class = SSBookDownload;
  v8 = [(SSEntity *)&v30 _initWithPersistentIdentifier:longLongValue];
  if (v8)
  {
    v9 = [statusCopy copy];
    downloadStatus = v8->_downloadStatus;
    v8->_downloadStatus = v9;

    v13 = SSVBookAssetDaemonFramework(v11, v12);
    v14 = SSVWeakLinkedClassForString(&cfstr_Bldownloadqueu.isa, v13);
    if (v14)
    {
      sharedInstance = [v14 sharedInstance];
      downloadQueue = v8->_downloadQueue;
      v8->_downloadQueue = sharedInstance;
LABEL_16:

      goto LABEL_17;
    }

    downloadQueue = +[SSLogConfig sharedStoreServicesConfig];
    if (!downloadQueue)
    {
      downloadQueue = +[SSLogConfig sharedConfig];
    }

    shouldLog = [downloadQueue shouldLog];
    if ([downloadQueue shouldLogToDisk])
    {
      LODWORD(v18) = shouldLog | 2;
    }

    else
    {
      LODWORD(v18) = shouldLog;
    }

    oSLogObject = [downloadQueue OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v20 = objc_opt_class();
      v31 = 138543362;
      v32 = v20;
      v21 = v20;
      v22 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "[%{public}@]: Could not create a BLDownloadQueue sharedInstance", &v31, 12);

      if (!v22)
      {
        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:4];
      free(v22);
      SSFileLog(downloadQueue, @"%@", v23, v24, v25, v26, v27, v28, oSLogObject);
    }

    goto LABEL_16;
  }

LABEL_17:

  return v8;
}

- (id)downloadPhaseIdentifier
{
  downloadPhaseIdentifierOverride = self->_downloadPhaseIdentifierOverride;
  if (!downloadPhaseIdentifierOverride)
  {
    downloadPhase = [(SSBookDownloadStatus *)self->_downloadStatus downloadPhase];
    v4 = 0;
    if (downloadPhase <= 3)
    {
      if (downloadPhase > 1)
      {
        if (downloadPhase == 2)
        {
          v5 = SSDownloadPhaseDownloading;
        }

        else
        {
          v5 = SSDownloadPhasePaused;
        }
      }

      else if (downloadPhase)
      {
        if (downloadPhase != 1)
        {
          goto LABEL_23;
        }

        v5 = SSDownloadPhaseWaiting;
      }

      else
      {
        v5 = SSDownloadPhasePreflight;
      }
    }

    else if (downloadPhase <= 5)
    {
      if (downloadPhase == 4)
      {
        v5 = SSDownloadPhaseCanceled;
      }

      else
      {
        v5 = &SSDownloadPhaseFailed;
      }
    }

    else
    {
      switch(downloadPhase)
      {
        case 6:
          v5 = SSDownloadPhaseProcessing;
          break;
        case 7:
          v5 = SSDownloadPhaseInstalling;
          break;
        case 8:
          v5 = SSDownloadPhaseFinished;
          break;
        default:
          goto LABEL_23;
      }
    }

    downloadPhaseIdentifierOverride = *v5;
  }

  v4 = downloadPhaseIdentifierOverride;
LABEL_23:

  return v4;
}

- (double)percentComplete
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = objc_opt_class();
  downloadStatus = self->_downloadStatus;
  v9 = v7;
  percentComplete = [(SSBookDownloadStatus *)downloadStatus percentComplete];
  [percentComplete doubleValue];
  v23 = 138543618;
  v24 = v7;
  v25 = 2048;
  v26 = v11;
  v12 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 1, "[%{public}@]: percentComplete: %f", &v23, 22);

  if (v12)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog(v3, @"%@", v13, v14, v15, v16, v17, v18, oSLogObject);
LABEL_12:
  }

  percentComplete2 = [(SSBookDownloadStatus *)self->_downloadStatus percentComplete];
  [percentComplete2 doubleValue];
  v21 = v20;

  return v21;
}

- (void)pause
{
  downloadQueue = self->_downloadQueue;
  downloadID = [(SSBookDownload *)self downloadID];
  [(SSBookDownloadQueue *)downloadQueue pauseDownloadWithID:downloadID withCompletion:0];
}

- (void)resume
{
  downloadQueue = self->_downloadQueue;
  downloadID = [(SSBookDownload *)self downloadID];
  [(SSBookDownloadQueue *)downloadQueue resumeDownloadWithID:downloadID withCompletion:0];
}

- (id)valueForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"7"])
  {
    storeID = [(SSBookDownloadStatus *)self->_downloadStatus storeID];
LABEL_10:
    v8 = storeID;
    goto LABEL_11;
  }

  if ([propertyCopy isEqualToString:@"Q"])
  {
    storeID = [(SSBookDownloadStatus *)self->_downloadStatus downloadID];
    goto LABEL_10;
  }

  if ([propertyCopy isEqualToString:@"V"])
  {
    v6 = MEMORY[0x1E696AD98];
    isRestore = [(SSBookDownloadStatus *)self->_downloadStatus isRestore];
LABEL_9:
    storeID = [v6 numberWithBool:isRestore];
    goto LABEL_10;
  }

  if ([propertyCopy isEqualToString:@"M"])
  {
    v6 = MEMORY[0x1E696AD98];
    isRestore = [(SSBookDownloadStatus *)self->_downloadStatus isPurchase];
    goto LABEL_9;
  }

  if ([propertyCopy isEqualToString:@"c"])
  {
    v8 = @"com.apple.bookassetd";
  }

  else
  {
    if ([propertyCopy isEqualToString:@"1"])
    {
      storeID = @"ebook";
      goto LABEL_10;
    }

    if (([propertyCopy isEqualToString:@"11"] & 1) == 0)
    {
      if ([propertyCopy isEqualToString:@"d"])
      {
        storeID = [(SSBookDownloadStatus *)self->_downloadStatus artistName];
        goto LABEL_10;
      }

      if ([propertyCopy isEqualToString:@"i"])
      {
        storeID = [(SSBookDownloadStatus *)self->_downloadStatus genre];
        goto LABEL_10;
      }

      if ([propertyCopy isEqualToString:@"2"])
      {
        storeID = [(SSBookDownloadStatus *)self->_downloadStatus title];
        goto LABEL_10;
      }

      if ([propertyCopy isEqualToString:@"8"])
      {
        storeID = [(SSBookDownloadStatus *)self->_downloadStatus purchaseDate];
        goto LABEL_10;
      }

      if ([propertyCopy isEqualToString:@"t"])
      {
        v6 = MEMORY[0x1E696AD98];
        isRestore = [(SSBookDownloadStatus *)self->_downloadStatus isSample];
        goto LABEL_9;
      }
    }

    v8 = 0;
  }

LABEL_11:

  return v8;
}

- (int64_t)bytesDownloaded
{
  transferBytesWritten = [(SSBookDownloadStatus *)self->_downloadStatus transferBytesWritten];
  longLongValue = [transferBytesWritten longLongValue];

  return longLongValue;
}

- (int64_t)bytesTotal
{
  transferBytesExpected = [(SSBookDownloadStatus *)self->_downloadStatus transferBytesExpected];
  longLongValue = [transferBytesExpected longLongValue];

  return longLongValue;
}

- (double)estimatedSecondsRemaining
{
  estimatedTimeRemaining = [(SSBookDownloadStatus *)self->_downloadStatus estimatedTimeRemaining];
  [estimatedTimeRemaining doubleValue];
  v4 = v3;

  return v4;
}

- (id)metadata
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported deprecated method for book downloads", &v16, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (id)networkConstraints
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported deprecated method for book downloads", &v16, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (void)setMetadata:(id)metadata
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported deprecated method for book downloads", &v16, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }
}

- (void)setNetworkConstraints:(id)constraints
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported deprecated method for book downloads", &v16, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }
}

- (void)setStatus:(id)status
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported deprecated method for book downloads", &v16, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }
}

- (id)status
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported deprecated method for book downloads", &v16, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (id)assetsForType:(id)type
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v17 = 138543362;
  v18 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for book downloads", &v17, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (BOOL)addAsset:(id)asset forType:(id)type
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [SSLogConfig sharedStoreServicesConfig:asset];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v9 = NSStringFromSelector(a2);
  v18 = 138543362;
  v19 = v9;
  v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for book downloads", &v18, 12);

  if (v10)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (id)backgroundNetworkingJobGroupName
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for book downloads", &v16, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (id)downloadPolicy
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for book downloads", &v16, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (int64_t)downloadSizeLimit
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for book downloads", &v16, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (BOOL)isBackgroundNetworkingUserInitiated
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for book downloads", &v16, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (BOOL)isEligibleForRestore:(id *)restore
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v17 = 138543362;
  v18 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for book downloads", &v17, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (void)prioritizeAboveDownload:(id)download completionBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [SSLogConfig sharedStoreServicesConfig:download];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v9 = NSStringFromSelector(a2);
  v17 = 138543362;
  v18 = v9;
  v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for book downloads", &v17, 12);

  if (v10)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
LABEL_12:
  }
}

- (BOOL)removeAsset:(id)asset
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v17 = 138543362;
  v18 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for book downloads", &v17, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (void)restart
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v15 = 138543362;
  v16 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for book downloads", &v15, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }
}

- (void)setBackgroundNetworkingJobGroupName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for book downloads", &v16, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }
}

- (void)setBackgroundNetworkingUserInitiated:(BOOL)initiated
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for book downloads", &v16, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }
}

- (void)setDownloadHandler:(id)handler completionBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [SSLogConfig sharedStoreServicesConfig:handler];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v9 = NSStringFromSelector(a2);
  v17 = 138543362;
  v18 = v9;
  v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for book downloads", &v17, 12);

  if (v10)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
LABEL_12:
  }
}

- (void)setDownloadPolicy:(id)policy
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for book downloads", &v16, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }
}

- (void)setValuesWithStoreDownloadMetadata:(id)metadata
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for book downloads", &v16, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }
}

@end