@interface TUSenderIdentityClient(Emergency)
@end

@implementation TUSenderIdentityClient(Emergency)

- (void)shouldShowEmergencyCallbackModeAlertForSenderIdentityUUID:()Emergency .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1956FD000, log, OS_LOG_TYPE_ERROR, "Could not determine whether emergency callback mode warning should be presented due to error %@ for sender identity UUID %@.", &v3, 0x16u);
}

@end