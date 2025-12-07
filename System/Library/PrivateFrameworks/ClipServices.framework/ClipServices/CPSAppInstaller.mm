@interface CPSAppInstaller
- (CPSAppInstaller)initWithAppInfoFetcher:(id)fetcher;
- (void)installDownloadedAppWithBundleID:(id)d localFilePath:(id)path completionHandler:(id)handler;
@end

@implementation CPSAppInstaller

- (CPSAppInstaller)initWithAppInfoFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  v10.receiver = self;
  v10.super_class = CPSAppInstaller;
  v6 = [(CPSAppInstaller *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appInfoFetcher, fetcher);
    v8 = v7;
  }

  return v7;
}

- (void)installDownloadedAppWithBundleID:(id)d localFilePath:(id)path completionHandler:(id)handler
{
  v46 = *MEMORY[0x277D85DE8];
  dCopy = d;
  pathCopy = path;
  handlerCopy = handler;
  v11 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:dCopy];
  appState = [v11 appState];
  isInstalled = [appState isInstalled];

  if (isInstalled)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else if (-[CPSAppBundleInstaller inactive](self->_appBundleInstaller, "inactive") || (-[CPSAppBundleInstaller bundleIdentifier](self->_appBundleInstaller, "bundleIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isEqualToString:dCopy], v14, !v15))
  {
    if (!self->_archiveService)
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x2050000000;
      v19 = getDSArchiveServiceClass_softClass;
      v41 = getDSArchiveServiceClass_softClass;
      if (!getDSArchiveServiceClass_softClass)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v43 = __getDSArchiveServiceClass_block_invoke;
        v44 = &unk_278DCDC00;
        v45 = &v38;
        __getDSArchiveServiceClass_block_invoke(&buf);
        v19 = v39[3];
      }

      v20 = v19;
      _Block_object_dispose(&v38, 8);
      v21 = objc_alloc_init(v19);
      archiveService = self->_archiveService;
      self->_archiveService = v21;
    }

    v23 = MEMORY[0x277CBEBC0];
    v24 = NSTemporaryDirectory();
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v27 = [v24 stringByAppendingPathComponent:uUIDString];
    v28 = [v23 fileURLWithPath:v27];

    v29 = self->_archiveService;
    v30 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __84__CPSAppInstaller_installDownloadedAppWithBundleID_localFilePath_completionHandler___block_invoke;
    v33[3] = &unk_278DCDBD8;
    v37 = handlerCopy;
    v34 = v28;
    selfCopy = self;
    v36 = dCopy;
    v31 = v28;
    v32 = [(DSArchiveService *)v29 unarchiveItemAtURL:v30 passphrases:0 destinationFolderURL:v31 completionHandler:v33];
  }

  else
  {
    v18 = CPS_LOG_CHANNEL_PREFIXClipServices(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138477827;
      *(&buf + 4) = dCopy;
      _os_log_impl(&dword_2436ED000, v18, OS_LOG_TYPE_INFO, "An installation for bundle ID %{private}@ is already in flight", &buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0);
  }
}

void __84__CPSAppInstaller_installDownloadedAppWithBundleID_localFilePath_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v8 = v6;
    v9 = CPS_LOG_CHANNEL_PREFIXClipServices(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __84__CPSAppInstaller_installDownloadedAppWithBundleID_localFilePath_completionHandler___block_invoke_cold_1(v9, v8);
    }

    v10 = *(a1 + 56);
    v11 = [MEMORY[0x277CCA9B8] cps_errorWithCode:5 underlyingError:v8];
    (*(v10 + 16))(v10, v11);
  }

  else
  {
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = *(a1 + 32);
    v21 = 0;
    [v12 moveItemAtURL:v5 toURL:v13 error:&v21];
    v8 = v21;

    v14 = [[CPSAppBundleInstaller alloc] initWithBundleIdentifier:*(a1 + 48) extractedBundleURL:*(a1 + 32)];
    v15 = *(a1 + 40);
    v16 = *(v15 + 8);
    *(v15 + 8) = v14;

    v17 = *(a1 + 40);
    v18 = *(v17 + 8);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__CPSAppInstaller_installDownloadedAppWithBundleID_localFilePath_completionHandler___block_invoke_9;
    v19[3] = &unk_278DCDBB0;
    v19[4] = v17;
    v20 = *(a1 + 56);
    [v18 installWithCompletionHandler:v19];
  }
}

void __84__CPSAppInstaller_installDownloadedAppWithBundleID_localFilePath_completionHandler___block_invoke_9(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void __84__CPSAppInstaller_installDownloadedAppWithBundleID_localFilePath_completionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 cps_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_2436ED000, v3, OS_LOG_TYPE_ERROR, "Unable to unarchive IPA with error %{public}@", &v5, 0xCu);
}

@end