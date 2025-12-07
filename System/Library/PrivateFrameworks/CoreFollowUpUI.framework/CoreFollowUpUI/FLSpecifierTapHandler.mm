@interface FLSpecifierTapHandler
- (FLSpecifierTapHandlerDelegate)delegate;
- (id)description;
- (void)_handleActionForItem:(id)item fromSpecifier:(id)specifier eventSource:(unint64_t)source withCompletionHandler:(id)handler;
- (void)actionTapped:(id)tapped eventSource:(unint64_t)source withCompletionHandler:(id)handler;
- (void)dealloc;
@end

@implementation FLSpecifierTapHandler

- (void)actionTapped:(id)tapped eventSource:(unint64_t)source withCompletionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  handlerCopy = handler;
  v10 = _FLLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = tappedCopy;
    _os_log_impl(&dword_245383000, v10, OS_LOG_TYPE_DEFAULT, "Handling specifier %@", buf, 0xCu);
  }

  [tappedCopy fl_startSpinner];
  v11 = [tappedCopy propertyForKey:*MEMORY[0x277CFE418]];
  mEMORY[0x277CFE530] = [MEMORY[0x277CFE530] sharedTelemetryController];
  [mEMORY[0x277CFE530] captureActionForItem:v11 withEvent:2 source:4];

  delegate = [(FLSpecifierTapHandler *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v11 groupIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", *MEMORY[0x277CFE430]), v14, v15))
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__FLSpecifierTapHandler_actionTapped_eventSource_withCompletionHandler___block_invoke;
    v16[3] = &unk_278E35EF8;
    v16[4] = self;
    v17 = v11;
    v18 = tappedCopy;
    sourceCopy = source;
    v19 = handlerCopy;
    [delegate preflightNetworkConnectivityForHandler:self withCompletionHandler:v16];
  }

  else
  {
    [(FLSpecifierTapHandler *)self _handleActionForItem:v11 fromSpecifier:tappedCopy eventSource:source withCompletionHandler:handlerCopy];
  }
}

void __72__FLSpecifierTapHandler_actionTapped_eventSource_withCompletionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _handleActionForItem:*(a1 + 40) fromSpecifier:*(a1 + 48) eventSource:*(a1 + 64) withCompletionHandler:*(a1 + 56)];
  }

  else
  {
    [*(a1 + 48) fl_stopSpinner];
    (*(*(a1 + 56) + 16))();
  }
}

- (void)_handleActionForItem:(id)item fromSpecifier:(id)specifier eventSource:(unint64_t)source withCompletionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  specifierCopy = specifier;
  handlerCopy = handler;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__2;
  v32 = __Block_byref_object_dispose__2;
  v33 = [(FLHeadlessActionHandler *)FLFollowUpActionHandler handlerWithItem:itemCopy];
  v13 = _FLLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v29[5];
    *buf = 138412290;
    v35 = v14;
    _os_log_impl(&dword_245383000, v13, OS_LOG_TYPE_DEFAULT, "Handling item with handler: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v15 = v29[5];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __94__FLSpecifierTapHandler__handleActionForItem_fromSpecifier_eventSource_withCompletionHandler___block_invoke;
  v25[3] = &unk_278E35F20;
  objc_copyWeak(&v27, buf);
  v16 = itemCopy;
  v26 = v16;
  [v15 setExtensionRequestedViewControllerPresentation:v25];
  v17 = [specifierCopy propertyForKey:*MEMORY[0x277CFE410]];
  [v17 setEventSource:source];
  v18 = v29[5];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __94__FLSpecifierTapHandler__handleActionForItem_fromSpecifier_eventSource_withCompletionHandler___block_invoke_2;
  v21[3] = &unk_278E35F48;
  v19 = specifierCopy;
  v22 = v19;
  v24 = &v28;
  v20 = handlerCopy;
  v23 = v20;
  [v18 handleAction:v17 completion:v21];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
  _Block_object_dispose(&v28, 8);
}

void __94__FLSpecifierTapHandler__handleActionForItem_fromSpecifier_eventSource_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) userInfo];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CFE4C8]];

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 BOOLValue])
    {
      v6 = 1;
    }

    else
    {
      [v8 setModalPresentationStyle:5];
      v6 = 0;
    }

    v7 = [WeakRetained delegate];
    [v7 startPresentingForHandler:WeakRetained withRemoteController:v8 customPresentationStyle:v6];
  }
}

void __94__FLSpecifierTapHandler__handleActionForItem_fromSpecifier_eventSource_withCompletionHandler___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v7 = a3;
  [v4 fl_stopSpinner];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  (*(a1[5] + 16))();
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() description];
  v5 = [v3 stringWithFormat:@"<%@: %p>", v4, self];

  return v5;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_245383000, v3, OS_LOG_TYPE_DEFAULT, "%@ going away", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = FLSpecifierTapHandler;
  [(FLSpecifierTapHandler *)&v4 dealloc];
}

- (FLSpecifierTapHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end