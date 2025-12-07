@interface BSServiceConnection
+ (id)NSXPCConnectionWithEndpoint:(id)endpoint clientContextBuilder:(id)builder configurator:(id)configurator;
+ (id)NSXPCConnectionWithEndpoint:(id)endpoint configurator:(id)configurator;
+ (id)_connectionWithEndpoint:(uint64_t)endpoint muxer:(uint64_t)muxer clientContextBuilder:;
+ (id)connectionWithEndpoint:(id)endpoint;
+ (id)connectionWithEndpoint:(id)endpoint clientContextBuilder:(id)builder;
+ (void)_currentConnection;
- (BSProcessHandle)remoteProcess;
- (BSServiceConnection)init;
- (NSCopying)userInfo;
- (NSString)description;
- (RBSTarget)remoteAssertionTarget;
- (id)_connection;
- (id)_extractNSXPCConnectionWithConfigurator:(uint64_t)configurator assertionProvider:(void *)provider;
- (id)_extractUnderlyingConnection;
- (id)_initWithConfiguration:(id *)configuration;
- (id)createMessageWithCompletion:(id)completion;
- (id)extractNSXPCConnectionWithConfigurator:(id)configurator;
- (id)extractNSXPCConnectionWithViewServiceConfigurator:(id)configurator;
- (id)remoteTargetWithAssertionAttributes:(id)attributes;
- (void)_config:(uint64_t)_config;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)loggingProem;
@end

@implementation BSServiceConnection

+ (void)_currentConnection
{
  objc_opt_self();
  v0 = +[BSXPCServiceConnection currentContext];
  v1 = objc_opt_class();
  v2 = v0;
  if (v1)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  object = [v4 object];

  v6 = objc_opt_class();
  v7 = object;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = v6;

  return v6;
}

- (NSCopying)userInfo
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_userInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_lock_noAssertInvalidatedOnDealloc && !self->_lock_invalidated)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalidation must occur before letting the connection dealloc for %@ : cnx=%@", self->_name, self->_connection];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v11 = v5;
      v12 = 2114;
      v13 = v7;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"BSServiceConnection.m";
      v18 = 1024;
      v19 = 261;
      v20 = 2114;
      v21 = v4;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A824958);
  }

  v9.receiver = self;
  v9.super_class = BSServiceConnection;
  [(BSServiceConnection *)&v9 dealloc];
}

void __31__BSServiceConnection_activate__block_invoke_259(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = +[BSServiceConnection _currentConnection];
  if (!v14)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(BSXPCServiceConnection *)a2 stateDump];
    v6 = +[BSXPCServiceConnection currentContext];
    v7 = a1[4];
    v8 = [MEMORY[0x1E696AF00] currentThread];
    v9 = [MEMORY[0x1E696AF00] currentThread];
    v10 = [v9 threadDictionary];
    v11 = [v4 stringWithFormat:@"%@: _currentConnection is nil in invalidation handler : context=%@ : name=%@ : t=%@ : tls=%@", v5, v6, v7, v8, v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BSServiceConnection activate]_block_invoke"];
      *buf = 138544130;
      v16 = v12;
      v17 = 2114;
      v18 = @"BSServiceConnection.m";
      v19 = 1024;
      v20 = 492;
      v21 = 2114;
      v22 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v13 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A824EBCLL);
  }

  os_unfair_lock_lock((a1[5] + 32));
  *(a1[5] + 56) = 1;
  os_unfair_lock_unlock((a1[5] + 32));
  (*(a1[6] + 16))();
}

- (void)activate
{
  v70 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  lock_config = self->_lock_config;
  if (!lock_config)
  {
    goto LABEL_44;
  }

  interface = lock_config->_interface;
  if (!interface)
  {
    if (lock_config->_target)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"interface must be specified if you specified a target : service=%@", self->_service];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = NSStringFromSelector(a2);
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138544642;
        v59 = v23;
        v60 = 2114;
        v61 = v25;
        v62 = 2048;
        selfCopy7 = self;
        v64 = 2114;
        v65 = @"BSServiceConnection.m";
        v66 = 1024;
        v67 = 373;
        v68 = 2114;
        v69 = v22;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v26 = v22;
      [v22 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82526CLL);
    }

    if (!lock_config->_messageHandler)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"some form of interface handler must be specified before activation : service=%@", self->_service];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v33 = NSStringFromSelector(a2);
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        *buf = 138544642;
        v59 = v33;
        v60 = 2114;
        v61 = v35;
        v62 = 2048;
        selfCopy7 = self;
        v64 = 2114;
        v65 = @"BSServiceConnection.m";
        v66 = 1024;
        v67 = 398;
        v68 = 2114;
        v69 = v32;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v36 = v32;
      [v32 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A825478);
    }

    if (self->_requiresMessagingAfterHandshake)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"raw message handlers aren't supported on this connection : service=%@", self->_service];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(a2);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138544642;
        v59 = v18;
        v60 = 2114;
        v61 = v20;
        v62 = 2048;
        selfCopy7 = self;
        v64 = 2114;
        v65 = @"BSServiceConnection.m";
        v66 = 1024;
        v67 = 399;
        v68 = 2114;
        v69 = v17;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v21 = v17;
      [v17 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82516CLL);
    }

    goto LABEL_41;
  }

  identifier = [(BSServiceInterface *)interface identifier];
  if (identifier && ![(NSString *)self->_service isEqualToString:identifier])
  {
    if ([(NSString *)self->_service isEqualToString:@"com.apple.BoardServices.invalid-service"])
    {
      connection = self->_connection;
      if (connection)
      {
        connection = connection->_context;
      }

      v8 = connection;
      v9 = objc_opt_class();
      if (v9 == objc_opt_class())
      {
        if (v8)
        {
          configured_connectionQueue = v8->_configured_connectionQueue;
        }

        else
        {
          configured_connectionQueue = 0;
        }

        v11 = configured_connectionQueue;
        isNullEndpoint = [(BSXPCServiceConnectionEndpoint *)v11 isNullEndpoint];

        if (isNullEndpoint)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }
    }

    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"interface's identifier doesn't match our service : service=%@ interface=%@", self->_service, self->_lock_config->_interface];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      v59 = v28;
      v60 = 2114;
      v61 = v30;
      v62 = 2048;
      selfCopy7 = self;
      v64 = 2114;
      v65 = @"BSServiceConnection.m";
      v66 = 1024;
      v67 = 387;
      v68 = 2114;
      v69 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A825378);
  }

LABEL_12:
  if (self->_requiresMessagingAfterHandshake && [(BSServiceInterface *)self->_lock_config->_interface clientMessagingExpectation]!= 1)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"incompatible clientMessagingExpectation for this connection : interface=%@", self->_lock_config->_interface];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(a2);
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *buf = 138544642;
      v59 = v38;
      v60 = 2114;
      v61 = v40;
      v62 = 2048;
      selfCopy7 = self;
      v64 = 2114;
      v65 = @"BSServiceConnection.m";
      v66 = 1024;
      v67 = 391;
      v68 = 2114;
      v69 = v37;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v41 = v37;
    [v37 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82557CLL);
  }

  v13 = self->_connection;
  if (v13)
  {
    isServer = [(BSXPCServiceConnectionContext *)v13->_context isServer];
    v15 = self->_lock_config->_interface;
    if (isServer)
    {
      server = [(BSServiceInterface *)v15 server];
      goto LABEL_38;
    }
  }

  else
  {
    v15 = self->_lock_config->_interface;
  }

  server = [(BSServiceInterface *)v15 client];
LABEL_38:
  v42 = server;
  methods = [server methods];
  v44 = [methods count];

  if (v44)
  {
    v45 = self->_lock_config;
    if (!v45->_target)
    {
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"target must be specified if the local interface is not empty : interface=%@", v45->_interface];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v48 = NSStringFromSelector(a2);
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        *buf = 138544642;
        v59 = v48;
        v60 = 2114;
        v61 = v50;
        v62 = 2048;
        selfCopy7 = self;
        v64 = 2114;
        v65 = @"BSServiceConnection.m";
        v66 = 1024;
        v67 = 395;
        v68 = 2114;
        v69 = v56;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v56 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A825778);
    }
  }

  lock_config = self->_lock_config;
LABEL_41:
  if (!lock_config->_invalidationHandler && !lock_config->_errorHandler)
  {
    v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"you must configure an invalidation handler : service=%@", self->_service];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v52 = NSStringFromSelector(a2);
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      *buf = 138544642;
      v59 = v52;
      v60 = 2114;
      v61 = v54;
      v62 = 2048;
      selfCopy7 = self;
      v64 = 2114;
      v65 = @"BSServiceConnection.m";
      v66 = 1024;
      v67 = 401;
      v68 = 2114;
      v69 = v51;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v55 = v51;
    [v51 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A825878);
  }

  v46 = self->_connection;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __31__BSServiceConnection_activate__block_invoke;
  v57[3] = &unk_1E7520780;
  v57[4] = self;
  v57[5] = a2;
  [(BSXPCServiceConnection *)v46 configure:v57];
  v47 = self->_lock_config;
  self->_lock_config = 0;

LABEL_44:
  [(BSXPCServiceConnection *)self->_connection activateNowOrWhenReady:?];
  os_unfair_lock_unlock(&self->_lock);
}

void __31__BSServiceConnection_activate__block_invoke(uint64_t a1, void *a2)
{
  v125 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 32);
  v5 = [MEMORY[0x1E698E7B8] referenceWithObject:*(a1 + 32)];
  [(BSXPCServiceConnectionEventHandler *)a2 setCalloutContext:v5];

  v6 = *v4;
  v7 = *(*v4 + 40);
  if (*(v7 + 48))
  {
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 3221225472;
    v112[2] = __31__BSServiceConnection_activate__block_invoke_2;
    v112[3] = &unk_1E75206E0;
    v112[4] = v6;
    [(BSXPCServiceConnectionEventHandler *)a2 encodeInitiatingContext:v112];
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    v8 = *(v6 + 16);
  }

  if (a2)
  {
    v9 = [v8 copy];
    v10 = a2[18];
    a2[18] = v9;

    v7 = *(*(a1 + 32) + 40);
    v11 = *(v7 + 72);
    if (v11)
    {
      v12 = [v11 copy];
      v13 = a2[20];
      a2[20] = v12;

      v7 = *(*(a1 + 32) + 40);
    }
  }

  v14 = *(v7 + 80);
  if (v14)
  {
    [(BSXPCServiceConnectionEventHandler *)a2 setInterfaceTarget:v14];
    v7 = *(*(a1 + 32) + 40);
  }

  v15 = *(v7 + 112);
  v16 = *(a1 + 32);
  v17 = v16[5];
  v18 = v17[16];
  if (v15)
  {
    v19 = v15;
    if (v18)
    {
      v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot have a target queue set if specifying a queue : service=%@", v16[8]];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v79 = NSStringFromSelector(*(a1 + 40));
        v80 = objc_opt_class();
        v81 = NSStringFromClass(v80);
        v82 = *(a1 + 32);
        *buf = 138544642;
        v114 = v79;
        v115 = 2114;
        v116 = v81;
        v117 = 2048;
        v118 = v82;
        v119 = 2114;
        v120 = @"BSServiceConnection.m";
        v121 = 1024;
        v122 = 424;
        v123 = 2114;
        v124 = v78;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v83 = v78;
      [v78 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A826340);
    }

    if (v17[17])
    {
      v84 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot have a queue of target queue set if specifying a queue : service=%@", v16[8]];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v85 = NSStringFromSelector(*(a1 + 40));
        v86 = objc_opt_class();
        v87 = NSStringFromClass(v86);
        v88 = *(a1 + 32);
        *buf = 138544642;
        v114 = v85;
        v115 = 2114;
        v116 = v87;
        v117 = 2048;
        v118 = v88;
        v119 = 2114;
        v120 = @"BSServiceConnection.m";
        v121 = 1024;
        v122 = 425;
        v123 = 2114;
        v124 = v84;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v89 = v84;
      [v84 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A826444);
    }

    if (v17[15])
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot have a serviceQuality if specifying a queue : service=%@", v16[8]];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = NSStringFromSelector(*(a1 + 40));
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = *(a1 + 32);
        *buf = 138544642;
        v114 = v21;
        v115 = 2114;
        v116 = v23;
        v117 = 2048;
        v118 = v24;
        v119 = 2114;
        v120 = @"BSServiceConnection.m";
        v121 = 1024;
        v122 = 426;
        v123 = 2114;
        v124 = v20;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v25 = v20;
      [v20 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A825C58);
    }
  }

  else
  {
    v26 = v17[15];
    if (v18)
    {
      if (v26)
      {
        v27 = [BSServiceDispatchQueue queueWithName:"queueWithName:serviceQuality:targetQueue:" serviceQuality:v16[2] targetQueue:?];
      }

      else
      {
        v29 = v17[17];
        if (v29)
        {
          v27 = v29;
        }

        else
        {
          v27 = [BSServiceDispatchQueue queueWithName:v16[2] targetQueue:v18];
        }
      }
    }

    else
    {
      v28 = v16[2];
      if (v26)
      {
        [BSServiceDispatchQueue queueWithName:v28 serviceQuality:?];
      }

      else
      {
        [BSServiceDispatchQueue queueWithName:v28];
      }
      v27 = ;
    }

    v19 = v27;
  }

  [(BSXPCServiceConnectionEventHandler *)a2 setQueue:v19];
  v30 = MEMORY[0x19A908200](*(*(*(a1 + 32) + 40) + 144));
  if (v30)
  {
    objc_initWeak(buf, *(a1 + 32));
    v109[0] = MEMORY[0x1E69E9820];
    v109[1] = 3221225472;
    v109[2] = __31__BSServiceConnection_activate__block_invoke_247;
    v109[3] = &unk_1E7520708;
    objc_copyWeak(&v111, buf);
    v31 = v30;
    v110 = v31;
    if (a2)
    {
      v32 = [v109 copy];
      v33 = a2[14];
      a2[14] = v32;

      v31 = v110;
    }

    objc_destroyWeak(&v111);
    objc_destroyWeak(buf);
  }

  v34 = *(a1 + 32);
  v35 = *(v34 + 40);
  v36 = *(v35 + 152);
  if (!v36)
  {
    if (!*(v35 + 160))
    {
      goto LABEL_40;
    }

    *(v34 + 57) = 1;
    if (!a2)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (a2)
  {
    v37 = [v36 copy];
    v38 = a2[9];
    a2[9] = v37;

    v34 = *(a1 + 32);
    if (!*(*(v34 + 40) + 160))
    {
      goto LABEL_40;
    }

    *(v34 + 57) = 1;
LABEL_38:
    v39 = [*(*(*(a1 + 32) + 40) + 160) copy];
    v40 = a2[10];
    a2[10] = v39;

LABEL_39:
    v34 = *(a1 + 32);
    goto LABEL_40;
  }

  if (*(v35 + 160))
  {
    *(v34 + 57) = 1;
    goto LABEL_39;
  }

LABEL_40:
  v41 = *(v34 + 16);
  v42 = *(a1 + 32);
  v43 = *(v42 + 8);
  if (v43 && (v44 = [*(v43 + 192) isServer], v42 = *(a1 + 32), (v44 & 1) != 0) || *(v42 + 57) == 1)
  {
    v45 = *(v42 + 40);
    if (v45[11])
    {
      v46 = MEMORY[0x19A908200]();
      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = __31__BSServiceConnection_activate__block_invoke_2_249;
      v106[3] = &unk_1E7520758;
      v107 = v41;
      v108 = v46;
      v47 = v46;
      v48 = v47;
      if (a2)
      {
        v49 = [v106 copy];
        v50 = a2[11];
        a2[11] = v49;

        v48 = v108;
      }

      v45 = *(*(a1 + 32) + 40);
    }

    if (v45[12])
    {
      v51 = MEMORY[0x19A908200]();
      v103[0] = MEMORY[0x1E69E9820];
      v103[1] = 3221225472;
      v103[2] = __31__BSServiceConnection_activate__block_invoke_255;
      v103[3] = &unk_1E7520758;
      v104 = v41;
      v105 = v51;
      v52 = v51;
      v53 = v52;
      if (a2)
      {
        v54 = [v103 copy];
        v55 = a2[12];
        a2[12] = v54;

        v53 = v105;
      }

      v45 = *(*(a1 + 32) + 40);
    }

    v56 = MEMORY[0x19A908200](v45[13]);
    v57 = *(a1 + 32);
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __31__BSServiceConnection_activate__block_invoke_259;
    v99[3] = &unk_1E7520730;
    v100 = v41;
    v101 = v57;
    v102 = v56;
    v58 = v56;
    v59 = v57;
    v60 = v58;
    if (a2)
    {
      v61 = [v99 copy];
      v62 = a2[13];
      a2[13] = v61;

      v60 = v102;
    }
  }

  else
  {
    v63 = *(v42 + 40);
    if (v63[11])
    {
      v64 = MEMORY[0x19A908200]();
      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 3221225472;
      v96[2] = __31__BSServiceConnection_activate__block_invoke_263;
      v96[3] = &unk_1E7520758;
      v98 = v64;
      v65 = v41;
      v97 = v65;
      v66 = v64;
      if (a2)
      {
        v67 = [v96 copy];
        v68 = a2[11];
        a2[11] = v67;

        v65 = v97;
      }

      v63 = *(*(a1 + 32) + 40);
    }

    if (v63[12])
    {
      v69 = MEMORY[0x19A908200]();
      v93[0] = MEMORY[0x1E69E9820];
      v93[1] = 3221225472;
      v93[2] = __31__BSServiceConnection_activate__block_invoke_264;
      v93[3] = &unk_1E7520758;
      v95 = v69;
      v70 = v41;
      v94 = v70;
      v71 = v69;
      if (a2)
      {
        v72 = [v93 copy];
        v73 = a2[12];
        a2[12] = v72;

        v70 = v94;
      }

      v63 = *(*(a1 + 32) + 40);
    }

    v74 = MEMORY[0x19A908200](v63[13]);
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __31__BSServiceConnection_activate__block_invoke_265;
    v90[3] = &unk_1E7520758;
    v92 = v74;
    v75 = v41;
    v91 = v75;
    v58 = v74;
    if (a2)
    {
      v76 = [v90 copy];
      v77 = a2[13];
      a2[13] = v76;

      v75 = v91;
    }

    v59 = v92;
  }
}

uint64_t __31__BSServiceConnection_activate__block_invoke_2(uint64_t a1, void *a2)
{
  [a2 encodeObject:*(*(a1 + 32) + 64) forKey:@"s"];
  [a2 encodeObject:*(*(a1 + 32) + 72) forKey:@"i"];
  v4 = [(BSXPCServiceConnection *)*(*(a1 + 32) + 8) loggingProem];
  [a2 encodeObject:v4 forKey:@"lp"];

  v5 = *(*(*(a1 + 32) + 40) + 48);

  return [a2 encodeXPCObject:v5 forKey:@"clientContext"];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  lock_config = self->_lock_config;
  self->_lock_config = 0;

  self->_lock_invalidated = 1;
  os_unfair_lock_unlock(&self->_lock);
  connection = self->_connection;

  [(BSXPCServiceConnection *)connection invalidate];
}

- (id)_connection
{
  if (self)
  {
    self = self[1];
    v1 = vars8;
  }

  return self;
}

- (BSProcessHandle)remoteProcess
{
  peer = [(BSXPCServiceConnection *)self->_connection peer];
  v3 = peer;
  if (peer)
  {
    v4 = *(peer + 32);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

void __31__BSServiceConnection_activate__block_invoke_263(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = +[BSServiceConnection _currentConnection];
  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = BSServiceXPCErrorsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(BSXPCServiceConnection *)a2 stateDump];
      v7 = +[BSXPCServiceConnection currentContext];
      v8 = *(a1 + 32);
      v9 = 138412802;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_error_impl(&dword_19A821000, v5, OS_LOG_TYPE_ERROR, "%@: dropping activation handler because _currentConnection is unexpectedly nil (client bug) : context=%@ : name=%@", &v9, 0x20u);
    }
  }
}

void __31__BSServiceConnection_activate__block_invoke_247(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (NSString)description
{
  name = [(BSXPCServiceConnection *)self->_connection name];
  if ([(NSString *)self->_name isEqualToString:name])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", self->_name, self];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p name=%@>", self->_name, self, name];
  }
  v4 = ;

  return v4;
}

- (id)_extractUnderlyingConnection
{
  v34 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock((self + 32));
    if (!*(self + 40))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot extract connection after activation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(sel__extractUnderlyingConnection);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        v23 = v10;
        v24 = 2114;
        v25 = v12;
        v26 = 2048;
        selfCopy2 = self;
        v28 = 2114;
        v29 = @"BSServiceConnection.m";
        v30 = 1024;
        v31 = 601;
        v32 = 2114;
        v33 = v9;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v13 = v9;
      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82CF00);
    }

    v2 = *(self + 8);
    if (!v2)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot extract connection twice"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(sel__extractUnderlyingConnection);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138544642;
        v23 = v15;
        v24 = 2114;
        v25 = v17;
        v26 = 2048;
        selfCopy2 = self;
        v28 = 2114;
        v29 = @"BSServiceConnection.m";
        v30 = 1024;
        v31 = 602;
        v32 = 2114;
        v33 = v14;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v18 = v14;
      [v14 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82CFF8);
    }

    v3 = v2;
    v4 = *(*(self + 40) + 48);
    v5 = *(self + 8);
    *(self + 8) = 0;

    os_unfair_lock_unlock((self + 32));
    [self invalidate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __51__BSServiceConnection__extractUnderlyingConnection__block_invoke;
    v19[3] = &unk_1E7520500;
    v6 = v4;
    v20 = v6;
    selfCopy3 = self;
    [(BSXPCServiceConnection *)v3 configure:v19];
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __51__BSServiceConnection__extractUnderlyingConnection__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__BSServiceConnection__extractUnderlyingConnection__block_invoke_2;
    v7[3] = &unk_1E75207A8;
    v7[4] = *(a1 + 40);
    v8 = v4;
    [(BSXPCServiceConnectionEventHandler *)a2 encodeInitiatingContext:v7];
  }

  if (a2)
  {
    v5 = [*(*(a1 + 40) + 16) copy];
    v6 = *(a2 + 144);
    *(a2 + 144) = v5;
  }
}

void __31__BSServiceConnection_activate__block_invoke_265(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = +[BSServiceConnection _currentConnection];
  v5 = v4;
  if (v4)
  {
    os_unfair_lock_lock(v4 + 8);
    LOBYTE(v5[14]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_unlock(v5 + 8);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = BSServiceXPCErrorsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(BSXPCServiceConnection *)a2 stateDump];
      v8 = +[BSXPCServiceConnection currentContext];
      v9 = *(a1 + 32);
      v10 = 138412802;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_error_impl(&dword_19A821000, v6, OS_LOG_TYPE_ERROR, "%@: dropping invalidation handler because _currentConnection is unexpectedly nil (client bug) : context=%@ name=%@", &v10, 0x20u);
    }
  }
}

uint64_t __51__BSServiceConnection__extractUnderlyingConnection__block_invoke_2(uint64_t a1, void *a2)
{
  [a2 encodeObject:*(*(a1 + 32) + 64) forKey:@"s"];
  [a2 encodeObject:*(*(a1 + 32) + 72) forKey:@"i"];
  v4 = *(a1 + 40);

  return [a2 encodeXPCObject:v4 forKey:@"clientContext"];
}

void __31__BSServiceConnection_activate__block_invoke_2_249(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = +[BSServiceConnection _currentConnection];
  if (!v14)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(BSXPCServiceConnection *)a2 stateDump];
    v6 = +[BSXPCServiceConnection currentContext];
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AF00] currentThread];
    v9 = [MEMORY[0x1E696AF00] currentThread];
    v10 = [v9 threadDictionary];
    v11 = [v4 stringWithFormat:@"%@: _currentConnection is nil in activation handler : context=%@ : name=%@ : t=%@ : tls=%@", v5, v6, v7, v8, v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BSServiceConnection activate]_block_invoke_2"];
      *buf = 138544130;
      v16 = v12;
      v17 = 2114;
      v18 = @"BSServiceConnection.m";
      v19 = 1024;
      v20 = 473;
      v21 = 2114;
      v22 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v13 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82DAC8);
  }

  (*(*(a1 + 40) + 16))();
}

+ (id)NSXPCConnectionWithEndpoint:(id)endpoint configurator:(id)configurator
{
  v48 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  configuratorCopy = configurator;
  v9 = endpointCopy;
  if (!v9)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v13 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"endpoint", v15];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v37 = v17;
      v38 = 2114;
      v39 = v19;
      v40 = 2048;
      selfCopy3 = self;
      v42 = 2114;
      v43 = @"BSNSXPCTransport.m";
      v44 = 1024;
      v45 = 781;
      v46 = 2114;
      v47 = v16;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v20 = v16;
    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83D074);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = MEMORY[0x1E696AEC0];
    classForCoder = [v9 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v23 = NSStringFromClass(classForCoder);
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [v21 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"endpoint", v23, v25];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(a2);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138544642;
      v37 = v27;
      v38 = 2114;
      v39 = v29;
      v40 = 2048;
      selfCopy3 = self;
      v42 = 2114;
      v43 = @"BSNSXPCTransport.m";
      v44 = 1024;
      v45 = 781;
      v46 = 2114;
      v47 = v26;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v30 = v26;
    [v26 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83D1BCLL);
  }

  if (!configuratorCopy)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"configurator"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(a2);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      *buf = 138544642;
      v37 = v32;
      v38 = 2114;
      v39 = v34;
      v40 = 2048;
      selfCopy3 = self;
      v42 = 2114;
      v43 = @"BSNSXPCTransport.m";
      v44 = 1024;
      v45 = 782;
      v46 = 2114;
      v47 = v31;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v35 = v31;
    [v31 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83D2C0);
  }

  v10 = [[BSServiceInitiatingConnection alloc] initWithEndpoint:v9 options:&__block_literal_global_321];
  v11 = [BSServiceConnection _extractNSXPCConnectionWithConfigurator:v10 assertionProvider:configuratorCopy];

  return v11;
}

void __81__BSServiceConnection_NSXPCConnection__NSXPCConnectionWithEndpoint_configurator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = +[BSServiceInitiatingConnectionMultiplexer userInteractiveMultiplexer];
  [v3 setMultiplexer:v2];
}

- (id)_extractNSXPCConnectionWithConfigurator:(uint64_t)configurator assertionProvider:(void *)provider
{
  v85 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  v4 = providerCopy;
  if (configurator)
  {
    if (!providerCopy)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"configurator"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v33 = NSStringFromSelector(sel__extractNSXPCConnectionWithConfigurator_assertionProvider_);
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        *buf = 138544642;
        v74 = v33;
        v75 = 2114;
        v76 = v35;
        v77 = 2048;
        configuratorCopy2 = configurator;
        v79 = 2114;
        v80 = @"BSNSXPCTransport.m";
        v81 = 1024;
        v82 = 820;
        v83 = 2114;
        v84 = v32;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v36 = v32;
      [v32 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83D864);
    }

    _extractUnderlyingConnection = [(BSServiceConnection *)configurator _extractUnderlyingConnection];
    if (!_extractUnderlyingConnection)
    {
      configurator = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to extract BSXPCServiceConnection from %@", configurator];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v38 = NSStringFromSelector(sel__extractNSXPCConnectionWithConfigurator_assertionProvider_);
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        *buf = 138544642;
        v74 = v38;
        v75 = 2114;
        v76 = v40;
        v77 = 2048;
        configuratorCopy2 = configurator;
        v79 = 2114;
        v80 = @"BSNSXPCTransport.m";
        v81 = 1024;
        v82 = 823;
        v83 = 2114;
        v84 = configurator;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v41 = configurator;
      [configurator UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83D960);
    }

    v67 = v4;
    v6 = [BSNSXPCTransport alloc];
    v7 = _extractUnderlyingConnection;
    v8 = v67;
    if (v6)
    {
      v72.receiver = v6;
      v72.super_class = BSNSXPCTransport;
      v9 = objc_msgSendSuper2(&v72, sel_init);
      v10 = v9;
      if (v9)
      {
        objc_storeStrong(v9 + 1, _extractUnderlyingConnection);
        v11 = objc_opt_new();
        v12 = v10[9];
        v10[9] = v11;

        v13 = MEMORY[0x1E696AEC0];
        loggingProem = [(BSXPCServiceConnection *)v10[1] loggingProem];
        v15 = [v13 stringWithFormat:@"BSNSXPCTransport%@", loggingProem];
        v16 = v10[2];
        v10[2] = v15;

        v17 = [0 copy];
        v18 = v10[6];
        v10[6] = v17;

        *(v10 + 20) = 0;
        os_unfair_lock_lock(v10 + 20);
        (v8)[2](v8, v10);
        os_unfair_lock_unlock(v10 + 20);
        *(v10 + 84) = 0;
        v19 = v10[1];
        if (v19 && [v19[24] isNonLaunching] && (v10[3] || v10[4]))
        {
          *(v10 + 84) = 1;
        }

        v20 = v10[9];
        v21 = v10[1];
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __92__BSNSXPCTransport__initWithConnection_configurator_assertionProvider_outWrappedConnection___block_invoke;
        v68[3] = &unk_1E75203A0;
        v71 = sel__initWithConnection_configurator_assertionProvider_outWrappedConnection_;
        v6 = v10;
        v69 = v6;
        v22 = v20;
        v70 = v22;
        [(BSXPCServiceConnection *)v21 configure:v68];
        v23 = [objc_alloc(MEMORY[0x1E696B0B8]) _initWithCustomTransport:v6];
        v24 = v10[9];
        v25 = v23;
        v10 = v25;
        if (v24)
        {
          if (!v25)
          {
            v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"connection"];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v64 = NSStringFromSelector(sel_setConnection_);
              v52 = objc_opt_class();
              v53 = NSStringFromClass(v52);
              *buf = 138544642;
              v74 = v64;
              v75 = 2114;
              v76 = v53;
              v77 = 2048;
              configuratorCopy2 = v24;
              v79 = 2114;
              v80 = @"BSNSXPCTransport.m";
              v81 = 1024;
              v82 = 169;
              v83 = 2114;
              v84 = v61;
              _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v54 = v61;
            [v61 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x19A83DC64);
          }

          os_unfair_lock_lock((v24 + 40));
          if (*(v24 + 44) == 1)
          {
            v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_lock_invalidated"];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v65 = NSStringFromSelector(sel_setConnection_);
              v55 = objc_opt_class();
              v56 = NSStringFromClass(v55);
              *buf = 138544642;
              v74 = v65;
              v75 = 2114;
              v76 = v56;
              v77 = 2048;
              configuratorCopy2 = v24;
              v79 = 2114;
              v80 = @"BSNSXPCTransport.m";
              v81 = 1024;
              v82 = 171;
              v83 = 2114;
              v84 = v62;
              _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v57 = v62;
            [v62 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x19A83DD70);
          }

          if (*(v24 + 8))
          {
            v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_connectionReference == nil"];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v66 = NSStringFromSelector(sel_setConnection_);
              v58 = objc_opt_class();
              v59 = NSStringFromClass(v58);
              *buf = 138544642;
              v74 = v66;
              v75 = 2114;
              v76 = v59;
              v77 = 2048;
              configuratorCopy2 = v24;
              v79 = 2114;
              v80 = @"BSNSXPCTransport.m";
              v81 = 1024;
              v82 = 172;
              v83 = 2114;
              v84 = v63;
              _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v60 = v63;
            [v63 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x19A83DE7CLL);
          }

          v26 = [MEMORY[0x1E698E7B8] referenceWithObject:v10];
          v27 = *(v24 + 8);
          *(v24 + 8) = v26;

          os_unfair_lock_unlock((v24 + 40));
        }

        v28 = v10;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v29 = v10;
    v30 = v29;
    if (!v6)
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create BSNSXPCTransport for %@", v7];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v43 = NSStringFromSelector(sel__wrapWithNSXPCConnectionUsingAssertionProvider_configurator_);
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        *buf = 138544642;
        v74 = v43;
        v75 = 2114;
        v76 = v45;
        v77 = 2048;
        configuratorCopy2 = v7;
        v79 = 2114;
        v80 = @"BSNSXPCTransport.m";
        v81 = 1024;
        v82 = 841;
        v83 = 2114;
        v84 = v42;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v46 = v42;
      [v42 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83DA5CLL);
    }

    if (!v29)
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create NSXPCConnection with %@", v6];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v48 = NSStringFromSelector(sel__wrapWithNSXPCConnectionUsingAssertionProvider_configurator_);
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        *buf = 138544642;
        v74 = v48;
        v75 = 2114;
        v76 = v50;
        v77 = 2048;
        configuratorCopy2 = v7;
        v79 = 2114;
        v80 = @"BSNSXPCTransport.m";
        v81 = 1024;
        v82 = 842;
        v83 = 2114;
        v84 = v47;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v51 = v47;
      [v47 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83DB58);
    }

    objc_setAssociatedObject(v29, "BSNSXPCTransport", v6, 1);
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

+ (id)NSXPCConnectionWithEndpoint:(id)endpoint clientContextBuilder:(id)builder configurator:(id)configurator
{
  v60 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  builderCopy = builder;
  configuratorCopy = configurator;
  v12 = endpointCopy;
  if (!v12)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v18 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"endpoint", v20];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138544642;
      v49 = v22;
      v50 = 2114;
      v51 = v24;
      v52 = 2048;
      selfCopy4 = self;
      v54 = 2114;
      v55 = @"BSNSXPCTransport.m";
      v56 = 1024;
      v57 = 792;
      v58 = 2114;
      v59 = v21;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v25 = v21;
    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83E2D4);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = MEMORY[0x1E696AEC0];
    classForCoder = [v12 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v28 = NSStringFromClass(classForCoder);
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = [v26 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"endpoint", v28, v30];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(a2);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      *buf = 138544642;
      v49 = v32;
      v50 = 2114;
      v51 = v34;
      v52 = 2048;
      selfCopy4 = self;
      v54 = 2114;
      v55 = @"BSNSXPCTransport.m";
      v56 = 1024;
      v57 = 792;
      v58 = 2114;
      v59 = v31;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v35 = v31;
    [v31 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83E41CLL);
  }

  if (!builderCopy)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"contextBuilder"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(a2);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      *buf = 138544642;
      v49 = v37;
      v50 = 2114;
      v51 = v39;
      v52 = 2048;
      selfCopy4 = self;
      v54 = 2114;
      v55 = @"BSNSXPCTransport.m";
      v56 = 1024;
      v57 = 793;
      v58 = 2114;
      v59 = v36;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v40 = v36;
    [v36 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83E520);
  }

  if (!configuratorCopy)
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"configurator"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v42 = NSStringFromSelector(a2);
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      *buf = 138544642;
      v49 = v42;
      v50 = 2114;
      v51 = v44;
      v52 = 2048;
      selfCopy4 = self;
      v54 = 2114;
      v55 = @"BSNSXPCTransport.m";
      v56 = 1024;
      v57 = 794;
      v58 = 2114;
      v59 = v41;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v45 = v41;
    [v41 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83E624);
  }

  v13 = [BSServiceInitiatingConnection alloc];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __102__BSServiceConnection_NSXPCConnection__NSXPCConnectionWithEndpoint_clientContextBuilder_configurator___block_invoke;
  v46[3] = &unk_1E7520548;
  v14 = builderCopy;
  v47 = v14;
  v15 = [(BSServiceInitiatingConnection *)v13 initWithEndpoint:v12 options:v46];
  v16 = [BSServiceConnection _extractNSXPCConnectionWithConfigurator:v15 assertionProvider:configuratorCopy];

  return v16;
}

void __102__BSServiceConnection_NSXPCConnection__NSXPCConnectionWithEndpoint_clientContextBuilder_configurator___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 encodeContext:*(a1 + 32)];
  v3 = +[BSServiceInitiatingConnectionMultiplexer userInteractiveMultiplexer];
  [v4 setMultiplexer:v3];
}

- (id)extractNSXPCConnectionWithConfigurator:(id)configurator
{
  v3 = [BSServiceConnection _extractNSXPCConnectionWithConfigurator:configurator assertionProvider:?];

  return v3;
}

- (id)extractNSXPCConnectionWithViewServiceConfigurator:(id)configurator
{
  v3 = [BSServiceConnection _extractNSXPCConnectionWithConfigurator:configurator assertionProvider:?];

  return v3;
}

- (BSServiceConnection)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BSServiceConnection"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"BSServiceConnection.m";
    v18 = 1024;
    v19 = 238;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_initWithConfiguration:(id *)configuration
{
  configurationCopy = configuration;
  v100 = *MEMORY[0x1E69E9840];
  if (configuration)
  {
    v4 = a2;
    if (!v4)
    {
      v24 = MEMORY[0x1E696AEC0];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v24 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"config", v26];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v28 = NSStringFromSelector(sel__initWithConfiguration_);
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        *buf = 138544642;
        v89 = v28;
        v90 = 2114;
        v91 = v30;
        v92 = 2048;
        v93 = configurationCopy;
        v94 = 2114;
        v95 = @"BSServiceConnection.m";
        v96 = 1024;
        v97 = 243;
        v98 = 2114;
        v99 = v27;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v31 = v27;
      [v27 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8427B8);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v32 = MEMORY[0x1E696AEC0];
      classForCoder = [v4 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v34 = NSStringFromClass(classForCoder);
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = [v32 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"config", v34, v36];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v38 = NSStringFromSelector(sel__initWithConfiguration_);
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        *buf = 138544642;
        v89 = v38;
        v90 = 2114;
        v91 = v40;
        v92 = 2048;
        v93 = configurationCopy;
        v94 = 2114;
        v95 = @"BSServiceConnection.m";
        v96 = 1024;
        v97 = 243;
        v98 = 2114;
        v99 = v37;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v41 = v37;
      [v37 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A842900);
    }

    v5 = v4[2];
    if (!v5)
    {
      v42 = MEMORY[0x1E696AEC0];
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = [v42 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"config->_connection", v44];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v46 = NSStringFromSelector(sel__initWithConfiguration_);
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        *buf = 138544642;
        v89 = v46;
        v90 = 2114;
        v91 = v48;
        v92 = 2048;
        v93 = configurationCopy;
        v94 = 2114;
        v95 = @"BSServiceConnection.m";
        v96 = 1024;
        v97 = 244;
        v98 = 2114;
        v99 = v45;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v49 = v45;
      [v45 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A842A20);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v50 = MEMORY[0x1E696AEC0];
      classForCoder2 = [v5 classForCoder];
      if (!classForCoder2)
      {
        classForCoder2 = objc_opt_class();
      }

      v52 = NSStringFromClass(classForCoder2);
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      v55 = [v50 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"config->_connection", v52, v54];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v56 = NSStringFromSelector(sel__initWithConfiguration_);
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        *buf = 138544642;
        v89 = v56;
        v90 = 2114;
        v91 = v58;
        v92 = 2048;
        v93 = configurationCopy;
        v94 = 2114;
        v95 = @"BSServiceConnection.m";
        v96 = 1024;
        v97 = 244;
        v98 = 2114;
        v99 = v55;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v59 = v55;
      [v55 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A842B68);
    }

    v6 = v4[3];
    v7 = MEMORY[0x1E696AEC0];
    if (!v6)
    {
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      v62 = [v7 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"config->_service", v61];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v63 = NSStringFromSelector(sel__initWithConfiguration_);
        v64 = objc_opt_class();
        v65 = NSStringFromClass(v64);
        *buf = 138544642;
        v89 = v63;
        v90 = 2114;
        v91 = v65;
        v92 = 2048;
        v93 = configurationCopy;
        v94 = 2114;
        v95 = @"BSServiceConnection.m";
        v96 = 1024;
        v97 = 245;
        v98 = 2114;
        v99 = v62;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v66 = v62;
      [v62 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A842C80);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v67 = MEMORY[0x1E696AEC0];
      classForCoder3 = [v6 classForCoder];
      if (!classForCoder3)
      {
        classForCoder3 = objc_opt_class();
      }

      v69 = NSStringFromClass(classForCoder3);
      v70 = objc_opt_class();
      v71 = NSStringFromClass(v70);
      v72 = [v67 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"config->_service", v69, v71];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v73 = NSStringFromSelector(sel__initWithConfiguration_);
        v74 = objc_opt_class();
        v75 = NSStringFromClass(v74);
        *buf = 138544642;
        v89 = v73;
        v90 = 2114;
        v91 = v75;
        v92 = 2048;
        v93 = configurationCopy;
        v94 = 2114;
        v95 = @"BSServiceConnection.m";
        v96 = 1024;
        v97 = 245;
        v98 = 2114;
        v99 = v72;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v76 = v72;
      [v72 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A842DC4);
    }

    v8 = v4[4];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v77 = MEMORY[0x1E696AEC0];
        classForCoder4 = [v8 classForCoder];
        if (!classForCoder4)
        {
          classForCoder4 = objc_opt_class();
        }

        v79 = NSStringFromClass(classForCoder4);
        v80 = objc_opt_class();
        v81 = NSStringFromClass(v80);
        v82 = [v77 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"config->_instance", v79, v81];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v83 = NSStringFromSelector(sel__initWithConfiguration_);
          v84 = objc_opt_class();
          v85 = NSStringFromClass(v84);
          *buf = 138544642;
          v89 = v83;
          v90 = 2114;
          v91 = v85;
          v92 = 2048;
          v93 = configurationCopy;
          v94 = 2114;
          v95 = @"BSServiceConnection.m";
          v96 = 1024;
          v97 = 246;
          v98 = 2114;
          v99 = v82;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v86 = v82;
        [v82 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A842F08);
      }
    }

    v87.receiver = configurationCopy;
    v87.super_class = BSServiceConnection;
    v9 = objc_msgSendSuper2(&v87, sel_init);
    configurationCopy = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 1, v4[2]);
      v10 = [v4[3] copy];
      v11 = configurationCopy[8];
      configurationCopy[8] = v10;

      v12 = [v4[4] copy];
      v13 = configurationCopy[9];
      configurationCopy[9] = v12;

      v14 = configurationCopy[1];
      v15 = configurationCopy[8];
      v16 = configurationCopy[9];
      objc_opt_self();
      if (v16)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v15, v16];
      }

      else
      {
        v17 = v15;
      }

      v18 = v17;
      if (v14 && [v14[24] isServer])
      {
        initiatingContext = [(BSXPCServiceConnection *)v14 initiatingContext];
        v20 = [initiatingContext decodeStringForKey:@"lp"];

        v21 = [(BSXPCServiceConnection *)v14 defaultNameWithClientLoggingProem:v20 as:v18];
      }

      else
      {
        v21 = [(BSXPCServiceConnection *)v14 defaultNameWithClientLoggingProem:v18 as:?];
      }

      v22 = configurationCopy[2];
      configurationCopy[2] = v21;

      *(configurationCopy + 58) = *(v4 + 169);
      *(configurationCopy + 8) = 0;
      objc_storeStrong(configurationCopy + 5, a2);
    }
  }

  return configurationCopy;
}

- (void)_config:(uint64_t)_config
{
  v27 = *MEMORY[0x1E69E9840];
  if (_config)
  {
    if (!a2)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"configurator"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = NSStringFromSelector(sel__config_);
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        *buf = 138544642;
        v16 = v6;
        v17 = 2114;
        v18 = v8;
        v19 = 2048;
        _configCopy2 = _config;
        v21 = 2114;
        v22 = @"BSServiceConnection.m";
        v23 = 1024;
        v24 = 291;
        v25 = 2114;
        v26 = v5;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v9 = v5;
      [v5 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8432CCLL);
    }

    os_unfair_lock_lock((_config + 32));
    v4 = *(_config + 40);
    if (!v4)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"configure called after activation or invalidation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(sel__config_);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138544642;
        v16 = v11;
        v17 = 2114;
        v18 = v13;
        v19 = 2048;
        _configCopy2 = _config;
        v21 = 2114;
        v22 = @"BSServiceConnection.m";
        v23 = 1024;
        v24 = 293;
        v25 = 2114;
        v26 = v10;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v14 = v10;
      [v10 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8433C4);
    }

    os_unfair_lock_lock(v4 + 2);
    *(*(_config + 40) + 168) = 2;
    (*(a2 + 16))(a2, *(_config + 40));
    *(*(_config + 40) + 168) = 0;
    objc_storeStrong((_config + 24), *(*(_config + 40) + 56));
    os_unfair_lock_unlock((*(_config + 40) + 8));

    os_unfair_lock_unlock((_config + 32));
  }
}

+ (id)connectionWithEndpoint:(id)endpoint
{
  v4 = +[BSServiceInitiatingConnectionMultiplexer userInteractiveMultiplexer];
  v5 = [BSServiceConnection _connectionWithEndpoint:endpoint muxer:v4 clientContextBuilder:0];

  return v5;
}

+ (id)_connectionWithEndpoint:(uint64_t)endpoint muxer:(uint64_t)muxer clientContextBuilder:
{
  objc_opt_self();
  service = [a2 service];

  if (service)
  {
    v8 = [BSServiceInitiatingConnection alloc];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__BSServiceConnection__connectionWithEndpoint_muxer_clientContextBuilder___block_invoke;
    v11[3] = &unk_1E75206B8;
    v11[4] = endpoint;
    v11[5] = muxer;
    v9 = [(BSServiceInitiatingConnection *)&v8->super.super.isa _initWithEndpoint:a2 options:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)connectionWithEndpoint:(id)endpoint clientContextBuilder:(id)builder
{
  v6 = +[BSServiceInitiatingConnectionMultiplexer userInteractiveMultiplexer];
  v7 = [BSServiceConnection _connectionWithEndpoint:endpoint muxer:v6 clientContextBuilder:builder];

  return v7;
}

void *__74__BSServiceConnection__connectionWithEndpoint_muxer_clientContextBuilder___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 setMultiplexer:*(a1 + 32)];
  if (*(a1 + 40))
  {

    return [a2 encodeContext:?];
  }

  return result;
}

void __31__BSServiceConnection_activate__block_invoke_255(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = +[BSServiceConnection _currentConnection];
  if (!v14)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(BSXPCServiceConnection *)a2 stateDump];
    v6 = +[BSXPCServiceConnection currentContext];
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AF00] currentThread];
    v9 = [MEMORY[0x1E696AF00] currentThread];
    v10 = [v9 threadDictionary];
    v11 = [v4 stringWithFormat:@"%@: _currentConnection is nil in interrupt handler : context=%@ : name=%@ : t=%@ : tls=%@", v5, v6, v7, v8, v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BSServiceConnection activate]_block_invoke"];
      *buf = 138544130;
      v16 = v12;
      v17 = 2114;
      v18 = @"BSServiceConnection.m";
      v19 = 1024;
      v20 = 483;
      v21 = 2114;
      v22 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v13 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A843A6CLL);
  }

  (*(*(a1 + 40) + 16))();
}

void __31__BSServiceConnection_activate__block_invoke_264(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = +[BSServiceConnection _currentConnection];
  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = BSServiceXPCErrorsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(BSXPCServiceConnection *)a2 stateDump];
      v7 = +[BSXPCServiceConnection currentContext];
      v8 = *(a1 + 32);
      v9 = 138412802;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_error_impl(&dword_19A821000, v5, OS_LOG_TYPE_ERROR, "%@: dropping interrupt handler because _currentConnection is unexpectedly nil (client bug) : context=%@ : name=%@", &v9, 0x20u);
    }
  }
}

- (id)remoteTargetWithAssertionAttributes:(id)attributes
{
  v24 = *MEMORY[0x1E69E9840];
  if (!attributes)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"attributes"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"BSServiceConnection.m";
      v20 = 1024;
      v21 = 551;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A843DBCLL);
  }

  connection = self->_connection;

  return [(BSXPCServiceConnection *)connection remoteTargetWithAssertionAttributes:attributes enforcingLaunchConstraints:0];
}

- (RBSTarget)remoteAssertionTarget
{
  connection = self->_connection;
  if (connection)
  {
    return connection->_remoteAssertionTarget;
  }

  else
  {
    return 0;
  }
}

- (id)createMessageWithCompletion:(id)completion
{
  v4 = [(BSXPCServiceConnection *)self->_connection createMessageWithOptions:?];
  v6 = v4;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v5, completion, 80);
  }

  return v6;
}

- (void)loggingProem
{
  if (self)
  {
    self = [(BSXPCServiceConnection *)self[1] loggingProem];
    v1 = vars8;
  }

  return self;
}

@end