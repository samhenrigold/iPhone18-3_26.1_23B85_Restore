@interface MSDCDPStateController
- (BOOL)isCDPEnabled;
- (BOOL)isCDPManateeAvailable;
- (BOOL)isRecoveryKeyAvailable:(id *)available;
- (MSDCDPStateController)initWithAuthenticationResults:(id)results;
- (MSDCDPStateController)initWithCDPContext:(id)context;
- (id)generateRecoveryKeyWithError:(id *)error;
- (id)initForPrimaryiCloudAccount;
- (void)dealloc;
@end

@implementation MSDCDPStateController

- (id)initForPrimaryiCloudAccount
{
  v3 = +[CDPContext contextForPrimaryAccount];
  if (v3)
  {
    self = [(MSDCDPStateController *)self initWithCDPContext:v3];
    selfCopy = self;
  }

  else
  {
    v5 = sub_100063A54(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5728(v5);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (MSDCDPStateController)initWithAuthenticationResults:(id)results
{
  resultsCopy = results;
  v5 = [[CDPContext alloc] initWithAuthenticationResults:resultsCopy];

  v6 = [(MSDCDPStateController *)self initWithCDPContext:v5];
  return v6;
}

- (MSDCDPStateController)initWithCDPContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = MSDCDPStateController;
  v5 = [(MSDCDPStateController *)&v8 init];
  if (v5)
  {
    v6 = [[CDPStateController alloc] initWithContext:contextCopy];
    [(MSDCDPStateController *)v5 setCdpController:v6];
  }

  return v5;
}

- (void)dealloc
{
  cdpController = [(MSDCDPStateController *)self cdpController];
  [cdpController invalidate];

  v4.receiver = self;
  v4.super_class = MSDCDPStateController;
  [(MSDCDPStateController *)&v4 dealloc];
}

- (BOOL)isCDPEnabled
{
  cdpController = [(MSDCDPStateController *)self cdpController];
  context = [cdpController context];
  dsid = [context dsid];
  stringValue = [dsid stringValue];

  if (stringValue)
  {
    v7 = [CDPAccount isICDPEnabledForDSID:stringValue];
  }

  else
  {
    v8 = sub_100063A54(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E576C(v8);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)isCDPManateeAvailable
{
  cdpController = [(MSDCDPStateController *)self cdpController];
  v9 = 0;
  v3 = [cdpController isManateeAvailable:&v9];
  v4 = v9;

  if ((v3 & 1) == 0)
  {
    v6 = sub_100063A54(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v4 localizedDescription];
      *buf = 138543362;
      v11 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CDP manatee is NOT available because: %{public}@", buf, 0xCu);
    }
  }

  return v3;
}

- (BOOL)isRecoveryKeyAvailable:(id *)available
{
  cdpController = [(MSDCDPStateController *)self cdpController];
  v11 = 0;
  v5 = [cdpController isRecoveryKeyAvailableWithError:&v11];
  v6 = v11;

  if (v6)
  {
    v8 = sub_100063A54(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E57B0(v6);
    }
  }

  if (available)
  {
    v9 = v6;
    *available = v6;
  }

  return v5;
}

- (id)generateRecoveryKeyWithError:(id *)error
{
  cdpController = [(MSDCDPStateController *)self cdpController];
  v11 = 0;
  v5 = [cdpController generateRandomRecoveryKey:&v11];
  v6 = v11;

  if (!v5)
  {
    v8 = sub_100063A54(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5838(v6);
    }
  }

  if (error)
  {
    v9 = v6;
    *error = v6;
  }

  return v5;
}

@end