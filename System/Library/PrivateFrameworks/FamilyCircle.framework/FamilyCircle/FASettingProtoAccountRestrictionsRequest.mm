@interface FASettingProtoAccountRestrictionsRequest
- (void)setRestrictionsWithCompletion:(id)completion;
@end

@implementation FASettingProtoAccountRestrictionsRequest

- (void)setRestrictionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:&__block_literal_global_15];
  [v5 setRestrictionsForProtoAccountWithCompletion:completionCopy];
}

void __74__FASettingProtoAccountRestrictionsRequest_setRestrictionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _FAAgeAttestationLogSystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __74__FASettingProtoAccountRestrictionsRequest_setRestrictionsWithCompletion___block_invoke_cold_1(v2, v3);
  }
}

void __74__FASettingProtoAccountRestrictionsRequest_setRestrictionsWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_ERROR, "Failed to create a connection with error: %@", &v2, 0xCu);
}

@end