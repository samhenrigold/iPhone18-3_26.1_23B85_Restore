@interface HMFCFHTTPServer
@end

@implementation HMFCFHTTPServer

uint64_t __31___HMFCFHTTPServer_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Networking.HTTP.Server.Internal", @"com.apple.HMFoundation");
  v1 = qword_280AFC238;
  qword_280AFC238 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end