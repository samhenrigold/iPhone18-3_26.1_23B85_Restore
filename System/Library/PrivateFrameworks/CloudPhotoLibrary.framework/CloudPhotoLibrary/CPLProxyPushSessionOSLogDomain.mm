@interface CPLProxyPushSessionOSLogDomain
@end

@implementation CPLProxyPushSessionOSLogDomain

uint64_t ____CPLProxyPushSessionOSLogDomain_block_invoke()
{
  v0 = _CPLOSLogSubsystem();
  v1 = os_log_create(v0, "client.session.push.proxy");
  v2 = __CPLProxyPushSessionOSLogDomain_result;
  __CPLProxyPushSessionOSLogDomain_result = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end