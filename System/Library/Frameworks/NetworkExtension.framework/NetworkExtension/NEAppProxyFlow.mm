@interface NEAppProxyFlow
+ (CFErrorRef)convertFlowErrorToCFError:(uint64_t)error;
+ (NSObject)copyRemoteEndpointFromFlow:(uint64_t)flow;
+ (id)errorForFlowError:(uint64_t)error;
- (NEAppProxyFlow)initWithNEFlow:(_NEFlow *)flow queue:(id)queue;
- (NSData)applicationData;
- (id)description;
- (nw_interface_t)networkInterface;
- (uint64_t)clearEventHandlers;
- (unint64_t)hash;
- (void)closeReadWithError:(NSError *)error;
- (void)closeWriteWithError:(NSError *)error;
- (void)dealloc;
- (void)openWithLocalEndpoint:(NWHostEndpoint *)localEndpoint completionHandler:(void *)completionHandler;
- (void)openWithLocalFlowEndpoint:(id)endpoint completionHandler:(id)handler;
- (void)setMetadata:(nw_parameters_t)parameters;
- (void)setNetworkInterface:(nw_interface_t)networkInterface;
@end

@implementation NEAppProxyFlow

- (void)setMetadata:(nw_parameters_t)parameters
{
  v4 = MEMORY[0x1E696ACC8];
  v5 = parameters;
  v9 = [[v4 alloc] initRequiringSecureCoding:1];
  metaData = [(NEAppProxyFlow *)self metaData];
  [v9 encodeObject:metaData forKey:@"MetaData"];

  [v9 finishEncoding];
  encodedData = [v9 encodedData];
  v8 = xpc_data_create([encodedData bytes], objc_msgSend(encodedData, "length"));
  nw_parameters_set_metadata();
}

- (void)setNetworkInterface:(nw_interface_t)networkInterface
{
  if (networkInterface)
  {
    v4 = networkInterface;
    nw_interface_get_index(v4);
    v5 = nw_interface_create_with_index();
    v7 = v5;
    if (self)
    {
      objc_setProperty_atomic(self, v6, v5, 48);

      Property = objc_getProperty(self, v8, 48, 1);
    }

    else
    {

      Property = 0;
    }

    v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:nw_interface_get_index(Property)];
    NEFlowSetProperty();
  }
}

- (nw_interface_t)networkInterface
{
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
    v2 = vars8;
  }

  return self;
}

- (NSData)applicationData
{
  v2 = NEFlowCopyProperty();

  return v2;
}

- (void)closeWriteWithError:(NSError *)error
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = error;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v4;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "closing write on flow %@ with error %@", &v7, 0x16u);
  }

  if (v4)
  {
    v6 = [NEAppProxyFlow convertFlowErrorToCFError:v4];
  }

  else
  {
    v6 = 0;
  }

  NEFlowWriteClose();
  if (v6)
  {
    CFRelease(v6);
  }
}

+ (CFErrorRef)convertFlowErrorToCFError:(uint64_t)error
{
  v2 = a2;
  objc_opt_self();
  code = [v2 code];
  v4 = *MEMORY[0x1E695E480];
  if (code <= 4)
  {
    if (code <= 2)
    {
      if (code == 1)
      {
        v5 = @"NEAppProxyFlowErrorDomain";
        v6 = *MEMORY[0x1E695E480];
        code2 = 1;
        goto LABEL_21;
      }

      if (code == 2)
      {
        v5 = @"NEAppProxyFlowErrorDomain";
        v6 = *MEMORY[0x1E695E480];
        code2 = 2;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v5 = @"NEAppProxyFlowErrorDomain";
    if (code == 3)
    {
      v6 = *MEMORY[0x1E695E480];
      code2 = 3;
    }

    else
    {
      v6 = *MEMORY[0x1E695E480];
      code2 = 4;
    }
  }

  else
  {
    if (code > 6)
    {
      switch(code)
      {
        case 7:
          v5 = @"NEAppProxyFlowErrorDomain";
          v6 = *MEMORY[0x1E695E480];
          code2 = 7;
          goto LABEL_21;
        case 9:
          v5 = @"NEAppProxyFlowErrorDomain";
          v6 = *MEMORY[0x1E695E480];
          code2 = 100;
          goto LABEL_21;
        case 10:
          v5 = @"NEAppProxyFlowErrorDomain";
          v6 = *MEMORY[0x1E695E480];
          code2 = 101;
          goto LABEL_21;
      }

LABEL_20:
      v8 = *MEMORY[0x1E695E640];
      code2 = [v2 code];
      v6 = v4;
      v5 = v8;
      goto LABEL_21;
    }

    v5 = @"NEAppProxyFlowErrorDomain";
    if (code == 5)
    {
      v6 = *MEMORY[0x1E695E480];
      code2 = 5;
    }

    else
    {
      v6 = *MEMORY[0x1E695E480];
      code2 = 6;
    }
  }

LABEL_21:
  v9 = CFErrorCreate(v6, v5, code2, 0);

  return v9;
}

- (void)closeReadWithError:(NSError *)error
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = error;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v4;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "closing read on flow %@ with error %@", &v7, 0x16u);
  }

  if (v4)
  {
    v6 = [NEAppProxyFlow convertFlowErrorToCFError:v4];
  }

  else
  {
    v6 = 0;
  }

  NEFlowReadClose();
  if (v6)
  {
    CFRelease(v6);
  }
}

- (void)openWithLocalEndpoint:(NWHostEndpoint *)localEndpoint completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  copyCEndpoint = [(NWHostEndpoint *)localEndpoint copyCEndpoint];
  [(NEAppProxyFlow *)self openWithLocalFlowEndpoint:copyCEndpoint completionHandler:v6];
}

- (void)openWithLocalFlowEndpoint:(id)endpoint completionHandler:(id)handler
{
  v50 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  handlerCopy = handler;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy = self;
    v48 = 2112;
    v49 = endpointCopy;
    _os_log_debug_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEBUG, "opening flow %@ with local %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (endpointCopy)
  {
    address = nw_endpoint_get_address(endpointCopy);
    if (address)
    {
      v11 = [MEMORY[0x1E695DEF0] dataWithBytes:address length:address->sa_len];
    }

    else
    {
      v11 = 0;
    }

    if (!NEFlowSetProperty())
    {

      goto LABEL_19;
    }

    v12 = NEFlowCopyProperty();
    if (isa_nsnumber(v12))
    {
      [v12 unsignedIntValue];
      v14 = nw_interface_create_with_index();
      if (selfCopy2)
      {
        objc_setProperty_atomic(selfCopy2, v13, v14, 48);
      }
    }
  }

  v40 = MEMORY[0x1E69E9820];
  v41 = 3221225472;
  v42 = __62__NEAppProxyFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke;
  v43 = &unk_1E7F06A38;
  v15 = handlerCopy;
  v44 = selfCopy2;
  v45 = v15;
  v16 = NEFlowSetEventHandler() == 0;

  if (v16 || (v34 = MEMORY[0x1E69E9820], v35 = 3221225472, v36 = __62__NEAppProxyFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke_2, v37 = &unk_1E7F06A38, v17 = v15, v38 = selfCopy2, v39 = v17, v18 = NEFlowSetEventHandler() == 0, v17, v18) || (v28 = MEMORY[0x1E69E9820], v29 = 3221225472, v30 = __62__NEAppProxyFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke_3, v31 = &unk_1E7F06A38, v32 = selfCopy2, v33 = v17, v19 = NEFlowSetEventHandler() == 0, v33, v19) || !NEFlowOpen())
  {
LABEL_19:
    [(NEAppProxyFlow *)selfCopy2 clearEventHandlers];
    v20 = NEFlowCopyError();
    v22 = v20;
    if (v20)
    {
      code = [v20 code];
      if (selfCopy2)
      {
LABEL_21:
        Property = objc_getProperty(selfCopy2, v21, 40, 1);
LABEL_22:
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __62__NEAppProxyFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke_4;
        v25[3] = &unk_1E7F0AB18;
        v26 = handlerCopy;
        v27 = code;
        dispatch_async(Property, v25);

        goto LABEL_23;
      }
    }

    else
    {
      code = 0;
      if (selfCopy2)
      {
        goto LABEL_21;
      }
    }

    Property = 0;
    goto LABEL_22;
  }

LABEL_23:
  objc_sync_exit(selfCopy2);
}

uint64_t __62__NEAppProxyFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [(NEAppProxyFlow *)v2 clearEventHandlers];
}

uint64_t __62__NEAppProxyFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [NEAppProxyFlow errorForFlowError:?];
  (*(v2 + 16))(v2, v3);

  v4 = *(a1 + 32);

  return [(NEAppProxyFlow *)v4 clearEventHandlers];
}

uint64_t __62__NEAppProxyFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [NEAppProxyFlow errorForFlowError:?];
  (*(v2 + 16))(v2, v3);

  v4 = *(a1 + 32);

  return [(NEAppProxyFlow *)v4 clearEventHandlers];
}

- (uint64_t)clearEventHandlers
{
  if (result)
  {
    NEFlowSetEventHandler();
    NEFlowSetEventHandler();

    return NEFlowSetEventHandler();
  }

  return result;
}

void __62__NEAppProxyFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

+ (id)errorForFlowError:(uint64_t)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = 0;
  if (a2 <= 4)
  {
    if (a2 > 2)
    {
      v9 = MEMORY[0x1E696ABC0];
      if (a2 == 3)
      {
        v25 = *MEMORY[0x1E696A578];
        v26 = @"The destination could host could not be reached";
        v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v6 = v9;
        v7 = 3;
      }

      else
      {
        v27 = *MEMORY[0x1E696A578];
        v28 = @"An invalid argument was passed";
        v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v6 = v9;
        v7 = 4;
      }
    }

    else if (a2 == 1)
    {
      v11 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A578];
      v32[0] = @"The operation could not be completed because the flow is not connected";
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      v6 = v11;
      v7 = 1;
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_21;
      }

      v8 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A578];
      v30 = @"The peer closed the flow";
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v6 = v8;
      v7 = 2;
    }
  }

  else if (a2 <= 6)
  {
    v10 = MEMORY[0x1E696ABC0];
    if (a2 == 5)
    {
      v19 = *MEMORY[0x1E696A578];
      v20 = @"The flow was aborted";
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v6 = v10;
      v7 = 5;
    }

    else
    {
      v21 = *MEMORY[0x1E696A578];
      v22 = @"The flow was refused";
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v6 = v10;
      v7 = 6;
    }
  }

  else
  {
    switch(a2)
    {
      case 7:
        v12 = MEMORY[0x1E696ABC0];
        v23 = *MEMORY[0x1E696A578];
        v24 = @"The flow timed out";
        v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v6 = v12;
        v7 = 7;
        break;
      case 100:
        v13 = MEMORY[0x1E696ABC0];
        v17 = *MEMORY[0x1E696A578];
        v18 = @"The datagram was too large";
        v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        v6 = v13;
        v7 = 9;
        break;
      case 101:
        v4 = MEMORY[0x1E696ABC0];
        v15 = *MEMORY[0x1E696A578];
        v16 = @"A read operation is already pending";
        v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v6 = v4;
        v7 = 10;
        break;
      default:
        goto LABEL_21;
    }
  }

  v3 = [v6 errorWithDomain:@"NEAppProxyFlowErrorDomain" code:v7 userInfo:v5];

LABEL_21:

  return v3;
}

- (id)description
{
  v2 = CFCopyDescription(self->_flow);

  return v2;
}

- (unint64_t)hash
{
  if (self)
  {
    self = self->_flow;
  }

  return CFHash(self);
}

- (void)dealloc
{
  selfCopy = self;
  if (self)
  {
    self = self->_flow;
  }

  CFRelease(self);
  v3.receiver = selfCopy;
  v3.super_class = NEAppProxyFlow;
  [(NEAppProxyFlow *)&v3 dealloc];
}

- (NEAppProxyFlow)initWithNEFlow:(_NEFlow *)flow queue:(id)queue
{
  v41 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v39.receiver = self;
  v39.super_class = NEAppProxyFlow;
  v8 = [(NEAppProxyFlow *)&v39 init];
  if (!v8)
  {
    goto LABEL_23;
  }

  v8->_flow = CFRetain(flow);
  objc_storeStrong(&v8->_queue, queue);
  applicationData = [(NEAppProxyFlow *)v8 applicationData];
  if (!isa_nsdata(applicationData))
  {
    goto LABEL_6;
  }

  v38 = 0;
  v10 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:applicationData error:&v38];
  v11 = v38;
  if (v11)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

LABEL_6:
      v13 = [NEFlowMetaData alloc];
      if (v13)
      {
        v40.receiver = v13;
        v40.super_class = NEFlowMetaData;
        v14 = [(NEAppProxyFlow *)&v40 init];
        if (v14)
        {
          v15 = NEFlowCopyProperty();
          remoteHostname = v14->_remoteHostname;
          v14->_remoteHostname = v15;

          v17 = NEFlowCopyProperty();
          metaData = v14->_metaData;
          v14->_metaData = v17;

          v19 = NEFlowCopyProperty();
          flow = v14->_flow;
          v14->_flow = v19;

          v21 = NEFlowCopyProperty();
          if (isa_nsnumber(v21))
          {
            v14->_isBound = ([v21 unsignedIntValue] & 2) != 0;
            *(&v14->_isBound + 1) = ([v21 unsignedIntValue] & 4) != 0;
          }

          v22 = NEFlowCopyProperty();
          if (isa_nsdata(v22) && [v22 length] == 16)
          {
            v23 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v22, "bytes")}];
            queue = v14->_queue;
            v14->_queue = v23;
          }
        }
      }

      else
      {
        v14 = 0;
      }

      v25 = 0;
      v26 = v8->_metaData;
      v8->_metaData = v14;
      goto LABEL_15;
    }

    LODWORD(v40.receiver) = 138412290;
    *(&v40.receiver + 4) = v11;
    v35 = "Failed to decode the application data: %@";
    v36 = v12;
    v37 = 12;
LABEL_29:
    _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, v35, &v40, v37);
    goto LABEL_5;
  }

  v33 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"MetaData"];
  if (!v33)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    LOWORD(v40.receiver) = 0;
    v35 = "Failed to decode the meta data from the application data";
    v36 = v12;
    v37 = 2;
    goto LABEL_29;
  }

  v34 = v33;

  v25 = v34;
  v26 = v8->_metaData;
  v8->_metaData = v25;
LABEL_15:

  NEFlowSetDispatchQueue();
  v27 = NEFlowCopyProperty();
  if (isa_nsnumber(v27) && ([v27 unsignedIntValue] & 8) != 0)
  {
    [(NEAppProxyFlow *)v8 setIsBound:1];
  }

  v28 = NEFlowCopyProperty();
  if (isa_nsnumber(v28))
  {
    [v28 unsignedIntValue];
    v29 = nw_interface_create_with_index();
    objc_setProperty_atomic(v8, v30, v29, 48);
  }

  v31 = NEFlowCopyProperty();
  if (isa_nsstring(v31))
  {
    objc_storeStrong(&v8->_remoteHostname, v31);
  }

LABEL_23:
  return v8;
}

+ (NSObject)copyRemoteEndpointFromFlow:(uint64_t)flow
{
  objc_opt_self();
  v2 = NEFlowCopyProperty();
  if (isa_nsdata(v2))
  {
    address = nw_endpoint_create_address([v2 bytes]);
    v4 = nw_endpoint_get_address(address);
    if (NEIsWildcardAddress(&v4->sa_len))
    {
      nw_endpoint_get_port(address);
    }

    else if (address)
    {
      goto LABEL_9;
    }
  }

  v5 = NEFlowCopyProperty();
  if (isa_nsstring(v5))
  {
    [v5 UTF8String];
    address = nw_endpoint_create_host_with_numeric_port();
  }

  else
  {
    address = 0;
  }

LABEL_9:
  return address;
}

@end