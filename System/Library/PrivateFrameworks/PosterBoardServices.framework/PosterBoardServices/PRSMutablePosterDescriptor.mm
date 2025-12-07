@interface PRSMutablePosterDescriptor
+ (id)mutableDescriptorWithIdentifier:(id)identifier;
+ (id)mutableDescriptorWithIdentifier:(id)identifier role:(id)role;
- (BOOL)storeUserInfo:(id)info error:(id *)error;
@end

@implementation PRSMutablePosterDescriptor

+ (id)mutableDescriptorWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = PFPosterRoleDefaultRoleForCurrentExtensionProcess();
  v6 = [self mutableDescriptorWithIdentifier:identifierCopy role:v5];

  return v6;
}

+ (id)mutableDescriptorWithIdentifier:(id)identifier role:(id)role
{
  identifierCopy = identifier;
  roleCopy = role;
  v9 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v9)
  {
    [PRSMutablePosterDescriptor mutableDescriptorWithIdentifier:a2 role:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSMutablePosterDescriptor mutableDescriptorWithIdentifier:a2 role:?];
  }

  if ((PFPosterRoleIsValid() & 1) == 0)
  {
    [(PRSMutablePosterDescriptor *)roleCopy mutableDescriptorWithIdentifier:a2 role:self];
  }

  v10 = [MEMORY[0x1E69C5178] temporaryDescriptorPathWithIdentifier:v9 role:roleCopy];
  v11 = [(PRSPosterDescriptor *)[PRSMutablePosterDescriptor alloc] _initWithPath:v10];
  [v10 invalidate];

  return v11;
}

- (BOOL)storeUserInfo:(id)info error:(id *)error
{
  infoCopy = info;
  _path = [(PRSPosterDescriptor *)self _path];
  LOBYTE(error) = [_path storeUserInfo:infoCopy error:error];

  return error;
}

+ (void)mutableDescriptorWithIdentifier:(char *)a1 role:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)mutableDescriptorWithIdentifier:(uint64_t)a3 role:.cold.2(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = PFPosterRolesSupportedForCurrentDeviceClass();
  v7 = [v5 stringWithFormat:@"invalid role: %@, supported roles for device class: %@", a1, v6];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = objc_opt_class();
    v17 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, v15, v16);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)mutableDescriptorWithIdentifier:(char *)a1 role:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end