@interface CPLProxyPullSessionOSLogDomain
@end

@implementation CPLProxyPullSessionOSLogDomain

uint64_t ____CPLProxyPullSessionOSLogDomain_block_invoke()
{
  v0 = _CPLOSLogSubsystem();
  v1 = os_log_create(v0, "client.session.pull.proxy");
  v2 = __CPLProxyPullSessionOSLogDomain_result;
  __CPLProxyPullSessionOSLogDomain_result = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end