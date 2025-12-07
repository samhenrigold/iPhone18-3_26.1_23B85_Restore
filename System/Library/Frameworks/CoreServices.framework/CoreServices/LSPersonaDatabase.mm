@interface LSPersonaDatabase
@end

@implementation LSPersonaDatabase

void __36___LSPersonaDatabase_sharedInstance__block_invoke()
{
  v0 = [[_LSPersonaDatabase alloc] initPrivately];
  v1 = +[_LSPersonaDatabase sharedInstance]::sharedInstance;
  +[_LSPersonaDatabase sharedInstance]::sharedInstance = v0;
}

void __64___LSPersonaDatabase_personasWithAttributesForBundleIdentifier___block_invoke(uint64_t a1)
{
  v1 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    __64___LSPersonaDatabase_personasWithAttributesForBundleIdentifier___block_invoke_cold_1(v1);
  }
}

@end