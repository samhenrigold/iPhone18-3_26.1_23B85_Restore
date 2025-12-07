@interface AFMyriadAdvertisementContextManager
- (AFMyriadAdvertisementContextManager)initWithQueue:(id)queue;
- (id)_settingsConnection;
- (void)_resetSettingsConnection;
- (void)pushMyriadAdvertisementContext:(id)context completionHandler:(id)handler;
- (void)reset;
- (void)triggerABCForType:(id)type subType:(id)subType context:(id)context;
@end

@implementation AFMyriadAdvertisementContextManager

- (void)reset
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[AFMyriadAdvertisementContextManager reset]";
    _os_log_debug_impl(&dword_1912FE000, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AFMyriadAdvertisementContextManager_reset__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)triggerABCForType:(id)type subType:(id)subType context:(id)context
{
  typeCopy = type;
  subTypeCopy = subType;
  contextCopy = context;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__AFMyriadAdvertisementContextManager_triggerABCForType_subType_context___block_invoke;
  v15[3] = &unk_1E7349398;
  v15[4] = self;
  v16 = typeCopy;
  v17 = subTypeCopy;
  v18 = contextCopy;
  v12 = contextCopy;
  v13 = subTypeCopy;
  v14 = typeCopy;
  dispatch_async(queue, v15);
}

void __73__AFMyriadAdvertisementContextManager_triggerABCForType_subType_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _settingsConnection];
  [v2 triggerABCForType:*(a1 + 40) subType:*(a1 + 48) context:*(a1 + 56) completionHandler:&__block_literal_global_47312];
}

void __73__AFMyriadAdvertisementContextManager_triggerABCForType_subType_context___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[AFMyriadAdvertisementContextManager triggerABCForType:subType:context:]_block_invoke_2";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s #myriad triggerABCForSubType failed: %@", &v4, 0x16u);
    }
  }
}

- (void)pushMyriadAdvertisementContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__AFMyriadAdvertisementContextManager_pushMyriadAdvertisementContext_completionHandler___block_invoke;
  block[3] = &unk_1E73496E8;
  v12 = contextCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

void __88__AFMyriadAdvertisementContextManager_pushMyriadAdvertisementContext_completionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v9 = "[AFMyriadAdvertisementContextManager pushMyriadAdvertisementContext:completionHandler:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s #myriad Pushing Myriad advertisement context %@", buf, 0x16u);
  }

  v4 = [*(a1 + 40) _settingsConnection];
  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88__AFMyriadAdvertisementContextManager_pushMyriadAdvertisementContext_completionHandler___block_invoke_1;
  v6[3] = &unk_1E7349350;
  v7 = *(a1 + 48);
  [v4 pushMyriadAdvertisementContext:v5 completionHandler:v6];
}

void __88__AFMyriadAdvertisementContextManager_pushMyriadAdvertisementContext_completionHandler___block_invoke_1(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __88__AFMyriadAdvertisementContextManager_pushMyriadAdvertisementContext_completionHandler___block_invoke_2;
    v10[3] = &unk_1E7349328;
    v7 = v8;
    v11 = v7;
    [v5 enumerateObjectsUsingBlock:v10];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, v6);
  }
}

void __88__AFMyriadAdvertisementContextManager_pushMyriadAdvertisementContext_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 content];
  v5 = [v4 myriadAdvertisementContext];
  if (v5)
  {
    v6 = [[AFMyriadAdvertisementContextRecord alloc] initWithMyriadAdvertisementContextRecordData:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [(AFMyriadAdvertisementContextRecord *)v6 deviceID];
      if (v8)
      {
        [*(a1 + 32) setObject:v7 forKey:v8];
      }

      else
      {
        v9 = AFSiriLogContextConnection;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = [v3 info];
          v11 = v10;
          if (!v10)
          {
            v11 = [v4 deviceInfo];
          }

          v12 = 136315650;
          v13 = "[AFMyriadAdvertisementContextManager pushMyriadAdvertisementContext:completionHandler:]_block_invoke_2";
          v14 = 2112;
          v15 = v7;
          v16 = 2112;
          v17 = v11;
          _os_log_error_impl(&dword_1912FE000, v9, OS_LOG_TYPE_ERROR, "%s #myriad Dropped %@ from %@ because there's no device ID.", &v12, 0x20u);
          if (!v10)
          {
          }
        }
      }
    }
  }
}

- (void)_resetSettingsConnection
{
  settingsConnection = self->_settingsConnection;
  if (settingsConnection)
  {
    self->_settingsConnection = 0;
  }
}

- (id)_settingsConnection
{
  settingsConnection = self->_settingsConnection;
  if (!settingsConnection)
  {
    v4 = objc_alloc_init(AFSettingsConnection);
    v5 = self->_settingsConnection;
    self->_settingsConnection = v4;

    [(AFSettingsConnection *)self->_settingsConnection setXPCConnectionManagementQueue:self->_queue];
    settingsConnection = self->_settingsConnection;
  }

  return settingsConnection;
}

- (AFMyriadAdvertisementContextManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy)
  {
    v10.receiver = self;
    v10.super_class = AFMyriadAdvertisementContextManager;
    v6 = [(AFMyriadAdvertisementContextManager *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_queue, queue);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end