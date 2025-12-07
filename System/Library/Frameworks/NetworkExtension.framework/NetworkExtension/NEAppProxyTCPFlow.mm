@interface NEAppProxyTCPFlow
- (NEAppProxyTCPFlow)initWithNEFlow:(_NEFlow *)flow queue:(id)queue;
- (NWEndpoint)remoteEndpoint;
- (id)description;
- (void)readDataWithCompletionHandler:(void *)completionHandler;
- (void)writeData:(NSData *)data withCompletionHandler:(void *)completionHandler;
@end

@implementation NEAppProxyTCPFlow

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  metaData = [(NEAppProxyFlow *)self metaData];
  remoteFlowEndpoint = [(NEAppProxyTCPFlow *)self remoteFlowEndpoint];
  networkInterface = [(NEAppProxyFlow *)self networkInterface];
  isBound = [(NEAppProxyFlow *)self isBound];
  v8 = &stru_1F3880810;
  if (isBound)
  {
    v8 = @"(bound)";
  }

  v9 = [v3 stringWithFormat:@"TCP %@ remote: %@ interface %@%@", metaData, remoteFlowEndpoint, networkInterface, v8];

  return v9;
}

- (NWEndpoint)remoteEndpoint
{
  v2 = MEMORY[0x1E6977E20];
  remoteFlowEndpoint = [(NEAppProxyTCPFlow *)self remoteFlowEndpoint];
  v4 = [v2 endpointWithCEndpoint:remoteFlowEndpoint];

  return v4;
}

- (void)writeData:(NSData *)data withCompletionHandler:(void *)completionHandler
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = completionHandler;
  v7 = data;
  if ((isa_nsdata(v7) & 1) == 0)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        flow = self->super._flow;
      }

      else
      {
        flow = 0;
      }

      *buf = 134217984;
      v32 = CFHash(flow);
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%lu: Data object passed is not an NSData", buf, 0xCu);
    }

    if (self)
    {
      Property = objc_getProperty(self, v9, 40, 1);
    }

    else
    {
      Property = 0;
    }

    v11 = Property;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__NEAppProxyTCPFlow_writeData_withCompletionHandler___block_invoke;
    block[3] = &unk_1E7F0B600;
    v30 = v6;
    dispatch_async(v11, block);
  }

  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __53__NEAppProxyTCPFlow_writeData_withCompletionHandler___block_invoke_2;
  v27 = &unk_1E7F06AB0;
  v12 = v6;
  v28 = v12;
  v13 = NEFlowWrite();

  if (v13)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v18 = self->super._flow;
      }

      else
      {
        v18 = 0;
      }

      v19 = CFHash(v18);
      *buf = 134217984;
      v32 = v19;
      _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "%lu: Failed to write flow Data", buf, 0xCu);
    }

    if (self)
    {
      v16 = objc_getProperty(self, v15, 40, 1);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __53__NEAppProxyTCPFlow_writeData_withCompletionHandler___block_invoke_5;
    v21[3] = &unk_1E7F0AB18;
    v22 = v12;
    v23 = v13;
    dispatch_async(v17, v21);
  }
}

void __53__NEAppProxyTCPFlow_writeData_withCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

void __53__NEAppProxyTCPFlow_writeData_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NEAppProxyFlow errorForFlowError:a2];
  (*(v2 + 16))(v2, v3);
}

void __53__NEAppProxyTCPFlow_writeData_withCompletionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

- (void)readDataWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __51__NEAppProxyTCPFlow_readDataWithCompletionHandler___block_invoke;
  v17 = &unk_1E7F06A60;
  v5 = v4;
  v18 = v5;
  v6 = NEFlowAsyncRead();
  if (v6)
  {
    v8 = v6;
    if (self)
    {
      Property = objc_getProperty(self, v7, 40, 1);
    }

    else
    {
      Property = 0;
    }

    v10 = Property;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__NEAppProxyTCPFlow_readDataWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7F0AB18;
    v12 = v5;
    v13 = v8;
    dispatch_async(v10, block);
  }
}

void __51__NEAppProxyTCPFlow_readDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (v8)
  {
    v5 = v8;
  }

  v6 = *(a1 + 32);
  v7 = [NEAppProxyFlow errorForFlowError:a3];
  (*(v6 + 16))(v6, v8, v7);
}

void __51__NEAppProxyTCPFlow_readDataWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, 0, v2);
}

- (NEAppProxyTCPFlow)initWithNEFlow:(_NEFlow *)flow queue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = NEAppProxyTCPFlow;
  v7 = [(NEAppProxyFlow *)&v11 initWithNEFlow:flow queue:queueCopy];
  if (v7)
  {
    v8 = [NEAppProxyFlow copyRemoteEndpointFromFlow:flow];
    remoteFlowEndpoint = v7->_remoteFlowEndpoint;
    v7->_remoteFlowEndpoint = v8;

    if (!v7->_remoteFlowEndpoint)
    {
      __assert_rtn("[NEAppProxyTCPFlow initWithNEFlow:queue:]", "NEAppProxyTCPFlow.m", 20, "_remoteFlowEndpoint != nil");
    }
  }

  return v7;
}

@end