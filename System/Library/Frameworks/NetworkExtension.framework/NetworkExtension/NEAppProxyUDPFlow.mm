@interface NEAppProxyUDPFlow
- (NEAppProxyUDPFlow)initWithNEFlow:(_NEFlow *)flow queue:(id)queue;
- (NWEndpoint)localEndpoint;
- (id)description;
- (void)openWithLocalEndpoint:(id)endpoint completionHandler:(id)handler;
- (void)openWithLocalFlowEndpoint:(id)endpoint completionHandler:(id)handler;
- (void)readDatagramsAndFlowEndpointsWithCompletionHandler:(id)handler;
- (void)readDatagramsWithCompletionHandler:(void *)completionHandler;
- (void)resetLocalEndpoint;
- (void)writeDatagrams:(NSArray *)datagrams sentByEndpoints:(NSArray *)remoteEndpoints completionHandler:(void *)completionHandler;
- (void)writeDatagrams:(id)datagrams sentByFlowEndpoints:(id)endpoints completionHandler:(id)handler;
@end

@implementation NEAppProxyUDPFlow

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  metaData = [(NEAppProxyFlow *)self metaData];
  localFlowEndpoint = [(NEAppProxyUDPFlow *)self localFlowEndpoint];
  if (localFlowEndpoint)
  {
    localFlowEndpoint2 = [(NEAppProxyUDPFlow *)self localFlowEndpoint];
    port = nw_endpoint_get_port(localFlowEndpoint2);
  }

  else
  {
    port = 0;
  }

  networkInterface = [(NEAppProxyFlow *)self networkInterface];
  isBound = [(NEAppProxyFlow *)self isBound];
  v10 = &stru_1F3880810;
  if (isBound)
  {
    v10 = @"(bound)";
  }

  v11 = [v4 stringWithFormat:@"UDP %@ local port %u interface %@%@", metaData, port, networkInterface, v10];

  if (localFlowEndpoint)
  {
  }

  return v11;
}

- (NWEndpoint)localEndpoint
{
  localFlowEndpoint = [(NEAppProxyUDPFlow *)self localFlowEndpoint];
  if (localFlowEndpoint)
  {
    v4 = MEMORY[0x1E6977E20];
    localFlowEndpoint2 = [(NEAppProxyUDPFlow *)self localFlowEndpoint];
    v6 = [v4 endpointWithCEndpoint:localFlowEndpoint2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)writeDatagrams:(NSArray *)datagrams sentByEndpoints:(NSArray *)remoteEndpoints completionHandler:(void *)completionHandler
{
  v78 = *MEMORY[0x1E69E9840];
  v8 = datagrams;
  v9 = remoteEndpoints;
  v47 = completionHandler;
  v10 = [(NSArray *)v8 count];
  v45 = v9;
  v46 = v8;
  if (v10 == [(NSArray *)v9 count])
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v11 = v8;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v64 objects:v71 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v65;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v65 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ((isa_nsdata(*(*(&v64 + 1) + 8 * i)) & 1) == 0)
          {
            v36 = ne_log_obj();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v73 = "[NEAppProxyUDPFlow writeDatagrams:sentByEndpoints:completionHandler:]";
              _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, "%s: Datagrams array contains a non-NSData object", buf, 0xCu);
            }

            if (self)
            {
              Property = objc_getProperty(self, v37, 40, 1);
            }

            else
            {
              Property = 0;
            }

            v39 = Property;
            v62[0] = MEMORY[0x1E69E9820];
            v62[1] = 3221225472;
            v62[2] = __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke_14;
            v62[3] = &unk_1E7F0B600;
            v63 = v47;
            dispatch_async(v39, v62);

            goto LABEL_48;
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v64 objects:v71 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v16 = v9;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v58 objects:v70 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v59;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v59 != v19)
          {
            objc_enumerationMutation(v16);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v40 = ne_log_obj();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v73 = "[NEAppProxyUDPFlow writeDatagrams:sentByEndpoints:completionHandler:]";
              _os_log_error_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_ERROR, "%s: Remote endpoints array contains a non-NWEndpoint object", buf, 0xCu);
            }

            if (self)
            {
              v42 = objc_getProperty(self, v41, 40, 1);
            }

            else
            {
              v42 = 0;
            }

            v43 = v42;
            v56[0] = MEMORY[0x1E69E9820];
            v56[1] = 3221225472;
            v56[2] = __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke_15;
            v56[3] = &unk_1E7F0B600;
            v57 = v47;
            dispatch_async(v43, v56);

            v11 = v16;
            goto LABEL_48;
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v58 objects:v70 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    if ([(NSArray *)v11 count])
    {
      v22 = 0;
      *&v21 = 136315138;
      v44 = v21;
      do
      {
        v23 = [(NSArray *)v11 objectAtIndexedSubscript:v22, v44];
        v24 = [(NSArray *)v16 objectAtIndexedSubscript:v22];
        [v24 address];
        v25 = [(NSArray *)v11 count]- 1;
        if (v22 >= v25)
        {
          v51 = MEMORY[0x1E69E9820];
          v52 = 3221225472;
          v53 = __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke_2;
          v54 = &unk_1E7F06AB0;
          v55 = v47;
        }

        v26 = NEFlowWrite();
        if (v26)
        {
          v27 = v26;
          v28 = ne_log_obj();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = v44;
            v73 = "[NEAppProxyUDPFlow writeDatagrams:sentByEndpoints:completionHandler:]";
            _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, "%s: Failed to write flow Data", buf, 0xCu);
          }

          if (self)
          {
            v30 = objc_getProperty(self, v29, 40, 1);
          }

          else
          {
            v30 = 0;
          }

          v31 = v30;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke_16;
          block[3] = &unk_1E7F0AB18;
          v49 = v47;
          v50 = v27;
          dispatch_async(v31, block);
        }

        if (v22 >= v25)
        {
        }

        ++v22;
      }

      while (v22 < [(NSArray *)v11 count]);
    }
  }

  else
  {
    v32 = ne_log_obj();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v73 = "[NEAppProxyUDPFlow writeDatagrams:sentByEndpoints:completionHandler:]";
      v74 = 2048;
      v75 = [(NSArray *)v8 count];
      v76 = 2048;
      v77 = [(NSArray *)v9 count];
      _os_log_error_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_ERROR, "%s: Size of datagrams array (%lu) does not match size of remoteEndpoints array (%lu)", buf, 0x20u);
    }

    if (self)
    {
      v34 = objc_getProperty(self, v33, 40, 1);
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke;
    v68[3] = &unk_1E7F0B600;
    v69 = v47;
    dispatch_async(v35, v68);

    v11 = v69;
LABEL_48:
  }
}

void __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

void __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke_14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

void __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke_15(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

void __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NEAppProxyFlow errorForFlowError:a2];
  (*(v2 + 16))(v2, v3);
}

void __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke_16(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

- (void)writeDatagrams:(id)datagrams sentByFlowEndpoints:(id)endpoints completionHandler:(id)handler
{
  v78 = *MEMORY[0x1E69E9840];
  datagramsCopy = datagrams;
  endpointsCopy = endpoints;
  handlerCopy = handler;
  v10 = [datagramsCopy count];
  v45 = endpointsCopy;
  v46 = datagramsCopy;
  if (v10 == [endpointsCopy count])
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v11 = datagramsCopy;
    v12 = [v11 countByEnumeratingWithState:&v64 objects:v71 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v65;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v65 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ((isa_nsdata(*(*(&v64 + 1) + 8 * i)) & 1) == 0)
          {
            v36 = ne_log_obj();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v73 = "[NEAppProxyUDPFlow writeDatagrams:sentByFlowEndpoints:completionHandler:]";
              _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, "%s: Datagrams array contains a non-NSData object", buf, 0xCu);
            }

            if (self)
            {
              Property = objc_getProperty(self, v37, 40, 1);
            }

            else
            {
              Property = 0;
            }

            v39 = Property;
            v62[0] = MEMORY[0x1E69E9820];
            v62[1] = 3221225472;
            v62[2] = __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke_10;
            v62[3] = &unk_1E7F0B600;
            v63 = handlerCopy;
            dispatch_async(v39, v62);

            goto LABEL_48;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v64 objects:v71 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v16 = endpointsCopy;
    v17 = [v16 countByEnumeratingWithState:&v58 objects:v70 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v59;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v59 != v19)
          {
            objc_enumerationMutation(v16);
          }

          if (nw_endpoint_get_type(*(*(&v58 + 1) + 8 * j)) != nw_endpoint_type_address)
          {
            v40 = ne_log_obj();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v73 = "[NEAppProxyUDPFlow writeDatagrams:sentByFlowEndpoints:completionHandler:]";
              _os_log_error_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_ERROR, "%s: Remote endpoints array contains a non-NWEndpoint object", buf, 0xCu);
            }

            if (self)
            {
              v42 = objc_getProperty(self, v41, 40, 1);
            }

            else
            {
              v42 = 0;
            }

            v43 = v42;
            v56[0] = MEMORY[0x1E69E9820];
            v56[1] = 3221225472;
            v56[2] = __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke_11;
            v56[3] = &unk_1E7F0B600;
            v57 = handlerCopy;
            dispatch_async(v43, v56);

            v11 = v16;
            goto LABEL_48;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v58 objects:v70 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    if ([v11 count])
    {
      v22 = 0;
      *&v21 = 136315138;
      v44 = v21;
      do
      {
        v23 = [v11 objectAtIndexedSubscript:{v22, v44}];
        v24 = [v16 objectAtIndexedSubscript:v22];
        nw_endpoint_get_address(v24);
        v25 = [v11 count] - 1;
        if (v22 >= v25)
        {
          v51 = MEMORY[0x1E69E9820];
          v52 = 3221225472;
          v53 = __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke_2;
          v54 = &unk_1E7F06AB0;
          v55 = handlerCopy;
        }

        v26 = NEFlowWrite();
        if (v26)
        {
          v27 = v26;
          v28 = ne_log_obj();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = v44;
            v73 = "[NEAppProxyUDPFlow writeDatagrams:sentByFlowEndpoints:completionHandler:]";
            _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, "%s: Failed to write flow Data", buf, 0xCu);
          }

          if (self)
          {
            v30 = objc_getProperty(self, v29, 40, 1);
          }

          else
          {
            v30 = 0;
          }

          v31 = v30;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke_13;
          block[3] = &unk_1E7F0AB18;
          v49 = handlerCopy;
          v50 = v27;
          dispatch_async(v31, block);
        }

        if (v22 >= v25)
        {
        }

        ++v22;
      }

      while (v22 < [v11 count]);
    }
  }

  else
  {
    v32 = ne_log_obj();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v73 = "[NEAppProxyUDPFlow writeDatagrams:sentByFlowEndpoints:completionHandler:]";
      v74 = 2048;
      v75 = [datagramsCopy count];
      v76 = 2048;
      v77 = [endpointsCopy count];
      _os_log_error_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_ERROR, "%s: Size of datagrams array (%lu) does not match size of remoteEndpoints array (%lu)", buf, 0x20u);
    }

    if (self)
    {
      v34 = objc_getProperty(self, v33, 40, 1);
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke;
    v68[3] = &unk_1E7F0B600;
    v69 = handlerCopy;
    dispatch_async(v35, v68);

    v11 = v69;
LABEL_48:
  }
}

void __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

void __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

void __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke_11(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

void __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NEAppProxyFlow errorForFlowError:a2];
  (*(v2 + 16))(v2, v3);
}

void __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke_13(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

- (void)readDatagramsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __56__NEAppProxyUDPFlow_readDatagramsWithCompletionHandler___block_invoke;
  v17 = &unk_1E7F06A88;
  v5 = v4;
  v18 = v5;
  v6 = NEFlowAsyncDatagramsCopyNext();
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
    block[2] = __56__NEAppProxyUDPFlow_readDatagramsWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7F0AB18;
    v12 = v5;
    v13 = v8;
    dispatch_async(v10, block);
  }
}

void __56__NEAppProxyUDPFlow_readDatagramsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:32];
  for (i = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:32]; a2; a2 = *(a2 + 144))
  {
    [v10 addObject:*(a2 + 128)];
    v8 = [MEMORY[0x1E6977E08] endpointWithAddress:a2];
    [i addObject:v8];
  }

  v9 = [NEAppProxyFlow errorForFlowError:a4];
  (*(*(a1 + 32) + 16))();
}

void __56__NEAppProxyUDPFlow_readDatagramsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, 0, 0, v2);
}

- (void)readDatagramsAndFlowEndpointsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __72__NEAppProxyUDPFlow_readDatagramsAndFlowEndpointsWithCompletionHandler___block_invoke;
  v17 = &unk_1E7F06A88;
  v5 = handlerCopy;
  v18 = v5;
  v6 = NEFlowAsyncDatagramsCopyNext();
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
    block[2] = __72__NEAppProxyUDPFlow_readDatagramsAndFlowEndpointsWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7F0AB18;
    v12 = v5;
    v13 = v8;
    dispatch_async(v10, block);
  }
}

void __72__NEAppProxyUDPFlow_readDatagramsAndFlowEndpointsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:32];
  for (i = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:32]; a2; a2 = *(a2 + 144))
  {
    [v13 addObject:*(a2 + 128)];
    address = nw_endpoint_create_address(a2);
    [i addObject:address];
  }

  v9 = [NEAppProxyFlow errorForFlowError:a4];
  v10 = *(a1 + 32);
  v11 = [v13 copy];
  v12 = [i copy];
  (*(v10 + 16))(v10, v11, v12, v9);
}

void __72__NEAppProxyUDPFlow_readDatagramsAndFlowEndpointsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, 0, 0, v2);
}

- (void)openWithLocalEndpoint:(id)endpoint completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__NEAppProxyUDPFlow_openWithLocalEndpoint_completionHandler___block_invoke;
  v9[3] = &unk_1E7F0B628;
  v9[4] = self;
  v10 = handlerCopy;
  v8.receiver = self;
  v8.super_class = NEAppProxyUDPFlow;
  v7 = handlerCopy;
  [(NEAppProxyFlow *)&v8 openWithLocalEndpoint:endpoint completionHandler:v9];
}

void __61__NEAppProxyUDPFlow_openWithLocalEndpoint_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [(NEAppProxyUDPFlow *)v3 resetLocalEndpoint];
  (*(*(a1 + 40) + 16))();
}

- (void)resetLocalEndpoint
{
  if (self)
  {
    v4 = NEFlowCopyProperty();
    if (isa_nsdata(v4))
    {
      address = nw_endpoint_create_address([v4 bytes]);
      v3 = *(self + 56);
      *(self + 56) = address;
    }
  }
}

- (void)openWithLocalFlowEndpoint:(id)endpoint completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__NEAppProxyUDPFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke;
  v9[3] = &unk_1E7F0B628;
  v9[4] = self;
  v10 = handlerCopy;
  v8.receiver = self;
  v8.super_class = NEAppProxyUDPFlow;
  v7 = handlerCopy;
  [(NEAppProxyFlow *)&v8 openWithLocalFlowEndpoint:endpoint completionHandler:v9];
}

void __65__NEAppProxyUDPFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [(NEAppProxyUDPFlow *)v3 resetLocalEndpoint];
  (*(*(a1 + 40) + 16))();
}

- (NEAppProxyUDPFlow)initWithNEFlow:(_NEFlow *)flow queue:(id)queue
{
  v7.receiver = self;
  v7.super_class = NEAppProxyUDPFlow;
  v4 = [(NEAppProxyFlow *)&v7 initWithNEFlow:flow queue:queue];
  v5 = v4;
  if (v4)
  {
    [(NEAppProxyUDPFlow *)v4 resetLocalEndpoint];
  }

  return v5;
}

@end