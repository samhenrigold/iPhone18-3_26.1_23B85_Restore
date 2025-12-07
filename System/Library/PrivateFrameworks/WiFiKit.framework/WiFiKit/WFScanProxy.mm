@interface WFScanProxy
+ (id)scanProxyWithClient:(id)client;
- (BOOL)isChannel6GHzPSC:(id)c;
- (BOOL)isScanningAllowed;
- (NSArray)scannableChannels;
- (WFScanProxy)initWithClient:(id)client;
- (void)initiateNoNetworksSoftError;
- (void)performScanWithRequest:(id)request reply:(id)reply;
@end

@implementation WFScanProxy

+ (id)scanProxyWithClient:(id)client
{
  clientCopy = client;
  v4 = [[WFScanProxy alloc] initWithClient:clientCopy];

  return v4;
}

- (WFScanProxy)initWithClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = WFScanProxy;
  v6 = [(WFScanProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, client);
  }

  return v7;
}

- (BOOL)isScanningAllowed
{
  client = [(WFScanProxy *)self client];
  powered = [client powered];

  return powered;
}

- (BOOL)isChannel6GHzPSC:(id)c
{
  cCopy = c;
  if (([cCopy flags] & 0x2000) != 0)
  {
    channel = [cCopy channel];
    v6 = 0;
    do
    {
      v7 = isChannel6GHzPSC__pscChannels[v6];
      v4 = channel == v7;
    }

    while (channel != v7 && v6++ != 14);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)scannableChannels
{
  v19 = *MEMORY[0x277D85DE8];
  client = [(WFScanProxy *)self client];
  cInterface = [client cInterface];
  supported20MHzChannels = [cInterface supported20MHzChannels];

  if (supported20MHzChannels)
  {
    array = [MEMORY[0x277CBEB18] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = supported20MHzChannels;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if (([v12 flags] & 0x2000) == 0 || -[WFScanProxy isChannel6GHzPSC:](self, "isChannel6GHzPSC:", v12))
          {
            [array addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (void)initiateNoNetworksSoftError
{
  client = [(WFScanProxy *)self client];
  interface = [client interface];
  [interface notifyNoNetworksFound];
}

- (void)performScanWithRequest:(id)request reply:(id)reply
{
  replyCopy = reply;
  requestCopy = request;
  client = [(WFScanProxy *)self client];
  cInterface = [client cInterface];
  cScanParameters = [requestCopy cScanParameters];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__WFScanProxy_performScanWithRequest_reply___block_invoke;
  v12[3] = &unk_279EBDA70;
  v13 = replyCopy;
  v11 = replyCopy;
  [cInterface performScanWithParameters:cScanParameters reply:v12];
}

void __44__WFScanProxy_performScanWithRequest_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = __Block_byref_object_copy__2;
    v8[4] = __Block_byref_object_dispose__2;
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__WFScanProxy_performScanWithRequest_reply___block_invoke_3;
    v7[3] = &unk_279EBDB38;
    v7[4] = v8;
    [v6 enumerateObjectsUsingBlock:v7];
    (*(*(a1 + 32) + 16))();
    _Block_object_dispose(v8, 8);
  }
}

void __44__WFScanProxy_performScanWithRequest_reply___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [[WFNetworkScanRecord alloc] initWithScanResults:v3];
  if (v4)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  }

  else
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(1uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
    {
      v9 = 136315394;
      v10 = "[WFScanProxy performScanWithRequest:reply:]_block_invoke";
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_273ECD000, v5, v7, "%s: unable to create WFNetworkScanRecord for %@", &v9, 0x16u);
    }
  }
}

@end