@interface TRDeviceSetupGeneralSetupAction
- (BOOL)isDiagnosticsEnabled;
- (BOOL)rememberPassword;
- (NSString)countryCode;
- (NSString)homeSharingGroupID;
- (NSString)homeSharingID;
- (NSString)language;
- (TRDeviceSetupGeneralSetupAction)init;
- (TRDeviceSetupGeneralSetupAction)initWithCountryCode:(id)code language:(id)language homeSharingID:(id)d homeSharingGroupID:(id)iD isDiagnosticsEnabled:(BOOL)enabled rememberPassword:(BOOL)password;
@end

@implementation TRDeviceSetupGeneralSetupAction

- (TRDeviceSetupGeneralSetupAction)init
{
  v3.receiver = self;
  v3.super_class = TRDeviceSetupGeneralSetupAction;
  return [(TRDeviceSetupAction *)&v3 _initWithActionType:@"setup" parameters:0];
}

- (TRDeviceSetupGeneralSetupAction)initWithCountryCode:(id)code language:(id)language homeSharingID:(id)d homeSharingGroupID:(id)iD isDiagnosticsEnabled:(BOOL)enabled rememberPassword:(BOOL)password
{
  passwordCopy = password;
  enabledCopy = enabled;
  codeCopy = code;
  languageCopy = language;
  dCopy = d;
  iDCopy = iD;
  v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v19 = v18;
  if (codeCopy)
  {
    [v18 setObject:codeCopy forKeyedSubscript:@"c"];
  }

  if (languageCopy)
  {
    [v19 setObject:languageCopy forKeyedSubscript:@"l"];
  }

  if (dCopy)
  {
    [v19 setObject:dCopy forKeyedSubscript:@"ha"];
  }

  if (iDCopy)
  {
    [v19 setObject:iDCopy forKeyedSubscript:@"hg"];
  }

  v20 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  [v19 setObject:v20 forKeyedSubscript:@"di"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:passwordCopy];
  [v19 setObject:v21 forKeyedSubscript:@"rp"];

  v24.receiver = self;
  v24.super_class = TRDeviceSetupGeneralSetupAction;
  v22 = [(TRDeviceSetupAction *)&v24 _initWithActionType:@"setup" parameters:v19];

  return v22;
}

- (NSString)countryCode
{
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"c"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)language
{
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"l"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)homeSharingID
{
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"ha"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)homeSharingGroupID
{
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"hg"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)isDiagnosticsEnabled
{
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"a"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

- (BOOL)rememberPassword
{
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"a"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

@end