@interface SRRemoteAuthorizationPromptViewController
+ (void)initialize;
+ (void)requestViewControllerWithCompletionHandler:(id)handler;
- (id)serviceViewControllerProxy;
- (void)authorizationRequestCompleted;
- (void)authorizationRequestDidDisappear;
- (void)authorizationRequestFailedWithError:(id)error;
- (void)authorizationRequestWillDisappear;
- (void)authorizationUIReadyForDisplayModally:(BOOL)modally;
- (void)dealloc;
- (void)deleteAllSamples;
- (void)requestAuthorizationForBundle:(id)bundle services:(id)services;
- (void)requestAuthorizationMigrationForBundle:(id)bundle services:(id)services;
- (void)showAppsAndStudies;
- (void)showFirstRunOnboarding;
- (void)showResearchData;
- (void)showStudyAuthorizationForBundlePath:(id)path;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewServiceDidTerminateWithError:(id)error;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SRRemoteAuthorizationPromptViewController

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SRRemoteAuthorizationPromptViewController;
  [(_UIRemoteViewController *)&v4 viewWillDisappear:disappear];
  [(SRRemoteAuthorizationPromptViewController *)self authorizationRequestWillDisappear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SRRemoteAuthorizationPromptViewController;
  [(_UIRemoteViewController *)&v4 viewDidDisappear:disappear];
  [(SRRemoteAuthorizationPromptViewController *)self authorizationRequestDidDisappear];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogAuthorizationPromptViewController = os_log_create("com.apple.SensorKit", "AuthorizationPromptViewController");
  }
}

+ (void)requestViewControllerWithCompletionHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v4 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.SensorKit.SensorKitViewService" error:&v11];
  v5 = v11;
  if (v11)
  {
    v6 = SRLogAuthorizationPromptViewController;
    if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v5;
      _os_log_error_impl(&dword_265602000, v6, OS_LOG_TYPE_ERROR, "Error getting extension %@", location, 0xCu);
    }
  }

  else
  {
    v7 = v4;
    if (v4)
    {
      objc_initWeak(location, v4);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __88__SRRemoteAuthorizationPromptViewController_requestViewControllerWithCompletionHandler___block_invoke;
      v9[3] = &unk_279B982D8;
      v9[4] = handler;
      objc_copyWeak(&v10, location);
      [v7 instantiateViewControllerWithInputItems:0 connectionHandler:v9];
      objc_destroyWeak(&v10);
      objc_destroyWeak(location);
      return;
    }

    v8 = SRLogAuthorizationPromptViewController;
    if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_265602000, v8, OS_LOG_TYPE_ERROR, "Got nil extension when requesting prompt extension", location, 2u);
    }
  }

  (*(handler + 2))(handler, 0);
}

uint64_t __88__SRRemoteAuthorizationPromptViewController_requestViewControllerWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a3 || a4)
  {
    v10 = SRLogAuthorizationPromptViewController;
    if (!os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_ERROR))
    {
      return (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
    }

    v14 = 138543362;
    v15 = a4;
    v11 = "Got nil extension when requesting prompt extension, error %{public}@";
    v12 = v10;
LABEL_12:
    _os_log_error_impl(&dword_265602000, v12, OS_LOG_TYPE_ERROR, v11, &v14, 0xCu);
    return (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = SRLogAuthorizationPromptViewController;
    if (!os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_ERROR))
    {
      return (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
    }

    v14 = 138543362;
    v15 = a3;
    v11 = "Got view controller of wrong class: %{public}@";
    v12 = v13;
    goto LABEL_12;
  }

  [a3 setWeakExtension:objc_loadWeak((a1 + 40))];
  [a3 setRequest:a2];
  v8 = *(*(a1 + 32) + 16);

  return v8();
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v11 = *MEMORY[0x277D85DE8];
  domain = [error domain];
  if ([domain isEqualToString:*MEMORY[0x277D77620]])
  {
    v6 = [error code] == 1;
  }

  else
  {
    v6 = 0;
  }

  delegate = [(SRRemoteAuthorizationPromptViewController *)self delegate];
  v8 = SRLogAuthorizationPromptViewController;
  if (!error || v6)
  {
    if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_265602000, v8, OS_LOG_TYPE_DEFAULT, "Prompt exited", &v9, 2u);
    }

    [(SRRemoteAuthorizationPromptViewControllerDelegate *)delegate authorizationRequestCompleted];
  }

  else
  {
    if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      errorCopy = error;
      _os_log_error_impl(&dword_265602000, v8, OS_LOG_TYPE_ERROR, "Prompt exited, %{public}@", &v9, 0xCu);
    }

    [(SRRemoteAuthorizationPromptViewControllerDelegate *)delegate authorizationRequestFailedWithError:error];
  }
}

- (void)authorizationRequestCompleted
{
  v3 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_265602000, v3, OS_LOG_TYPE_DEFAULT, "Prompt completed", v4, 2u);
  }

  [(SRRemoteAuthorizationPromptViewControllerDelegate *)[(SRRemoteAuthorizationPromptViewController *)self delegate] authorizationRequestCompleted];
}

- (void)authorizationRequestFailedWithError:(id)error
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    errorCopy = error;
    _os_log_impl(&dword_265602000, v5, OS_LOG_TYPE_DEFAULT, "Prompt failed, %{public}@", &v6, 0xCu);
  }

  [(SRRemoteAuthorizationPromptViewControllerDelegate *)[(SRRemoteAuthorizationPromptViewController *)self delegate] authorizationRequestFailedWithError:error];
}

- (void)authorizationUIReadyForDisplayModally:(BOOL)modally
{
  modallyCopy = modally;
  v5 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_265602000, v5, OS_LOG_TYPE_DEFAULT, "Prompt UI ready", v6, 2u);
  }

  [(SRRemoteAuthorizationPromptViewControllerDelegate *)[(SRRemoteAuthorizationPromptViewController *)self delegate] authorizationUIReadyForDisplayModally:modallyCopy];
}

- (void)authorizationRequestWillDisappear
{
  delegate = [(SRRemoteAuthorizationPromptViewController *)self delegate];

  [(SRRemoteAuthorizationPromptViewControllerDelegate *)delegate authorizationRequestWillDisappear];
}

- (void)authorizationRequestDidDisappear
{
  delegate = [(SRRemoteAuthorizationPromptViewController *)self delegate];

  [(SRRemoteAuthorizationPromptViewControllerDelegate *)delegate authorizationRequestDidDisappear];
}

- (id)serviceViewControllerProxy
{
  v3.receiver = self;
  v3.super_class = SRRemoteAuthorizationPromptViewController;
  return [(_UIRemoteViewController *)&v3 serviceViewControllerProxy];
}

- (void)requestAuthorizationForBundle:(id)bundle services:(id)services
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    servicesCopy = services;
    _os_log_impl(&dword_265602000, v7, OS_LOG_TYPE_DEFAULT, "Requesting authorization for services %{public}@", &v8, 0xCu);
  }

  [-[SRRemoteAuthorizationPromptViewController serviceViewControllerProxy](self "serviceViewControllerProxy")];
}

- (void)requestAuthorizationMigrationForBundle:(id)bundle services:(id)services
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    servicesCopy = services;
    _os_log_impl(&dword_265602000, v7, OS_LOG_TYPE_DEFAULT, "Requesting authorization migration for services %{public}@", &v8, 0xCu);
  }

  [-[SRRemoteAuthorizationPromptViewController serviceViewControllerProxy](self "serviceViewControllerProxy")];
}

- (void)showAppsAndStudies
{
  v3 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_265602000, v3, OS_LOG_TYPE_DEFAULT, "Trying to display apps and studies view", v4, 2u);
  }

  [-[SRRemoteAuthorizationPromptViewController serviceViewControllerProxy](self "serviceViewControllerProxy")];
}

- (void)showStudyAuthorizationForBundlePath:(id)path
{
  v5 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_265602000, v5, OS_LOG_TYPE_DEFAULT, "Trying to display study's authorization", v6, 2u);
  }

  [-[SRRemoteAuthorizationPromptViewController serviceViewControllerProxy](self "serviceViewControllerProxy")];
}

- (void)showResearchData
{
  v3 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_265602000, v3, OS_LOG_TYPE_DEFAULT, "Trying to display research data view", v4, 2u);
  }

  [-[SRRemoteAuthorizationPromptViewController serviceViewControllerProxy](self "serviceViewControllerProxy")];
}

- (void)showFirstRunOnboarding
{
  v3 = SRLogAuthorizationPromptViewController;
  if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_265602000, v3, OS_LOG_TYPE_DEFAULT, "Trying to display first run onboarding", v4, 2u);
  }

  [-[SRRemoteAuthorizationPromptViewController serviceViewControllerProxy](self "serviceViewControllerProxy")];
}

- (void)deleteAllSamples
{
  serviceViewControllerProxy = [(SRRemoteAuthorizationPromptViewController *)self serviceViewControllerProxy];

  [serviceViewControllerProxy deleteAllSamples];
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  weakExtension = [(SRRemoteAuthorizationPromptViewController *)self weakExtension];
  if (weakExtension)
  {
    v4 = weakExtension;
    if ([(SRRemoteAuthorizationPromptViewController *)self request])
    {
      v5 = SRLogAuthorizationPromptViewController;
      if (os_log_type_enabled(SRLogAuthorizationPromptViewController, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v8 = v4;
        v9 = 2112;
        request = [(SRRemoteAuthorizationPromptViewController *)self request];
        _os_log_debug_impl(&dword_265602000, v5, OS_LOG_TYPE_DEBUG, "Cancel extension %@ for request %@", buf, 0x16u);
      }

      [(NSExtension *)v4 cancelExtensionRequestWithIdentifier:[(SRRemoteAuthorizationPromptViewController *)self request]];
    }
  }

  [(SRRemoteAuthorizationPromptViewController *)self setRequest:0];
  v6.receiver = self;
  v6.super_class = SRRemoteAuthorizationPromptViewController;
  [(SRRemoteAuthorizationPromptViewController *)&v6 dealloc];
}

@end