@interface LA
@end

@implementation LA

uint64_t __LA_LOG_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = LALogForCategory();
  v3 = LA_LOG_log;
  LA_LOG_log = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __LA_LOG_block_invoke_0(uint64_t a1, uint64_t a2)
{
  v2 = LALogForCategory();
  v3 = LA_LOG_log_0;
  LA_LOG_log_0 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __LA_LOG_block_invoke_1(uint64_t a1, uint64_t a2)
{
  v2 = LALogForCategory();
  v3 = LA_LOG_log_1;
  LA_LOG_log_1 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __LA_LOG_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = LALogForCategory();
  v3 = LA_LOG_log_2;
  LA_LOG_log_2 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __LA_LOG_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = LALogForCategory();
  v3 = LA_LOG_log_3;
  LA_LOG_log_3 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __LA_LOG_laabio_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "laabio");
  v1 = LA_LOG_laabio_log;
  LA_LOG_laabio_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __LA_LOG_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = LALogForCategory();
  v3 = LA_LOG_log_4;
  LA_LOG_log_4 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __LA_LOG_INTERACTIVE_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = LALogForCategory();
  v3 = LA_LOG_INTERACTIVE_log;
  LA_LOG_INTERACTIVE_log = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __LA_LOG_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = LALogForCategory();
  v3 = LA_LOG_log_5;
  LA_LOG_log_5 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __LA_LOG_block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = LALogForCategory();
  v3 = LA_LOG_log_6;
  LA_LOG_log_6 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __LA_LOG_coreauthd_client_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "coreauthd_client");
  v1 = LA_LOG_coreauthd_client_log;
  LA_LOG_coreauthd_client_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end