@interface InitiateAuthFailureSysdiagnose
@end

@implementation InitiateAuthFailureSysdiagnose

void __acc_sysdiagnose_InitiateAuthFailureSysdiagnose_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v0 = 136315394;
    v1 = "acc_sysdiagnose_InitiateAuthFailureSysdiagnose_block_invoke";
    v2 = 1024;
    v3 = 57;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d", &v0, 0x12u);
  }

  _acc_sysdiagnose_authFailure(0);
  _isSysdiagnosePending = 0;
}

@end