@interface CLFBaseCommunicationLimitSettings(Additions)
@end

@implementation CLFBaseCommunicationLimitSettings(Additions)

- (void)setOutgoingCommunicationLimit:()Additions .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 incomingCommunicationLimit];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_fault_impl(&dword_1E115B000, a3, OS_LOG_TYPE_FAULT, "Attempted to set outgoing communication limit to %@, which was less restrictive than incoming communication limit %@.", &v6, 0x16u);
}

@end