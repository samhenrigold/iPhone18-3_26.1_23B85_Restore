@interface HMFLocationAuthorizationMarkOperation
@end

@implementation HMFLocationAuthorizationMarkOperation

uint64_t __54____HMFLocationAuthorizationMarkOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Location.Authorization.Mark", @"com.apple.HMFoundation");
  v1 = qword_280AFC548;
  qword_280AFC548 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end