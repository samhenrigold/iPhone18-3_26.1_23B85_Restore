@interface SFWebProcessPlugInPageExtensionController
- (SFWebProcessPlugInPageExtensionController)initWithBrowserContextController:(id)controller;
- (void)_clearExtensionControllerInterface;
- (void)_setUpExtensionControllerInterface;
- (void)clearExtensionScriptWorlds;
- (void)dealloc;
- (void)evaluateJavaScriptForSharingExtension:(id)extension extraArguments:(id)arguments completionHandler:(id)handler;
- (void)finalizeJavaScriptForSharingExtension:(id)extension arguments:(id)arguments;
- (void)prepareJavaScriptWorldForSharingExtension:(id)extension javaScript:(id)script;
@end

@implementation SFWebProcessPlugInPageExtensionController

- (SFWebProcessPlugInPageExtensionController)initWithBrowserContextController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = SFWebProcessPlugInPageExtensionController;
  v5 = [(SFWebProcessPlugInPageExtensionController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_browserContextController, controllerCopy);
    [(SFWebProcessPlugInPageExtensionController *)v6 _setUpExtensionControllerInterface];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    extensionToScriptWorldMap = v6->_extensionToScriptWorldMap;
    v6->_extensionToScriptWorldMap = v7;

    v9 = v6;
  }

  return v6;
}

- (void)dealloc
{
  [(SFWebProcessPlugInPageExtensionController *)self clearExtensionScriptWorlds];
  [(SFWebProcessPlugInPageExtensionController *)self _clearExtensionControllerInterface];
  v3.receiver = self;
  v3.super_class = SFWebProcessPlugInPageExtensionController;
  [(SFWebProcessPlugInPageExtensionController *)&v3 dealloc];
}

- (void)_setUpExtensionControllerInterface
{
  v3 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F50FE748];
  extensionControllerInterface = self->_extensionControllerInterface;
  self->_extensionControllerInterface = v3;

  WeakRetained = objc_loadWeakRetained(&self->_browserContextController);
  _remoteObjectRegistry = [WeakRetained _remoteObjectRegistry];
  [_remoteObjectRegistry registerExportedObject:self interface:self->_extensionControllerInterface];
}

- (void)_clearExtensionControllerInterface
{
  if (self->_extensionControllerInterface)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserContextController);
    _remoteObjectRegistry = [WeakRetained _remoteObjectRegistry];

    [_remoteObjectRegistry unregisterExportedObject:self interface:self->_extensionControllerInterface];
    extensionControllerInterface = self->_extensionControllerInterface;
    self->_extensionControllerInterface = 0;
  }
}

- (void)prepareJavaScriptWorldForSharingExtension:(id)extension javaScript:(id)script
{
  extensionCopy = extension;
  scriptCopy = script;
  v9 = WBS_LOG_CHANNEL_PREFIXExtensions(scriptCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SFWebProcessPlugInPageExtensionController prepareJavaScriptWorldForSharingExtension:v9 javaScript:?];
  }

  world = [(NSMutableDictionary *)self->_extensionToScriptWorldMap objectForKey:extensionCopy];
  if (!world)
  {
    world = [MEMORY[0x1E6985398] world];
    [(NSMutableDictionary *)self->_extensionToScriptWorldMap setObject:world forKey:extensionCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserContextController);
  mainFrame = [WeakRetained mainFrame];
  v13 = [mainFrame jsContextForWorld:world];

  v14 = [v13 evaluateScript:scriptCopy];
  v16 = WBS_LOG_CHANNEL_PREFIXExtensions(v14, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&dword_1D4644000, v16, OS_LOG_TYPE_INFO, "Finished setting up JavaScript world", v17, 2u);
  }
}

- (void)evaluateJavaScriptForSharingExtension:(id)extension extraArguments:(id)arguments completionHandler:(id)handler
{
  v38[2] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  argumentsCopy = arguments;
  handlerCopy = handler;
  v12 = WBS_LOG_CHANNEL_PREFIXExtensions(handlerCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SFWebProcessPlugInPageExtensionController evaluateJavaScriptForSharingExtension:v12 extraArguments:? completionHandler:?];
  }

  v14 = [(NSMutableDictionary *)self->_extensionToScriptWorldMap objectForKey:extensionCopy];
  if (v14)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserContextController);
    mainFrame = [WeakRetained mainFrame];
    v17 = [mainFrame jsContextForWorld:v14];

    globalObject = [v17 globalObject];
    v19 = [globalObject valueForProperty:@"ExtensionPreprocessingJS"];

    if (([v19 isUndefined] & 1) != 0 || (objc_msgSend(v19, "valueForProperty:", @"run"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isUndefined"), v20, v21))
    {
      handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F8]);
    }

    else
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __116__SFWebProcessPlugInPageExtensionController_evaluateJavaScriptForSharingExtension_extraArguments_completionHandler___block_invoke;
      aBlock[3] = &unk_1E8493868;
      v35 = handlerCopy;
      v32 = _Block_copy(aBlock);
      v23 = objc_alloc(MEMORY[0x1E695DF90]);
      v37[0] = @"extensionName";
      v37[1] = @"completionFunction";
      v38[0] = extensionCopy;
      v24 = _Block_copy(v32);
      v38[1] = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
      v26 = [v23 initWithDictionary:v25];

      if (argumentsCopy)
      {
        [v26 setObject:argumentsCopy forKey:@"extraArguments"];
      }

      v27 = [v26 copy];
      v29 = WBS_LOG_CHANNEL_PREFIXExtensions(v27, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D4644000, v29, OS_LOG_TYPE_INFO, "Invoking extension's JavaScript", buf, 2u);
      }

      v36 = v27;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
      v31 = [v19 invokeMethod:@"run" withArguments:v30];
    }
  }

  else
  {
    v22 = WBS_LOG_CHANNEL_PREFIXExtensions(0, v13);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SFWebProcessPlugInPageExtensionController evaluateJavaScriptForSharingExtension:v22 extraArguments:? completionHandler:?];
    }

    handlerCopy[2](handlerCopy, 0);
  }
}

void __116__SFWebProcessPlugInPageExtensionController_evaluateJavaScriptForSharingExtension_extraArguments_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 toDictionary];
  v6 = WBS_LOG_CHANNEL_PREFIXExtensions(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&dword_1D4644000, v6, OS_LOG_TYPE_INFO, "Script returned results to native code: %p", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)finalizeJavaScriptForSharingExtension:(id)extension arguments:(id)arguments
{
  v19[1] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  argumentsCopy = arguments;
  v8 = [(NSMutableDictionary *)self->_extensionToScriptWorldMap objectForKey:extensionCopy];
  if (v8)
  {
    [(NSMutableDictionary *)self->_extensionToScriptWorldMap removeObjectForKey:extensionCopy];
    WeakRetained = objc_loadWeakRetained(&self->_browserContextController);
    mainFrame = [WeakRetained mainFrame];
    v11 = [mainFrame jsContextForWorld:v8];

    globalObject = [v11 globalObject];
    v13 = [globalObject valueForProperty:@"ExtensionPreprocessingJS"];

    if (([v13 isUndefined] & 1) == 0)
    {
      v14 = [v13 valueForProperty:@"finalize"];
      isUndefined = [v14 isUndefined];

      if ((isUndefined & 1) == 0)
      {
        v19[0] = argumentsCopy;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
        v17 = [v13 invokeMethod:@"finalize" withArguments:v16];

        globalObject2 = [v11 globalObject];
        [globalObject2 deleteProperty:@"ExtensionPreprocessingJS"];
      }
    }

    [v8 clearWrappers];
  }
}

- (void)clearExtensionScriptWorlds
{
  [(NSMutableDictionary *)self->_extensionToScriptWorldMap enumerateKeysAndObjectsUsingBlock:&__block_literal_global_36];
  extensionToScriptWorldMap = self->_extensionToScriptWorldMap;

  [(NSMutableDictionary *)extensionToScriptWorldMap removeAllObjects];
}

@end