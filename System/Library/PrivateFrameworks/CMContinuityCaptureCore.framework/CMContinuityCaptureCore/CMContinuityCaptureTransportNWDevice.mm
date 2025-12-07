@interface CMContinuityCaptureTransportNWDevice
- (BOOL)active;
- (CMContinuityCaptureCapabilities)capabilities;
- (CMContinuityCaptureTransportNWDevice)initWithCapabilities:(id)capabilities identifier:(id)identifier remote:(BOOL)remote;
- (NSArray)activeStreams;
- (OS_nw_connection)activeConnection;
- (void)activate:(BOOL)activate;
- (void)captureStillImage:(id)image entity:(int64_t)entity completion:(id)completion;
- (void)didCaptureStillImage:(id)image entity:(int64_t)entity;
- (void)handleAVCNegotiation:(int64_t)negotiation data:(id)data;
- (void)postEvent:(id)event entity:(int64_t)entity data:(id)data;
- (void)sendRequest:(id)request;
- (void)setActiveConnection:(id)connection;
- (void)setCapabilities:(id)capabilities;
- (void)setValueForControl:(id)control completion:(id)completion;
- (void)setupUDPNWStack;
- (void)startStream:(id)stream option:(unint64_t)option completion:(id)completion;
- (void)stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion;
@end

@implementation CMContinuityCaptureTransportNWDevice

- (CMContinuityCaptureTransportNWDevice)initWithCapabilities:(id)capabilities identifier:(id)identifier remote:(BOOL)remote
{
  capabilitiesCopy = capabilities;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = CMContinuityCaptureTransportNWDevice;
  v11 = [(CMContinuityCaptureTransportNWDevice *)&v20 init];
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.continuitycapture.localDevice", v12);
    queue = v11->_queue;
    v11->_queue = v13;

    v11->_remote = remote;
    v15 = [[CMContinuityCaptureMagicStateMonitor alloc] initWithDevice:?];
    magicStateMonitor = v11->_magicStateMonitor;
    v11->_magicStateMonitor = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeStreams = v11->_activeStreams;
    v11->_activeStreams = v17;

    objc_storeStrong(&v11->_deviceIdentifier, identifier);
    objc_storeStrong(&v11->_capabilities, capabilities);
    [(CMContinuityCaptureTransportNWDevice *)v11 setupUDPNWStack];
  }

  return v11;
}

- (void)setActiveConnection:(id)connection
{
  connectionCopy = connection;
  obj = self;
  objc_sync_enter(obj);
  activeConnection = obj->_activeConnection;
  obj->_activeConnection = connectionCopy;

  objc_sync_exit(obj);
}

- (OS_nw_connection)activeConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activeConnection;
  objc_sync_exit(selfCopy);

  return v3;
}

- (CMContinuityCaptureCapabilities)capabilities
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_capabilities;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  obj = self;
  objc_sync_enter(obj);
  capabilities = obj->_capabilities;
  obj->_capabilities = capabilitiesCopy;

  objc_sync_exit(obj);
}

- (BOOL)active
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  active = selfCopy->_active;
  objc_sync_exit(selfCopy);

  return active;
}

- (NSArray)activeStreams
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  allValues = [(NSMutableDictionary *)selfCopy->_activeStreams allValues];
  v5 = [v3 initWithArray:?];

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)activate:(BOOL)activate
{
  activateCopy2 = activate;
  if (activate)
  {
    v25 = CMContinuityCaptureGetListOfSupportedSidebandIdentifiers();
    capabilities = [(CMContinuityCaptureTransportNWDevice *)self capabilities];
    v6 = CMContinuityCaptureMediaIdentifiersForCapabilities(capabilities);

    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0];
      do
      {
        for (i = 0; i != v9; i = (i + 1))
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [CMContinuityCaptureTransportDeviceNWStream initForIdentifier:"initForIdentifier:nwClientID:" nwClientID:?];
          if (v12)
          {
            [(CMContinuityCaptureTransportNWDevice *)self willChangeValueForKey:?];
            selfCopy = self;
            objc_sync_enter(selfCopy);
            [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
            objc_sync_exit(selfCopy);

            [(CMContinuityCaptureTransportNWDevice *)selfCopy didChangeValueForKey:?];
          }
        }

        v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v9);
    }

    v23 = v7;

    v14 = v25;
    v15 = [v14 countByEnumeratingWithState:? objects:? count:?];
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0];
      do
      {
        for (j = 0; j != v16; j = (j + 1))
        {
          if (MEMORY[0] != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [CMContinuityCaptureTransportDeviceNWStream initForIdentifier:"initForIdentifier:nwClientID:" nwClientID:?];
          if (v19)
          {
            [(CMContinuityCaptureTransportNWDevice *)self willChangeValueForKey:?];
            selfCopy2 = self;
            objc_sync_enter(selfCopy2);
            [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
            objc_sync_exit(selfCopy2);

            [(CMContinuityCaptureTransportNWDevice *)selfCopy2 didChangeValueForKey:?];
          }
        }

        v16 = [v14 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v16);
    }

    activateCopy2 = activate;
  }

  else
  {
    [(CMContinuityCaptureTransportNWDevice *)self willChangeValueForKey:?];
    selfCopy3 = self;
    objc_sync_enter(selfCopy3);
    [(NSMutableDictionary *)selfCopy3->_activeStreams removeAllObjects];
    objc_sync_exit(selfCopy3);

    [(CMContinuityCaptureTransportNWDevice *)selfCopy3 didChangeValueForKey:?];
  }

  [(CMContinuityCaptureTransportNWDevice *)self willChangeValueForKey:?];
  selfCopy4 = self;
  objc_sync_enter(selfCopy4);
  selfCopy4->_active = activateCopy2;
  objc_sync_exit(selfCopy4);

  [(CMContinuityCaptureTransportNWDevice *)selfCopy4 didChangeValueForKey:?];
}

- (void)sendRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  activeConnection = [(CMContinuityCaptureTransportNWDevice *)self activeConnection];

  if (activeConnection)
  {
    v6 = [requestCopy length] + 1;
    v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:?];
    mutableBytes = [v7 mutableBytes];
    *mutableBytes = v6;
    memcpy(mutableBytes + 1, [requestCopy bytes], objc_msgSend(requestCopy, "length"));
    v9 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_loadWeakRetained(&location);
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = requestCopy;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ NW Connect Send Data %@", buf, 0x16u);
    }

    activeConnection2 = [(CMContinuityCaptureTransportNWDevice *)self activeConnection];
    v12 = objc_loadWeakRetained(&location);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__CMContinuityCaptureTransportNWDevice_sendRequest___block_invoke;
    v13[3] = &unk_278D5DB88;
    objc_copyWeak(&v14, &location);
    CMContinuityCaptureSendDataToNWConnection(activeConnection2, v7, v12, v13);

    objc_destroyWeak(&v14);
  }

  objc_destroyWeak(&location);
}

void __52__CMContinuityCaptureTransportNWDevice_sendRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = 138412546;
    v7 = WeakRetained;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%@ NW connection send data error %@", &v6, 0x16u);
  }
}

- (void)captureStillImage:(id)image entity:(int64_t)entity completion:(id)completion
{
  imageCopy = image;
  completionCopy = completion;
  v25 = 0;
  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  v10 = 0;
  if (v9)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
    v13 = v10;

    if (v12)
    {
      [(CMContinuityCaptureTransportNWDevice *)self sendRequest:?];
      v14 = 0;
    }

    else
    {
      v16 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy2 = self;
        v21 = 2112;
        v22 = v11;
        v23 = 2112;
        v24 = v13;
        _os_log_error_impl(&dword_242545000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Failed to archive message %@ error %@", buf, 0x20u);
      }

      v14 = v13;
    }

    (completionCopy)[2](completionCopy, v14);

    v10 = v13;
  }

  else
  {
    v15 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v21 = 2112;
      v22 = imageCopy;
      v23 = 2112;
      v24 = v10;
      _os_log_error_impl(&dword_242545000, v15, OS_LOG_TYPE_ERROR, "%{public}@ archivedDataWithRootObject %@ Error %@", buf, 0x20u);
    }

    (completionCopy)[2](completionCopy, v10);
  }
}

- (void)didCaptureStillImage:(id)image entity:(int64_t)entity
{
  imageCopy = image;
  v20 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  v7 = 0;
  if (v6)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
    v10 = v7;

    if (v9)
    {
      [(CMContinuityCaptureTransportNWDevice *)self sendRequest:?];
    }

    else
    {
      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy2 = self;
        v16 = 2112;
        v17 = v8;
        v18 = 2112;
        v19 = v10;
        _os_log_error_impl(&dword_242545000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Failed to archive message %@ error %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v16 = 2112;
      v17 = imageCopy;
      v18 = 2112;
      v19 = v7;
      _os_log_error_impl(&dword_242545000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to archive request %@ error %@", buf, 0x20u);
    }

    v10 = v7;
  }
}

- (void)handleAVCNegotiation:(int64_t)negotiation data:(id)data
{
  negotiationCopy = negotiation;
  dataCopy = data;
  v22 = &unk_2854ECC38;
  v19 = @"ContinuityCaptureSelector";
  v20 = @"ContinuityCaptureArgs";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v18 = dataCopy;
  [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v23 = v21 = @"identifier";
  v24 = @"ContinuityCaptureControl";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  v8 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v13 = 2080;
    v14 = "[CMContinuityCaptureTransportNWDevice handleAVCNegotiation:data:]";
    v15 = 1024;
    v16 = negotiationCopy;
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %s for entity %d", buf, 0x1Cu);
  }

  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  v10 = 0;
  if (v9)
  {
    [(CMContinuityCaptureTransportNWDevice *)self sendRequest:?];
  }
}

- (void)postEvent:(id)event entity:(int64_t)entity data:(id)data
{
  eventCopy = event;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  if (v8)
  {
    [(CMContinuityCaptureTransportNWDevice *)self sendRequest:?];
  }
}

- (void)setValueForControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  v8 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v17 = 2114;
    v18 = controlCopy;
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ setValueForControl %{public}@", buf, 0x16u);
  }

  v21 = 0;
  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  v10 = v21;
  if (v9)
  {
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
    v13 = v10;

    if (!v12)
    {
      goto LABEL_7;
    }

    [(CMContinuityCaptureTransportNWDevice *)self sendRequest:?];
    v10 = v13;
  }

  else
  {
    v12 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = controlCopy;
      _os_log_error_impl(&dword_242545000, v12, OS_LOG_TYPE_ERROR, "%{public}@ archivedDataWithRootObject Error %@ for control %@", buf, 0x20u);
    }

    v11 = 0;
  }

  v13 = v10;
LABEL_7:
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)startStream:(id)stream option:(unint64_t)option completion:(id)completion
{
  optionCopy = option;
  streamCopy = stream;
  completionCopy = completion;
  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v21 = 2114;
    v22 = streamCopy;
    v23 = 1024;
    v24 = optionCopy;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream for configuration %{public}@ option %d", buf, 0x1Cu);
  }

  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  v12 = 0;
  if (v11)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

    v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
    v15 = v12;

    if (v14)
    {
      [(CMContinuityCaptureTransportNWDevice *)self sendRequest:?];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    v12 = v15;
  }

  else
  {
    v16 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureTransportNWDevice startStream:option:completion:];
    }

    (completionCopy)[2](completionCopy, v12);
  }
}

- (void)stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion
{
  optionCopy = option;
  streamCopy = stream;
  completionCopy = completion;
  v9 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v18 = 1024;
    v19 = streamCopy;
    v20 = 1024;
    v21 = optionCopy;
    _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ stopStream for entity %u option %d", buf, 0x18u);
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  v12 = 0;
  if (v11)
  {
    [(CMContinuityCaptureTransportNWDevice *)self sendRequest:?];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)setupUDPNWStack
{
  unk_285500C80(localIPAddress, "UTF8String");
  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
  if (!host_with_numeric_port)
  {
    v23 = CMContinuityCaptureLog(0);
    if (OUTLINED_FUNCTION_8_0(v23))
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  unk_285500C88(localIPAddress, "UTF8String");
  v4 = nw_endpoint_create_host_with_numeric_port();
  if (!v4)
  {
    v24 = CMContinuityCaptureLog(0);
    if (OUTLINED_FUNCTION_8_0(v24))
    {
LABEL_13:
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    }

LABEL_14:
    v5 = 0;
    secure_udp = 0;
LABEL_8:

    goto LABEL_9;
  }

  v5 = v4;
  secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x277CD9238], &__block_literal_global_139);
  CMContinuityCaptureGetMediaProcessUniqueID(self->_remote);
  nw_parameters_set_delegated_unique_pid();
  nw_parameters_set_reuse_local_address(secure_udp, 1);
  nw_parameters_set_local_endpoint(secure_udp, host_with_numeric_port);
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  nwPathEvaluator = self->_nwPathEvaluator;
  self->_nwPathEvaluator = evaluator_for_endpoint;

  v9 = CMContinuityCaptureLog(0);
  if (OUTLINED_FUNCTION_8_0(v9))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
  }

  if (self->_nwPathEvaluator)
  {
    nw_path_evaluator_get_client_id();
    v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:?];
    nwClientID = self->_nwClientID;
    self->_nwClientID = v15;

    v17 = CMContinuityCaptureLog(0);
    if (OUTLINED_FUNCTION_8_0(v17))
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
    }

    goto LABEL_8;
  }

LABEL_9:
}

@end