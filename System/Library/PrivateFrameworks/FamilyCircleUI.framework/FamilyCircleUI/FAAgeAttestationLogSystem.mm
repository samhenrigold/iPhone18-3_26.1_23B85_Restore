@interface FAAgeAttestationLogSystem
@end

@implementation FAAgeAttestationLogSystem

uint64_t ___FAAgeAttestationLogSystem_block_invoke()
{
  v0 = os_log_create("com.apple.family", "ageAttestation");
  v1 = _FAAgeAttestationLogSystem_log;
  _FAAgeAttestationLogSystem_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end