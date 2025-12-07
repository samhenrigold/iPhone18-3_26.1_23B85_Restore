@interface AAAccountServiceController
- (AAAccountServiceController)initWithDaemonXPCEndpoint:(id)endpoint;
- (void)updatePropertiesForAppleAccount:(id)account options:(id)options completion:(id)completion;
@end

@implementation AAAccountServiceController

- (AAAccountServiceController)initWithDaemonXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v9.receiver = self;
  v9.super_class = AAAccountServiceController;
  v5 = [(AAAccountServiceController *)&v9 init];
  if (v5)
  {
    v6 = [[AAAccountServiceDaemonConnection alloc] initWithListenerEndpoint:endpointCopy];
    daemonConnection = v5->_daemonConnection;
    v5->_daemonConnection = v6;
  }

  return v5;
}

- (void)updatePropertiesForAppleAccount:(id)account options:(id)options completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  optionsCopy = options;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_1B6F6A000, "apple-account/update-account-properties", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy_;
  v29[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v30 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__AAAccountServiceController_updatePropertiesForAppleAccount_options_completion___block_invoke;
  aBlock[3] = &unk_1E7C9A7A8;
  v28 = v29;
  v13 = completionCopy;
  v27 = v13;
  v14 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __81__AAAccountServiceController_updatePropertiesForAppleAccount_options_completion___block_invoke_2;
  v23 = &unk_1E7C9A7D0;
  v16 = v14;
  v25 = v16;
  v17 = accountCopy;
  v24 = v17;
  v18 = [(AAAccountServiceDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v20];
  v19 = _AALogSystem(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v18;
    _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Account service updating account properties for account with service: %@", buf, 0xCu);
  }

  [v18 updatePropertiesForAppleAccount:v17 options:optionsCopy completion:{v16, v20, v21, v22, v23}];
  _Block_object_dispose(v29, 8);

  os_activity_scope_leave(&state);
}

void __81__AAAccountServiceController_updatePropertiesForAppleAccount_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v5);
  }
}

void __81__AAAccountServiceController_updatePropertiesForAppleAccount_options_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __81__AAAccountServiceController_updatePropertiesForAppleAccount_options_completion___block_invoke_2_cold_1(v3, v4);
  }

  (*(*(a1 + 40) + 16))();
}

void __81__AAAccountServiceController_updatePropertiesForAppleAccount_options_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Account service connection error handler called with: %@.", &v2, 0xCu);
}

@end