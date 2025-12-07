@interface ARRemoteTechnique
- (ARRemoteTechnique)initWithListenerEndpoint:(id)endpoint;
- (ARRemoteTechnique)initWithServerConnection:(id)connection;
- (ARRemoteTechnique)initWithServiceName:(id)name;
- (BOOL)isActive;
- (double)requiredTimeInterval;
- (id)processData:(id)data;
- (id)resultDataClasses;
- (id)serviceProxy;
- (int64_t)captureBehavior;
- (int64_t)numberOfActiveConnections;
- (unint64_t)requiredSensorDataTypes;
- (void)dealloc;
- (void)prepare:(BOOL)prepare;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
- (void)serverConnectionInterrupted:(id)interrupted;
- (void)serverConnectionInvalidated:(id)invalidated;
- (void)setActive:(BOOL)active;
- (void)techniqueDidFailWithError:(id)error;
- (void)techniqueDidOutputResultData:(id)data timestamp:(double)timestamp context:(id)context;
@end

@implementation ARRemoteTechnique

- (ARRemoteTechnique)initWithListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = [[ARServerConnection alloc] initWithListenerEndpoint:endpointCopy];

  v6 = [(ARRemoteTechnique *)self initWithServerConnection:v5];
  return v6;
}

- (ARRemoteTechnique)initWithServerConnection:(id)connection
{
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = ARRemoteTechnique;
  v6 = [(ARTechnique *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverConnection, connection);
    [(ARServerConnection *)v7->_serverConnection setDelegate:v7];
    v8 = ARRemoteTechniqueClientInterfaceWithProtocol(&unk_1F42761E8);
    [(ARServerConnection *)v7->_serverConnection setExportedInterface:v8];

    [(ARServerConnection *)v7->_serverConnection setExportedObject:v7];
    v9 = ARRemoteTechniqueServiceInterfaceWithProtocol(&unk_1F427CF08);
    [(ARServerConnection *)v7->_serverConnection setRemoteObjectInterface:v9];

    v10 = objc_opt_new();
    inflightContexts = v7->_inflightContexts;
    v7->_inflightContexts = v10;

    v7->_inflightContextsLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (ARRemoteTechnique)initWithServiceName:(id)name
{
  nameCopy = name;
  v5 = [[ARServerConnection alloc] initWithServiceName:nameCopy];

  v6 = [(ARRemoteTechnique *)self initWithServerConnection:v5];
  return v6;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _ARLogTechnique_16(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v8 = v5;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: dealloc", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = ARRemoteTechnique;
  [(ARRemoteTechnique *)&v6 dealloc];
}

- (id)serviceProxy
{
  serverConnection = self->_serverConnection;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__ARRemoteTechnique_serviceProxy__block_invoke;
  v5[3] = &unk_1E817E818;
  v5[4] = self;
  v3 = [(ARServerConnection *)serverConnection synchronousRemoteObjectProxyWithErrorHandler:v5];

  return v3;
}

void __33__ARRemoteTechnique_serviceProxy__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _ARLogTechnique_16(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    v11 = 138543874;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Failed to send data to service - error: %@", &v11, 0x20u);
  }

  v8 = objc_opt_new();
  if (ARInternalOSBuild(v8, v9))
  {
    [v8 setObject:@"Error communicating with XPC proxy. Potential ApprovedListing Issue." forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v8 setObject:v3 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v10 = ARErrorWithCodeAndUserInfo(501, v8);
  [*(a1 + 32) techniqueDidFailWithError:v10];
}

- (BOOL)isActive
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__ARRemoteTechnique_isActive__block_invoke;
  v4[3] = &unk_1E817E7C8;
  v4[4] = &v5;
  [serviceProxy isActiveWithReply:v4];

  LOBYTE(serviceProxy) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return serviceProxy;
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  [serviceProxy setActive:activeCopy];
}

- (int64_t)captureBehavior
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__ARRemoteTechnique_captureBehavior__block_invoke;
  v5[3] = &unk_1E817E840;
  v5[4] = &v6;
  [serviceProxy captureBehaviorWithReply:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)numberOfActiveConnections
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__ARRemoteTechnique_numberOfActiveConnections__block_invoke;
  v5[3] = &unk_1E817E840;
  v5[4] = &v6;
  [serviceProxy numberOfActiveConnectionsWithReply:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)prepare:(BOOL)prepare
{
  prepareCopy = prepare;
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  [serviceProxy prepare:prepareCopy];
}

- (id)processData:(id)data
{
  v29 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v5 = [dataCopy conformsToProtocol:&unk_1F426A800];
  if (v5)
  {
    serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __33__ARRemoteTechnique_processData___block_invoke;
    v16[3] = &unk_1E817E868;
    v16[4] = &v17;
    [serviceProxy processData:dataCopy reply:v16];
  }

  else
  {
    v7 = _ARLogTechnique_16(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = objc_opt_class();
      *buf = 138543874;
      v24 = v9;
      v25 = 2048;
      selfCopy = self;
      v27 = 2112;
      v28 = v10;
      v11 = v10;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Data (%@) is not ARDaemonSecureCodingCompliant!", buf, 0x20u);
    }

    v12 = v18;
    v13 = dataCopy;
    serviceProxy = v12[5];
    v12[5] = v13;
  }

  v14 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v14;
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_inflightContextsLock);
  [(NSMutableArray *)self->_inflightContexts addObject:contextCopy];
  os_unfair_lock_unlock(&self->_inflightContextsLock);
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  [serviceProxy requestResultDataAtTimestamp:contextCopy context:timestamp];
}

- (unint64_t)requiredSensorDataTypes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__ARRemoteTechnique_requiredSensorDataTypes__block_invoke;
  v5[3] = &unk_1E817E7F0;
  v5[4] = &v6;
  [serviceProxy requiredSensorDataTypesWithReply:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)requiredTimeInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__ARRemoteTechnique_requiredTimeInterval__block_invoke;
  v5[3] = &unk_1E817E7A0;
  v5[4] = &v6;
  [serviceProxy requiredTimeIntervalWithReply:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)resultDataClasses
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__ARRemoteTechnique_resultDataClasses__block_invoke;
  v5[3] = &unk_1E817E8B0;
  v5[4] = &v6;
  [serviceProxy resultDataClassesWithReply:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__ARRemoteTechnique_resultDataClasses__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 ar_map:&__block_literal_global_143_0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)techniqueDidFailWithError:(id)error
{
  errorCopy = error;
  delegate = [(ARTechnique *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ARTechnique *)self delegate];
    [delegate2 technique:self didFailWithError:errorCopy];
  }
}

- (void)techniqueDidOutputResultData:(id)data timestamp:(double)timestamp context:(id)context
{
  v51 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  contextCopy = context;
  os_unfair_lock_lock(&self->_inflightContextsLock);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 56;
  v9 = self->_inflightContexts;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (!v10)
  {
LABEL_9:

LABEL_13:
    os_unfair_lock_unlock(&self->_inflightContextsLock);
    if (ARShouldUseLogTypeError_onceToken_49 != -1)
    {
      [ARRemoteTechnique techniqueDidOutputResultData:timestamp:context:];
    }

    v27 = ARShouldUseLogTypeError_internalOSVersion_49;
    v28 = _ARLogTechnique_16(v26);
    delegate2 = v28;
    if (v27 == 1)
    {
      v25 = dataCopy;
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      imageData = [contextCopy imageData];
      objc_msgSend_timestamp(imageData);
      *buf = 138543874;
      v45 = v30;
      v46 = 2048;
      selfCopy2 = self;
      v48 = 2048;
      v49 = v32;
      v33 = "%{public}@ <%p>: No in flight context found for %f";
      v34 = delegate2;
      v35 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v25 = dataCopy;
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      v36 = objc_opt_class();
      v30 = NSStringFromClass(v36);
      imageData = [contextCopy imageData];
      objc_msgSend_timestamp(imageData);
      *buf = 138543874;
      v45 = v30;
      v46 = 2048;
      selfCopy2 = self;
      v48 = 2048;
      v49 = v37;
      v33 = "Error: %{public}@ <%p>: No in flight context found for %f";
      v34 = delegate2;
      v35 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v34, v35, v33, buf, 0x20u);

LABEL_21:
    v21 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v11 = v10;
  v12 = *v41;
LABEL_3:
  v13 = 0;
  while (1)
  {
    if (*v41 != v12)
    {
      objc_enumerationMutation(v9);
    }

    v14 = *(*(&v40 + 1) + 8 * v13);
    imageData2 = [v14 imageData];
    objc_msgSend_timestamp(imageData2);
    v17 = v16;
    imageData3 = [contextCopy imageData];
    objc_msgSend_timestamp(imageData3);
    v20 = v19;

    if (v17 == v20)
    {
      break;
    }

    if (v11 == ++v13)
    {
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v40 objects:v50 count:16];
      if (v11)
      {
        goto LABEL_3;
      }

      goto LABEL_9;
    }
  }

  v21 = v14;

  if (!v21)
  {
    goto LABEL_13;
  }

  [*(&self->super.super.isa + v38) removeObject:v21];
  os_unfair_lock_unlock(&self->_inflightContextsLock);
  delegate = [(ARTechnique *)self delegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    delegate2 = [(ARTechnique *)self delegate];
    v25 = dataCopy;
    [delegate2 technique:self didOutputResultData:dataCopy timestamp:v21 context:timestamp];
    goto LABEL_22;
  }

  v25 = dataCopy;
LABEL_23:
}

- (void)serverConnectionInterrupted:(id)interrupted
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = _ARLogTechnique_16(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v13 = 138543618;
    v14 = v6;
    v15 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Server connection interrupted", &v13, 0x16u);
  }

  os_unfair_lock_lock(&self->_inflightContextsLock);
  [(NSMutableArray *)self->_inflightContexts removeAllObjects];
  os_unfair_lock_unlock(&self->_inflightContextsLock);
  v7 = objc_opt_new();
  v9 = ARInternalOSBuild(v7, v8);
  if (v9)
  {
    v9 = [v7 setObject:@"Server Connection Interrupted" forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  v10 = ARKitCoreBundle(v9);
  v11 = [v10 localizedStringForKey:@"Restart the session." value:&stru_1F4208A80 table:@"Localizable"];
  [v7 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696A598]];

  v12 = ARErrorWithCodeAndUserInfo(501, v7);
  [(ARRemoteTechnique *)self techniqueDidFailWithError:v12];
}

- (void)serverConnectionInvalidated:(id)invalidated
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = _ARLogTechnique_16(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 138543618;
    v8 = v6;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Server connection invalidated", &v7, 0x16u);
  }

  os_unfair_lock_lock(&self->_inflightContextsLock);
  [(NSMutableArray *)self->_inflightContexts removeAllObjects];
  os_unfair_lock_unlock(&self->_inflightContextsLock);
}

@end