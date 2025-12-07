@interface CPLStoreOSLogDomain
@end

@implementation CPLStoreOSLogDomain

uint64_t ____CPLStoreOSLogDomain_block_invoke()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.store");
  v1 = __CPLStoreOSLogDomain_result;
  __CPLStoreOSLogDomain_result = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLStoreOSLogDomain_block_invoke_3048()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.store");
  v1 = __CPLStoreOSLogDomain_result_3046;
  __CPLStoreOSLogDomain_result_3046 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end