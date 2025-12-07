@interface NSURL
@end

@implementation NSURL

uint64_t __48__NSURL_StoreCacheAdditions__wf_inMemoryAddress__block_invoke()
{
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"memory://"];
  v1 = wf__inMemoryAddress;
  wf__inMemoryAddress = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end