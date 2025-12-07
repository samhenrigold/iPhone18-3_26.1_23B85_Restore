@interface FABuyStorageHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_completionWithSuccess:(BOOL)success error:(id)error;
- (void)_invokeBuyStorageWithServerAttributes:(id)attributes completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation FABuyStorageHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"family:buyStorage"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277CEC988]];
  v5 = [v4 isEqualToString:@"family:buyStorage"];

  return v5;
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  clientInfo = [model clientInfo];
  [(FABuyStorageHook *)self _invokeBuyStorageWithServerAttributes:clientInfo completion:completionCopy];
}

- (void)_invokeBuyStorageWithServerAttributes:(id)attributes completion:(id)completion
{
  attributesCopy = attributes;
  v7 = attributesCopy;
  if (self->_loadingStorage)
  {
    v8 = _FALogSystem(attributesCopy);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "Already loading storage. Bailing", buf, 2u);
    }
  }

  else
  {
    self->_loadingStorage = 1;
    v9 = _Block_copy(completion);
    completion = self->_completion;
    self->_completion = v9;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [WeakRetained presentationContextForHook:self];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v13 = objc_alloc_init(MEMORY[0x277D7F4D0]);
      storageOffersManager = self->_storageOffersManager;
      self->_storageOffersManager = v13;

      [(ICQUICloudStorageOffersManager *)self->_storageOffersManager setDelegate:self];
      [(ICQUICloudStorageOffersManager *)self->_storageOffersManager setShouldOfferFamilySharePlansOnly:1];
      v15 = [v7 objectForKeyedSubscript:@"requiredStorageThreshold"];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = [v7 objectForKeyedSubscript:@"requiredStorageThreshold"];
        -[ICQUICloudStorageOffersManager setRequiredStorageThreshold:](self->_storageOffersManager, "setRequiredStorageThreshold:", [v17 longLongValue]);
      }

      [(ICQUICloudStorageOffersManager *)self->_storageOffersManager beginFlowWithNavigationController:v8 modally:1];
    }

    else
    {
      v18 = _FALogSystem(isKindOfClass);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_21BB35000, v18, OS_LOG_TYPE_DEFAULT, "Unable to present buy storage, we need a navigation controller", v22, 2u);
      }

      v19 = self->_completion;
      if (v19)
      {
        v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D080B8] code:-1000 userInfo:0];
        v19[2](v19, 0, v20);

        v21 = self->_completion;
        self->_completion = 0;
      }
    }
  }
}

- (void)_completionWithSuccess:(BOOL)success error:(id)error
{
  self->_loadingStorage = 0;
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, success, error);
    completion = self->_completion;
  }

  self->_completion = 0;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end