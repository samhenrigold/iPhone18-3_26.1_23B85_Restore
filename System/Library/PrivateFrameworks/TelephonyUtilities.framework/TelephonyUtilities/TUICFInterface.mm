@interface TUICFInterface
+ (id)allowCallForDestinationID:(id)d providerIdentifier:(id)identifier;
+ (void)allowCallForDestinationID:(id)d providerIdentifier:(id)identifier queue:(id)queue completionHandler:(id)handler;
@end

@implementation TUICFInterface

+ (id)allowCallForDestinationID:(id)d providerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dCopy = d;
  v8 = objc_alloc_init(TUICFQueryResult);
  v9 = dispatch_semaphore_create(0);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__TUICFInterface_allowCallForDestinationID_providerIdentifier___block_invoke;
  v19[3] = &unk_1E74277E0;
  v10 = v8;
  v20 = v10;
  v11 = v9;
  v21 = v11;
  [self allowCallForDestinationID:dCopy providerIdentifier:identifierCopy queue:0 completionHandler:v19];

  v12 = dispatch_time(0, 2000000000);
  v13 = dispatch_semaphore_wait(v11, v12);
  if (v13)
  {
    v14 = TUDefaultLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18[0] = 0;
      _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Timed out waiting for ICFCallProviderShouldAllowIncomingCall(). Defaulting to allowCall=YES, fromBlockList=NO", v18, 2u);
    }

    [(TUICFQueryResult *)v10 setAllowCallForDestinationID:1];
    [(TUICFQueryResult *)v10 setFromBlockList:0];
  }

  v15 = v21;
  v16 = v10;

  return v10;
}

intptr_t __63__TUICFInterface_allowCallForDestinationID_providerIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) setAllowCallForDestinationID:a2];
  [*(a1 + 32) setFromBlockList:a3];
  v5 = *(a1 + 40);

  return dispatch_semaphore_signal(v5);
}

+ (void)allowCallForDestinationID:(id)d providerIdentifier:(id)identifier queue:(id)queue completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = handlerCopy;
  ICFCallProviderShouldAllowIncomingCallWithQueue();
}

@end