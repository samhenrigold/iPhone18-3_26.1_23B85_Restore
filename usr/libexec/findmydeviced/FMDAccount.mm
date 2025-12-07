@interface FMDAccount
- (NSString)apsEnvironmentConstant;
- (void)copyInfoFromAccount:(id)account;
- (void)setApsEnvironment:(id)environment;
@end

@implementation FMDAccount

- (NSString)apsEnvironmentConstant
{
  apsEnvironment = [(FMDAccount *)self apsEnvironment];
  v3 = [FMAPSHandler constantForEnvironmentString:apsEnvironment];

  return v3;
}

- (void)setApsEnvironment:(id)environment
{
  environmentCopy = environment;
  objc_storeStrong(&self->_apsEnvironment, environment);
  v6 = +[FMSystemInfo sharedInstance];
  isInternalBuild = [v6 isInternalBuild];

  if (isInternalBuild)
  {
    v8 = [FMPreferencesUtil stringForKey:@"ApsEnvOverride" inDomain:kFMDNotBackedUpPrefDomain];
    v9 = v8;
    if (v8)
    {
      v10 = sub_100002880(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding aps environment to %@", &v11, 0xCu);
      }

      objc_storeStrong(&self->_apsEnvironment, v9);
    }
  }
}

- (void)copyInfoFromAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy isMemberOfClass:objc_opt_class()])
  {
    username = [accountCopy username];
    [(FMDAccount *)self setUsername:username];

    serverHost = [accountCopy serverHost];
    [(FMDAccount *)self setServerHost:serverHost];

    serverProtocolScheme = [accountCopy serverProtocolScheme];
    [(FMDAccount *)self setServerProtocolScheme:serverProtocolScheme];

    apsEnvironment = [accountCopy apsEnvironment];
    [(FMDAccount *)self setApsEnvironment:apsEnvironment];

    versionHistory = [accountCopy versionHistory];
    [(FMDAccount *)self setVersionHistory:versionHistory];

    accountAddTime = [accountCopy accountAddTime];
    [(FMDAccount *)self setAccountAddTime:accountAddTime];
  }
}

@end