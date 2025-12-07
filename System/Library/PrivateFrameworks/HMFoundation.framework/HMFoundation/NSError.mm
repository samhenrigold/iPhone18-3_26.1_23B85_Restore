@interface NSError
@end

@implementation NSError

uint64_t __40__NSError_HMFError__hmfUnspecifiedError__block_invoke()
{
  v0 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
  v1 = qword_280AFC5C8;
  qword_280AFC5C8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end