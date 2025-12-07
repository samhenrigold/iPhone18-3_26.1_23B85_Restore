@interface WLKManagedConfigurationInterface
+ (void)setTVAppAllowed:(BOOL)allowed silent:(BOOL)silent;
@end

@implementation WLKManagedConfigurationInterface

+ (void)setTVAppAllowed:(BOOL)allowed silent:(BOOL)silent
{
  allowedCopy = allowed;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v6 = *MEMORY[0x277D26070];
  v7 = [mEMORY[0x277D262A0] userBoolValueForSetting:*MEMORY[0x277D26070]];

  if (allowedCopy)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (v7 == v8)
  {
    NSLog(&cfstr_Wlkmanagedconf.isa);
    mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0]2 removeBoolSetting:v6];
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v10 MCSetBoolRestriction:v6 value:allowedCopy];
  mEMORY[0x277D262A0]3 = [MEMORY[0x277D262A0] sharedConnection];
  v14 = 0;
  v12 = [mEMORY[0x277D262A0]3 applyRestrictionDictionary:v10 clientType:@"com.apple.WatchListKit.isTVAllowed" clientUUID:@"com.apple.WatchListKit.isTVAllowed" localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v14];
  v13 = v14;

  if ((v12 & 1) == 0)
  {
    NSLog(&cfstr_Wlkmanagedconf_0.isa, v13);
  }
}

@end