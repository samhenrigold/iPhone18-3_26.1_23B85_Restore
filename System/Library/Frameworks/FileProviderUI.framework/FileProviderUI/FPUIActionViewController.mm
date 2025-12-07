@interface FPUIActionViewController
+ (id)actionControllerForActionIdentifier:(id)identifier actionTitle:(id)title items:(id)items providerIdentifier:(id)providerIdentifier domainIdentifier:(id)domainIdentifier;
+ (id)actionControllerForAuthenticationUsingURL:(id)l providerIdentifier:(id)identifier;
+ (id)actionControllerForConnectingToServerURL:(id)l actionTitle:(id)title providerIdentifier:(id)identifier;
+ (id)actionControllerForError:(id)error extensionIdentifier:(id)identifier providerDomainIdentifier:(id)domainIdentifier;
+ (id)actionControllerForError:(id)error providerIdentifier:(id)identifier;
+ (id)actionControllerForInlineError:(id)error providerIdentifier:(id)identifier;
+ (id)actionControllerForInlineError:(id)error providerIdentifier:(id)identifier providerDomainIdentifier:(id)domainIdentifier;
- (FPUIActionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (FPUIActionViewControllerDelegate)delegate;
- (id)_getExtensionWithError:(id *)error;
- (void)_delegateDidFinishWithUserInfo:(id)info error:(id)error;
- (void)_dismissViewController;
- (void)effectiveAppearanceDidChange:(id)change;
- (void)embedViewController:(id)controller;
- (void)remoteActionContext:(id)context didEncounterError:(id)error completionHandler:(id)handler;
- (void)viewDidLoad;
@end

@implementation FPUIActionViewController

- (FPUIActionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = FPUIActionViewController;
  v4 = [(FPUIActionViewController *)&v8 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(FPUIActionViewController *)v4 setModalPresentationStyle:2];
    v6 = v5;
  }

  return v5;
}

+ (id)actionControllerForActionIdentifier:(id)identifier actionTitle:(id)title items:(id)items providerIdentifier:(id)providerIdentifier domainIdentifier:(id)domainIdentifier
{
  domainIdentifierCopy = domainIdentifier;
  providerIdentifierCopy = providerIdentifier;
  itemsCopy = items;
  titleCopy = title;
  identifierCopy = identifier;
  v16 = [[FPUIActionViewController alloc] initWithNibName:0 bundle:0];
  [(FPUIActionViewController *)v16 setProviderIdentifier:providerIdentifierCopy];

  [(FPUIActionViewController *)v16 setActionIdentifier:identifierCopy];
  [(FPUIActionViewController *)v16 setItems:itemsCopy];

  [(FPUIActionViewController *)v16 setActionTitle:titleCopy];
  [(FPUIActionViewController *)v16 setDomainIdentifier:domainIdentifierCopy];

  [(FPUIActionViewController *)v16 setModalPresentationStyle:2];

  return v16;
}

+ (id)actionControllerForAuthenticationUsingURL:(id)l providerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  lCopy = l;
  v7 = [[FPUIActionViewController alloc] initWithNibName:0 bundle:0];
  [(FPUIActionViewController *)v7 setProviderIdentifier:identifierCopy];

  [(FPUIActionViewController *)v7 setActionIdentifier:@"com.apple.FileProviderUI.authenticate"];
  [(FPUIActionViewController *)v7 setItems:MEMORY[0x277CBEBF8]];
  [(FPUIActionViewController *)v7 setAuthenticationURL:lCopy];

  [(FPUIActionViewController *)v7 setActionTitle:@"Authenticate"];

  return v7;
}

+ (id)actionControllerForConnectingToServerURL:(id)l actionTitle:(id)title providerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  titleCopy = title;
  lCopy = l;
  v10 = [[FPUIActionViewController alloc] initWithNibName:0 bundle:0];
  [(FPUIActionViewController *)v10 setProviderIdentifier:identifierCopy];

  [(FPUIActionViewController *)v10 setActionIdentifier:@"com.apple.FileProviderUI.authenticate"];
  [(FPUIActionViewController *)v10 setItems:MEMORY[0x277CBEBF8]];
  [(FPUIActionViewController *)v10 setActionTitle:titleCopy];

  [(FPUIActionViewController *)v10 setDomainIdentifier:0];
  [(FPUIActionViewController *)v10 setServerConnectionURL:lCopy];

  [(FPUIActionViewController *)v10 setModalPresentationStyle:2];

  return v10;
}

+ (id)actionControllerForError:(id)error providerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  errorCopy = error;
  v7 = [[FPUIActionViewController alloc] initWithNibName:0 bundle:0];
  [(FPUIActionViewController *)v7 setProviderIdentifier:identifierCopy];

  [(FPUIActionViewController *)v7 setActionIdentifier:@"com.apple.FileProviderUI.authenticate"];
  [(FPUIActionViewController *)v7 setItems:MEMORY[0x277CBEBF8]];
  [(FPUIActionViewController *)v7 setError:errorCopy];

  [(FPUIActionViewController *)v7 setActionTitle:@"Authenticate"];

  return v7;
}

+ (id)actionControllerForError:(id)error extensionIdentifier:(id)identifier providerDomainIdentifier:(id)domainIdentifier
{
  domainIdentifierCopy = domainIdentifier;
  identifierCopy = identifier;
  errorCopy = error;
  v10 = [[FPUIActionViewController alloc] initWithNibName:0 bundle:0];
  [(FPUIActionViewController *)v10 setProviderIdentifier:identifierCopy];

  [(FPUIActionViewController *)v10 setDomainIdentifier:domainIdentifierCopy];
  [(FPUIActionViewController *)v10 setActionIdentifier:@"com.apple.FileProviderUI.authenticate"];
  [(FPUIActionViewController *)v10 setItems:MEMORY[0x277CBEBF8]];
  [(FPUIActionViewController *)v10 setError:errorCopy];

  [(FPUIActionViewController *)v10 setActionTitle:@"Authenticate"];

  return v10;
}

+ (id)actionControllerForInlineError:(id)error providerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  errorCopy = error;
  v7 = [[FPUIActionViewController alloc] initWithNibName:0 bundle:0];
  [(FPUIActionViewController *)v7 setProviderIdentifier:identifierCopy];

  [(FPUIActionViewController *)v7 setActionIdentifier:@"com.apple.FileProviderUI.authenticate"];
  [(FPUIActionViewController *)v7 setItems:MEMORY[0x277CBEBF8]];
  [(FPUIActionViewController *)v7 setError:errorCopy];

  [(FPUIActionViewController *)v7 setDisplayInline:1];

  return v7;
}

+ (id)actionControllerForInlineError:(id)error providerIdentifier:(id)identifier providerDomainIdentifier:(id)domainIdentifier
{
  domainIdentifierCopy = domainIdentifier;
  identifierCopy = identifier;
  errorCopy = error;
  v10 = [[FPUIActionViewController alloc] initWithNibName:0 bundle:0];
  [(FPUIActionViewController *)v10 setProviderIdentifier:identifierCopy];

  [(FPUIActionViewController *)v10 setActionIdentifier:@"com.apple.FileProviderUI.authenticate"];
  [(FPUIActionViewController *)v10 setDomainIdentifier:domainIdentifierCopy];

  [(FPUIActionViewController *)v10 setItems:MEMORY[0x277CBEBF8]];
  [(FPUIActionViewController *)v10 setError:errorCopy];

  [(FPUIActionViewController *)v10 setDisplayInline:1];

  return v10;
}

- (void)viewDidLoad
{
  v32 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = FPUIActionViewController;
  [(FPUIActionViewController *)&v30 viewDidLoad];
  v29 = 0;
  v3 = [(FPUIActionViewController *)self _getExtensionWithError:&v29];
  v4 = v29;
  v5 = v4;
  if (v3)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __39__FPUIActionViewController_viewDidLoad__block_invoke;
    v27[3] = &unk_278A51320;
    v27[4] = self;
    v6 = v3;
    v28 = v6;
    v7 = MEMORY[0x2383F1490](v27);
    v8 = MEMORY[0x277D761B8];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __39__FPUIActionViewController_viewDidLoad__block_invoke_4;
    v25[3] = &unk_278A51348;
    v9 = v7;
    v25[4] = self;
    v26 = v9;
    v10 = [v8 instantiateWithExtension:v6 completion:v25];
    placeholderVC = self->_placeholderVC;
    self->_placeholderVC = v10;

    [(_UIResilientRemoteViewContainerViewController *)self->_placeholderVC delayDisplayOfRemoteController];
    [(FPUIActionViewController *)self embedViewController:self->_placeholderVC];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    view = [(FPUIActionViewController *)self view];
    [view setBackgroundColor:systemBackgroundColor];

    if ([(FPUIActionViewController *)self displayInline])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      view2 = [(_UIResilientRemoteViewContainerViewController *)self->_placeholderVC view];
      subviews = [view2 subviews];

      v16 = [subviews countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v22;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v22 != v18)
            {
              objc_enumerationMutation(subviews);
            }

            [*(*(&v21 + 1) + 8 * i) setBackgroundColor:0];
          }

          v17 = [subviews countByEnumeratingWithState:&v21 objects:v31 count:16];
        }

        while (v17);
      }
    }
  }

  else if (v4)
  {
    [(FPUIActionViewController *)self _delegateError:v4];
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"FPUIActionViewControllerErrorDomain" code:1000 userInfo:0];
    [(FPUIActionViewController *)self _delegateError:v20];
  }
}

void __39__FPUIActionViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (a4)
  {
    [*(a1 + 32) _delegateError:a4];
  }

  else
  {
    v8 = [*(a1 + 40) _extensionContextForUUID:a3];
    [v8 setDelegate:*(a1 + 32)];
    [v7 setDelegate:*(a1 + 32)];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __39__FPUIActionViewController_viewDidLoad__block_invoke_2;
    v28[3] = &unk_278A512F8;
    v28[4] = *(a1 + 32);
    v9 = [v7 serviceViewControllerProxyWithErrorHandler:v28];
    v10 = *(a1 + 32);
    v11 = *(v10 + 992);
    *(v10 + 992) = v9;

    if ([*(a1 + 32) displayInline])
    {
      [*(*(a1 + 32) + 992) _setBrowserUserInterfaceStyle:{objc_msgSend(*(a1 + 32), "browserUserInterfaceStyle")}];
    }

    v12 = [*(a1 + 32) domainIdentifier];

    if (v12)
    {
      v13 = dyld_program_sdk_at_least();
      v14 = *(a1 + 32);
      if (v13)
      {
        v15 = [v14 domainIdentifier];
        v16 = FPProviderDomainIDToDomainIdentifier(v15);

        v17 = *(*(a1 + 32) + 992);
      }

      else
      {
        v18 = v14[124];
        v16 = [v14 domainIdentifier];
        v17 = v18;
      }

      [v17 _configureWithDomainIdentifier:v16];
    }

    v19 = [*(a1 + 32) actionIdentifier];
    v20 = [v19 isEqualToString:@"com.apple.FileProviderUI.authenticate"];

    v21 = *(a1 + 32);
    if (v20)
    {
      v22 = [v21 authenticationURL];
      v23 = [*(a1 + 32) serverConnectionURL];
      if (v22)
      {
        [*(*(a1 + 32) + 992) _prepareAuthenticationUsingURL:v22];
      }

      else
      {
        v25 = *(a1 + 32);
        v26 = v25[124];
        if (v23)
        {
          [v25[124] _prepareAuthenticationUsingServerURL:v23];
        }

        else
        {
          v27 = [v25 error];
          [v26 _prepareForError:v27];
        }
      }
    }

    else
    {
      v24 = v21[124];
      v22 = [v21 actionIdentifier];
      v23 = [*(a1 + 32) items];
      [v24 _prepareForActionWithIdentifier:v22 items:v23];
    }
  }
}

void __39__FPUIActionViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__FPUIActionViewController_viewDidLoad__block_invoke_3;
  v5[3] = &unk_278A512D0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __39__FPUIActionViewController_viewDidLoad__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  (*(*(a1 + 40) + 16))();
  v5 = [*(a1 + 32) view];
  [v5 setBackgroundColor:0];

  v6 = *(a1 + 32);
  if (v7)
  {
    [v6 _delegateError:?];
  }

  else
  {
    [v6[125] endDelayingDisplayOfRemoteController];
  }
}

- (void)embedViewController:(id)controller
{
  controllerCopy = controller;
  view = [controllerCopy view];
  [view setTranslatesAutoresizingMaskIntoConstraints:1];

  view2 = [controllerCopy view];
  [view2 setAutoresizingMask:18];

  view3 = [(FPUIActionViewController *)self view];
  [view3 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  view4 = [controllerCopy view];
  [view4 setFrame:{v8, v10, v12, v14}];

  [(FPUIActionViewController *)self addChildViewController:controllerCopy];
  view5 = [(FPUIActionViewController *)self view];
  view6 = [controllerCopy view];
  [view5 addSubview:view6];

  [controllerCopy didMoveToParentViewController:self];
}

- (void)effectiveAppearanceDidChange:(id)change
{
  changeCopy = change;
  if ([(FPUIActionViewController *)self displayInline])
  {
    browserUserInterfaceStyle = self->_browserUserInterfaceStyle;
    if (browserUserInterfaceStyle != [changeCopy browserUserInterfaceStyle])
    {
      browserUserInterfaceStyle = [changeCopy browserUserInterfaceStyle];
      self->_browserUserInterfaceStyle = browserUserInterfaceStyle;
      [(FPUIActionExtensionViewControllerProtocol *)self->_extensionViewController _setBrowserUserInterfaceStyle:browserUserInterfaceStyle];
    }
  }
}

- (id)_getExtensionWithError:(id *)error
{
  v5 = MEMORY[0x277CCA9C8];
  providerIdentifier = [(FPUIActionViewController *)self providerIdentifier];
  v14 = 0;
  v7 = [v5 extensionWithIdentifier:providerIdentifier error:&v14];
  v8 = v14;

  if (!v7)
  {
    v11 = fpuiLogHandle;
    if (!fpuiLogHandle)
    {
      FPUIInitLogging(v9, v10);
      v11 = fpuiLogHandle;
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (!error)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    [(FPUIActionViewController *)v11 _getExtensionWithError:?];
    if (error)
    {
LABEL_6:
      v12 = v8;
      *error = v8;
    }
  }

LABEL_7:

  return v7;
}

- (void)_dismissViewController
{
  if ([(FPUIActionViewController *)self isBeingPresented])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__FPUIActionViewController__dismissViewController__block_invoke;
    block[3] = &unk_278A51370;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {

    [(FPUIActionViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_delegateDidFinishWithUserInfo:(id)info error:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  errorCopy = error;
  v9 = errorCopy;
  v10 = fpuiLogHandle;
  if (errorCopy)
  {
    if (!fpuiLogHandle)
    {
      FPUIInitLogging(errorCopy, v8);
      v10 = fpuiLogHandle;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [FPUIActionViewController _delegateDidFinishWithUserInfo:v10 error:self];
    }
  }

  else
  {
    if (!fpuiLogHandle)
    {
      FPUIInitLogging(0, v8);
      v10 = fpuiLogHandle;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      actionIdentifier = [(FPUIActionViewController *)self actionIdentifier];
      v17 = 138412290;
      v18 = actionIdentifier;
      _os_log_impl(&dword_238356000, v11, OS_LOG_TYPE_INFO, "Action with identifier (%@) did finish.", &v17, 0xCu);
    }
  }

  delegate = [(FPUIActionViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  delegate2 = [(FPUIActionViewController *)self delegate];
  v16 = delegate2;
  if (v14)
  {
    [delegate2 actionControllerDidFinishAction:self userInfo:infoCopy error:v9];
  }

  else
  {
    [delegate2 actionControllerDidFinishAction:self error:v9];
  }

  [(FPUIActionViewController *)self _dismissViewController];
}

- (void)remoteActionContext:(id)context didEncounterError:(id)error completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  handlerCopy = handler;
  delegate = [(FPUIActionViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__FPUIActionViewController_remoteActionContext_didEncounterError_completionHandler___block_invoke;
    block[3] = &unk_278A51398;
    block[4] = self;
    v15 = errorCopy;
    v16 = handlerCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v13 = fpuiLogHandle;
    if (!fpuiLogHandle)
    {
      FPUIInitLogging(v11, v12);
      v13 = fpuiLogHandle;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = errorCopy;
      _os_log_impl(&dword_238356000, v13, OS_LOG_TYPE_INFO, "An error occurred on the service side, but the client won't present it: %@", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy);
  }
}

void __84__FPUIActionViewController_remoteActionContext_didEncounterError_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 actionController:*(a1 + 32) presentError:*(a1 + 40) completion:*(a1 + 48)];
}

- (FPUIActionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_getExtensionWithError:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 providerIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_238356000, v5, v6, "nil extension for provider ID (%@), error: %@", v7, v8, v9, v10);
}

- (void)_delegateDidFinishWithUserInfo:(void *)a1 error:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 actionIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_238356000, v5, v6, "Action with identifier (%@) did finish with error (%@).", v7, v8, v9, v10);
}

@end