@interface SBCaptureApplicationLaunchRequest
- (SBCaptureApplicationLaunchRequest)initWithCaptureApplicationBundleIdentifier:(id)identifier;
- (id)_cameraPrewarmer;
- (id)_errorWithCode:(int64_t)code underlyingError:(id)error;
- (void)_completeLaunchWithError:(id)error;
- (void)_setupContentObserverWithSceneEntity:(id)entity;
- (void)captureApplicationLaunchAssertionManager:(id)manager didUpdateAssertionForBundleIdentifier:(id)identifier;
- (void)dealloc;
- (void)initiate;
- (void)setLaunchTransaction:(id)transaction;
- (void)transactionDidComplete:(id)complete;
@end

@implementation SBCaptureApplicationLaunchRequest

- (SBCaptureApplicationLaunchRequest)initWithCaptureApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SBCaptureApplicationLaunchRequest;
  v6 = [(SBCaptureApplicationLaunchRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_captureApplicationBundleIdentifier, identifier);
    v8 = +[SBCaptureApplicationLaunchAssertionManager sharedInstance];
    launchAssertionManager = v7->_launchAssertionManager;
    v7->_launchAssertionManager = v8;
  }

  return v7;
}

- (void)dealloc
{
  [(BSTransaction *)self->_launchTransaction removeObserver:self];
  launchTransaction = self->_launchTransaction;
  self->_launchTransaction = 0;

  [(SBCaptureApplicationLaunchAssertionManager *)self->_launchAssertionManager removeObserver:self];
  launchAssertionManager = self->_launchAssertionManager;
  self->_launchAssertionManager = 0;

  v5.receiver = self;
  v5.super_class = SBCaptureApplicationLaunchRequest;
  [(SBCaptureApplicationLaunchRequest *)&v5 dealloc];
}

- (void)initiate
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = BSDispatchQueueAssertMain();
  v4 = SBLogCaptureApplication(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    captureApplicationBundleIdentifier = self->_captureApplicationBundleIdentifier;
    *buf = 138412290;
    v20 = captureApplicationBundleIdentifier;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Initiating launch request for %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __45__SBCaptureApplicationLaunchRequest_initiate__block_invoke;
  v16 = &unk_2783ABB98;
  objc_copyWeak(&v18, buf);
  selfCopy = self;
  v6 = MEMORY[0x223D6F7F0](&v13);
  if (self->_prewarmCamera)
  {
    launchType = self->_launchType;
    v8 = objc_alloc(MEMORY[0x277D02BC0]);
    v9 = [v8 initWithCameraPrewarmType:launchType == 0 applicationBundleIdentifier:{self->_captureApplicationBundleIdentifier, v13, v14, v15, v16}];
    _cameraPrewarmer = [(SBCaptureApplicationLaunchRequest *)self _cameraPrewarmer];
    [_cameraPrewarmer prewarmCameraForIdentifier:v9];
  }

  v11 = [SBCaptureApplicationCenter sharedInstance:v13];
  v12 = v11;
  if (!self->_launchType)
  {
    [v11 launchForExtensionToApplicationTransition:self->_captureApplicationBundleIdentifier launchActions:self->_launchActions completionHandler:v6];
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

void __45__SBCaptureApplicationLaunchRequest_initiate__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = +[SBApplicationController sharedInstance];
    v4 = [v3 applicationWithBundleIdentifier:*(*(a1 + 32) + 24)];

    v5 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:v4];
    [WeakRetained _setupContentObserverWithSceneEntity:v5];
  }

  else
  {
    v6 = [*(a1 + 32) _errorWithCode:1 underlyingError:0];
    v7 = *(*(a1 + 32) + 40);
    if (!v7)
    {
      goto LABEL_6;
    }

    WeakRetained = v6;
    (*(v7 + 16))();
  }

  v6 = WeakRetained;
LABEL_6:
}

- (void)transactionDidComplete:(id)complete
{
  v17 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  BSDispatchQueueAssertMain();
  isFailed = [completeCopy isFailed];

  if (isFailed)
  {
    error = [(BSTransaction *)self->_launchTransaction error];
    v8 = [(SBCaptureApplicationLaunchRequest *)self _errorWithCode:2 underlyingError:error];
  }

  else
  {
    v9 = SBLogCaptureApplication(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      captureApplicationBundleIdentifier = self->_captureApplicationBundleIdentifier;
      v15 = 138412290;
      v16 = captureApplicationBundleIdentifier;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Scene content is ready %@", &v15, 0xCu);
    }

    v8 = 0;
  }

  v11 = [(SBCaptureApplicationLaunchAssertionManager *)self->_launchAssertionManager assertionForBundleIdentifier:self->_captureApplicationBundleIdentifier];
  v12 = v11;
  if (v8 || !v11)
  {
    [(SBCaptureApplicationLaunchRequest *)self _completeLaunchWithError:v8];
  }

  else
  {
    v13 = SBLogCaptureApplication(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_captureApplicationBundleIdentifier;
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "There's a launch assertion held for %@, waiting for that to be invalidated to complete launch", &v15, 0xCu);
    }

    [(SBCaptureApplicationLaunchAssertionManager *)self->_launchAssertionManager addObserver:self];
  }
}

- (void)setLaunchTransaction:(id)transaction
{
  transactionCopy = transaction;
  launchTransaction = self->_launchTransaction;
  if (launchTransaction != transactionCopy)
  {
    v8 = transactionCopy;
    if (launchTransaction)
    {
      [(BSTransaction *)launchTransaction removeObserver:self];
      v7 = self->_launchTransaction;
      self->_launchTransaction = 0;
    }

    objc_storeStrong(&self->_launchTransaction, transaction);
    [(BSTransaction *)self->_launchTransaction addObserver:self];
    transactionCopy = v8;
  }
}

- (void)_completeLaunchWithError:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = SBLogCaptureApplication(errorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    captureApplicationBundleIdentifier = self->_captureApplicationBundleIdentifier;
    v8 = 138412290;
    v9 = captureApplicationBundleIdentifier;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Launch completed for %@", &v8, 0xCu);
  }

  [(SBCaptureApplicationLaunchAssertionManager *)self->_launchAssertionManager removeObserver:self];
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2](completionBlock, errorCopy);
  }
}

- (id)_cameraPrewarmer
{
  v2 = +[SBLockScreenManager sharedInstance];
  coverSheetViewController = [v2 coverSheetViewController];
  cameraPrewarmer = [coverSheetViewController cameraPrewarmer];

  return cameraPrewarmer;
}

- (void)_setupContentObserverWithSceneEntity:(id)entity
{
  sceneHandle = [entity sceneHandle];
  v4 = [[SBWaitForSceneContentAvailableTransaction alloc] initWithSceneHandle:sceneHandle manualListener:0];
  [(SBCaptureApplicationLaunchRequest *)self setLaunchTransaction:v4];

  launchTransaction = [(SBCaptureApplicationLaunchRequest *)self launchTransaction];
  [launchTransaction begin];
}

- (id)_errorWithCode:(int64_t)code underlyingError:(id)error
{
  errorCopy = error;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7 = dictionary;
  if (errorCopy)
  {
    [dictionary setObject:errorCopy forKey:*MEMORY[0x277CCA7E8]];
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:SBCaptureApplicationLaunchErrorDomain code:code userInfo:v7];

  return v8;
}

- (void)captureApplicationLaunchAssertionManager:(id)manager didUpdateAssertionForBundleIdentifier:(id)identifier
{
  managerCopy = manager;
  identifierCopy = identifier;
  v6 = managerCopy;
  v7 = identifierCopy;
  BSDispatchMain();
}

void __116__SBCaptureApplicationLaunchRequest_captureApplicationLaunchAssertionManager_didUpdateAssertionForBundleIdentifier___block_invoke(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1 + 5;
  if ([a1[4] isEqualToString:*(a1[5] + 3)])
  {
    v3 = [a1[6] assertionForBundleIdentifier:a1[4]];
    v4 = SBLogCaptureApplication(v3);
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __116__SBCaptureApplicationLaunchRequest_captureApplicationLaunchAssertionManager_didUpdateAssertionForBundleIdentifier___block_invoke_cold_1(v2, v3, v5);
      }
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*v2 + 3);
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Capture application (%@) ended delaying appearance, initiating a launch", &v7, 0xCu);
      }

      [*v2 _completeLaunchWithError:0];
    }
  }
}

void __116__SBCaptureApplicationLaunchRequest_captureApplicationLaunchAssertionManager_didUpdateAssertionForBundleIdentifier___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(*a1 + 24);
  v5 = [a2 identifier];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "Capture application (%@) has a launch assertion (UUID: %@), can't complete the launch", &v6, 0x16u);
}

@end