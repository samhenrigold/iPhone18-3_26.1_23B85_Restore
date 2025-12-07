@interface Siri
@end

@implementation Siri

void __Siri_log_block_invoke()
{
  v2 = [@"Siri" stringByReplacingOccurrencesOfString:@"_" withString:@"."];
  v0 = HMFCreateOSLogHandle();
  v1 = Siri_log__hmf_once_v1;
  Siri_log__hmf_once_v1 = v0;
}

@end