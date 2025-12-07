@interface FMFAccount
- (id)description;
- (void)applyPropertiesFromACAccount:(id)account includingTokens:(BOOL)tokens;
- (void)copyInfoFromAccount:(id)account;
@end

@implementation FMFAccount

- (void)copyInfoFromAccount:(id)account
{
  accountCopy = account;
  v13.receiver = self;
  v13.super_class = FMFAccount;
  [(FindBaseAccount *)&v13 copyInfoFromAccount:accountCopy];
  if ([accountCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = accountCopy;
    dsid = [v5 dsid];
    [(FMFAccount *)self setDsid:dsid];

    appServerHost = [v5 appServerHost];
    [(FMFAccount *)self setAppServerHost:appServerHost];

    appAuthToken = [v5 appAuthToken];
    [(FMFAccount *)self setAppAuthToken:appAuthToken];

    internalAuthToken = [v5 internalAuthToken];

    if (internalAuthToken)
    {
      internalAuthToken2 = [v5 internalAuthToken];
      [(FMFAccount *)self setInternalAuthToken:internalAuthToken2];
    }

    additionalInfo = [v5 additionalInfo];
    [(FMFAccount *)self setAdditionalInfo:additionalInfo];

    -[FMFAccount setAppAuthTokenStatus:](self, "setAppAuthTokenStatus:", [v5 appAuthTokenStatus]);
    -[FMFAccount setInternalAuthTokenStatus:](self, "setInternalAuthTokenStatus:", [v5 internalAuthTokenStatus]);
    lastMessageDisplayedTimestamp = [v5 lastMessageDisplayedTimestamp];
    [(FMFAccount *)self setLastMessageDisplayedTimestamp:lastMessageDisplayedTimestamp];
  }
}

- (id)description
{
  dsid = [(FMFAccount *)self dsid];
  username = [(FindBaseAccount *)self username];
  appAuthToken = [(FMFAccount *)self appAuthToken];
  if (appAuthToken)
  {
    v3 = @"(not-nil)";
  }

  else
  {
    v3 = @"(nil)";
  }

  v15 = v3;
  appAuthTokenStatus = [(FMFAccount *)self appAuthTokenStatus];
  internalAuthToken = [(FMFAccount *)self internalAuthToken];
  if (internalAuthToken)
  {
    v6 = @"(not-nil)";
  }

  else
  {
    v6 = @"(nil)";
  }

  internalAuthTokenStatus = [(FMFAccount *)self internalAuthTokenStatus];
  serverHost = [(FindBaseAccount *)self serverHost];
  appServerHost = [(FMFAccount *)self appServerHost];
  serverProtocolScheme = [(FindBaseAccount *)self serverProtocolScheme];
  apsEnvironment = [(FindBaseAccount *)self apsEnvironment];
  additionalInfo = [(FMFAccount *)self additionalInfo];
  v13 = [NSString stringWithFormat:@"FMFAccount(0x%lx) %@, %@, %@, %ld, %@, %ld, %@, %@, %@, %@, %@", self, dsid, username, v15, appAuthTokenStatus, v6, internalAuthTokenStatus, serverHost, appServerHost, serverProtocolScheme, apsEnvironment, additionalInfo];

  return v13;
}

- (void)applyPropertiesFromACAccount:(id)account includingTokens:(BOOL)tokens
{
  tokensCopy = tokens;
  v14 = [account fmfAccountInfoWithTokens:tokens];
  v6 = [v14 objectForKeyedSubscript:@"username"];
  [(FindBaseAccount *)self setUsername:v6];

  v7 = [v14 objectForKeyedSubscript:@"dsid"];
  [(FMFAccount *)self setDsid:v7];

  if (tokensCopy)
  {
    v8 = [v14 objectForKeyedSubscript:@"appToken"];
    [(FMFAccount *)self setAppAuthToken:v8];

    v9 = [v14 objectForKeyedSubscript:@"internalToken"];
    [(FMFAccount *)self setInternalAuthToken:v9];
  }

  v10 = [v14 objectForKeyedSubscript:@"appHostname"];
  [(FMFAccount *)self setAppServerHost:v10];

  v11 = [v14 objectForKeyedSubscript:@"hostname"];
  [(FindBaseAccount *)self setServerHost:v11];

  v12 = [v14 objectForKeyedSubscript:@"scheme"];
  [(FindBaseAccount *)self setServerProtocolScheme:v12];

  v13 = [v14 objectForKeyedSubscript:@"apsEnv"];
  [(FindBaseAccount *)self setApsEnvironment:v13];
}

@end