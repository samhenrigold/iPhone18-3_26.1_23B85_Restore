@interface WFRemoteExecutionFileCoder
- (WFRemoteExecutionCoordinator)coordinator;
- (WFRemoteExecutionFileCoder)initWithCoder:(id)coder;
- (WFRemoteExecutionFileCoder)initWithCoordinator:(id)coordinator requestIdentifier:(id)identifier;
- (id)decodeFileWithCoder:(id)coder fileShouldBeDeletedOnDeallocation:(BOOL *)deallocation fileIsSecurityScoped:(BOOL *)scoped;
- (int64_t)targetPlatform;
- (void)archiveFileAtURL:(id)l fileShouldBeDeletedOnDeallocation:(BOOL)deallocation withCoder:(id)coder;
- (void)cancelOutstandingTransfers;
- (void)encodeWithCoder:(id)coder;
- (void)fileAvailabilityChanged;
- (void)waitForFileAvailabilityWithCompletionHandler:(id)handler;
@end

@implementation WFRemoteExecutionFileCoder

- (WFRemoteExecutionCoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

- (WFRemoteExecutionFileCoder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WFRemoteExecutionFileCoder;
  v5 = [(WFFileCoder *)&v14 initWithCoder:coderCopy];
  if (v5 && (v6 = MEMORY[0x1E695DFD8], v7 = objc_opt_class(), [v6 setWithObjects:{v7, objc_opt_class(), 0}], v8 = objc_claimAutoreleasedReturnValue(), NSStringFromSelector(sel_transferIdentifiers), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(coderCopy, "decodeObjectOfClasses:forKey:", v8, v9), v10 = objc_claimAutoreleasedReturnValue(), transferIdentifiers = v5->_transferIdentifiers, v5->_transferIdentifiers = v10, transferIdentifiers, v9, v8, v5->_transferIdentifiers))
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFRemoteExecutionFileCoder;
  coderCopy = coder;
  [(WFFileCoder *)&v7 encodeWithCoder:coderCopy];
  transferIdentifiers = self->_transferIdentifiers;
  v6 = NSStringFromSelector(sel_transferIdentifiers);
  [coderCopy encodeObject:transferIdentifiers forKey:{v6, v7.receiver, v7.super_class}];
}

- (void)waitForFileAvailabilityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__WFRemoteExecutionFileCoder_waitForFileAvailabilityWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E837E1F8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFRemoteExecutionFileCoder;
  v5 = handlerCopy;
  [(WFFileCoder *)&v6 waitForFileAvailabilityWithCompletionHandler:v7];
}

uint64_t __75__WFRemoteExecutionFileCoder_waitForFileAvailabilityWithCompletionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) transferIdentifiers];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) fileURL];

    v5 = getWFRemoteExecutionLogObject();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v6)
      {
        v7 = [*(a1 + 32) transferIdentifiers];
        v11 = 136315394;
        v12 = "[WFRemoteExecutionFileCoder waitForFileAvailabilityWithCompletionHandler:]_block_invoke";
        v13 = 2114;
        v14 = v7;
        _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Files are already available with identifiers: %{public}@", &v11, 0x16u);
      }

      return (*(*(a1 + 40) + 16))();
    }

    else
    {
      if (v6)
      {
        v10 = [*(a1 + 32) transferIdentifiers];
        v11 = 136315394;
        v12 = "[WFRemoteExecutionFileCoder waitForFileAvailabilityWithCompletionHandler:]_block_invoke";
        v13 = 2114;
        v14 = v10;
        _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Waiting for files to be available with identifiers: %{public}@", &v11, 0x16u);
      }

      return [*(a1 + 32) setFileAvailabilityHandler:*(a1 + 40)];
    }
  }

  else
  {
    v9 = *(*(a1 + 40) + 16);

    return v9();
  }
}

- (void)fileAvailabilityChanged
{
  fileURL = [(WFRemoteExecutionFileCoder *)self fileURL];

  if (fileURL)
  {
    fileAvailabilityHandler = [(WFRemoteExecutionFileCoder *)self fileAvailabilityHandler];

    if (fileAvailabilityHandler)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__WFRemoteExecutionFileCoder_fileAvailabilityChanged__block_invoke;
      block[3] = &unk_1E837FA70;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t __53__WFRemoteExecutionFileCoder_fileAvailabilityChanged__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) transferIdentifiers];
    v6 = 136315394;
    v7 = "[WFRemoteExecutionFileCoder fileAvailabilityChanged]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_INFO, "%s Files became available with identifiers: %{public}@", &v6, 0x16u);
  }

  v4 = [*(a1 + 32) fileAvailabilityHandler];
  v4[2]();

  return [*(a1 + 32) setFileAvailabilityHandler:0];
}

- (id)decodeFileWithCoder:(id)coder fileShouldBeDeletedOnDeallocation:(BOOL *)deallocation fileIsSecurityScoped:(BOOL *)scoped
{
  coderCopy = coder;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferIdentifier"];
  if (v9 && ([(NSMutableArray *)self->_transferIdentifiers containsObject:v9]& 1) != 0)
  {
    fileURL = [(WFRemoteExecutionFileCoder *)self fileURL];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WFRemoteExecutionFileCoder;
    fileURL = [(WFFileCoder *)&v13 decodeFileWithCoder:coderCopy fileShouldBeDeletedOnDeallocation:deallocation fileIsSecurityScoped:scoped];
  }

  v11 = fileURL;

  return v11;
}

- (void)cancelOutstandingTransfers
{
  coordinator = [(WFRemoteExecutionFileCoder *)self coordinator];
  [coordinator cancelPendingFileTransfers];
}

- (void)archiveFileAtURL:(id)l fileShouldBeDeletedOnDeallocation:(BOOL)deallocation withCoder:(id)coder
{
  v7 = MEMORY[0x1E696AFB0];
  coderCopy = coder;
  lCopy = l;
  uUID = [v7 UUID];
  uUIDString = [uUID UUIDString];

  coordinator = [(WFRemoteExecutionFileCoder *)self coordinator];
  requestIdentifier = [(WFRemoteExecutionFileCoder *)self requestIdentifier];
  [coordinator sendFileAtURL:lCopy transferIdentifier:uUIDString requestIdentifier:requestIdentifier error:0];

  transferIdentifiers = [(WFRemoteExecutionFileCoder *)self transferIdentifiers];
  [transferIdentifiers addObject:uUIDString];

  [coderCopy encodeObject:uUIDString forKey:@"transferIdentifier"];
}

- (int64_t)targetPlatform
{
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  v3 = 2 * ([currentDevice platform] == 0);

  return v3;
}

- (WFRemoteExecutionFileCoder)initWithCoordinator:(id)coordinator requestIdentifier:(id)identifier
{
  coordinatorCopy = coordinator;
  identifierCopy = identifier;
  if (!coordinatorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionFileCoder.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"coordinator"}];
  }

  v15.receiver = self;
  v15.super_class = WFRemoteExecutionFileCoder;
  v9 = [(WFRemoteExecutionFileCoder *)&v15 init];
  if (v9)
  {
    v10 = objc_opt_new();
    transferIdentifiers = v9->_transferIdentifiers;
    v9->_transferIdentifiers = v10;

    objc_storeWeak(&v9->_coordinator, coordinatorCopy);
    objc_storeStrong(&v9->_requestIdentifier, identifier);
    v12 = v9;
  }

  return v9;
}

@end