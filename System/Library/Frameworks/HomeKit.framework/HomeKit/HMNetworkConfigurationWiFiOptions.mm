@interface HMNetworkConfigurationWiFiOptions
- (HMNetworkConfigurationWiFiOptions)initWithCredentialType:(int64_t)type;
- (id)description;
@end

@implementation HMNetworkConfigurationWiFiOptions

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  shortDescription = [objc_opt_class() shortDescription];
  v5 = HMAccessoryWiFiCredentialTypeAsString(self->_credentialType);
  v6 = HMFBooleanToString();
  v7 = [v3 stringWithFormat:@"<%@ CredentialType = %@, Rotate = %@>", shortDescription, v5, v6];

  return v7;
}

- (HMNetworkConfigurationWiFiOptions)initWithCredentialType:(int64_t)type
{
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v7.receiver = self;
    v7.super_class = HMNetworkConfigurationWiFiOptions;
    v4 = [(HMNetworkConfigurationWiFiOptions *)&v7 init];
    if (v4)
    {
      v4->_credentialType = type;
    }

    self = v4;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end