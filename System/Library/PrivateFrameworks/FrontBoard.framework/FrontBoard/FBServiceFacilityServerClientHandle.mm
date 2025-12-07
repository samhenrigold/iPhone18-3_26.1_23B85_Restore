@interface FBServiceFacilityServerClientHandle
- (FBServiceFacilityServerClientHandle)initWithFacilityID:(id)d connection:(id)connection;
- (NSString)description;
- (void)setContext:(id)context;
@end

@implementation FBServiceFacilityServerClientHandle

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_facilityID withName:0 skipIfNil:1];
  v5 = FBSProcessPrettyDescription();
  v6 = [v3 appendObject:@"remote" withName:v5 skipIfNil:1];

  build = [v3 build];

  return build;
}

- (FBServiceFacilityServerClientHandle)initWithFacilityID:(id)d connection:(id)connection
{
  dCopy = d;
  connectionCopy = connection;
  if (!dCopy)
  {
    [FBServiceFacilityServerClientHandle initWithFacilityID:a2 connection:self];
  }

  v9 = connectionCopy;
  if (!connectionCopy)
  {
    [FBServiceFacilityServerClientHandle initWithFacilityID:a2 connection:self];
  }

  v22.receiver = self;
  v22.super_class = FBServiceFacilityServerClientHandle;
  v10 = [(FBServiceFacilityServerClientHandle *)&v22 init];
  if (v10)
  {
    v11 = [dCopy copy];
    facilityID = v10->_facilityID;
    v10->_facilityID = v11;

    objc_storeStrong(&v10->_connection, connection);
    remoteProcess = [v9 remoteProcess];
    processHandle = v10->_processHandle;
    v10->_processHandle = remoteProcess;

    v15 = +[FBProcessManager sharedInstance];
    v16 = objc_msgSend_auditToken(v10->_processHandle);
    v17 = v16;
    if (v16)
    {
      objc_msgSend_realToken(v16);
    }

    else
    {
      memset(v21, 0, sizeof(v21));
    }

    v18 = [v15 registerProcessForAuditToken:v21];
    process = v10->_process;
    v10->_process = v18;
  }

  return v10;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  context = self->_context;
  if (context != contextCopy)
  {
    v7 = contextCopy;
    [(FBSServiceFacilityClientContext *)context setClientHandle:0];
    objc_storeStrong(&self->_context, context);
    [(FBSServiceFacilityClientContext *)self->_context setClientHandle:self];
    contextCopy = v7;
  }
}

- (void)initWithFacilityID:(const char *)a1 connection:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"connection"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_1();
    v9 = @"FBServiceFacilityServerClientHandle.m";
    v10 = 1024;
    v11 = 30;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithFacilityID:(const char *)a1 connection:(uint64_t)a2 .cold.2(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"facilityID"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_1();
    v9 = @"FBServiceFacilityServerClientHandle.m";
    v10 = 1024;
    v11 = 29;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end