@interface CLFPhoneFaceTimeSettings
- (BOOL)dialerKeypadEnabled;
- (id)legacyOutgoingCommunicationLimit;
- (void)migrateCommunicationLimitsIfNecessary;
- (void)setLegacyDialerKeypadEnabled:(BOOL)enabled;
@end

@implementation CLFPhoneFaceTimeSettings

uint64_t __56__CLFPhoneFaceTimeSettings_GeneratedCode_sharedInstance__block_invoke()
{
  sharedInstance_SharedSettings_0 = objc_alloc_init(CLFPhoneFaceTimeSettings);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)dialerKeypadEnabled
{
  outgoingCommunicationLimit = [(CLFBaseCommunicationLimitSettings *)self outgoingCommunicationLimit];
  v3 = [outgoingCommunicationLimit isEqualToString:@"everyone"];

  return v3;
}

- (void)setLegacyDialerKeypadEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"DialerKeypadEnabled"];
}

- (id)legacyOutgoingCommunicationLimit
{
  legacyDialerKeypadEnabled = [(CLFPhoneFaceTimeSettings *)self legacyDialerKeypadEnabled];
  v3 = &CLFCommunicationLimitEveryone;
  if (!legacyDialerKeypadEnabled)
  {
    v3 = &CLFCommunicationLimitSelectedContacts;
  }

  v4 = *v3;

  return v4;
}

- (void)migrateCommunicationLimitsIfNecessary
{
  v3.receiver = self;
  v3.super_class = CLFPhoneFaceTimeSettings;
  [(CLFBaseCommunicationLimitSettings *)&v3 migrateCommunicationLimitsIfNecessary];
  [(AXBaseSettings *)self setValue:0 forPreferenceKey:@"DialerKeypadEnabled"];
}

@end