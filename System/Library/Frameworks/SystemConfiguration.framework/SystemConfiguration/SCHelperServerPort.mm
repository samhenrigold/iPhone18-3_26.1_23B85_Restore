@interface SCHelperServerPort
@end

@implementation SCHelperServerPort

void ____SCHelperServerPort_block_invoke()
{
  __SCHelperServerPort_sb_type = 2;
  if (_SC_isAppleInternal_once_4 != -1)
  {
    ____SCHelperServerPort_block_invoke_cold_1();
  }

  if (!_SC_isAppleInternal_isInternal_4)
  {
    __SCHelperServerPort_sb_type |= *MEMORY[0x1E69E9BD0];
  }
}

void ____SCHelperServerPort_block_invoke_cold_1()
{

  dispatch_once(&_SC_isAppleInternal_once_4, &__block_literal_global_6);
}

@end