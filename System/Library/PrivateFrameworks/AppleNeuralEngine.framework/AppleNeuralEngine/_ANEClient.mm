@interface _ANEClient
+ (id)sharedConnection;
+ (id)sharedPrivateConnection;
+ (void)initialize;
- (BOOL)beginRealTimeTask;
- (BOOL)compileModel:(id)model options:(id)options qos:(unsigned int)qos error:(id *)p_isa;
- (BOOL)compiledModelExistsFor:(id)for;
- (BOOL)compiledModelExistsMatchingHash:(id)hash;
- (BOOL)doBuffersReadyWithModel:(id)model inputBuffers:(id)buffers options:(id)options qos:(unsigned int)qos error:(id *)error;
- (BOOL)doEnqueueSetsWithModel:(id)model outputSet:(id)set options:(id)options qos:(unsigned int)qos error:(id *)error;
- (BOOL)doEvaluateDirectWithModel:(id)model options:(id)options request:(id)request qos:(unsigned int)qos error:(id *)error;
- (BOOL)doLoadModel:(id)model options:(id)options qos:(unsigned int)qos error:(id *)p_isa;
- (BOOL)doLoadModelNewInstance:(id)instance options:(id)options modelInstParams:(id)params qos:(unsigned int)qos error:(id *)p_isa;
- (BOOL)doPrepareChainingWithModel:(id)model options:(id)options chainingReq:(id)req qos:(unsigned int)qos error:(id *)error;
- (BOOL)doUnloadModel:(id)model options:(id)options qos:(unsigned int)qos error:(id *)error;
- (BOOL)echo:(id)echo;
- (BOOL)endRealTimeTask;
- (BOOL)evaluateRealTimeWithModel:(id)model options:(id)options request:(id)request error:(id *)error;
- (BOOL)isAnetoolRootDaemonConnection;
- (BOOL)isVirtualClient;
- (BOOL)mapIOSurfacesWithModel:(id)model request:(id)request cacheInference:(BOOL)inference error:(id *)error;
- (BOOL)sessionHintWithModel:(id)model hint:(id)hint options:(id)options report:(id)report error:(id *)error;
- (_ANEClient)initWithRestrictedAccessAllowed:(BOOL)allowed;
- (_ANEDaemonConnection)fastConn;
- (id)connectionForLoadingModel:(id)model options:(id)options;
- (id)connectionUsedForLoadingModel:(id)model;
- (id)fastConnWithoutLock;
- (void)beginRealTimeTask;
- (void)dealloc;
- (void)endRealTimeTask;
- (void)purgeCompiledModel:(id)model;
- (void)purgeCompiledModelMatchingHash:(id)hash;
- (void)reportEvaluateFailure:(id)failure failureReason:(unsigned int)reason qIdx:(unint64_t)idx;
- (void)unmapIOSurfacesWithModel:(id)model request:(id)request;
@end

@implementation _ANEClient

+ (id)sharedConnection
{
  if (sharedConnection_onceToken != -1)
  {
    +[_ANEClient sharedConnection];
  }

  v3 = sharedConnection_client;

  return v3;
}

- (_ANEDaemonConnection)fastConn
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  fastConnWithoutLock = [(_ANEClient *)self fastConnWithoutLock];
  os_unfair_lock_unlock(&self->_lock);
  v5 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = NSStringFromSelector(a2);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1AD246000, v6, OS_LOG_TYPE_INFO, "%@: Using fast connection", &v9, 0xCu);
  }

  return fastConnWithoutLock;
}

- (id)fastConnWithoutLock
{
  fastConn = self->_fastConn;
  if (!fastConn)
  {
    if ([(_ANEClient *)self allowRestrictedAccess])
    {
      +[_ANEDaemonConnection daemonConnectionRestricted];
    }

    else
    {
      +[_ANEDaemonConnection daemonConnection];
    }
    v5 = ;
    v6 = self->_fastConn;
    self->_fastConn = v5;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __33___ANEClient_fastConnWithoutLock__block_invoke;
    v11[3] = &__block_descriptor_40_e5_v8__0l;
    v11[4] = a2;
    daemonConnection = [(_ANEDaemonConnection *)self->_fastConn daemonConnection];
    [daemonConnection setInterruptionHandler:v11];

    v10[2] = __33___ANEClient_fastConnWithoutLock__block_invoke_10;
    v10[3] = &__block_descriptor_40_e5_v8__0l;
    v10[4] = a2;
    v8 = [(_ANEDaemonConnection *)self->_fastConn daemonConnection:MEMORY[0x1E69E9820]];
    [v8 setInvalidationHandler:v10];

    fastConn = self->_fastConn;
  }

  return fastConn;
}

+ (void)initialize
{
  v2 = +[_ANELog framework];
  v3 = gLogger_1;
  gLogger_1 = v2;

  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E695E0F0] mutableCopy];
  v6 = dispatch_semaphore_create(2);
  [v5 setObject:v6 atIndexedSubscript:0];

  v7 = dispatch_semaphore_create(2);
  [v5 setObject:v7 atIndexedSubscript:1];

  v8 = dispatch_semaphore_create(2);
  [v5 setObject:v8 atIndexedSubscript:2];

  v9 = dispatch_semaphore_create(2);
  [v5 setObject:v9 atIndexedSubscript:3];

  v10 = dispatch_semaphore_create(2);
  [v5 setObject:v10 atIndexedSubscript:4];

  v11 = dispatch_semaphore_create(2);
  [v5 setObject:v11 atIndexedSubscript:5];

  v12 = dispatch_semaphore_create(2);
  [v5 setObject:v12 atIndexedSubscript:6];

  v13 = dispatch_semaphore_create(2);
  [v5 setObject:v13 atIndexedSubscript:7];

  v14 = [v5 copy];
  v15 = gSema;
  gSema = v14;

  objc_autoreleasePoolPop(v4);
}

- (_ANEClient)initWithRestrictedAccessAllowed:(BOOL)allowed
{
  v23.receiver = self;
  v23.super_class = _ANEClient;
  v5 = [(_ANEClient *)&v23 init];
  v6 = v5;
  if (v5)
  {
    v5->_allowRestrictedAccess = allowed;
    v7 = +[_ANEVirtualClient sharedConnection];
    virtualClient = v6->_virtualClient;
    v6->_virtualClient = v7;

    if (!v6->_virtualClient)
    {
      v9 = gLogger_1;
      if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
      {
        [_ANEClient initWithRestrictedAccessAllowed:v9];
      }
    }

    if (allowed)
    {
      +[_ANEDaemonConnection daemonConnectionRestricted];
    }

    else
    {
      +[_ANEDaemonConnection daemonConnection];
    }
    v10 = ;
    conn = v6->_conn;
    v6->_conn = v10;

    v6->_isRootDaemon = 1;
    v12 = [_ANEQoSMapper dispatchQueueArrayByMappingPrioritiesWithTag:@"com.apple.anef"];
    priorityQ = v6->_priorityQ;
    v6->_priorityQ = v12;

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke;
    v22[3] = &__block_descriptor_40_e5_v8__0l;
    v22[4] = a2;
    daemonConnection = [(_ANEDaemonConnection *)v6->_conn daemonConnection];
    [daemonConnection setInterruptionHandler:v22];

    v21[2] = __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke_6;
    v21[3] = &__block_descriptor_40_e5_v8__0l;
    v21[4] = a2;
    v15 = [(_ANEDaemonConnection *)v6->_conn daemonConnection:MEMORY[0x1E69E9820]];
    [v15 setInvalidationHandler:v21];

    v6->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    connectionsUsedForLoadingModels = v6->_connectionsUsedForLoadingModels;
    v6->_connectionsUsedForLoadingModels = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    connections = v6->_connections;
    v6->_connections = dictionary2;
  }

  return v6;
}

- (void)dealloc
{
  conn = [(_ANEClient *)self conn];
  daemonConnection = [conn daemonConnection];
  [daemonConnection invalidate];

  fastConn = [(_ANEClient *)self fastConn];
  daemonConnection2 = [fastConn daemonConnection];
  [daemonConnection2 invalidate];

  v7.receiver = self;
  v7.super_class = _ANEClient;
  [(_ANEClient *)&v7 dealloc];
}

- (id)connectionForLoadingModel:(id)model options:(id)options
{
  v55 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  if (self->_isRootDaemon)
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__3;
    v49 = __Block_byref_object_dispose__3;
    v50 = 0;
    getUUID = [modelCopy getUUID];
    os_unfair_lock_lock(&self->_lock);
    connectionsUsedForLoadingModels = [(_ANEClient *)self connectionsUsedForLoadingModels];
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __48___ANEClient_connectionForLoadingModel_options___block_invoke;
    v41 = &unk_1E79BA4D0;
    v11 = getUUID;
    selfCopy = self;
    v44 = &v45;
    v42 = v11;
    [connectionsUsedForLoadingModels enumerateKeysAndObjectsUsingBlock:&v38];

    if (!v46[5])
    {
      v12 = [optionsCopy objectForKeyedSubscript:kANEFModelTypeKey[0]];
      v13 = [v12 isEqualToString:kANEFModelPreCompiledValue[0]];

      if (v13)
      {
        [(_ANEClient *)self fastConnWithoutLock];
      }

      else
      {
        [(_ANEClient *)self conn];
      }
      v16 = ;
      objc_storeStrong(v46 + 5, v16);

      v17 = v46;
      v18 = v46[5];
      if (v18)
      {
        v19 = v18;
        v20 = v17[5];
        v17[5] = v19;
      }

      else
      {
        conn = [(_ANEClient *)self conn];
        v20 = v46[5];
        v46[5] = conn;
      }

      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v46[5], v38, v39, v40, v41];
      connections = [(_ANEClient *)self connections];
      v24 = [connections objectForKeyedSubscript:v22];
      v25 = v24 == 0;

      if (v25)
      {
        v26 = v46[5];
        connections2 = [(_ANEClient *)self connections];
        [connections2 setObject:v26 forKeyedSubscript:v22];
      }

      connectionsUsedForLoadingModels2 = [(_ANEClient *)self connectionsUsedForLoadingModels];
      v29 = [connectionsUsedForLoadingModels2 objectForKeyedSubscript:v22];

      if (!v29)
      {
        v29 = [MEMORY[0x1E695DFA8] set];
        connectionsUsedForLoadingModels3 = [(_ANEClient *)self connectionsUsedForLoadingModels];
        [connectionsUsedForLoadingModels3 setObject:v29 forKeyedSubscript:v22];
      }

      [v29 addObject:v11];
    }

    os_unfair_lock_unlock(&self->_lock);
    v31 = v46[5];
    conn2 = [(_ANEClient *)self conn];
    LODWORD(v31) = v31 == conn2;

    v33 = gLogger_1;
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
    if (v31)
    {
      if (v34)
      {
        v36 = NSStringFromSelector(a2);
        *buf = 138412546;
        v52 = v36;
        v53 = 2112;
        v54 = v11;
        _os_log_impl(&dword_1AD246000, v33, OS_LOG_TYPE_INFO, "%@: Using default connection for loading modelUUID=%@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      v35 = NSStringFromSelector(a2);
      *buf = 138412546;
      v52 = v35;
      v53 = 2112;
      v54 = v11;
      _os_log_impl(&dword_1AD246000, v33, OS_LOG_TYPE_INFO, "%@: Using fast connection for loading modelUUID=%@", buf, 0x16u);
    }

    conn3 = v46[5];
    _Block_object_dispose(&v45, 8);
  }

  else
  {
    v14 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
    {
      [_ANEClient connectionForLoadingModel:v14 options:a2];
    }

    conn3 = [(_ANEClient *)self conn];
  }

  return conn3;
}

- (id)connectionUsedForLoadingModel:(id)model
{
  modelCopy = model;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  getUUID = [modelCopy getUUID];
  os_unfair_lock_lock(&self->_lock);
  connectionsUsedForLoadingModels = [(_ANEClient *)self connectionsUsedForLoadingModels];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44___ANEClient_connectionUsedForLoadingModel___block_invoke;
  v10[3] = &unk_1E79BA4D0;
  v7 = getUUID;
  selfCopy = self;
  v13 = &v14;
  v11 = v7;
  [connectionsUsedForLoadingModels enumerateKeysAndObjectsUsingBlock:v10];

  os_unfair_lock_unlock(&self->_lock);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (BOOL)compileModel:(id)model options:(id)options qos:(unsigned int)qos error:(id *)p_isa
{
  v7 = *&qos;
  v61 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  v37 = mach_continuous_time();
  v13 = os_signpost_id_generate(gLogger_1);
  if (!modelCopy)
  {
    v16 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient compileModel:v16 options:a2 qos:? error:?];
    }

    goto LABEL_11;
  }

  spid = v13;
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    LOBYTE(p_isa) = [virtualClient2 compileModel:modelCopy options:optionsCopy qos:v7 error:p_isa];

    goto LABEL_28;
  }

  if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v17 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient compileModel:v17 options:a2 qos:? error:?];
    }

    if (p_isa)
    {
      v18 = NSStringFromSelector(a2);
      *p_isa = [_ANEErrors hostTooOld:v18];

LABEL_11:
      LOBYTE(p_isa) = 0;
    }
  }

  else
  {
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__3;
    v51 = __Block_byref_object_dispose__3;
    v52 = 0;
    [modelCopy string_id];
    kdebug_trace();
    v19 = gLogger_1;
    v20 = v19;
    v35 = spid - 1;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      string_id = [modelCopy string_id];
      *buf = 67109376;
      *v58 = v7;
      *&v58[4] = 2048;
      *&v58[6] = string_id;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v20, OS_SIGNPOST_EVENT, spid, "_ANEF_MODEL_COMPILE", "qos:%u model.string_id:%llu", buf, 0x12u);
    }

    priorityQ = [(_ANEClient *)self priorityQ];
    v23 = [priorityQ objectAtIndexedSubscript:{+[_ANEQoSMapper queueIndexForQoS:](_ANEQoSMapper, "queueIndexForQoS:", v7)}];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45___ANEClient_compileModel_options_qos_error___block_invoke;
    block[3] = &unk_1E79BA520;
    v24 = modelCopy;
    v42 = &v47;
    v39 = v24;
    selfCopy = self;
    v46 = v7;
    v41 = optionsCopy;
    v43 = &v53;
    v44 = a2;
    v45 = spid;
    dispatch_sync(v23, block);

    v25 = gLogger_1;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = NSStringFromSelector(a2);
      perfStatsMask = [v24 perfStatsMask];
      *buf = 138412546;
      *v58 = v26;
      *&v58[8] = 1024;
      *&v58[10] = perfStatsMask;
      _os_log_impl(&dword_1AD246000, v25, OS_LOG_TYPE_INFO, "%@: Model stats mask: %d", buf, 0x12u);
    }

    [v24 string_id];
    [v24 perfStatsMask];
    kdebug_trace();
    v28 = gLogger_1;
    v29 = v28;
    if (v35 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      string_id2 = [v24 string_id];
      perfStatsMask2 = [v24 perfStatsMask];
      *buf = 67109632;
      *v58 = v7;
      *&v58[4] = 2048;
      *&v58[6] = string_id2;
      v59 = 1024;
      v60 = perfStatsMask2;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v29, OS_SIGNPOST_EVENT, spid, "_ANEF_MODEL_COMPILE", "qos:%u model.string_id:%llu model.perfStatsMask:%u", buf, 0x18u);
    }

    if (p_isa)
    {
      if ((v54[3] & 1) == 0)
      {
        v32 = v48[5];
        if (v32)
        {
          *p_isa = v32;
        }
      }
    }

    v33 = gLogger_1;
    p_isa = &v33->isa;
    if (v35 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      *buf = 134349056;
      *v58 = v37;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, p_isa, OS_SIGNPOST_EVENT, spid, "_ANEF_MODEL_COMPILE", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
    }

    LOBYTE(p_isa) = *(v54 + 24);
    _Block_object_dispose(&v47, 8);

    _Block_object_dispose(&v53, 8);
  }

LABEL_28:

  return p_isa & 1;
}

- (BOOL)doUnloadModel:(id)model options:(id)options qos:(unsigned int)qos error:(id *)error
{
  v7 = *&qos;
  v67 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  v43 = mach_continuous_time();
  spid = os_signpost_id_generate(gLogger_1);
  v13 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = NSStringFromSelector(a2);
    *buf = 138412802;
    *&buf[4] = v15;
    *&buf[12] = 2048;
    *&buf[14] = modelCopy;
    *&buf[22] = 2112;
    v64 = modelCopy;
    _os_log_impl(&dword_1AD246000, v14, OS_LOG_TYPE_INFO, "%@: START model[%p]=%@", buf, 0x20u);
  }

  if (!modelCopy)
  {
    v19 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient doUnloadModel:v19 options:a2 qos:? error:?];
    }

    goto LABEL_13;
  }

  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    v18 = [virtualClient2 unloadModel:modelCopy options:optionsCopy qos:v7 error:error];

    goto LABEL_14;
  }

  if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v20 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient doUnloadModel:v20 options:a2 qos:? error:?];
    }

    if (error)
    {
      v21 = NSStringFromSelector(a2);
      *error = [_ANEErrors hostTooOld:v21];
    }

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v64 = __Block_byref_object_copy__3;
  v65 = __Block_byref_object_dispose__3;
  v66 = 0;
  [modelCopy string_id];
  kdebug_trace();
  v23 = gLogger_1;
  v24 = v23;
  v42 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    string_id = [modelCopy string_id];
    *v58 = 67109376;
    *v59 = v7;
    *&v59[4] = 2048;
    *&v59[6] = string_id;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v24, OS_SIGNPOST_EVENT, spid, "_ANEF_MODEL_UNLOAD", "qos:%u model.string_id:%llu", v58, 0x12u);
  }

  conn = [(_ANEClient *)self connectionUsedForLoadingModel:modelCopy];
  if (!conn)
  {
    v27 = gLogger_1;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      [_ANEClient doUnloadModel:v28 options:modelCopy qos:v62 error:?];
    }

    conn = [(_ANEClient *)self conn];
  }

  v29 = [_ANEQoSMapper queueIndexForQoS:v7];
  priorityQ = [(_ANEClient *)self priorityQ];
  v31 = [priorityQ objectAtIndexedSubscript:v29];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___ANEClient_doUnloadModel_options_qos_error___block_invoke;
  block[3] = &unk_1E79BA570;
  v41 = conn;
  v46 = v41;
  v32 = modelCopy;
  v47 = v32;
  v53 = v7;
  v48 = optionsCopy;
  v49 = &v54;
  v50 = buf;
  v51 = a2;
  v52 = spid;
  dispatch_sync(v31, block);

  [v32 resetOnUnload];
  [v32 string_id];
  kdebug_trace();
  v33 = gLogger_1;
  v34 = v33;
  if (v42 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    string_id2 = [v32 string_id];
    *v58 = 67109376;
    *v59 = v7;
    *&v59[4] = 2048;
    *&v59[6] = string_id2;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v34, OS_SIGNPOST_EVENT, spid, "_ANEF_MODEL_UNLOAD", "qos:%u model.string_id:%llu", v58, 0x12u);
  }

  if (error)
  {
    if ((v55[3] & 1) == 0)
    {
      v36 = *(*&buf[8] + 40);
      if (v36)
      {
        *error = v36;
      }
    }
  }

  v37 = gLogger_1;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = NSStringFromSelector(a2);
    *v58 = 138412802;
    *v59 = v38;
    *&v59[8] = 2048;
    *&v59[10] = v32;
    v60 = 2112;
    v61 = v32;
    _os_log_impl(&dword_1AD246000, v37, OS_LOG_TYPE_INFO, "%@: END model[%p]=%@", v58, 0x20u);
  }

  v39 = gLogger_1;
  v40 = v39;
  if (v42 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v39))
  {
    *v58 = 134349056;
    *v59 = v43;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v40, OS_SIGNPOST_EVENT, spid, "_ANEF_MODEL_UNLOAD", "%{public, signpost.description:begin_time}llu ", v58, 0xCu);
  }

  v18 = *(v55 + 24);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v54, 8);
LABEL_14:

  return v18 & 1;
}

- (BOOL)compiledModelExistsFor:(id)for
{
  v39 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v6 = mach_continuous_time();
  v7 = os_signpost_id_generate(gLogger_1);
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    v10 = [virtualClient2 compiledModelExistsFor:forCopy];
  }

  else if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v11 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [(_ANEClient *)v11 compiledModelExistsFor:a2];
    }

    v10 = 0;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = gLogger_1;
    if (forCopy)
    {
      if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
      {
        [_ANEClient compiledModelExistsFor:];
      }

      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v31[0] = 0;
      v31[1] = v31;
      v31[2] = 0x3032000000;
      v31[3] = __Block_byref_object_copy__3;
      v31[4] = __Block_byref_object_dispose__3;
      v32 = 0;
      [forCopy string_id];
      kdebug_trace();
      v14 = gLogger_1;
      v15 = v14;
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        string_id = [forCopy string_id];
        *buf = 134217984;
        v38 = string_id;
        _os_signpost_emit_with_name_impl(&dword_1AD246000, v15, OS_SIGNPOST_EVENT, v7, "_ANEF_COMPILED_MODEL_EXISTS", "model.string_id:%llu", buf, 0xCu);
      }

      fastConn = [(_ANEClient *)self fastConn];
      v18 = fastConn;
      if (fastConn)
      {
        conn = fastConn;
      }

      else
      {
        conn = [(_ANEClient *)self conn];
      }

      v20 = conn;

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __37___ANEClient_compiledModelExistsFor___block_invoke;
      v25[3] = &unk_1E79BA598;
      v29 = a2;
      v21 = forCopy;
      v26 = v21;
      v27 = &v33;
      v28 = v31;
      v30 = v7;
      [v20 compiledModelExistsFor:v21 withReply:v25];
      [v21 string_id];
      kdebug_trace();
      v22 = gLogger_1;
      v23 = v22;
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 134349056;
        v38 = v6;
        _os_signpost_emit_with_name_impl(&dword_1AD246000, v23, OS_SIGNPOST_EVENT, v7, "_ANEF_COMPILED_MODEL_EXISTS", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
      }

      v10 = *(v34 + 24);
      _Block_object_dispose(v31, 8);

      _Block_object_dispose(&v33, 8);
    }

    else
    {
      if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
      {
        [(_ANEClient *)v13 compiledModelExistsFor:a2];
      }

      v10 = 0;
    }

    objc_autoreleasePoolPop(v12);
  }

  return v10 & 1;
}

- (void)purgeCompiledModel:(id)model
{
  v33 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v6 = mach_continuous_time();
  v7 = os_signpost_id_generate(gLogger_1);
  [modelCopy string_id];
  kdebug_trace();
  v8 = gLogger_1;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [modelCopy string_id];
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v9, OS_SIGNPOST_EVENT, v7, "_ANEF_PURGE_COMPILED_MODEL", "model.string_id:%llu", &buf, 0xCu);
  }

  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    [virtualClient2 purgeCompiledModel:modelCopy];
  }

  else if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v12 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [(_ANEClient *)v12 purgeCompiledModel:a2];
    }
  }

  else
  {
    v13 = gLogger_1;
    if (modelCopy)
    {
      if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
      {
        [_ANEClient purgeCompiledModel:];
      }

      v24[0] = 0;
      v24[1] = v24;
      v24[2] = 0x2020000000;
      v25 = 0;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__3;
      v31 = __Block_byref_object_dispose__3;
      v32 = 0;
      conn = [(_ANEClient *)self conn];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __33___ANEClient_purgeCompiledModel___block_invoke;
      v18[3] = &unk_1E79BA5C0;
      p_buf = &buf;
      v22 = a2;
      v20 = v24;
      v15 = modelCopy;
      v19 = v15;
      v23 = v7;
      [conn purgeCompiledModel:v15 withReply:v18];

      [v15 string_id];
      kdebug_trace();
      v16 = gLogger_1;
      v17 = v16;
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *v26 = 134349056;
        v27 = v6;
        _os_signpost_emit_with_name_impl(&dword_1AD246000, v17, OS_SIGNPOST_EVENT, v7, "_ANEF_PURGE_COMPILED_MODEL", "%{public, signpost.description:begin_time}llu ", v26, 0xCu);
      }

      _Block_object_dispose(&buf, 8);
      _Block_object_dispose(v24, 8);
    }

    else if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [(_ANEClient *)v13 purgeCompiledModel:a2];
    }
  }
}

- (BOOL)compiledModelExistsMatchingHash:(id)hash
{
  v37 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  v6 = mach_continuous_time();
  v7 = os_signpost_id_generate(gLogger_1);
  kdebug_trace();
  v8 = gLogger_1;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 67109120;
    *&buf[4] = 0;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v9, OS_SIGNPOST_EVENT, v7, "_ANEF_COMPILED_MODEL_EXISTS", "%u", buf, 8u);
  }

  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    v12 = [virtualClient2 compiledModelExistsMatchingHash:hashCopy];

    goto LABEL_25;
  }

  if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v13 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [(_ANEClient *)v13 compiledModelExistsMatchingHash:a2];
    }

LABEL_16:
    v12 = 0;
    goto LABEL_25;
  }

  v14 = gLogger_1;
  if (!hashCopy)
  {
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [(_ANEClient *)v14 compiledModelExistsMatchingHash:a2];
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    [_ANEClient compiledModelExistsMatchingHash:];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  *buf = 0;
  v32 = buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3;
  v35 = __Block_byref_object_dispose__3;
  v36 = 0;
  fastConn = [(_ANEClient *)self fastConn];
  v16 = fastConn;
  if (fastConn)
  {
    conn = fastConn;
  }

  else
  {
    conn = [(_ANEClient *)self conn];
  }

  v18 = conn;

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __46___ANEClient_compiledModelExistsMatchingHash___block_invoke;
  v24[3] = &unk_1E79BA5E8;
  v24[4] = &v25;
  v24[5] = buf;
  v24[6] = a2;
  v24[7] = v7;
  [v18 compiledModelExistsMatchingHash:hashCopy withReply:v24];
  kdebug_trace();
  v19 = gLogger_1;
  v20 = v19;
  if (v7 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v22 = gLogger_1;
  }

  else
  {
    if (os_signpost_enabled(v19))
    {
      v21 = *(v26 + 24);
      *v29 = 67109376;
      *v30 = 0;
      *&v30[4] = 1024;
      *&v30[6] = v21;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v20, OS_SIGNPOST_EVENT, v7, "_ANEF_COMPILED_MODEL_EXISTS", "%u success:%u", v29, 0xEu);
    }

    v22 = gLogger_1;
    if (os_signpost_enabled(v22))
    {
      *v29 = 134349056;
      *v30 = v6;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v22, OS_SIGNPOST_EVENT, v7, "_ANEF_COMPILED_MODEL_EXISTS", "%{public, signpost.description:begin_time}llu ", v29, 0xCu);
    }
  }

  v12 = *(v26 + 24);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v25, 8);
LABEL_25:

  return v12 & 1;
}

- (void)purgeCompiledModelMatchingHash:(id)hash
{
  v27 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  v6 = mach_continuous_time();
  v7 = os_signpost_id_generate(gLogger_1);
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    [virtualClient2 purgeCompiledModelMatchingHash:hashCopy];
  }

  else if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v10 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [(_ANEClient *)v10 purgeCompiledModelMatchingHash:a2];
    }
  }

  else
  {
    v11 = gLogger_1;
    if (hashCopy)
    {
      if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
      {
        [_ANEClient purgeCompiledModelMatchingHash:];
      }

      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x3032000000;
      v20[3] = __Block_byref_object_copy__3;
      v20[4] = __Block_byref_object_dispose__3;
      v21 = 0;
      kdebug_trace();
      v12 = gLogger_1;
      v13 = v12;
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *buf = 67109120;
        _os_signpost_emit_with_name_impl(&dword_1AD246000, v13, OS_SIGNPOST_EVENT, v7, "_ANEF_PURGE_COMPILED_MODEL", "%u", buf, 8u);
      }

      conn = [(_ANEClient *)self conn];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __45___ANEClient_purgeCompiledModelMatchingHash___block_invoke;
      v19[3] = &unk_1E79BA5E8;
      v19[4] = &v22;
      v19[5] = v20;
      v19[6] = a2;
      v19[7] = v7;
      [conn purgeCompiledModelMatchingHash:hashCopy withReply:v19];

      kdebug_trace();
      v15 = gLogger_1;
      v16 = v15;
      if (v7 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {

        v18 = gLogger_1;
      }

      else
      {
        if (os_signpost_enabled(v15))
        {
          v17 = *(v23 + 24);
          *buf = 67109376;
          *&buf[8] = 1024;
          *&buf[10] = v17;
          _os_signpost_emit_with_name_impl(&dword_1AD246000, v16, OS_SIGNPOST_EVENT, v7, "_ANEF_PURGE_COMPILED_MODEL", "%u ok:%u", buf, 0xEu);
        }

        v18 = gLogger_1;
        if (os_signpost_enabled(v18))
        {
          *buf = 134349056;
          *&buf[4] = v6;
          _os_signpost_emit_with_name_impl(&dword_1AD246000, v18, OS_SIGNPOST_EVENT, v7, "_ANEF_PURGE_COMPILED_MODEL", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
        }
      }

      _Block_object_dispose(v20, 8);
      _Block_object_dispose(&v22, 8);
    }

    else if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [(_ANEClient *)v11 purgeCompiledModelMatchingHash:a2];
    }
  }
}

- (BOOL)mapIOSurfacesWithModel:(id)model request:(id)request cacheInference:(BOOL)inference error:(id *)error
{
  inferenceCopy = inference;
  v32 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  requestCopy = request;
  v27 = mach_continuous_time();
  v12 = os_signpost_id_generate(gLogger_1);
  [modelCopy string_id];
  kdebug_trace();
  v13 = gLogger_1;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 134217984;
    string_id = [modelCopy string_id];
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v14, OS_SIGNPOST_EVENT, v12, "_ANEF_IOSURFACES_MAP", "model.string_id:%llu", buf, 0xCu);
  }

  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient || +[_ANEDeviceInfo isVirtualMachine])
  {
    LOBYTE(v16) = 1;
    goto LABEL_7;
  }

  if (!modelCopy)
  {
    v25 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient mapIOSurfacesWithModel:v25 request:? cacheInference:? error:?];
    }

    goto LABEL_24;
  }

  if (!requestCopy)
  {
    v26 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient mapIOSurfacesWithModel:v26 request:? cacheInference:? error:?];
    }

LABEL_24:
    LOBYTE(v16) = 0;
    goto LABEL_7;
  }

  mapper = [modelCopy mapper];
  v19 = gLogger_1;
  if (mapper)
  {
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
    {
      [_ANEClient mapIOSurfacesWithModel:request:cacheInference:error:];
    }

    v16 = [mapper mapIOSurfacesWithModel:modelCopy request:requestCopy cacheInference:inferenceCopy error:error];
    v20 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
    {
      [_ANEClient mapIOSurfacesWithModel:v20 request:? cacheInference:? error:?];
    }

    [modelCopy string_id];
    kdebug_trace();
    v21 = gLogger_1;
    v22 = v21;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v24 = gLogger_1;
    }

    else
    {
      if (os_signpost_enabled(v21))
      {
        string_id2 = [modelCopy string_id];
        *buf = 134218240;
        string_id = string_id2;
        v30 = 1024;
        v31 = v16;
        _os_signpost_emit_with_name_impl(&dword_1AD246000, v22, OS_SIGNPOST_EVENT, v12, "_ANEF_IOSURFACES_MAP", "model.string_id:%llu ok:%u", buf, 0x12u);
      }

      v24 = gLogger_1;
      if (os_signpost_enabled(v24))
      {
        *buf = 134349056;
        string_id = v27;
        _os_signpost_emit_with_name_impl(&dword_1AD246000, v24, OS_SIGNPOST_EVENT, v12, "_ANEF_IOSURFACES_MAP", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient mapIOSurfacesWithModel:v19 request:? cacheInference:? error:?];
    }

    LOBYTE(v16) = 0;
  }

LABEL_7:
  return v16;
}

- (void)unmapIOSurfacesWithModel:(id)model request:(id)request
{
  v37 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  requestCopy = request;
  v9 = mach_continuous_time();
  v10 = os_signpost_id_generate(gLogger_1);
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    v12 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
LABEL_3:
      [_ANEClient unmapIOSurfacesWithModel:v12 request:?];
    }
  }

  else
  {
    if (+[_ANEDeviceInfo isVirtualMachine])
    {
      v12 = gLogger_1;
      if (!os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      goto LABEL_3;
    }

    if (modelCopy)
    {
      if (requestCopy)
      {
        mapper = [modelCopy mapper];
        v14 = gLogger_1;
        if (mapper)
        {
          if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
          {
            [_ANEClient mapIOSurfacesWithModel:request:cacheInference:error:];
          }

          [modelCopy string_id];
          kdebug_trace();
          v15 = gLogger_1;
          v16 = v15;
          if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
          {
            *buf = 134217984;
            string_id = [modelCopy string_id];
            _os_signpost_emit_with_name_impl(&dword_1AD246000, v16, OS_SIGNPOST_EVENT, v10, "_ANEF_IOSURFACES_UNMAP", "model.string_id:%llu", buf, 0xCu);
          }

          v30 = 0;
          v17 = mapper;
          v18 = [mapper unmapIOSurfacesWithModel:modelCopy request:requestCopy error:&v30];
          v28 = v30;
          v19 = gLogger_1;
          if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
          {
            v26 = v19;
            v27 = NSStringFromSelector(a2);
            *buf = 138412802;
            string_id = v27;
            v33 = 1024;
            v34 = v18;
            v35 = 2112;
            v36 = v28;
            _os_log_debug_impl(&dword_1AD246000, v26, OS_LOG_TYPE_DEBUG, "%@: success=%d : err=%@", buf, 0x1Cu);
          }

          [modelCopy string_id];
          kdebug_trace();
          v20 = gLogger_1;
          v21 = v20;
          if (v10 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {

            v23 = gLogger_1;
            mapper = v17;
          }

          else
          {
            if (os_signpost_enabled(v20))
            {
              string_id2 = [modelCopy string_id];
              *buf = 134218240;
              string_id = string_id2;
              v33 = 1024;
              v34 = v18;
              _os_signpost_emit_with_name_impl(&dword_1AD246000, v21, OS_SIGNPOST_EVENT, v10, "_ANEF_IOSURFACES_UNMAP", "model.string_id:%llu ok:%u", buf, 0x12u);
            }

            v23 = gLogger_1;
            mapper = v17;
            if (os_signpost_enabled(v23))
            {
              *buf = 134349056;
              string_id = v9;
              _os_signpost_emit_with_name_impl(&dword_1AD246000, v23, OS_SIGNPOST_EVENT, v10, "_ANEF_IOSURFACES_UNMAP", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
            }
          }
        }

        else if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
        {
          [_ANEClient mapIOSurfacesWithModel:v14 request:? cacheInference:? error:?];
        }
      }

      else
      {
        v25 = gLogger_1;
        if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
        {
          [_ANEClient mapIOSurfacesWithModel:v25 request:? cacheInference:? error:?];
        }
      }
    }

    else
    {
      v24 = gLogger_1;
      if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
      {
        [_ANEClient mapIOSurfacesWithModel:v24 request:? cacheInference:? error:?];
      }
    }
  }

LABEL_31:
}

+ (id)sharedPrivateConnection
{
  if (sharedPrivateConnection_onceToken != -1)
  {
    +[_ANEClient sharedPrivateConnection];
  }

  v3 = sharedPrivateConnection_client;

  return v3;
}

- (BOOL)beginRealTimeTask
{
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    beginRealTimeTask = [virtualClient2 beginRealTimeTask];

    return beginRealTimeTask;
  }

  else
  {
    if (+[_ANEDeviceInfo isVirtualMachine])
    {
      v8 = gLogger_1;
      if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
      {
        [(_ANEClient *)v8 beginRealTimeTask];
      }

      v9 = 0;
    }

    else
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      conn = [(_ANEClient *)self conn];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __31___ANEClient_beginRealTimeTask__block_invoke;
      v11[3] = &unk_1E79BA610;
      v11[4] = &v12;
      v11[5] = a2;
      [conn beginRealTimeTaskWithReply:v11];

      v9 = *(v13 + 24);
      _Block_object_dispose(&v12, 8);
    }

    return v9 & 1;
  }
}

- (BOOL)endRealTimeTask
{
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    endRealTimeTask = [virtualClient2 endRealTimeTask];

    return endRealTimeTask;
  }

  else
  {
    if (+[_ANEDeviceInfo isVirtualMachine])
    {
      v8 = gLogger_1;
      if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
      {
        [(_ANEClient *)v8 endRealTimeTask];
      }

      v9 = 0;
    }

    else
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      conn = [(_ANEClient *)self conn];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __29___ANEClient_endRealTimeTask__block_invoke;
      v11[3] = &unk_1E79BA610;
      v11[4] = &v12;
      v11[5] = a2;
      [conn endRealTimeTaskWithReply:v11];

      v9 = *(v13 + 24);
      _Block_object_dispose(&v12, 8);
    }

    return v9 & 1;
  }
}

- (BOOL)doLoadModel:(id)model options:(id)options qos:(unsigned int)qos error:(id *)p_isa
{
  v7 = *&qos;
  v60 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  v36 = mach_continuous_time();
  v13 = os_signpost_id_generate(gLogger_1);
  if (!modelCopy)
  {
    v16 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient doLoadModel:v16 options:a2 qos:? error:?];
    }

    goto LABEL_11;
  }

  spid = v13;
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    LOBYTE(p_isa) = [virtualClient2 loadModel:modelCopy options:optionsCopy qos:v7 error:p_isa];

    goto LABEL_28;
  }

  v17 = +[_ANEDeviceInfo isVirtualMachine];
  v18 = gLogger_1;
  if (v17)
  {
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient doLoadModel:v18 options:a2 qos:? error:?];
    }

    if (p_isa)
    {
      v19 = NSStringFromSelector(a2);
      *p_isa = [_ANEErrors hostTooOld:v19];

LABEL_11:
      LOBYTE(p_isa) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
    {
      [_ANEClient doLoadModel:options:qos:error:];
    }

    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__3;
    v50 = __Block_byref_object_dispose__3;
    v51 = 0;
    [modelCopy string_id];
    kdebug_trace();
    v20 = gLogger_1;
    v21 = v20;
    v34 = spid - 1;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      string_id = [modelCopy string_id];
      *buf = 67109376;
      *v57 = v7;
      *&v57[4] = 2048;
      *&v57[6] = string_id;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v21, OS_SIGNPOST_EVENT, spid, "_ANEF_MODEL_LOAD", "qos:%u model.string_id:%llu", buf, 0x12u);
    }

    v23 = [_ANEQoSMapper queueIndexForQoS:v7];
    priorityQ = [(_ANEClient *)self priorityQ];
    v25 = [priorityQ objectAtIndexedSubscript:v23];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44___ANEClient_doLoadModel_options_qos_error___block_invoke;
    block[3] = &unk_1E79BA660;
    v38 = optionsCopy;
    v26 = modelCopy;
    v39 = v26;
    selfCopy = self;
    v45 = v7;
    v41 = &v46;
    v42 = &v52;
    v43 = a2;
    v44 = spid;
    dispatch_sync(v25, block);

    [v26 string_id];
    [v26 programHandle];
    kdebug_trace();
    v27 = gLogger_1;
    v28 = v27;
    if (v34 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      string_id2 = [v26 string_id];
      programHandle = [v26 programHandle];
      *buf = 67109632;
      *v57 = v7;
      *&v57[4] = 2048;
      *&v57[6] = string_id2;
      v58 = 2048;
      v59 = programHandle;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v28, OS_SIGNPOST_EVENT, spid, "_ANEF_MODEL_LOAD", "qos:%u model.string_id:%llu model.programHandle:%llu", buf, 0x1Cu);
    }

    if (p_isa)
    {
      if ((v53[3] & 1) == 0)
      {
        v31 = v47[5];
        if (v31)
        {
          *p_isa = v31;
        }
      }
    }

    v32 = gLogger_1;
    p_isa = &v32->isa;
    if (v34 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 134349056;
      *v57 = v36;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, p_isa, OS_SIGNPOST_EVENT, spid, "_ANEF_MODEL_LOAD", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
    }

    LOBYTE(p_isa) = *(v53 + 24);
    _Block_object_dispose(&v46, 8);

    _Block_object_dispose(&v52, 8);
  }

LABEL_28:

  return p_isa & 1;
}

- (BOOL)doLoadModelNewInstance:(id)instance options:(id)options modelInstParams:(id)params qos:(unsigned int)qos error:(id *)p_isa
{
  v8 = *&qos;
  v65 = *MEMORY[0x1E69E9840];
  instanceCopy = instance;
  optionsCopy = options;
  paramsCopy = params;
  v40 = mach_continuous_time();
  v16 = os_signpost_id_generate(gLogger_1);
  if (instanceCopy)
  {
    spid = v16;
    virtualClient = [(_ANEClient *)self virtualClient];

    if (virtualClient)
    {
      virtualClient2 = [(_ANEClient *)self virtualClient];
      LOBYTE(p_isa) = [virtualClient2 loadModelNewInstance:instanceCopy options:optionsCopy modelInstParams:paramsCopy qos:v8 error:p_isa];

      goto LABEL_30;
    }

    v21 = +[_ANEDeviceInfo isVirtualMachine];
    v22 = gLogger_1;
    if (v21)
    {
      if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
      {
        [_ANEClient doLoadModelNewInstance:v22 options:a2 modelInstParams:? qos:? error:?];
      }

      if (p_isa)
      {
        v23 = NSStringFromSelector(a2);
        *p_isa = [_ANEErrors hostTooOld:v23];

        goto LABEL_13;
      }
    }

    else
    {
      if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
      {
        [_ANEClient doLoadModelNewInstance:options:modelInstParams:qos:error:];
      }

      v57 = 0;
      v58 = &v57;
      v59 = 0x2020000000;
      v60 = 0;
      v51 = 0;
      v52 = &v51;
      v53 = 0x3032000000;
      v54 = __Block_byref_object_copy__3;
      v55 = __Block_byref_object_dispose__3;
      v56 = 0;
      [instanceCopy string_id];
      kdebug_trace();
      v24 = gLogger_1;
      v25 = v24;
      v38 = spid - 1;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        string_id = [instanceCopy string_id];
        *buf = 67109376;
        *v62 = v8;
        *&v62[4] = 2048;
        *&v62[6] = string_id;
        _os_signpost_emit_with_name_impl(&dword_1AD246000, v25, OS_SIGNPOST_EVENT, spid, "_ANEF_ADAPTER_LOAD", "qos:%u model.string_id:%llu", buf, 0x12u);
      }

      v27 = [_ANEQoSMapper queueIndexForQoS:v8];
      priorityQ = [(_ANEClient *)self priorityQ];
      v29 = [priorityQ objectAtIndexedSubscript:v27];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __71___ANEClient_doLoadModelNewInstance_options_modelInstParams_qos_error___block_invoke;
      block[3] = &unk_1E79BA688;
      v42 = optionsCopy;
      v46 = &v51;
      v48 = a2;
      v43 = paramsCopy;
      selfCopy = self;
      v30 = instanceCopy;
      v50 = v8;
      v45 = v30;
      v47 = &v57;
      v49 = spid;
      dispatch_sync(v29, block);

      [v30 string_id];
      [v30 programHandle];
      kdebug_trace();
      v31 = gLogger_1;
      v32 = v31;
      if (v38 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        string_id2 = [v30 string_id];
        programHandle = [v30 programHandle];
        *buf = 67109632;
        *v62 = v8;
        *&v62[4] = 2048;
        *&v62[6] = string_id2;
        v63 = 2048;
        v64 = programHandle;
        _os_signpost_emit_with_name_impl(&dword_1AD246000, v32, OS_SIGNPOST_EVENT, spid, "_ANEF_ADAPTER_LOAD", "qos:%u model.string_id:%llu model.programHandle:%llu", buf, 0x1Cu);
      }

      if (p_isa)
      {
        if ((v58[3] & 1) == 0)
        {
          v35 = v52[5];
          if (v35)
          {
            *p_isa = v35;
          }
        }
      }

      v36 = gLogger_1;
      p_isa = &v36->isa;
      if (v38 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        *buf = 134349056;
        *v62 = v40;
        _os_signpost_emit_with_name_impl(&dword_1AD246000, p_isa, OS_SIGNPOST_EVENT, spid, "_ANEF_ADAPTER_LOAD", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
      }

      LOBYTE(p_isa) = *(v58 + 24);
      _Block_object_dispose(&v51, 8);

      _Block_object_dispose(&v57, 8);
    }
  }

  else
  {
    v19 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient doLoadModelNewInstance:v19 options:a2 modelInstParams:? qos:? error:?];
    }

    if (p_isa)
    {
      v20 = NSStringFromSelector(a2);
      *p_isa = [_ANEErrors invalidModelInstanceErrorForMethod:v20];

LABEL_13:
      LOBYTE(p_isa) = 0;
    }
  }

LABEL_30:

  return p_isa & 1;
}

- (BOOL)doPrepareChainingWithModel:(id)model options:(id)options chainingReq:(id)req qos:(unsigned int)qos error:(id *)error
{
  v7 = *&qos;
  v63 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  reqCopy = req;
  v39 = mach_continuous_time();
  v15 = os_signpost_id_generate(gLogger_1);
  if (!modelCopy)
  {
    v19 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient doPrepareChainingWithModel:v19 options:a2 chainingReq:? qos:? error:?];
    }

    goto LABEL_12;
  }

  v16 = v15;
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    v18 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient doPrepareChainingWithModel:v18 options:a2 chainingReq:? qos:? error:?];
    }

LABEL_12:
    v22 = 0;
    goto LABEL_13;
  }

  if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v20 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient doPrepareChainingWithModel:v20 options:a2 chainingReq:? qos:? error:?];
    }

    if (error)
    {
      v21 = NSStringFromSelector(a2);
      *error = [_ANEErrors hostTooOld:v21];
    }

    goto LABEL_12;
  }

  [modelCopy string_id];
  kdebug_trace();
  v24 = gLogger_1;
  v25 = v24;
  v38 = v16 - 1;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 67109376;
    *&buf[4] = v7;
    LOWORD(v59) = 2048;
    *(&v59 + 2) = [modelCopy string_id];
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v25, OS_SIGNPOST_EVENT, v16, "_ANEF_PREPARE_CHAINING", "qos:%u model.string_id:%llu", buf, 0x12u);
  }

  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  validate = [reqCopy validate];
  if (*(v52 + 24) == 1)
  {
    *buf = 0;
    *&v59 = buf;
    *(&v59 + 1) = 0x3032000000;
    v60 = __Block_byref_object_copy__3;
    v61 = __Block_byref_object_dispose__3;
    v62 = 0;
    conn = [(_ANEClient *)self connectionUsedForLoadingModel:modelCopy];
    if (!conn)
    {
      v27 = gLogger_1;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = NSStringFromSelector(a2);
        [_ANEClient doUnloadModel:v28 options:modelCopy qos:v57 error:?];
      }

      conn = [(_ANEClient *)self conn];
    }

    v29 = [_ANEQoSMapper queueIndexForQoS:v7];
    priorityQ = [(_ANEClient *)self priorityQ];
    v31 = [priorityQ objectAtIndexedSubscript:v29];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71___ANEClient_doPrepareChainingWithModel_options_chainingReq_qos_error___block_invoke;
    block[3] = &unk_1E79BA6B0;
    v32 = conn;
    v42 = v32;
    v43 = modelCopy;
    v44 = optionsCopy;
    v50 = v7;
    v45 = reqCopy;
    v46 = &v51;
    v47 = buf;
    v48 = a2;
    v49 = v16;
    dispatch_sync(v31, block);

    kdebug_trace();
    v33 = gLogger_1;
    v34 = v33;
    if (v38 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      *v55 = 67109120;
      LODWORD(v56) = v7;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v34, OS_SIGNPOST_EVENT, v16, "_ANEF_PREPARE_CHAINING", "qos:%u", v55, 8u);
    }

    if (error)
    {
      if ((v52[3] & 1) == 0)
      {
        v35 = *(v59 + 40);
        if (v35)
        {
          *error = v35;
        }
      }
    }

    v36 = gLogger_1;
    v37 = v36;
    if (v38 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      *v55 = 134349056;
      v56 = v39;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v37, OS_SIGNPOST_EVENT, v16, "_ANEF_PREPARE_CHAINING", "%{public, signpost.description:begin_time}llu ", v55, 0xCu);
    }

    v22 = *(v52 + 24);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v22 = 0;
  }

  _Block_object_dispose(&v51, 8);
LABEL_13:

  return v22 & 1;
}

- (BOOL)doEnqueueSetsWithModel:(id)model outputSet:(id)set options:(id)options qos:(unsigned int)qos error:(id *)error
{
  v8 = *&qos;
  *&v45[5] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  setCopy = set;
  optionsCopy = options;
  v16 = mach_continuous_time();
  v17 = os_signpost_id_generate(gLogger_1);
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    v19 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient doEnqueueSetsWithModel:v19 outputSet:? options:? qos:? error:?];
    }

    goto LABEL_4;
  }

  if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v22 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient doEnqueueSetsWithModel:v22 outputSet:? options:? qos:? error:?];
      if (!error)
      {
        goto LABEL_4;
      }
    }

    else if (!error)
    {
LABEL_4:
      LOBYTE(v20) = 0;
      goto LABEL_5;
    }

    v23 = NSStringFromSelector(a2);
    *error = [_ANEErrors hostTooOld:v23];

    goto LABEL_4;
  }

  v40 = v16;
  [modelCopy string_id];
  kdebug_trace();
  v24 = gLogger_1;
  v25 = v24;
  v41 = v17 - 1;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 67109376;
    v45[0] = v8;
    LOWORD(v45[1]) = 2048;
    *(&v45[1] + 2) = [modelCopy string_id];
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v25, OS_SIGNPOST_EVENT, v17, "_ANEF_ENQUEUE_OUTPUT_SET", "qos:%u model.string_id:%llu", buf, 0x12u);
  }

  v26 = [_ANEQoSMapper queueIndexForQoS:v8];
  v27 = [gSema objectAtIndexedSubscript:v26];
  v28 = dispatch_time(0, 30000000000);
  dsema = v27;
  if (dispatch_semaphore_wait(v27, v28))
  {
    if (error)
    {
      v29 = NSStringFromSelector(a2);
      *error = [_ANEErrors timeoutErrorForMethod:v29];
    }

    [modelCopy string_id];
    kdebug_trace();
    v30 = gLogger_1;
    v31 = v30;
    if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      string_id = [modelCopy string_id];
      *buf = 67109632;
      v45[0] = v8;
      LOWORD(v45[1]) = 1024;
      *(&v45[1] + 2) = 0;
      HIWORD(v45[2]) = 2048;
      *&v45[3] = string_id;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v31, OS_SIGNPOST_EVENT, v17, "_ANEF_ENQUEUE_OUTPUT_SET", "qos:%u ok:%u model.string_id:%llu", buf, 0x18u);
    }

    LOBYTE(v20) = 0;
  }

  else
  {
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
    {
      [_ANEClient doEnqueueSetsWithModel:outputSet:options:qos:error:];
    }

    [modelCopy program];
    v33 = v43 = 0;
    v20 = [v33 processOutputSet:setCopy model:modelCopy options:optionsCopy error:&v43];
    v39 = v43;
    dispatch_semaphore_signal(dsema);
    kdebug_trace();
    v34 = gLogger_1;
    v35 = v34;
    if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 67109120;
      v45[0] = v8;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v35, OS_SIGNPOST_EVENT, v17, "_ANEF_ENQUEUE_OUTPUT_SET", "qos:%u", buf, 8u);
    }

    v31 = v39;
    if (error && v20 != 1 && v39)
    {
      v36 = v39;
      *error = v39;
    }

    v37 = gLogger_1;
    v38 = v37;
    if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      *buf = 134349056;
      *v45 = v40;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v38, OS_SIGNPOST_EVENT, v17, "_ANEF_ENQUEUE_OUTPUT_SET", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
    }
  }

LABEL_5:
  return v20;
}

- (BOOL)doBuffersReadyWithModel:(id)model inputBuffers:(id)buffers options:(id)options qos:(unsigned int)qos error:(id *)error
{
  v8 = *&qos;
  *&v45[5] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  buffersCopy = buffers;
  optionsCopy = options;
  v16 = mach_continuous_time();
  v17 = os_signpost_id_generate(gLogger_1);
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    v19 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient doEnqueueSetsWithModel:v19 outputSet:? options:? qos:? error:?];
    }

    goto LABEL_4;
  }

  if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v22 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient doEnqueueSetsWithModel:v22 outputSet:? options:? qos:? error:?];
      if (!error)
      {
        goto LABEL_4;
      }
    }

    else if (!error)
    {
LABEL_4:
      LOBYTE(v20) = 0;
      goto LABEL_5;
    }

    v23 = NSStringFromSelector(a2);
    *error = [_ANEErrors hostTooOld:v23];

    goto LABEL_4;
  }

  v40 = v16;
  [modelCopy string_id];
  kdebug_trace();
  v24 = gLogger_1;
  v25 = v24;
  v41 = v17 - 1;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 67109376;
    v45[0] = v8;
    LOWORD(v45[1]) = 2048;
    *(&v45[1] + 2) = [modelCopy string_id];
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v25, OS_SIGNPOST_EVENT, v17, "_ANEF_INPUT_BUFFERS_READY", "qos:%u model.string_id:%llu", buf, 0x12u);
  }

  v26 = [_ANEQoSMapper queueIndexForQoS:v8];
  v27 = [gSema objectAtIndexedSubscript:v26];
  v28 = dispatch_time(0, 30000000000);
  dsema = v27;
  if (dispatch_semaphore_wait(v27, v28))
  {
    if (error)
    {
      v29 = NSStringFromSelector(a2);
      *error = [_ANEErrors timeoutErrorForMethod:v29];
    }

    [modelCopy string_id];
    kdebug_trace();
    v30 = gLogger_1;
    v31 = v30;
    if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      string_id = [modelCopy string_id];
      *buf = 67109632;
      v45[0] = v8;
      LOWORD(v45[1]) = 1024;
      *(&v45[1] + 2) = 0;
      HIWORD(v45[2]) = 2048;
      *&v45[3] = string_id;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v31, OS_SIGNPOST_EVENT, v17, "_ANEF_INPUT_BUFFERS_READY", "qos:%u ok:%u model.string_id:%llu", buf, 0x18u);
    }

    LOBYTE(v20) = 0;
  }

  else
  {
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
    {
      [_ANEClient doBuffersReadyWithModel:inputBuffers:options:qos:error:];
    }

    [modelCopy program];
    v33 = v43 = 0;
    v20 = [v33 processInputBuffers:buffersCopy model:modelCopy options:optionsCopy error:&v43];
    v39 = v43;
    dispatch_semaphore_signal(dsema);
    kdebug_trace();
    v34 = gLogger_1;
    v35 = v34;
    if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 67109120;
      v45[0] = v8;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v35, OS_SIGNPOST_EVENT, v17, "_ANEF_INPUT_BUFFERS_READY", "qos:%u", buf, 8u);
    }

    v31 = v39;
    if (error && v20 != 1 && v39)
    {
      v36 = v39;
      *error = v39;
    }

    v37 = gLogger_1;
    v38 = v37;
    if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      *buf = 134349056;
      *v45 = v40;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v38, OS_SIGNPOST_EVENT, v17, "_ANEF_INPUT_BUFFERS_READY", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
    }
  }

LABEL_5:
  return v20;
}

- (BOOL)evaluateRealTimeWithModel:(id)model options:(id)options request:(id)request error:(id *)error
{
  requestCopy = request;
  optionsCopy = options;
  modelCopy = model;
  LOBYTE(error) = [(_ANEClient *)self doEvaluateDirectWithModel:modelCopy options:optionsCopy request:requestCopy qos:+[_ANEQoSMapper error:"aneRealTimeTaskQoS"], error];

  return error;
}

- (void)reportEvaluateFailure:(id)failure failureReason:(unsigned int)reason qIdx:(unint64_t)idx
{
  v6 = *&reason;
  v27[4] = *MEMORY[0x1E69E9840];
  failureCopy = failure;
  v9 = [(_ANEClient *)self connectionUsedForLoadingModel:failureCopy];
  if (v9)
  {
    modelURL = [failureCopy modelURL];
    if (modelURL)
    {
      [failureCopy modelURL];
    }

    else
    {
      [failureCopy sourceURL];
    }
    v11 = ;
    v25 = &stru_1F224D6A0;
    v12 = [_ANEStrings trimmedModelPath:v11 trimmedPath:&v25];
    v13 = v25;

    v27[0] = v13;
    v26[0] = @"modelURL";
    v26[1] = @"privacy_score";
    v14 = [MEMORY[0x1E696AD98] numberWithBool:v12];
    v27[1] = v14;
    v26[2] = @"programHandle";
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(failureCopy, "programHandle")}];
    v27[2] = v15;
    v26[3] = @"failureReason";
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    v27[3] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];

    priorityQ = [(_ANEClient *)self priorityQ];
    v19 = [priorityQ objectAtIndexedSubscript:idx];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55___ANEClient_reportEvaluateFailure_failureReason_qIdx___block_invoke;
    block[3] = &unk_1E79BA6D8;
    v22 = v9;
    v23 = @"modelInference";
    v24 = v17;
    v20 = v17;
    dispatch_sync(v19, block);
  }

  else if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
  {
    [_ANEClient reportEvaluateFailure:failureReason:qIdx:];
  }
}

- (BOOL)doEvaluateDirectWithModel:(id)model options:(id)options request:(id)request qos:(unsigned int)qos error:(id *)error
{
  v8 = *&qos;
  v80 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  requestCopy = request;
  v16 = mach_continuous_time();
  if (!modelCopy)
  {
    v21 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient mapIOSurfacesWithModel:v21 request:? cacheInference:? error:?];
    }

    goto LABEL_6;
  }

  v17 = v16;
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    LOBYTE(v20) = [virtualClient2 evaluateWithModel:modelCopy options:optionsCopy request:requestCopy qos:v8 error:error];

    goto LABEL_7;
  }

  if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v23 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient doEnqueueSetsWithModel:v23 outputSet:? options:? qos:? error:?];
      if (!error)
      {
        goto LABEL_6;
      }
    }

    else if (!error)
    {
LABEL_6:
      LOBYTE(v20) = 0;
      goto LABEL_7;
    }

    v24 = NSStringFromSelector(a2);
    *error = [_ANEErrors hostTooOld:v24];

    goto LABEL_6;
  }

  v67 = [_ANEQoSMapper queueIndexForQoS:v8];
  v25 = requestCopy;
  mach_continuous_time();
  v68 = os_signpost_id_generate(gLogger_1);
  if (kdebug_is_enabled())
  {
    v64 = v17;
    inputArray = [v25 inputArray];
    v27 = [inputArray count];
    spid = inputArray;
    if (v27)
    {
      aSelector = v25;
      v28 = [inputArray objectAtIndexedSubscript:0];
      IOSurfaceGetID([v28 ioSurface]);

      if (v27 != 1)
      {
        v29 = [spid objectAtIndexedSubscript:1];
        IOSurfaceGetID([v29 ioSurface]);

        if (v27 >= 3)
        {
          v30 = [spid objectAtIndexedSubscript:2];
          IOSurfaceGetID([v30 ioSurface]);

          v25 = aSelector;
          if (v27 != 3)
          {
            v56 = [spid objectAtIndexedSubscript:3];
            IOSurfaceGetID([v56 ioSurface]);
          }
        }
      }
    }

    kdebug_trace();
    v31 = gLogger_1;
    v32 = v31;
    if (v68 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *buf = 67109120;
      LODWORD(v73) = v8;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v32, OS_SIGNPOST_EVENT, v68, "_ANEF_MODEL_EVAL", "qos:%u", buf, 8u);
    }

    v17 = v64;
  }

  aSelectora = a2;

  v33 = v25;
  spida = os_signpost_id_generate(gLogger_1);
  v69 = v33;
  if (kdebug_is_enabled())
  {
    outputArray = [v33 outputArray];
    v35 = [outputArray count];
    v58 = outputArray;
    if (v35)
    {
      v65 = v17;
      v36 = [outputArray objectAtIndexedSubscript:0];
      v37 = IOSurfaceGetID([v36 ioSurface]) << 32;

      if (v35 == 1)
      {
        v35 = 0;
        v38 = 0;
        v17 = v65;
        v39 = v37;
      }

      else
      {
        v40 = [outputArray objectAtIndexedSubscript:1];
        ID = IOSurfaceGetID([v40 ioSurface]);

        v39 = v37 | ID;
        if (v35 < 3)
        {
          v35 = 0;
          v38 = 0;
          v17 = v65;
        }

        else
        {
          v57 = v37 | ID;
          v42 = [v58 objectAtIndexedSubscript:2];
          v38 = IOSurfaceGetID([v42 ioSurface]) << 32;

          if (v35 == 3)
          {
            v35 = 0;
          }

          else
          {
            v43 = [v58 objectAtIndexedSubscript:3];
            v35 = IOSurfaceGetID([v43 ioSurface]);
          }

          v17 = v65;
          v39 = v57;
        }
      }
    }

    else
    {
      v38 = 0;
      v39 = 0;
    }

    v44 = v38 | v35;
    v45 = v39;
    kdebug_trace();
    v46 = gLogger_1;
    v47 = v46;
    if (spida - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
    {
      *buf = 134218752;
      v73 = v69;
      v74 = 1024;
      v75 = v8;
      v76 = 2048;
      v77 = v45;
      v78 = 2048;
      v79 = v44;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v47, OS_SIGNPOST_EVENT, spida, "_ANEF_MODEL_EVAL", "request:%p qos:%u packedOutputs01:%llu, packedOutputs23%llu", buf, 0x26u);
    }

    v33 = v69;
  }

  v48 = [gSema objectAtIndexedSubscript:v67];
  v49 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v48, v49))
  {
    if (error)
    {
      v50 = NSStringFromSelector(aSelectora);
      *error = [_ANEErrors timeoutErrorForMethod:v50];
    }

    [(_ANEClient *)self reportEvaluateFailure:modelCopy failureReason:15 qIdx:v67];
    emitEndTracepoint(modelCopy, v8, v69, v67, 0);
    LOBYTE(v20) = 0;
  }

  else
  {
    [modelCopy program];
    v71 = 0;
    spidb = v70 = 0;
    v20 = [spidb processRequest:v69 model:modelCopy qos:v8 qIndex:v67 modelStringID:objc_msgSend(modelCopy options:"string_id") returnValue:optionsCopy error:{&v71, &v70}];
    v66 = v70;
    dispatch_semaphore_signal(v48);
    if (error && !v20 && v66)
    {
      *error = v66;
      [(_ANEClient *)self reportEvaluateFailure:modelCopy failureReason:v71 qIdx:v67];
    }

    completionHandler = [v69 completionHandler];
    if (completionHandler)
    {
    }

    else
    {
      sharedEvents = [v69 sharedEvents];

      if (!sharedEvents)
      {
        emitEndTracepoint(modelCopy, v8, v69, v67, v20);
      }
    }

    v53 = os_signpost_id_generate(gLogger_1);
    v54 = gLogger_1;
    v55 = v54;
    if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
    {
      *buf = 134349056;
      v73 = v17;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v55, OS_SIGNPOST_EVENT, v53, "_ANEF_MODEL_EVALUATE", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
    }
  }

LABEL_7:
  return v20;
}

- (BOOL)isVirtualClient
{
  virtualClient = [(_ANEClient *)self virtualClient];
  v3 = virtualClient != 0;

  return v3;
}

- (BOOL)echo:(id)echo
{
  echoCopy = echo;
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    v8 = [virtualClient2 echo:echoCopy];
  }

  else if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v9 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [(_ANEClient *)v9 echo:a2];
    }

    v8 = 0;
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    conn = [(_ANEClient *)self conn];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __19___ANEClient_echo___block_invoke;
    v12[3] = &unk_1E79BA610;
    v12[4] = &v13;
    v12[5] = a2;
    [conn echo:echoCopy withReply:v12];

    v8 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  return v8 & 1;
}

- (BOOL)isAnetoolRootDaemonConnection
{
  v18 = *MEMORY[0x1E69E9840];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];

  processInfo2 = [MEMORY[0x1E696AE30] processInfo];
  arguments = [processInfo2 arguments];

  if ([processName isEqualToString:@"anetool"])
  {
    if ([arguments count])
    {
      v7 = 0;
      do
      {
        v8 = [arguments objectAtIndexedSubscript:v7];
        if ([v8 isEqualToString:@"-u"] && v7 < objc_msgSend(arguments, "count") - 1)
        {
          v9 = [arguments objectAtIndexedSubscript:++v7];
          bOOLValue = [v9 BOOLValue];

          if (bOOLValue)
          {
            goto LABEL_12;
          }
        }

        else
        {

          ++v7;
        }
      }

      while (v7 < [arguments count]);
    }

    v11 = gLogger_1;
    v12 = 1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_INFO))
    {
      v13 = v11;
      v14 = NSStringFromSelector(a2);
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&dword_1AD246000, v13, OS_LOG_TYPE_INFO, "%@: Yes", &v16, 0xCu);
    }
  }

  else
  {
LABEL_12:
    v12 = 0;
  }

  return v12;
}

- (BOOL)sessionHintWithModel:(id)model hint:(id)hint options:(id)options report:(id)report error:(id *)error
{
  modelCopy = model;
  hintCopy = hint;
  optionsCopy = options;
  reportCopy = report;
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    LOBYTE(error) = [virtualClient2 sessionHintWithModel:modelCopy hint:hintCopy options:optionsCopy report:reportCopy error:error];

    goto LABEL_19;
  }

  if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v19 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient doEnqueueSetsWithModel:v19 outputSet:? options:? qos:? error:?];
      if (!error)
      {
        goto LABEL_19;
      }
    }

    else if (!error)
    {
      goto LABEL_19;
    }

    v20 = NSStringFromSelector(a2);
    v21 = [_ANEErrors hostTooOld:v20];
LABEL_18:
    *error = v21;

    LOBYTE(error) = 0;
    goto LABEL_19;
  }

  if (!modelCopy)
  {
    v24 = +[_ANELog common];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient sessionHintWithModel:a2 hint:? options:? report:? error:?];
    }

    goto LABEL_16;
  }

  if (!hintCopy)
  {
    v24 = +[_ANELog common];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient sessionHintWithModel:a2 hint:? options:? report:? error:?];
    }

LABEL_16:

    if (!error)
    {
      goto LABEL_19;
    }

    v20 = NSStringFromSelector(a2);
    v21 = [_ANEErrors badArgumentForMethod:v20];
    goto LABEL_18;
  }

  program = [modelCopy program];
  v23 = program;
  if (program)
  {
    LOBYTE(error) = [program processSessionHint:hintCopy options:optionsCopy report:reportCopy error:error];
  }

  else
  {
    v26 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient sessionHintWithModel:v26 hint:? options:? report:? error:?];
    }

    if ([hintCopy isEqualToString:kANEFHintSessionInfo])
    {
      LOBYTE(error) = 1;
      if (reportCopy)
      {
        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
        [reportCopy setObject:v27 forKeyedSubscript:kANEFHintReportSessionStatusKey];
      }
    }

    else if (error)
    {
      v28 = NSStringFromSelector(a2);
      *error = [_ANEErrors invalidModelErrorForMethod:v28];

      LOBYTE(error) = 0;
    }
  }

LABEL_19:
  return error;
}

- (void)initWithRestrictedAccessAllowed:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_8_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5_4(&dword_1AD246000, v5, v6, "%@: ANEVirtualClient Not available.", v7, v8, v9, v10);
}

- (void)connectionForLoadingModel:(void *)a1 options:(const char *)a2 .cold.1(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

- (void)compileModel:(void *)a1 options:(const char *)a2 qos:error:.cold.1(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10);
}

- (void)compileModel:(void *)a1 options:(const char *)a2 qos:error:.cold.2(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: nil _ANEModel", v7, v8, v9, v10);
}

- (void)doUnloadModel:(uint64_t)a3 options:qos:error:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_8(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_1AD246000, v5, OS_LOG_TYPE_ERROR, "%@: model=%@ was not loaded by the client.", v4, 0x16u);
}

- (void)doUnloadModel:(void *)a1 options:(const char *)a2 qos:error:.cold.2(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10);
}

- (void)doUnloadModel:(void *)a1 options:(const char *)a2 qos:error:.cold.3(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: nil _ANEModel", v7, v8, v9, v10);
}

- (void)compiledModelExistsFor:.cold.1()
{
  OUTLINED_FUNCTION_12_1();
  v2 = v1;
  v3 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)compiledModelExistsFor:(void *)a1 .cold.2(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: nil _ANEModel", v7, v8, v9, v10);
}

- (void)compiledModelExistsFor:(void *)a1 .cold.3(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10);
}

- (void)purgeCompiledModel:.cold.1()
{
  OUTLINED_FUNCTION_12_1();
  v2 = v1;
  v3 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)purgeCompiledModel:(void *)a1 .cold.2(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: nil _ANEModel", v7, v8, v9, v10);
}

- (void)purgeCompiledModel:(void *)a1 .cold.3(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10);
}

- (void)compiledModelExistsMatchingHash:.cold.1()
{
  OUTLINED_FUNCTION_12_1();
  v2 = v1;
  v3 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)compiledModelExistsMatchingHash:(void *)a1 .cold.2(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: nil modelHash", v7, v8, v9, v10);
}

- (void)compiledModelExistsMatchingHash:(void *)a1 .cold.3(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10);
}

- (void)purgeCompiledModelMatchingHash:.cold.1()
{
  OUTLINED_FUNCTION_12_1();
  v2 = v1;
  v3 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)purgeCompiledModelMatchingHash:(void *)a1 .cold.2(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: nil modelHash", v7, v8, v9, v10);
}

- (void)purgeCompiledModelMatchingHash:(void *)a1 .cold.3(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10);
}

- (void)mapIOSurfacesWithModel:request:cacheInference:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_9_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)mapIOSurfacesWithModel:(void *)a1 request:cacheInference:error:.cold.2(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);
}

- (void)mapIOSurfacesWithModel:(void *)a1 request:cacheInference:error:.cold.3(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_8_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0(&dword_1AD246000, v5, v6, "%@: nil _ANEProgramIOSurfacesMapper", v7, v8, v9, v10);
}

- (void)mapIOSurfacesWithModel:(void *)a1 request:cacheInference:error:.cold.4(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_8_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0(&dword_1AD246000, v5, v6, "%@: nil _ANERequest", v7, v8, v9, v10);
}

- (void)mapIOSurfacesWithModel:(void *)a1 request:cacheInference:error:.cold.5(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_8_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0(&dword_1AD246000, v5, v6, "%@: nil _ANEModel", v7, v8, v9, v10);
}

- (void)unmapIOSurfacesWithModel:(void *)a1 request:.cold.1(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_8_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0(&dword_1AD246000, v5, v6, "%@: No support in VM", v7, v8, v9, v10);
}

- (void)beginRealTimeTask
{
  selfCopy = self;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10);
}

- (void)endRealTimeTask
{
  selfCopy = self;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10);
}

- (void)doLoadModel:options:qos:error:.cold.1()
{
  OUTLINED_FUNCTION_12_1();
  v2 = v1;
  v3 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)doLoadModel:(void *)a1 options:(const char *)a2 qos:error:.cold.2(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10);
}

- (void)doLoadModel:(void *)a1 options:(const char *)a2 qos:error:.cold.3(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: nil _ANEModel", v7, v8, v9, v10);
}

- (void)doLoadModelNewInstance:options:modelInstParams:qos:error:.cold.1()
{
  OUTLINED_FUNCTION_12_1();
  v2 = v1;
  v3 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)doLoadModelNewInstance:(void *)a1 options:(const char *)a2 modelInstParams:qos:error:.cold.2(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10);
}

- (void)doLoadModelNewInstance:(void *)a1 options:(const char *)a2 modelInstParams:qos:error:.cold.3(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: nil _ANEModel", v7, v8, v9, v10);
}

- (void)doPrepareChainingWithModel:(void *)a1 options:(const char *)a2 chainingReq:qos:error:.cold.1(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: does not support virtual client yet", v7, v8, v9, v10);
}

- (void)doPrepareChainingWithModel:(void *)a1 options:(const char *)a2 chainingReq:qos:error:.cold.3(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10);
}

- (void)doPrepareChainingWithModel:(void *)a1 options:(const char *)a2 chainingReq:qos:error:.cold.4(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: nil _ANEModel", v7, v8, v9, v10);
}

- (void)doEnqueueSetsWithModel:(void *)a1 outputSet:options:qos:error:.cold.1(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_8_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0(&dword_1AD246000, v5, v6, "%@: does not support virtual client yet", v7, v8, v9, v10);
}

- (void)doEnqueueSetsWithModel:outputSet:options:qos:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_4_0();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_8_0() program];
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

- (void)doEnqueueSetsWithModel:(void *)a1 outputSet:options:qos:error:.cold.3(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_8_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10);
}

- (void)doBuffersReadyWithModel:inputBuffers:options:qos:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_4_0();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_8_0() program];
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

- (void)reportEvaluateFailure:failureReason:qIdx:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7(&dword_1AD246000, v5, v6, "%@: model=%@ was not loaded by the client.", v7, v8, v9, v10);
}

- (void)echo:(void *)a1 .cold.1(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10);
}

- (void)sessionHintWithModel:(void *)a1 hint:options:report:error:.cold.1(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_8_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0(&dword_1AD246000, v5, v6, "%@: Program not loaded", v7, v8, v9, v10);
}

- (void)sessionHintWithModel:(const char *)a1 hint:options:report:error:.cold.2(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v2, v3, "%@: Missing hint", v4, v5, v6, v7);
}

- (void)sessionHintWithModel:(const char *)a1 hint:options:report:error:.cold.3(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v2, v3, "%@: Missing model", v4, v5, v6, v7);
}

@end