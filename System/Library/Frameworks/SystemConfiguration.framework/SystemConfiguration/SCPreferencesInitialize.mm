@interface SCPreferencesInitialize
@end

@implementation SCPreferencesInitialize

uint64_t ____SCPreferencesInitialize_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kSCPreferencesTypeID = result;
  return result;
}

@end