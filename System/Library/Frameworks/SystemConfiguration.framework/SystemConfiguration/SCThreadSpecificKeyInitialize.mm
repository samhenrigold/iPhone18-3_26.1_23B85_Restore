@interface SCThreadSpecificKeyInitialize
@end

@implementation SCThreadSpecificKeyInitialize

uint64_t ____SCThreadSpecificKeyInitialize_block_invoke()
{

  return pthread_key_create(&tsDataKey, __SCThreadSpecificDataFinalize);
}

@end