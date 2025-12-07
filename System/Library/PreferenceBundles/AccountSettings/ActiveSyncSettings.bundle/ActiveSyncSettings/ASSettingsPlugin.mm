@interface ASSettingsPlugin
- (Class)controllerClassForCreatingAccountWithType:(id)type;
- (Class)viewControllerClassForCreatingAccountWithType:(id)type;
- (Class)viewControllerClassForViewingAccount:(id)account;
- (id)supportedAccountTypeIdentifiers;
@end

@implementation ASSettingsPlugin

- (id)supportedAccountTypeIdentifiers
{
  v4[0] = ACAccountTypeIdentifierExchange;
  v4[1] = ACAccountTypeIdentifierHotmail;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (Class)viewControllerClassForCreatingAccountWithType:(id)type
{
  typeCopy = type;
  if (([typeCopy isEqualToString:ACAccountTypeIdentifierExchange] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", ACAccountTypeIdentifierHotmail))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Class)viewControllerClassForViewingAccount:(id)account
{
  accountCopy = account;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v6 = [identifier isEqualToString:ACAccountTypeIdentifierExchange];

  if ((v6 & 1) != 0 || ([accountCopy accountType], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", ACAccountTypeIdentifierHotmail), v8, v7, v9))
  {
    v10 = objc_opt_class();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (Class)controllerClassForCreatingAccountWithType:(id)type
{
  if ([type isEqualToString:ACAccountTypeIdentifierHotmail])
  {
    v3 = objc_opt_class();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end