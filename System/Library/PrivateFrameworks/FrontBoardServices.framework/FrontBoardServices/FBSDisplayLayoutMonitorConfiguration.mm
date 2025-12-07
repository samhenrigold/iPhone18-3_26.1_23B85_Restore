@interface FBSDisplayLayoutMonitorConfiguration
+ (id)configurationForDefaultMainDisplayMonitor;
+ (id)configurationWithEndpoint:(id)endpoint;
- (FBSDisplayLayoutMonitorConfiguration)init;
- (id)_initWithEndpoint:(id)endpoint;
@end

@implementation FBSDisplayLayoutMonitorConfiguration

+ (id)configurationForDefaultMainDisplayMonitor
{
  v2 = [FBSDisplayLayoutMonitorConfiguration alloc];
  v3 = [FBSDisplayLayoutMonitor _endpointForDisplayType:0];
  v4 = [(FBSDisplayLayoutMonitorConfiguration *)v2 _initWithEndpoint:v3];

  return v4;
}

- (FBSDisplayLayoutMonitorConfiguration)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on FBSDisplayLayoutMonitorConfiguration"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"FBSDisplayLayoutMonitor.m";
    v16 = 1024;
    v17 = 355;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (id)_initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v9.receiver = self;
  v9.super_class = FBSDisplayLayoutMonitorConfiguration;
  v6 = [(FBSDisplayLayoutMonitorConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, endpoint);
  }

  return v7;
}

+ (id)configurationWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  NSClassFromString(&cfstr_Bsserviceconne.isa);
  if (!endpointCopy)
  {
    [FBSDisplayLayoutMonitorConfiguration configurationWithEndpoint:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSDisplayLayoutMonitorConfiguration configurationWithEndpoint:a2];
  }

  service = [endpointCopy service];
  v6 = +[FBSDisplayLayoutMonitor serviceIdentifier];
  v7 = [service isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    [(FBSDisplayLayoutMonitorConfiguration *)endpointCopy configurationWithEndpoint:a2];
  }

  v8 = [[FBSDisplayLayoutMonitorConfiguration alloc] _initWithEndpoint:endpointCopy];

  return v8;
}

+ (void)configurationWithEndpoint:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSServiceConnectionEndpointClass]"];
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

+ (void)configurationWithEndpoint:(uint64_t)a1 .cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"service identifier of endpoint is mismatched : endpoint=%@", a1];
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

+ (void)configurationWithEndpoint:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
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