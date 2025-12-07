@interface BLDownloadQueue
+ (BLDownloadQueue)sharedInstance;
- (void)addDownloadsWithManifestRequest:(id)request uiManager:(id)manager completion:(id)completion;
- (void)purchaseWithRequest:(id)request uiManager:(id)manager completion:(id)completion;
- (void)setAutomaticDownloadEnabled:(BOOL)enabled uiManager:(id)manager withCompletion:(id)completion;
@end

@implementation BLDownloadQueue

+ (BLDownloadQueue)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D0E208;
  block[3] = &unk_278D15938;
  block[4] = self;
  if (qword_280C4FA98 != -1)
  {
    dispatch_once(&qword_280C4FA98, block);
  }

  v2 = qword_280C4FA88;

  return v2;
}

- (void)purchaseWithRequest:(id)request uiManager:(id)manager completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  managerCopy = manager;
  completionCopy = completion;
  v13 = objc_msgSend_presentingSceneIdentifier(requestCopy, v11, v12);

  if (!v13)
  {
    v16 = objc_msgSend_presentingSceneIdentifier(managerCopy, v14, v15);
    objc_msgSend_setPresentingSceneIdentifier_(requestCopy, v17, v16);
  }

  v18 = BLDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_msgSend_storeIdentifier(requestCopy, v19, v20);
    v24 = objc_msgSend_presentingSceneIdentifier(requestCopy, v22, v23);
    v29 = 141558530;
    v30 = 1752392040;
    v31 = 2112;
    v32 = v21;
    v33 = 2112;
    v34 = v24;
    _os_log_impl(&dword_241D0D000, v18, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: purchaseWithRequest:uiManager:completion: for asset %{mask.hash}@ with additional presentingSceneIdentifier: %@", &v29, 0x20u);
  }

  v25 = [BLUIHostServiceProxy alloc];
  v27 = objc_msgSend_initWithUIManager_forRequest_inDownloadQueue_(v25, v26, managerCopy, requestCopy, self);
  objc_msgSend__purchaseWithRequest_uiHostProxy_completion_(self, v28, requestCopy, v27, completionCopy);
}

- (void)addDownloadsWithManifestRequest:(id)request uiManager:(id)manager completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  managerCopy = manager;
  completionCopy = completion;
  v11 = BLDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = requestCopy;
    _os_log_impl(&dword_241D0D000, v11, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addDownloadsWithManifestRequest:uiManager:completion: for manifestRequest: %@", buf, 0xCu);
  }

  v12 = _os_activity_create(&dword_241D0D000, "addDownloadsWithManifestRequest:uiManager:completion:", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_241D1301C;
  v16[3] = &unk_278D159C8;
  v17 = managerCopy;
  v18 = requestCopy;
  selfCopy = self;
  v20 = completionCopy;
  v13 = completionCopy;
  v14 = requestCopy;
  v15 = managerCopy;
  os_activity_apply(v12, v16);
}

- (void)setAutomaticDownloadEnabled:(BOOL)enabled uiManager:(id)manager withCompletion:(id)completion
{
  managerCopy = manager;
  completionCopy = completion;
  v10 = BLDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D0D000, v10, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: setAutomaticDownloadEnabled", buf, 2u);
  }

  v11 = _os_activity_create(&dword_241D0D000, "setAutomaticDownloadEnabled:uiManager:completion:", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_241D13204;
  v14[3] = &unk_278D15A10;
  selfCopy = self;
  v17 = completionCopy;
  v15 = managerCopy;
  enabledCopy = enabled;
  v12 = managerCopy;
  v13 = completionCopy;
  os_activity_apply(v11, v14);
}

@end