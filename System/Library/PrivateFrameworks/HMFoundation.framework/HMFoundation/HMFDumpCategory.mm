@interface HMFDumpCategory
+ (id)logCategory;
@end

@implementation HMFDumpCategory

+ (id)logCategory
{
  if (_MergedGlobals_60 != -1)
  {
    dispatch_once(&_MergedGlobals_60, &__block_literal_global_8);
  }

  v3 = qword_280AFC5D8;

  return v3;
}

uint64_t __30__HMFDumpCategory_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"DumpState", @"com.apple.HMFoundation");
  v1 = qword_280AFC5D8;
  qword_280AFC5D8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end