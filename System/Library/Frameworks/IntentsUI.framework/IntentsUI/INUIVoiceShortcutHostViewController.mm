@interface INUIVoiceShortcutHostViewController
+ (id)_voiceShortcutUIExtension;
+ (void)getViewControllerCompletion:(id)completion;
+ (void)getViewControllerForAddingShortcut:(id)shortcut completion:(id)completion;
+ (void)getViewControllerForEditingVoiceShortcut:(id)shortcut completion:(id)completion;
+ (void)initialize;
- (INUIVoiceShortcutRemoteViewControllerDelegate)delegate;
- (void)remoteViewControllerDidCancel;
- (void)remoteViewControllerDidCreateVoiceShortcut:(id)shortcut error:(id)error;
- (void)remoteViewControllerDidDeleteVoiceShortcutWithIdentifier:(id)identifier;
- (void)remoteViewControllerDidUpdateVoiceShortcut:(id)shortcut error:(id)error;
- (void)setServiceContext:(id)context;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation INUIVoiceShortcutHostViewController

- (INUIVoiceShortcutRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)remoteViewControllerDidCancel
{
  delegate = [(INUIVoiceShortcutHostViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate remoteViewControllerDidCancel];
  }
}

- (void)remoteViewControllerDidDeleteVoiceShortcutWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(INUIVoiceShortcutHostViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate remoteViewControllerDidDeleteVoiceShortcutWithIdentifier:identifierCopy];
  }
}

- (void)remoteViewControllerDidUpdateVoiceShortcut:(id)shortcut error:(id)error
{
  shortcutCopy = shortcut;
  errorCopy = error;
  delegate = [(INUIVoiceShortcutHostViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate remoteViewControllerDidUpdateVoiceShortcut:shortcutCopy error:errorCopy];
  }
}

- (void)remoteViewControllerDidCreateVoiceShortcut:(id)shortcut error:(id)error
{
  shortcutCopy = shortcut;
  errorCopy = error;
  delegate = [(INUIVoiceShortcutHostViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate remoteViewControllerDidCreateVoiceShortcut:shortcutCopy error:errorCopy];
  }
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  mode = [(INUIVoiceShortcutHostViewController *)self mode];
  v6 = @"Unknown";
  if (mode == 1)
  {
    v6 = @"Add";
  }

  if (mode == 2)
  {
    v6 = @"Edit";
  }

  v7 = v6;
  v8 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[INUIVoiceShortcutHostViewController viewServiceDidTerminateWithError:]";
    v11 = 2112;
    v12 = v7;
    v13 = 2114;
    v14 = errorCopy;
    _os_log_impl(&dword_22CA36000, v8, OS_LOG_TYPE_INFO, "%s VoiceShortcutUIExtension view service (for %@) terminated with error=%{public}@", &v9, 0x20u);
  }
}

- (void)setServiceContext:(id)context
{
  contextCopy = context;
  [(INUIVoiceShortcutHostContext *)self->_serviceContext setDelegate:0];
  serviceContext = self->_serviceContext;
  self->_serviceContext = contextCopy;
  v6 = contextCopy;

  [(INUIVoiceShortcutHostContext *)self->_serviceContext setDelegate:self];
}

+ (void)getViewControllerCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _voiceShortcutUIExtension = [self _voiceShortcutUIExtension];
  if (_voiceShortcutUIExtension)
  {
    v6 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "+[INUIVoiceShortcutHostViewController getViewControllerCompletion:]";
      v22 = 2114;
      v23 = _voiceShortcutUIExtension;
      _os_log_impl(&dword_22CA36000, v6, OS_LOG_TYPE_INFO, "%s Instantiating view controller from extension: %{public}@", buf, 0x16u);
    }

    v7 = objc_alloc_init(MEMORY[0x277CCA9D8]);
    bundleRecordForCurrentProcess = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
    v9 = [bundleRecordForCurrentProcess URL];

    path = [v9 path];
    [path UTF8String];
    v11 = sandbox_extension_issue_file();

    v18[0] = @"INUIVoiceShortcutExtensionItemBundleURL";
    v18[1] = @"INUIVoiceShortcutExtensionItemSandboxExtensionData";
    v19[0] = v9;
    v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v11 length:strlen(v11) + 1];
    v19[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    [v7 setUserInfo:v13];

    v17 = v7;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__INUIVoiceShortcutHostViewController_getViewControllerCompletion___block_invoke;
    v15[3] = &unk_27872BCA0;
    v16 = completionCopy;
    [_voiceShortcutUIExtension instantiateViewControllerWithInputItems:v14 listenerEndpoint:0 connectionHandler:v15];
  }

  else
  {
    v7 = INIntentError();
    (*(completionCopy + 2))(completionCopy, 0, v7);
  }
}

void __67__INUIVoiceShortcutHostViewController_getViewControllerCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v12 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "+[INUIVoiceShortcutHostViewController getViewControllerCompletion:]_block_invoke";
      v19 = 2114;
      v20 = v9;
      _os_log_error_impl(&dword_22CA36000, v12, OS_LOG_TYPE_ERROR, "%s Failed to instantiate view service: %{public}@", buf, 0x16u);
    }

    v13 = *(a1 + 32);
    v14 = INIntentError();
    (*(v13 + 16))(v13, 0, v14);
    goto LABEL_12;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = *MEMORY[0x277CD38C8];
  if ((isKindOfClass & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "+[INUIVoiceShortcutHostViewController getViewControllerCompletion:]_block_invoke";
      v19 = 2114;
      v20 = v8;
      _os_log_error_impl(&dword_22CA36000, v11, OS_LOG_TYPE_ERROR, "%s Unexpected remoteViewController class: %{public}@", buf, 0x16u);
    }

    v15 = *(a1 + 32);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected remoteViewController class: %@", v8];
    v16 = INIntentError();
    (*(v15 + 16))(v15, 0, v16);

LABEL_12:
    goto LABEL_13;
  }

  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v18 = "+[INUIVoiceShortcutHostViewController getViewControllerCompletion:]_block_invoke";
    v19 = 2114;
    v20 = v8;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_22CA36000, v11, OS_LOG_TYPE_INFO, "%s Got view controller %{public}@ identifier=%{public}@", buf, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_13:
}

+ (void)getViewControllerForEditingVoiceShortcut:(id)shortcut completion:(id)completion
{
  shortcutCopy = shortcut;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__INUIVoiceShortcutHostViewController_getViewControllerForEditingVoiceShortcut_completion___block_invoke;
  v10[3] = &unk_27872B938;
  v11 = shortcutCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = shortcutCopy;
  [self getViewControllerCompletion:v10];
}

void __91__INUIVoiceShortcutHostViewController_getViewControllerForEditingVoiceShortcut_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    [v3 setMode:2];
    v4 = [v5 remoteViewControllerProxy];
    [v4 buildForEditingVoiceShortcut:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)getViewControllerForAddingShortcut:(id)shortcut completion:(id)completion
{
  shortcutCopy = shortcut;
  completionCopy = completion;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy_;
  v34[4] = __Block_byref_object_dispose_;
  v8 = shortcutCopy;
  v35 = v8;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy_;
  v32[4] = __Block_byref_object_dispose_;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy_;
  v30[4] = __Block_byref_object_dispose_;
  v31 = 0;
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __85__INUIVoiceShortcutHostViewController_getViewControllerForAddingShortcut_completion___block_invoke;
  v25 = &unk_27872B8C0;
  v10 = v8;
  v26 = v10;
  v28 = v30;
  v29 = v34;
  v27 = v9;
  INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler();
  dispatch_group_enter(v27);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __85__INUIVoiceShortcutHostViewController_getViewControllerForAddingShortcut_completion___block_invoke_4;
  v18[3] = &unk_27872B8E8;
  v20 = v30;
  v21 = v32;
  v11 = v27;
  v19 = v11;
  [self getViewControllerCompletion:v18];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__INUIVoiceShortcutHostViewController_getViewControllerForAddingShortcut_completion___block_invoke_6;
  block[3] = &unk_27872B910;
  v14 = completionCopy;
  v15 = v32;
  v16 = v34;
  v17 = v30;
  v12 = completionCopy;
  dispatch_group_notify(v11, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);

  _Block_object_dispose(v34, 8);
}

void __85__INUIVoiceShortcutHostViewController_getViewControllerForAddingShortcut_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 136315650;
      v12 = "+[INUIVoiceShortcutHostViewController getViewControllerForAddingShortcut:completion:]_block_invoke";
      v13 = 2112;
      v14 = v10;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&dword_22CA36000, v8, OS_LOG_TYPE_ERROR, "%s Error injecting image proxies into %{publc}@: %{public}@", &v11, 0x20u);
    }

    v9 = 48;
    v4 = a3;
  }

  else
  {
    v9 = 56;
  }

  objc_storeStrong((*(*(a1 + v9) + 8) + 40), v4);
  dispatch_group_leave(*(a1 + 40));
}

void __85__INUIVoiceShortcutHostViewController_getViewControllerForAddingShortcut_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "+[INUIVoiceShortcutHostViewController getViewControllerForAddingShortcut:completion:]_block_invoke";
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_22CA36000, v7, OS_LOG_TYPE_ERROR, "%s Error getting hosted view controller, error: %{public}@", &v11, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_group_leave(*(a1 + 32));
}

void __85__INUIVoiceShortcutHostViewController_getViewControllerForAddingShortcut_completion___block_invoke_6(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  if (v2)
  {
    [v2 setMode:1];
    v3 = [*(*(a1[5] + 8) + 40) remoteViewControllerProxy];
    [v3 buildForAddingShortcut:*(*(a1[6] + 8) + 40)];
  }

  (*(a1[4] + 16))();
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

+ (id)_voiceShortcutUIExtension
{
  if (_voiceShortcutUIExtension_onceToken != -1)
  {
    dispatch_once(&_voiceShortcutUIExtension_onceToken, &__block_literal_global);
  }

  v3 = _voiceShortcutUIExtension_extension;

  return v3;
}

void __64__INUIVoiceShortcutHostViewController__voiceShortcutUIExtension__block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v0 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.WorkflowUI.AddShortcutExtension" error:&v4];
  v1 = v4;
  v2 = _voiceShortcutUIExtension_extension;
  _voiceShortcutUIExtension_extension = v0;

  if (!_voiceShortcutUIExtension_extension)
  {
    v3 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v6 = "+[INUIVoiceShortcutHostViewController _voiceShortcutUIExtension]_block_invoke";
      v7 = 2112;
      v8 = v1;
      _os_log_error_impl(&dword_22CA36000, v3, OS_LOG_TYPE_ERROR, "%s Could not get VoiceShortcutUI extension: %@", buf, 0x16u);
    }
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    MEMORY[0x282122D80]();
  }
}

@end