@interface PLProcessCPUWrapper
+ (id)start;
@end

@implementation PLProcessCPUWrapper

+ (id)start
{
  if (+[PLProcessCPUWrapper start]::oncePLProcessCpuWrapper != -1)
  {
    +[PLProcessCPUWrapper start];
  }

  v3 = +[PLProcessCPUWrapper start]::sharedPLProcessCpuWrapper;

  return v3;
}

uint64_t __28__PLProcessCPUWrapper_start__block_invoke()
{
  v0 = objc_alloc_init(PLProcessCPUWrapper);
  +[PLProcessCPUWrapper start]::sharedPLProcessCpuWrapper = v0;

  return MEMORY[0x2821F96F8](v0);
}

@end