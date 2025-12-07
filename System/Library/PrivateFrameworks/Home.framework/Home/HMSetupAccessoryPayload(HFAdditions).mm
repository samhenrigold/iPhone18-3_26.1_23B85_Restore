@interface HMSetupAccessoryPayload(HFAdditions)
- (void)hf_requiresEthernet;
@end

@implementation HMSetupAccessoryPayload(HFAdditions)

- (void)hf_requiresEthernet
{
  if ([self communicationProtocol] == 2)
  {
    return 0;
  }

  result = [self supportsIP];
  if (result)
  {
    return ([self supportsWAC] ^ 1);
  }

  return result;
}

@end