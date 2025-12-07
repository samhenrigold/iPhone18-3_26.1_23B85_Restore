@interface SYChange(SYSessionAdditions)
@end

@implementation SYChange(SYSessionAdditions)

+ (void)changeWithChangeObject:()SYSessionAdditions serializer:encodeUsingVersion:.cold.2(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = _SYObfuscate(a2);
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1DF835000, v3, OS_LOG_TYPE_ERROR, "SYChange object %{public}@ does not provide the required objectIdentifier!", &v5, 0xCu);
}

+ (void)changeWithChangeObject:()SYSessionAdditions serializer:encodeUsingVersion:.cold.4(os_log_t log)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = 1;
  _os_log_error_impl(&dword_1DF835000, log, OS_LOG_TYPE_ERROR, "SYChangeSerializer doesn't support -encodeSYChangeForBackwardCompatibility:protocolVersion:, but I'm being asked to encode a change for version %d", v1, 8u);
}

@end