@interface _FBSDisplayLayoutEndpointServices
+ (id)_checkoutServiceWithEndpoint:(id)endpoint qos:(char)qos;
+ (void)_checkinService:(id)service;
@end

@implementation _FBSDisplayLayoutEndpointServices

+ (id)_checkoutServiceWithEndpoint:(id)endpoint qos:(char)qos
{
  qosCopy = qos;
  endpointCopy = endpoint;
  if (!endpointCopy)
  {
    [_FBSDisplayLayoutEndpointServices _checkoutServiceWithEndpoint:a2 qos:?];
  }

  v7 = endpointCopy;
  v8 = +[FBSDisplayLayoutMonitor serviceIdentifier];
  service = [v7 service];
  v10 = [v8 isEqualToString:service];

  if ((v10 & 1) == 0)
  {
    [_FBSDisplayLayoutEndpointServices _checkoutServiceWithEndpoint:v7 qos:a2];
  }

  if (qosCopy >= 3)
  {
    [_FBSDisplayLayoutEndpointServices _checkoutServiceWithEndpoint:qosCopy qos:a2];
  }

  os_unfair_lock_lock(&__sharedEndpointServicesLock);
  v11 = __sharedEndpointServices;
  if (!__sharedEndpointServices)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v13 = __sharedEndpointServices;
    __sharedEndpointServices = dictionary;

    v11 = __sharedEndpointServices;
  }

  v14 = [v11 objectForKey:v7];
  if (!v14)
  {
    v14 = objc_opt_new();
    [__sharedEndpointServices setObject:v14 forKey:v7];
  }

  ++*&v14[8 * qosCopy + 32];
  v15 = v14 + 8;
  v16 = *&v14[8 * qosCopy + 8];
  if (!v16)
  {
    v16 = [[_FBSDisplayLayoutService alloc] _initWithEndpoint:v7 qos:qosCopy];
    v17 = *&v15[8 * qosCopy];
    *&v15[8 * qosCopy] = v16;
  }

  os_unfair_lock_unlock(&__sharedEndpointServicesLock);

  return v16;
}

+ (void)_checkinService:(id)service
{
  serviceCopy = service;
  if (!serviceCopy)
  {
    [_FBSDisplayLayoutEndpointServices _checkinService:a2];
  }

  v19 = serviceCopy;
  endpoint = [serviceCopy endpoint];
  os_unfair_lock_lock(&__sharedEndpointServicesLock);
  v7 = [__sharedEndpointServices objectForKey:endpoint];
  v8 = v19;
  v9 = v7;
  if (v7)
  {
    v10 = 0;
    v11 = v7 + 8;
    v12 = v7 + 32;
    v13 = 1;
    do
    {
      while (1)
      {
        v14 = *(v12 + 8 * v10);
        if (*(v11 + 8 * v10) == v8)
        {
          break;
        }

        v13 &= v14 == 0;
LABEL_6:
        if (++v10 == 3)
        {
          if (v13)
          {
            [__sharedEndpointServices removeObjectForKey:endpoint];
            if (![__sharedEndpointServices count])
            {
              v17 = __sharedEndpointServices;
              __sharedEndpointServices = 0;
            }
          }

          goto LABEL_16;
        }
      }

      if (!v14)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid refcnt for qos=%i endpoint=%@", v10, endpoint];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [(_FBSDisplayLayoutEndpointServices *)a2 _checkinService:self];
        }

        [v18 UTF8String];
        _bs_set_crash_log_message();
      }

      v15 = v14 - 1;
      *(v12 + 8 * v10) = v15;
      if (!v15)
      {
        [v8 invalidate];
        v16 = *(v11 + 8 * v10);
        *(v11 + 8 * v10) = 0;

        v8 = v19;
        goto LABEL_6;
      }

      v13 = 0;
      ++v10;
    }

    while (v10 != 3);
  }

LABEL_16:
  os_unfair_lock_unlock(&__sharedEndpointServicesLock);
}

+ (void)_checkoutServiceWithEndpoint:(uint64_t)a1 qos:(char *)a2 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"endpoint's service is unexpected : %@", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v6 = OUTLINED_FUNCTION_12(v4, v5);
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)_checkoutServiceWithEndpoint:(char)a1 qos:(char *)a2 .cold.2(char a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid QOS %d", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v6 = OUTLINED_FUNCTION_12(v4, v5);
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)_checkoutServiceWithEndpoint:(char *)a1 qos:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"endpoint"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)_checkinService:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v2 = NSStringFromSelector(a1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  LODWORD(v10) = 138544642;
  *(&v10 + 4) = v2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, DWORD2(v10));
}

+ (void)_checkinService:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"service"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end