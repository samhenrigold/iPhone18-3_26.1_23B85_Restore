@interface SASActivationLaunchActionResponse
- (BOOL)shouldActivate;
- (SASActivationLaunchActionResponse)initWithApplicationBundleIdentifier:(id)identifier shouldActivate:(BOOL)activate;
- (id)bundleIdentifier;
- (id)keyDescriptionForSetting:(unint64_t)setting;
@end

@implementation SASActivationLaunchActionResponse

- (SASActivationLaunchActionResponse)initWithApplicationBundleIdentifier:(id)identifier shouldActivate:(BOOL)activate
{
  activateCopy = activate;
  v6 = MEMORY[0x1E698E700];
  identifierCopy = identifier;
  v8 = objc_alloc_init(v6);
  v9 = [MEMORY[0x1E696AD98] numberWithBool:activateCopy];
  [v8 setObject:v9 forSetting:1];

  [v8 setObject:identifierCopy forSetting:2];
  v14.receiver = self;
  v14.super_class = SASActivationLaunchActionResponse;
  error = [(SASActivationLaunchActionResponse *)&v14 error];
  v13.receiver = self;
  v13.super_class = SASActivationLaunchActionResponse;
  v11 = [(SASActivationLaunchActionResponse *)&v13 initWithInfo:v8 error:error];

  return v11;
}

- (BOOL)shouldActivate
{
  error = [(SASActivationLaunchActionResponse *)self error];

  if (error)
  {
    return 0;
  }

  info = [(SASActivationLaunchActionResponse *)self info];
  v6 = [info objectForSetting:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)bundleIdentifier
{
  error = [(SASActivationLaunchActionResponse *)self error];

  if (error)
  {
    v4 = 0;
  }

  else
  {
    info = [(SASActivationLaunchActionResponse *)self info];
    v6 = [info objectForSetting:2];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v3 = @"Identifier: ";
  if (setting != 2)
  {
    v3 = 0;
  }

  if (setting == 1)
  {
    return @"Should Activate: ";
  }

  else
  {
    return v3;
  }
}

@end