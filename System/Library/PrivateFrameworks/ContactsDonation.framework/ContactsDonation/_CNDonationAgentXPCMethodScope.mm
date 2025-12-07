@interface _CNDonationAgentXPCMethodScope
- (_CNDonationAgentXPCMethodScope)init;
- (_CNDonationAgentXPCMethodScope)initWithConnection:(id)connection promise:(id)promise proxy:(id)proxy;
@end

@implementation _CNDonationAgentXPCMethodScope

- (_CNDonationAgentXPCMethodScope)init
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CFBE90]);
  objc_initWeak(&location, v3);
  v4 = +[CNDonationAgentXPCAdapter newXPCConnection];
  v5 = MEMORY[0x277CFBEF0];
  v21[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  remoteObjectInterface = [v4 remoteObjectInterface];
  [v5 addAllowedClasses:v6 toInterface:remoteObjectInterface forSelector:sel_meCardDonations_ argumentIndex:0 ofReply:1];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __38___CNDonationAgentXPCMethodScope_init__block_invoke;
  v18[3] = &unk_278569E10;
  objc_copyWeak(&v19, &location);
  [v4 setInterruptionHandler:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38___CNDonationAgentXPCMethodScope_init__block_invoke_2;
  v16[3] = &unk_278569E10;
  objc_copyWeak(&v17, &location);
  [v4 setInvalidationHandler:v16];
  [v4 resume];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __38___CNDonationAgentXPCMethodScope_init__block_invoke_3;
  v14 = &unk_278569E38;
  objc_copyWeak(&v15, &location);
  v8 = [v4 remoteObjectProxyWithErrorHandler:&v11];
  v9 = [(_CNDonationAgentXPCMethodScope *)self initWithConnection:v4 promise:v3 proxy:v8, v11, v12, v13, v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
  return v9;
}

- (_CNDonationAgentXPCMethodScope)initWithConnection:(id)connection promise:(id)promise proxy:(id)proxy
{
  connectionCopy = connection;
  promiseCopy = promise;
  proxyCopy = proxy;
  v22.receiver = self;
  v22.super_class = _CNDonationAgentXPCMethodScope;
  v11 = [(_CNDonationAgentXPCMethodScope *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_promise, promise);
    objc_storeStrong(&v12->_proxy, proxy);
    future = [(CNPromise *)v12->_promise future];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __67___CNDonationAgentXPCMethodScope_initWithConnection_promise_proxy___block_invoke;
    v20[3] = &unk_278569E60;
    v14 = connectionCopy;
    v21 = v14;
    [future addSuccessBlock:v20];

    future2 = [(CNPromise *)v12->_promise future];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __67___CNDonationAgentXPCMethodScope_initWithConnection_promise_proxy___block_invoke_2;
    v18[3] = &unk_278569E88;
    v19 = v14;
    [future2 addFailureBlock:v18];

    v16 = v12;
  }

  return v12;
}

@end