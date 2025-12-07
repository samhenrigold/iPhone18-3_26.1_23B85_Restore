@interface CoreRCXPCService(Private)
@end

@implementation CoreRCXPCService(Private)

- (void)queryLoggingAsync:()Private .cold.2(void *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6773 userInfo:0];
  *a1 = result;
  return result;
}

@end