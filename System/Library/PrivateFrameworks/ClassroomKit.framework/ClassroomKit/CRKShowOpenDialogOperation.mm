@interface CRKShowOpenDialogOperation
+ (id)fakeBundleID;
- (CRKShowOpenDialogOperation)initWithFileURLs:(id)ls keepOriginalFiles:(BOOL)files previewImageData:(id)data senderName:(id)name autoAccept:(BOOL)accept sourceBundleIdentifier:(id)identifier filesDescription:(id)description;
- (CRKShowOpenDialogOperation)initWithFileURLs:(id)ls keepOriginalFiles:(BOOL)files previewImageData:(id)data senderName:(id)name autoAccept:(BOOL)accept sourceBundleIdentifier:(id)identifier filesDescription:(id)description cleanupDelay:(double)self0 sharingPrimitives:(id)self1 fileSystemPrimitives:(id)self2;
- (void)cancel;
- (void)cleanupHiddenTransferItemsIfNeeded;
- (void)failWithError:(id)error;
- (void)startTransfer;
- (void)succeedIfNeeded;
- (void)transferDidFinishWithSuccess:(BOOL)success destinationPath:(id)path error:(id)error;
- (void)transferDidProgressWithSuccess:(BOOL)success destinationPath:(id)path error:(id)error;
- (void)transferDidStartWithSuccess:(BOOL)success destinationPath:(id)path error:(id)error;
- (void)transferWithIdentifierWasAccepted:(id)accepted;
- (void)transferWithIdentifierWasDeclined:(id)declined error:(id)error;
@end

@implementation CRKShowOpenDialogOperation

- (CRKShowOpenDialogOperation)initWithFileURLs:(id)ls keepOriginalFiles:(BOOL)files previewImageData:(id)data senderName:(id)name autoAccept:(BOOL)accept sourceBundleIdentifier:(id)identifier filesDescription:(id)description
{
  acceptCopy = accept;
  filesCopy = files;
  descriptionCopy = description;
  identifierCopy = identifier;
  nameCopy = name;
  dataCopy = data;
  lsCopy = ls;
  v21 = objc_opt_new();
  v22 = objc_opt_new();
  v23 = [(CRKShowOpenDialogOperation *)self initWithFileURLs:lsCopy keepOriginalFiles:filesCopy previewImageData:dataCopy senderName:nameCopy autoAccept:acceptCopy sourceBundleIdentifier:identifierCopy filesDescription:10.0 cleanupDelay:descriptionCopy sharingPrimitives:v21 fileSystemPrimitives:v22];

  return v23;
}

- (CRKShowOpenDialogOperation)initWithFileURLs:(id)ls keepOriginalFiles:(BOOL)files previewImageData:(id)data senderName:(id)name autoAccept:(BOOL)accept sourceBundleIdentifier:(id)identifier filesDescription:(id)description cleanupDelay:(double)self0 sharingPrimitives:(id)self1 fileSystemPrimitives:(id)self2
{
  lsCopy = ls;
  dataCopy = data;
  nameCopy = name;
  identifierCopy = identifier;
  descriptionCopy = description;
  primitivesCopy = primitives;
  systemPrimitivesCopy = systemPrimitives;
  if (![lsCopy count])
  {
    [CRKShowOpenDialogOperation initWithFileURLs:keepOriginalFiles:previewImageData:senderName:autoAccept:sourceBundleIdentifier:filesDescription:cleanupDelay:sharingPrimitives:fileSystemPrimitives:];
  }

  v39.receiver = self;
  v39.super_class = CRKShowOpenDialogOperation;
  v23 = [(CRKShowOpenDialogOperation *)&v39 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->mURLs, ls);
    v24->mKeepOriginalFiles = files;
    v25 = [dataCopy copy];
    mPreviewImageData = v24->mPreviewImageData;
    v24->mPreviewImageData = v25;

    v27 = [nameCopy copy];
    mSenderName = v24->mSenderName;
    v24->mSenderName = v27;

    v24->mAutoAccept = accept;
    v29 = [identifierCopy copy];
    mSourceBundleIdentifier = v24->mSourceBundleIdentifier;
    v24->mSourceBundleIdentifier = v29;

    v31 = [descriptionCopy copy];
    mFilesDescription = v24->mFilesDescription;
    v24->mFilesDescription = v31;

    v24->_cleanupDelay = delay;
    objc_storeStrong(&v24->_sharingPrimitives, primitives);
    objc_storeStrong(&v24->_fileSystemPrimitives, systemPrimitives);
  }

  return v24;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = CRKShowOpenDialogOperation;
  [(CRKShowOpenDialogOperation *)&v4 cancel];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__CRKShowOpenDialogOperation_cancel__block_invoke;
  v3[3] = &unk_278DC10F0;
  v3[4] = self;
  [MEMORY[0x277CBEB88] cat_performBlockOnMainRunLoop:v3];
}

void __36__CRKShowOpenDialogOperation_cancel__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = *(a1 + 32);
    v3 = CATErrorWithCodeAndUserInfo();
    [v2 failWithError:v3];
  }
}

- (void)startTransfer
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Invalid item", &v2, 0xCu);
}

void __43__CRKShowOpenDialogOperation_startTransfer__block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v10 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (a3)
  {
    [WeakRetained transferWithIdentifierWasAccepted:v7];
  }

  else
  {
    [WeakRetained transferWithIdentifierWasDeclined:v7 error:v10];
  }
}

- (void)transferDidStartWithSuccess:(BOOL)success destinationPath:(id)path error:(id)error
{
  successCopy = success;
  v58 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  errorCopy = error;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKShowOpenDialogOperation transferDidStartWithSuccess:destinationPath:error:];
  }

  isExecuting = [(CRKShowOpenDialogOperation *)self isExecuting];
  if (isExecuting)
  {
    v11 = _CRKLogOperation(isExecuting);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      selfCopy = self;
      v52 = 1024;
      v53 = successCopy;
      v54 = 2114;
      v55 = pathCopy;
      v56 = 2114;
      v57 = errorCopy;
      _os_log_impl(&dword_243550000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Transfer did start. success: %d, destination: %{public}@, error: %{public}@", buf, 0x26u);
    }

    if (successCopy)
    {
      objc_storeStrong(&self->mTransferDirectoryURL, path);
      v37 = objc_opt_new();
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      transfer = [(CRKShowOpenDialogOperation *)self transfer];
      fileURLs = [transfer fileURLs];

      obj = fileURLs;
      v14 = [fileURLs countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v14)
      {
        v15 = v14;
        v39 = *v46;
        while (2)
        {
          v16 = 0;
          do
          {
            if (*v46 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v45 + 1) + 8 * v16);
            v18 = pathCopy;
            if (CRKIsiOS())
            {
              uUID = [MEMORY[0x277CCAD78] UUID];
              uUIDString = [uUID UUIDString];
              v21 = [v18 URLByAppendingPathComponent:uUIDString];

              v18 = v21;
            }

            fileSystemPrimitives = [(CRKShowOpenDialogOperation *)self fileSystemPrimitives];
            v44 = errorCopy;
            v23 = [fileSystemPrimitives makeDirectoryAtURL:v18 error:&v44];
            v24 = v44;

            if (!v23)
            {
              [(CRKShowOpenDialogOperation *)self failWithError:v24];

              errorCopy = v24;
              v33 = v37;
              goto LABEL_26;
            }

            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            lastPathComponent = [v17 lastPathComponent];
            v27 = [v18 URLByAppendingPathComponent:lastPathComponent];
            v28 = [defaultManager crk_collisionAvoidingURLForURL:v27];

            LODWORD(defaultManager) = self->mKeepOriginalFiles;
            fileSystemPrimitives2 = [(CRKShowOpenDialogOperation *)self fileSystemPrimitives];
            v30 = fileSystemPrimitives2;
            if (defaultManager == 1)
            {
              v43 = v24;
              v31 = [fileSystemPrimitives2 copyItemAtURL:v17 toURL:v28 error:&v43];
              v32 = v43;
            }

            else
            {
              v42 = v24;
              v31 = [fileSystemPrimitives2 moveItemAtURL:v17 toURL:v28 error:&v42];
              v32 = v42;
            }

            errorCopy = v32;

            if (v31)
            {
              [v37 addObject:v28];
            }

            else
            {
              [(CRKShowOpenDialogOperation *)self failWithError:errorCopy];
            }

            ++v16;
          }

          while (v15 != v16);
          v15 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v33 = v37;
      v34 = [v37 copy];
      transfer2 = [(CRKShowOpenDialogOperation *)self transfer];
      [transfer2 setDestFileURLs:v34];

      transfer3 = [(CRKShowOpenDialogOperation *)self transfer];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __80__CRKShowOpenDialogOperation_transferDidStartWithSuccess_destinationPath_error___block_invoke;
      v41[3] = &unk_278DC2600;
      v41[4] = self;
      [transfer3 updateWithState:2 completion:v41];

LABEL_26:
    }

    else
    {
      [(CRKShowOpenDialogOperation *)self failWithError:errorCopy];
    }
  }
}

- (void)transferDidProgressWithSuccess:(BOOL)success destinationPath:(id)path error:(id)error
{
  successCopy = success;
  v24 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  errorCopy = error;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKShowOpenDialogOperation transferDidProgressWithSuccess:destinationPath:error:];
  }

  isExecuting = [(CRKShowOpenDialogOperation *)self isExecuting];
  if (isExecuting)
  {
    v11 = _CRKLogOperation(isExecuting);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      selfCopy2 = self;
      v22 = 1024;
      *v23 = successCopy;
      *&v23[4] = 2114;
      *&v23[6] = pathCopy;
      *&v23[14] = 2114;
      *&v23[16] = errorCopy;
      _os_log_impl(&dword_243550000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Transfer did progress: success: %d, destination: %{public}@, error: %{public}@", buf, 0x26u);
    }

    if (successCopy)
    {
      v13 = _CRKLogOperation(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        transfer = [(CRKShowOpenDialogOperation *)self transfer];
        identifier = [transfer identifier];
        transfer2 = [(CRKShowOpenDialogOperation *)self transfer];
        *buf = 138543874;
        selfCopy2 = self;
        v22 = 2114;
        *v23 = identifier;
        *&v23[8] = 2114;
        *&v23[10] = transfer2;
        _os_log_impl(&dword_243550000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Finishing transfer. Identifier: %{public}@. Info: %{public}@", buf, 0x20u);
      }

      transfer3 = [(CRKShowOpenDialogOperation *)self transfer];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __83__CRKShowOpenDialogOperation_transferDidProgressWithSuccess_destinationPath_error___block_invoke;
      v18[3] = &unk_278DC2628;
      v18[4] = self;
      v19 = pathCopy;
      [transfer3 updateWithState:5 completion:v18];
    }

    else
    {
      [(CRKShowOpenDialogOperation *)self failWithError:errorCopy];
    }
  }
}

- (void)transferDidFinishWithSuccess:(BOOL)success destinationPath:(id)path error:(id)error
{
  successCopy = success;
  v20 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  errorCopy = error;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKShowOpenDialogOperation transferDidFinishWithSuccess:destinationPath:error:];
  }

  isExecuting = [(CRKShowOpenDialogOperation *)self isExecuting];
  if (isExecuting)
  {
    v11 = _CRKLogOperation(isExecuting);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138544130;
      selfCopy = self;
      v14 = 1024;
      v15 = successCopy;
      v16 = 2114;
      v17 = pathCopy;
      v18 = 2114;
      v19 = errorCopy;
      _os_log_impl(&dword_243550000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Transfer did finish. success: %d, destination: %{public}@, error: %{public}@", &v12, 0x26u);
    }

    if (successCopy)
    {
      self->mTransferFinished = 1;
      [(CRKShowOpenDialogOperation *)self succeedIfNeeded];
    }

    else
    {
      [(CRKShowOpenDialogOperation *)self failWithError:errorCopy];
    }
  }
}

- (void)transferWithIdentifierWasAccepted:(id)accepted
{
  v42 = *MEMORY[0x277D85DE8];
  acceptedCopy = accepted;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKShowOpenDialogOperation transferWithIdentifierWasAccepted:];
  }

  isExecuting = [(CRKShowOpenDialogOperation *)self isExecuting];
  if (isExecuting)
  {
    v6 = _CRKLogOperation(isExecuting);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v40 = 2114;
      v41 = acceptedCopy;
      _os_log_impl(&dword_243550000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Transfer with identifier %{public}@ ACCEPTED", buf, 0x16u);
    }

    if (CRKIsOSX())
    {
      v27 = acceptedCopy;
      v7 = MEMORY[0x277CBEB58];
      transfer = [(CRKShowOpenDialogOperation *)self transfer];
      destFileURLs = [transfer destFileURLs];
      v29 = [v7 setWithCapacity:{objc_msgSend(destFileURLs, "count")}];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      selfCopy2 = self;
      transfer2 = [(CRKShowOpenDialogOperation *)self transfer];
      destFileURLs2 = [transfer2 destFileURLs];

      obj = destFileURLs2;
      v12 = [destFileURLs2 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v34;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v34 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v33 + 1) + 8 * i);
            uRLByDeletingLastPathComponent = [v16 URLByDeletingLastPathComponent];
            [v29 addObject:uRLByDeletingLastPathComponent];
            lastPathComponent = [v16 lastPathComponent];
            v17URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];
            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            v21 = [v17URLByDeletingLastPathComponent URLByAppendingPathComponent:lastPathComponent];
            v22 = [defaultManager crk_collisionAvoidingURLForURL:v21];

            fileSystemPrimitives = [(CRKShowOpenDialogOperation *)selfCopy2 fileSystemPrimitives];
            v32 = 0;
            LOBYTE(v21) = [fileSystemPrimitives copyItemAtURL:v16 toURL:v22 error:&v32];
            v24 = v32;

            if ((v21 & 1) == 0)
            {
              [(CRKShowOpenDialogOperation *)selfCopy2 failWithError:v24];

              acceptedCopy = v27;
              goto LABEL_18;
            }
          }

          v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      self = selfCopy2;
      [(CRKShowOpenDialogOperation *)selfCopy2 cleanupDelay];
      v26 = dispatch_time(0, (v25 * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64__CRKShowOpenDialogOperation_transferWithIdentifierWasAccepted___block_invoke;
      block[3] = &unk_278DC10F0;
      block[4] = selfCopy2;
      dispatch_after(v26, MEMORY[0x277D85CD0], block);

      acceptedCopy = v27;
    }

    self->mTransferAccepted = 1;
    [(CRKShowOpenDialogOperation *)self succeedIfNeeded];
  }

LABEL_18:
}

- (void)transferWithIdentifierWasDeclined:(id)declined error:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  declinedCopy = declined;
  errorCopy = error;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKShowOpenDialogOperation transferWithIdentifierWasDeclined:error:];
  }

  if ([(CRKShowOpenDialogOperation *)self isExecuting])
  {
    domain = [errorCopy domain];
    v9 = @"UNABLE TO OPEN";
    if ([domain isEqualToString:@"ClassroomKit.error"] && objc_msgSend(errorCopy, "code") == 18)
    {
      v9 = @"DECLINED";
    }

    v10 = v9;

    v12 = _CRKLogOperation(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543874;
      selfCopy = self;
      v15 = 2114;
      v16 = declinedCopy;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_243550000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Transfer with identifier %{public}@ %{public}@", &v13, 0x20u);
    }

    [(CRKShowOpenDialogOperation *)self failWithError:errorCopy];
  }
}

- (void)cleanupHiddenTransferItemsIfNeeded
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *self;
  v5 = a2;
  verboseDescription = [a3 verboseDescription];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = verboseDescription;
  _os_log_error_impl(&dword_243550000, v5, OS_LOG_TYPE_ERROR, "Unable to cleanup directory: %{public}@: %{public}@", &v7, 0x16u);
}

- (void)succeedIfNeeded
{
  OUTLINED_FUNCTION_1_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)failWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    [CRKShowOpenDialogOperation failWithError:];
  }

  if (([(CRKShowOpenDialogOperation *)self isExecuting]& 1) == 0)
  {
    [CRKShowOpenDialogOperation failWithError:];
  }

  v6 = _CRKLogOperation([(CRKShowOpenDialogOperation *)self cleanupHiddenTransferItemsIfNeeded]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(CRKShowOpenDialogOperation *)self failWithError:errorCopy, v6];
  }

  transfer = [(CRKShowOpenDialogOperation *)self transfer];

  if (transfer)
  {
    transfer2 = [(CRKShowOpenDialogOperation *)self transfer];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__CRKShowOpenDialogOperation_failWithError___block_invoke;
    v9[3] = &unk_278DC2650;
    v11 = a2;
    v9[4] = self;
    v10 = errorCopy;
    [transfer2 updateWithState:3 completion:v9];
  }

  else
  {
    [(CRKShowOpenDialogOperation *)self endOperationWithError:errorCopy];
  }
}

void __44__CRKShowOpenDialogOperation_failWithError___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    __44__CRKShowOpenDialogOperation_failWithError___block_invoke_cold_1(a1);
  }

  v9 = [*(a1 + 32) isExecuting];
  if (v9)
  {
    v10 = _CRKLogOperation(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v13 = 138544130;
      v14 = v11;
      v15 = 1024;
      v16 = a2;
      v17 = 2114;
      v18 = v7;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&dword_243550000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Transfer canceled: success: %d, destination: %{public}@, error: %{public}@", &v13, 0x26u);
    }

    v12 = [*(a1 + 32) transfer];
    [v12 invalidate];

    [*(a1 + 32) endOperationWithError:*(a1 + 40)];
  }
}

+ (id)fakeBundleID
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier stringByAppendingString:@".fake"];

  return v4;
}

- (void)initWithFileURLs:keepOriginalFiles:previewImageData:senderName:autoAccept:sourceBundleIdentifier:filesDescription:cleanupDelay:sharingPrimitives:fileSystemPrimitives:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)transferDidStartWithSuccess:destinationPath:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)transferDidProgressWithSuccess:destinationPath:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)transferDidFinishWithSuccess:destinationPath:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)transferWithIdentifierWasAccepted:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)transferWithIdentifierWasDeclined:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)failWithError:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"failureError" object:? file:? lineNumber:? description:?];
}

- (void)failWithError:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)failWithError:(os_log_t)log .cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_243550000, log, OS_LOG_TYPE_ERROR, "%{public}@: Failed. Error: %{public}@", &v3, 0x16u);
}

void __44__CRKShowOpenDialogOperation_failWithError___block_invoke_cold_1(uint64_t a1)
{
  v10 = [MEMORY[0x277CCA890] currentHandler];
  NSStringFromSelector(*(a1 + 48));
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v3 v4];
}

@end