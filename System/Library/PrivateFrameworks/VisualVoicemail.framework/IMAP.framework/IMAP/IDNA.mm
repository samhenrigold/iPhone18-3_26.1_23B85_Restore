@interface IDNA
@end

@implementation IDNA

uint64_t __vf_IDNA_log_block_invoke()
{
  v0 = os_log_create("com.apple.voicemail", "IDNA");
  v1 = vf_IDNA_log_sLog;
  vf_IDNA_log_sLog = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end