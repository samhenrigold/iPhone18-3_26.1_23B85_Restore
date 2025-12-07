@interface LADefaultServiceSession
- (LADefaultServiceSession)initWithService:(id)service serviceType:(id)type client:(id)client;
- (void)dealloc;
@end

@implementation LADefaultServiceSession

- (void)dealloc
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1DF403000, v0, OS_LOG_TYPE_DEBUG, "Deallocated session service: %@ clientID: %@", v1, 0x16u);
}

- (LADefaultServiceSession)initWithService:(id)service serviceType:(id)type client:(id)client
{
  serviceCopy = service;
  typeCopy = type;
  clientCopy = client;
  v18.receiver = self;
  v18.super_class = LADefaultServiceSession;
  v12 = [(LADefaultServiceSession *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_service, service);
    objc_storeStrong(&v13->_serviceType, type);
    objc_storeStrong(&v13->_clientID, client);
    v14 = objc_opt_new();
    sessionID = v13->_sessionID;
    v13->_sessionID = v14;

    v16 = LACLogService();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [LADefaultServiceSession initWithService:serviceType:client:];
    }
  }

  return v13;
}

- (void)initWithService:serviceType:client:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end