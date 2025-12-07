@interface SBSHomeScreenIconStyleConfiguration(SBHUtilities)
- (SBHIconImageStyleConfiguration)sbh_iconImageStyleConfiguration;
- (void)sbh_configurationType;
- (void)sbh_configurationVariant;
@end

@implementation SBSHomeScreenIconStyleConfiguration(SBHUtilities)

- (SBHIconImageStyleConfiguration)sbh_iconImageStyleConfiguration
{
  sbh_configurationType = [self sbh_configurationType];
  sbh_configurationVariant = [self sbh_configurationVariant];
  tintColor = [self tintColor];
  uIColor = [tintColor UIColor];

  v6 = [[SBHIconImageStyleConfiguration alloc] initWithConfigurationType:sbh_configurationType variant:sbh_configurationVariant tintColor:uIColor];

  return v6;
}

- (void)sbh_configurationVariant
{
  result = [self variant];
  if (result != 2)
  {
    return (result == 1);
  }

  return result;
}

- (void)sbh_configurationType
{
  result = [self updatedConfigurationType];
  if (result != 2)
  {
    return (result == 1);
  }

  return result;
}

@end