@interface BOMExceptionMessageString
@end

@implementation BOMExceptionMessageString

void ____BOMExceptionMessageString_block_invoke()
{
  if (pthread_key_create(&__BOMExceptionMessageString___key, MEMORY[0x1E69E9B38]))
  {

    _CUILog(4, "__BOMExceptionMessageString couldn't pthread_key_create");
  }
}

@end