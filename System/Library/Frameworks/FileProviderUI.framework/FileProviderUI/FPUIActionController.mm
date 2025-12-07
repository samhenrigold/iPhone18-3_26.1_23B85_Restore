@interface FPUIActionController
+ (id)actionControllerForActionIdentifier:(id)identifier actionTitle:(id)title items:(id)items providerIdentifier:(id)providerIdentifier domainIdentifier:(id)domainIdentifier;
- (FPUIActionControllerDelegate)delegate;
- (id)_getExtensionWithError:(id *)error;
- (id)performActionWithCompletionHandler:(id)handler;
- (void)_delegateDidFinishWithUserInfo:(id)info error:(id)error;
- (void)remoteActionContext:(id)context didEncounterError:(id)error completionHandler:(id)handler;
@end

@implementation FPUIActionController

+ (id)actionControllerForActionIdentifier:(id)identifier actionTitle:(id)title items:(id)items providerIdentifier:(id)providerIdentifier domainIdentifier:(id)domainIdentifier
{
  domainIdentifierCopy = domainIdentifier;
  providerIdentifierCopy = providerIdentifier;
  itemsCopy = items;
  identifierCopy = identifier;
  v14 = objc_alloc_init(FPUIActionController);
  v15 = [providerIdentifierCopy copy];

  providerIdentifier = v14->_providerIdentifier;
  v14->_providerIdentifier = v15;

  v17 = [identifierCopy copy];
  actionIdentifier = v14->_actionIdentifier;
  v14->_actionIdentifier = v17;

  v19 = [itemsCopy copy];
  items = v14->_items;
  v14->_items = v19;

  v21 = [domainIdentifierCopy copy];
  domainIdentifier = v14->_domainIdentifier;
  v14->_domainIdentifier = v21;

  return v14;
}

- (id)performActionWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x277CC6480];
  handlerCopy = handler;
  v6 = [[v4 alloc] initWithActionIdentifier:self->_actionIdentifier providerDomainID:self->_domainIdentifier itemIdentifiers:self->_items];
  [v6 setActionCompletionBlock:handlerCopy];

  defaultManager = [MEMORY[0x277CC6408] defaultManager];
  [defaultManager scheduleAction:v6];

  progress = [v6 progress];

  return progress;
}

- (id)_getExtensionWithError:(id *)error
{
  v5 = MEMORY[0x277CCA9C8];
  providerIdentifier = [(FPUIActionController *)self providerIdentifier];
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
      actionIdentifier = [(FPUIActionController *)self actionIdentifier];
      v17 = 138412290;
      v18 = actionIdentifier;
      _os_log_impl(&dword_238356000, v11, OS_LOG_TYPE_INFO, "Action with identifier (%@) did finish.", &v17, 0xCu);
    }
  }

  delegate = [(FPUIActionController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  delegate2 = [(FPUIActionController *)self delegate];
  v16 = delegate2;
  if (v14)
  {
    [delegate2 actionControllerDidFinishAction:self userInfo:infoCopy error:v9];
  }

  else
  {
    [delegate2 actionControllerDidFinishAction:self error:v9];
  }
}

- (void)remoteActionContext:(id)context didEncounterError:(id)error completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  handlerCopy = handler;
  delegate = [(FPUIActionController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__FPUIActionController_remoteActionContext_didEncounterError_completionHandler___block_invoke;
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

void __80__FPUIActionController_remoteActionContext_didEncounterError_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 actionController:*(a1 + 32) presentError:*(a1 + 40) completion:*(a1 + 48)];
}

- (FPUIActionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end