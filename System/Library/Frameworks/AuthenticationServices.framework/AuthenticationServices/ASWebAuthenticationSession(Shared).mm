@interface ASWebAuthenticationSession(Shared)
@end

@implementation ASWebAuthenticationSession(Shared)

- (void)_validateAdditionalHeaderFieldsDryRun:()Shared .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1B1C8D000, a2, OS_LOG_TYPE_ERROR, "Cannot start ASWebAuthenticationSession: %{public}@", &v2, 0xCu);
}

@end