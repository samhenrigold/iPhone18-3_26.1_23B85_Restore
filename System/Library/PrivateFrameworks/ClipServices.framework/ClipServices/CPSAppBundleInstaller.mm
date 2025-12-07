@interface CPSAppBundleInstaller
- (BOOL)stopStallingCurrentInstallation;
- (CPSAppBundleInstaller)initWithBundleIdentifier:(id)identifier extractedBundleURL:(id)l;
- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client;
- (void)coordinatorDidCompleteSuccessfully:(id)successfully forApplicationRecord:(id)record;
- (void)coordinatorDidInstallPlaceholder:(id)placeholder forApplicationRecord:(id)record;
- (void)installWithCompletionHandler:(id)handler;
@end

@implementation CPSAppBundleInstaller

- (CPSAppBundleInstaller)initWithBundleIdentifier:(id)identifier extractedBundleURL:(id)l
{
  identifierCopy = identifier;
  lCopy = l;
  v13.receiver = self;
  v13.super_class = CPSAppBundleInstaller;
  v9 = [(CPSAppBundleInstaller *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleIdentifier, identifier);
    objc_storeStrong(&v10->_extractedBundleURL, l);
    v11 = v10;
  }

  return v10;
}

- (void)installWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x245D3D5F0](handler, a2);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v4;

  v40 = 0;
  extractedBundleURL = self->_extractedBundleURL;
  v39 = 0;
  v7 = [MEMORY[0x277D1C180] placeholderForInstallable:extractedBundleURL client:18 installType:1 metadata:0 error:&v39];
  v8 = v39;
  placeholder = self->_placeholder;
  self->_placeholder = v7;

  if (!v7)
  {
    v12 = CPS_LOG_CHANNEL_PREFIXClipServices(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CPSAppBundleInstaller installWithCompletionHandler:v12];
    }
  }

  v13 = MEMORY[0x277D1C170];
  bundleID = [(IXPlaceholder *)self->_placeholder bundleID];
  bundleIdentifier = bundleID;
  if (!bundleID)
  {
    bundleIdentifier = self->_bundleIdentifier;
  }

  v38 = v8;
  v16 = [v13 coordinatorForAppWithBundleID:bundleIdentifier withClientID:18 createIfNotExisting:1 created:&v40 error:&v38];
  v17 = v38;

  installCoordinator = self->_installCoordinator;
  self->_installCoordinator = v16;

  if (!v16)
  {
    v21 = CPS_LOG_CHANNEL_PREFIXClipServices(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CPSAppBundleInstaller installWithCompletionHandler:v21];
    }
  }

  [(IXInitiatingAppInstallCoordinator *)self->_installCoordinator setObserver:self];
  v22 = objc_opt_new();
  [v22 setLsInstallType:1];
  v23 = self->_installCoordinator;
  v37 = v17;
  v24 = [(IXInitiatingAppInstallCoordinator *)v23 setInstallOptions:v22 error:&v37];
  v25 = v37;

  if ((v24 & 1) == 0)
  {
    v28 = CPS_LOG_CHANNEL_PREFIXClipServices(v26, v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [CPSAppBundleInstaller installWithCompletionHandler:v28];
    }
  }

  v30 = self->_placeholder;
  v29 = self->_installCoordinator;
  v36 = v25;
  v31 = [(IXInitiatingAppInstallCoordinator *)v29 setPlaceholderPromise:v30 error:&v36];
  v32 = v36;

  if ((v31 & 1) == 0)
  {
    v35 = CPS_LOG_CHANNEL_PREFIXClipServices(v33, v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [CPSAppBundleInstaller installWithCompletionHandler:v35];
    }
  }
}

- (void)coordinatorDidInstallPlaceholder:(id)placeholder forApplicationRecord:(id)record
{
  v35 = *MEMORY[0x277D85DE8];
  placeholderCopy = placeholder;
  v7 = CPS_LOG_CHANNEL_PREFIXClipServices(placeholderCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v34 = placeholderCopy;
    _os_log_impl(&dword_2436ED000, v7, OS_LOG_TYPE_INFO, "Coordinator %{private}@ successfully installed placeholder", buf, 0xCu);
  }

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 0);
    v9 = self->_completionHandler;
    self->_completionHandler = 0;
  }

  v10 = placeholderCopy;
  v11 = objc_alloc(MEMORY[0x277D1C1A8]);
  v12 = MEMORY[0x277CCACA8];
  bundleID = [(IXPlaceholder *)self->_placeholder bundleID];
  v14 = [v12 stringWithFormat:@"App Asset: %@", bundleID];
  v15 = [v11 initWithName:v14 client:18 transferPath:self->_extractedBundleURL diskSpaceNeeded:0];
  appAssetPromise = self->_appAssetPromise;
  self->_appAssetPromise = v15;

  v19 = self->_appAssetPromise;
  if (!v19)
  {
    v20 = CPS_LOG_CHANNEL_PREFIXClipServices(v17, v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CPSAppBundleInstaller coordinatorDidInstallPlaceholder:v20 forApplicationRecord:?];
    }

    v19 = self->_appAssetPromise;
  }

  v32 = 0;
  v21 = [v10 setAppAssetPromise:v19 error:&v32];
  v22 = v32;
  v24 = v22;
  if ((v21 & 1) == 0)
  {
    v25 = CPS_LOG_CHANNEL_PREFIXClipServices(v22, v23);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CPSAppBundleInstaller coordinatorDidInstallPlaceholder:v25 forApplicationRecord:?];
    }
  }

  if (+[CPSClipURL shouldStallProgress](CPSClipURL, "shouldStallProgress") || +[CPSClipURL usesDemoMetadata])
  {
    [(IXPromisedTransferToPath *)self->_appAssetPromise setPercentComplete:0.5];
  }

  else
  {
    [(IXPromisedTransferToPath *)self->_appAssetPromise setComplete:1];
  }

  v31 = v24;
  v26 = [v10 setInitialODRAssetPromises:MEMORY[0x277CBEBF8] error:&v31];
  v27 = v31;

  if ((v26 & 1) == 0)
  {
    v30 = CPS_LOG_CHANNEL_PREFIXClipServices(v28, v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [CPSAppBundleInstaller coordinatorDidInstallPlaceholder:v30 forApplicationRecord:?];
    }
  }
}

- (void)coordinatorDidCompleteSuccessfully:(id)successfully forApplicationRecord:(id)record
{
  v10 = *MEMORY[0x277D85DE8];
  successfullyCopy = successfully;
  v7 = CPS_LOG_CHANNEL_PREFIXClipServices(successfullyCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138477827;
    v9 = successfullyCopy;
    _os_log_impl(&dword_2436ED000, v7, OS_LOG_TYPE_INFO, "Coordinator %{private}@ completed successfully", &v8, 0xCu);
  }

  self->_inactive = 1;
}

- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client
{
  reasonCopy = reason;
  v9 = CPS_LOG_CHANNEL_PREFIXClipServices(reasonCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [CPSAppBundleInstaller coordinator:reasonCopy canceledWithReason:v9 client:client];
  }

  self->_inactive = 1;
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, reasonCopy);
  }
}

- (BOOL)stopStallingCurrentInstallation
{
  appAssetPromise = self->_appAssetPromise;
  if (appAssetPromise)
  {
    [(IXPromisedTransferToPath *)self->_appAssetPromise setPercentComplete:1.0];
    [(IXPromisedTransferToPath *)self->_appAssetPromise setComplete:1];
  }

  else
  {
    v4 = CPS_LOG_CHANNEL_PREFIXClipServices(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_2436ED000, v4, OS_LOG_TYPE_INFO, "Unable to stop stalling installation because there's no app asset promise", v6, 2u);
    }
  }

  return appAssetPromise != 0;
}

- (void)installWithCompletionHandler:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "Unable to create IXPlaceholder with error %{public}@", v6, v7, v8, v9);
}

- (void)installWithCompletionHandler:(void *)a1 .cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "Unable to create IXInitiatingAppInstallCoordinator with error %{public}@", v6, v7, v8, v9);
}

- (void)installWithCompletionHandler:(void *)a1 .cold.3(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "Unable to set install options with error %{public}@", v6, v7, v8, v9);
}

- (void)installWithCompletionHandler:(void *)a1 .cold.4(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "Unable to set placeholder promise with error %{public}@", v6, v7, v8, v9);
}

- (void)coordinatorDidInstallPlaceholder:(void *)a1 forApplicationRecord:.cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "Failed to set app asset promise %{public}@", v6, v7, v8, v9);
}

- (void)coordinatorDidInstallPlaceholder:(void *)a1 forApplicationRecord:.cold.3(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "Failed to set ODR promises %{public}@", v6, v7, v8, v9);
}

- (void)coordinator:(uint64_t)a1 canceledWithReason:(void *)a2 client:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = IXStringForClientID();
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_2436ED000, v4, OS_LOG_TYPE_ERROR, "Failed for reason %@ client %@", &v6, 0x16u);
}

@end