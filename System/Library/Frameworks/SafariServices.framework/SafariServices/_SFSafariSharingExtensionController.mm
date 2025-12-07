@interface _SFSafariSharingExtensionController
- (_SFSafariSharingExtensionController)initWithWebView:(id)view;
- (id)_extensionControllerProxy;
- (void)finalizeJavaScriptForSharingExtension:(id)extension arguments:(id)arguments;
- (void)prepareJavaScriptWorldForSharingExtension:(id)extension javaScript:(id)script;
- (void)runJavaScriptForSharingExtension:(id)extension extraArguments:(id)arguments completion:(id)completion;
@end

@implementation _SFSafariSharingExtensionController

- (_SFSafariSharingExtensionController)initWithWebView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = _SFSafariSharingExtensionController;
  v5 = [(_SFSafariSharingExtensionController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_webView, viewCopy);
    v7 = v6;
  }

  return v6;
}

- (id)_extensionControllerProxy
{
  extensionControllerProxy = self->_extensionControllerProxy;
  if (!extensionControllerProxy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    _remoteObjectRegistry = [WeakRetained _remoteObjectRegistry];

    v6 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F50FE748];
    v7 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v6];
    v8 = self->_extensionControllerProxy;
    self->_extensionControllerProxy = v7;

    extensionControllerProxy = self->_extensionControllerProxy;
  }

  return extensionControllerProxy;
}

- (void)prepareJavaScriptWorldForSharingExtension:(id)extension javaScript:(id)script
{
  extensionCopy = extension;
  scriptCopy = script;
  _extensionControllerProxy = [(_SFSafariSharingExtensionController *)self _extensionControllerProxy];
  [_extensionControllerProxy prepareJavaScriptWorldForSharingExtension:extensionCopy javaScript:scriptCopy];
}

- (void)runJavaScriptForSharingExtension:(id)extension extraArguments:(id)arguments completion:(id)completion
{
  extensionCopy = extension;
  argumentsCopy = arguments;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__17;
  v24[4] = __Block_byref_object_dispose__17;
  v25 = _Block_copy(completion);
  _extensionControllerProxy = [(_SFSafariSharingExtensionController *)self _extensionControllerProxy];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __98___SFSafariSharingExtensionController_runJavaScriptForSharingExtension_extraArguments_completion___block_invoke;
  v23[3] = &unk_1E8496878;
  v23[4] = v24;
  [_extensionControllerProxy evaluateJavaScriptForSharingExtension:extensionCopy extraArguments:argumentsCopy completionHandler:v23];

  v11 = dispatch_time(0, 2000000000);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __98___SFSafariSharingExtensionController_runJavaScriptForSharingExtension_extraArguments_completion___block_invoke_50;
  v22[3] = &unk_1E848F7D0;
  v22[4] = v24;
  dispatch_after(v11, MEMORY[0x1E69E96A0], v22);
  v14 = WBS_LOG_CHANNEL_PREFIXExtensions(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(_SFSafariSharingExtensionController *)v14 runJavaScriptForSharingExtension:v15 extraArguments:v16 completion:v17, v18, v19, v20, v21];
  }

  _Block_object_dispose(v24, 8);
}

- (void)finalizeJavaScriptForSharingExtension:(id)extension arguments:(id)arguments
{
  extensionCopy = extension;
  argumentsCopy = arguments;
  _extensionControllerProxy = [(_SFSafariSharingExtensionController *)self _extensionControllerProxy];
  [_extensionControllerProxy finalizeJavaScriptForSharingExtension:extensionCopy arguments:argumentsCopy];
}

@end