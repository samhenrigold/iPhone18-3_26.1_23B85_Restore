@interface BOMExceptionHandlerKey
@end

@implementation BOMExceptionHandlerKey

void ____BOMExceptionHandlerKey_block_invoke()
{
  if (pthread_key_create(&__BOMExceptionHandlerKey___key, 0))
  {

    _CUILog(4, "__BOMExceptionHandlerKey couldn't pthread_key_create");
  }
}

@end