@interface STDowntimeClient
+ (id)_newConnection;
- (BOOL)isDowntimeEnabledForUserID:(id)d;
- (STDowntimeClient)init;
- (void)dealloc;
- (void)toggleOnDemandDowntimeForUserID:(id)d completionHandler:(id)handler;
@end

@implementation STDowntimeClient

- (STDowntimeClient)init
{
  v6.receiver = self;
  v6.super_class = STDowntimeClient;
  v2 = [(STDowntimeClient *)&v6 init];
  if (v2)
  {
    v3 = +[STDowntimeClient _newConnection];
    connection = v2->_connection;
    v2->_connection = v3;

    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = STDowntimeClient;
  [(STDowntimeClient *)&v3 dealloc];
}

+ (id)_newConnection
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ScreenTimeAgent.downtime" options:4096];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30773F8];
  [v2 setRemoteObjectInterface:v3];

  return v2;
}

- (BOOL)isDowntimeEnabledForUserID:(id)d
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = +[STLog downtimeClient];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = dCopy;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Requesting current downtime state for user: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  connection = [(STDowntimeClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__STDowntimeClient_isDowntimeEnabledForUserID___block_invoke;
  v14[3] = &unk_1E7CE6BA8;
  v14[4] = &buf;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__STDowntimeClient_isDowntimeEnabledForUserID___block_invoke_2;
  v13[3] = &unk_1E7CE6BD0;
  v13[4] = &buf;
  v13[5] = &v15;
  [v7 isDowntimeEnabledForUserID:dCopy completionHandler:v13];
  v8 = +[STLog downtimeClient];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(v16 + 24);
    v10 = *(*(&buf + 1) + 40);
    *v19 = 67109378;
    v20 = v9;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&dword_1B831F000, v8, OS_LOG_TYPE_DEFAULT, "Got downtime state: %d - Error: %{public}@", v19, 0x12u);
  }

  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&buf, 8);

  return v11 & 1;
}

void __47__STDowntimeClient_isDowntimeEnabledForUserID___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)toggleOnDemandDowntimeForUserID:(id)d completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = +[STLog downtimeClient];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = dCopy;
    _os_log_impl(&dword_1B831F000, v8, OS_LOG_TYPE_DEFAULT, "Requesting current downtime state for user: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  connection = [(STDowntimeClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__STDowntimeClient_toggleOnDemandDowntimeForUserID_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE6BA8;
  v14[4] = &buf;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__STDowntimeClient_toggleOnDemandDowntimeForUserID_completionHandler___block_invoke_2;
  v13[3] = &unk_1E7CE6BA8;
  v13[4] = &buf;
  [v10 toggleOnDemandDowntimeForUserID:dCopy completionHandler:v13];
  v11 = +[STLog downtimeClient];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(&buf + 1) + 40);
    *v15 = 138412290;
    v16 = v12;
    _os_log_impl(&dword_1B831F000, v11, OS_LOG_TYPE_DEFAULT, "Toggle On Demand Downtime with Error: %@", v15, 0xCu);
  }

  handlerCopy[2](handlerCopy, *(*(&buf + 1) + 40));
  _Block_object_dispose(&buf, 8);
}

@end