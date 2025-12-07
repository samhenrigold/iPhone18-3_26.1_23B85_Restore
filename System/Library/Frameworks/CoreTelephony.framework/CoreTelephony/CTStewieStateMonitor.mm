@interface CTStewieStateMonitor
- (BOOL)start;
- (BOOL)startWithEndpoint:(id)endpoint parameters:(id)parameters;
- (CTStewieStateMonitor)initWithDelegate:(id)delegate queue:(id)queue;
- (id)getState;
- (id)stateFromPath:(id)path;
- (void)dealloc;
@end

@implementation CTStewieStateMonitor

- (id)getState
{
  os_unfair_lock_lock(&self->fLock);
  v3 = self->fState;
  os_unfair_lock_unlock(&self->fLock);

  return v3;
}

- (BOOL)start
{
  v3 = xpc_array_create(0, 0);
  xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, "CoreTelephony");
  v4 = xpc_array_create(0, 0);
  xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, "Stewie");
  secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
  v6 = nw_parameters_set_allow_ultra_constrained();
  if (!secure_udp)
  {
    host = CTLogStewieMonitor(v6, v7);
    if (os_log_type_enabled(host, OS_LOG_TYPE_ERROR))
    {
      [CTStewieDataClient createConnectionPairIfRequired];
    }

    goto LABEL_10;
  }

  nw_parameters_set_required_netagent_classes();
  host = nw_endpoint_create_host("monitor", "42");
  if (!host)
  {
    v11 = CTLogStewieMonitor(0, v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CTStewieStateMonitor start];
    }

LABEL_10:
    v10 = 0;
    goto LABEL_13;
  }

  os_unfair_lock_lock(&self->fLock);
  if (self->fStarted)
  {
    v10 = 1;
  }

  else
  {
    v10 = [(CTStewieStateMonitor *)self startWithEndpoint:host parameters:secure_udp];
    self->fStarted = v10;
  }

  os_unfair_lock_unlock(&self->fLock);
LABEL_13:

  return v10;
}

- (void)dealloc
{
  nw_path_evaluator_cancel();
  fPathEvaluator = self->fPathEvaluator;
  self->fPathEvaluator = 0;

  v4.receiver = self;
  v4.super_class = CTStewieStateMonitor;
  [(CTStewieStateMonitor *)&v4 dealloc];
}

- (CTStewieStateMonitor)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = CTStewieStateMonitor;
  v8 = [(CTStewieStateMonitor *)&v16 init];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [objc_opt_class() conformsToProtocol:&unk_1EF07D1C0];
  if ((v9 & 1) == 0)
  {
    v14 = CTLogStewieMonitor(v9, v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CTStewieStateMonitor initWithDelegate:queue:];
    }

    goto LABEL_9;
  }

  if (!queueCopy)
  {
    v14 = CTLogStewieMonitor(v9, v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CTStewieStateMonitor initWithDelegate:queue:];
    }

LABEL_9:

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v8->fLock._os_unfair_lock_opaque = 0;
  v11 = objc_alloc_init(CTStewieState);
  fState = v8->fState;
  v8->fState = v11;

  objc_storeWeak(&v8->fDelegate, delegateCopy);
  objc_storeStrong(&v8->fDelegateQueue, queue);
  v8->fStarted = 0;
  v13 = v8;
LABEL_11:

  return v13;
}

- (BOOL)startWithEndpoint:(id)endpoint parameters:(id)parameters
{
  endpointCopy = endpoint;
  parametersCopy = parameters;
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  fPathEvaluator = self->fPathEvaluator;
  self->fPathEvaluator = evaluator_for_endpoint;

  if (self->fPathEvaluator)
  {
    objc_initWeak(&location, self);
    v21 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v22, &location);
    updated = nw_path_evaluator_set_update_handler();
    v13 = self->fPathEvaluator;
    if (updated)
    {
      v13 = nw_path_evaluator_copy_path();
      if (v13)
      {
        v15 = [(CTStewieStateMonitor *)self stateFromPath:v13, v21, 3221225472, __53__CTStewieStateMonitor_startWithEndpoint_parameters___block_invoke, &unk_1E6A48230];
        fState = self->fState;
        self->fState = v15;

        v17 = 1;
      }

      else
      {
        v19 = CTLogStewieMonitor(0, v14);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [CTStewieStateMonitor startWithEndpoint:parameters:];
        }

        nw_path_evaluator_cancel();
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
      self->fPathEvaluator = 0;
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = CTLogStewieMonitor(v10, v11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CTStewieStateMonitor startWithEndpoint:parameters:];
    }

    v17 = 0;
  }

  return v17;
}

void __53__CTStewieStateMonitor_startWithEndpoint_parameters___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained stateFromPath:v7];
    os_unfair_lock_lock(v4 + 2);
    if ([*(v4 + 2) isEqual:v5])
    {
      os_unfair_lock_unlock(v4 + 2);
    }

    else
    {
      objc_storeStrong(v4 + 2, v5);
      os_unfair_lock_unlock(v4 + 2);
      v6 = objc_loadWeakRetained(v4 + 3);
      [v6 stateChanged:v5];
    }
  }
}

- (id)stateFromPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__19;
    v16 = __Block_byref_object_dispose__19;
    v17 = 0;
    v4 = nw_path_copy_netagent_dictionary();
    v5 = v4;
    if (v4)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __38__CTStewieStateMonitor_stateFromPath___block_invoke;
      applier[3] = &unk_1E6A48258;
      applier[4] = &v12;
      xpc_dictionary_apply(v4, applier);
    }

    v6 = v13[5];
    if (!v6)
    {
      v7 = objc_alloc_init(CTStewieState);
      v8 = v13[5];
      v13[5] = v7;

      v6 = v13[5];
    }

    v9 = v6;

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v9 = objc_alloc_init(CTStewieState);
  }

  return v9;
}

uint64_t __38__CTStewieStateMonitor_stateFromPath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  length = 0;
  data = xpc_dictionary_get_data(v4, "data", &length);
  v6 = data;
  v7 = 1;
  if (data)
  {
    if (length >= 0xD8)
    {
      v8 = *(data + 53);
      if (length == v8 + 216 && !strcmp(data + 16, "CoreTelephony"))
      {
        v9 = strcmp(v6 + 48, "Stewie");
        if (v8 >= 0xCD && !v9)
        {
          if (v8 == 226)
          {
            v11 = [[CTStewieState alloc] initWithStewieState:v6 + 420];
            v12 = *(*(a1 + 32) + 8);
            v13 = *(v12 + 40);
            *(v12 + 40) = v11;
          }

          else
          {
            v13 = CTLogStewieMonitor(v9, v10);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              __38__CTStewieStateMonitor_stateFromPath___block_invoke_cold_1(v8 - 204, v13);
            }
          }

          v7 = 0;
        }
      }
    }
  }

  return v7;
}

@end