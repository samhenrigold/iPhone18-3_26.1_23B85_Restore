@interface LSDatabaseBlockingFetchClient
- (LSDatabaseBlockingFetchClient)initWithXPCConnection:(id)connection;
- (void)getServerStoreBlockingWithCompletionHandler:(id)handler;
@end

@implementation LSDatabaseBlockingFetchClient

- (LSDatabaseBlockingFetchClient)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = LSDatabaseBlockingFetchClient;
  v6 = [(LSDatabaseBlockingFetchClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (void)getServerStoreBlockingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _LSAssertRunningInServer("[LSDatabaseBlockingFetchClient getServerStoreBlockingWithCompletionHandler:]", v5);
  if (getServerStoreBlockingWithCompletionHandler__onceToken != -1)
  {
    [LSDatabaseBlockingFetchClient getServerStoreBlockingWithCompletionHandler:];
  }

  v6 = +[LSDatabaseBlockingFetchServer sharedInstance];
  isForManualRebuild = [v6 isForManualRebuild];

  if (isForManualRebuild)
  {
    __LAUNCH_SERVICES_CLIENTS_ARE_WAITING_FOR_A_MANUAL_DATABASE_REBUILD_TO_COMPLETE__(v8, v9);
  }

  else
  {
    __LAUNCH_SERVICES_CLIENTS_ARE_WAITING_FOR_THE_DATABASE_TO_FINISH_SEEDING__(v8, v9);
  }

  v10 = self->_connection;
  v11 = _LSServer_DatabaseExecutionContext();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__LSDatabaseBlockingFetchClient_getServerStoreBlockingWithCompletionHandler___block_invoke_2;
  v14[3] = &unk_1E6A1D3F0;
  v15 = v10;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = v10;
  [(LSDBExecutionContext *)v11 syncRead:v14];
}

void __77__LSDatabaseBlockingFetchClient_getServerStoreBlockingWithCompletionHandler___block_invoke()
{
  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func();

  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func();
}

@end