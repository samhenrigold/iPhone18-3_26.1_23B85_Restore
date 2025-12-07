@interface BOMExceptionMessageString
@end

@implementation BOMExceptionMessageString

void ____BOMExceptionMessageString_block_invoke()
{
  if (pthread_key_create(&__BOMExceptionMessageString___key, &_free))
  {

    _CUILog(4, "__BOMExceptionMessageString couldn't pthread_key_create");
  }
}

@end