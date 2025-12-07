@interface FMDRequestAckLost
- (BOOL)canReplace:(id)replace;
- (FMDRequestAckLost)initWithProvider:(id)provider lostCommand:(id)command cmdStatusCode:(int64_t)code locationServicesStateChanged:(BOOL)changed ackURL:(id)l;
- (FMDServiceProvider)provider;
- (id)requestBody;
@end

@implementation FMDRequestAckLost

- (FMDRequestAckLost)initWithProvider:(id)provider lostCommand:(id)command cmdStatusCode:(int64_t)code locationServicesStateChanged:(BOOL)changed ackURL:(id)l
{
  changedCopy = changed;
  providerCopy = provider;
  commandCopy = command;
  lCopy = l;
  account = [providerCopy account];
  v18.receiver = self;
  v18.super_class = FMDRequestAckLost;
  v16 = [(FMDRequest *)&v18 initWithAccount:account];

  if (v16)
  {
    [(FMDRequestAckLost *)v16 setProvider:providerCopy];
    [(FMDRequestAckLost *)v16 setLostCommand:commandCopy];
    [(FMDRequestAckLost *)v16 setAckURL:lCopy];
    [(FMDRequestAckLost *)v16 setCmdStatusCode:code];
    [(FMDRequestAckLost *)v16 setLocationServicesStateChanged:changedCopy];
  }

  return v16;
}

- (id)requestBody
{
  v19.receiver = self;
  v19.super_class = FMDRequestAckLost;
  requestBody = [(FMDRequest *)&v19 requestBody];
  provider = [(FMDRequestAckLost *)self provider];
  if (provider)
  {
    v5 = objc_alloc_init(FMDActingRequestDecorator);
    standardDeviceContext = [(FMDActingRequestDecorator *)v5 standardDeviceContext];

    [requestBody fm_safelyMapKey:@"deviceContext" toObject:standardDeviceContext];
    v7 = +[ServerDeviceInfo sharedInstance];
    account = [provider account];
    v9 = [v7 deviceInfoForAccount:account];
    [requestBody fm_safelyMapKey:@"deviceInfo" toObject:v9];
  }

  v10 = [NSNumber numberWithInteger:[(FMDRequestAckLost *)self cmdStatusCode]];
  [requestBody setObject:v10 forKeyedSubscript:@"statusCode"];

  if ([(FMDRequestAckLost *)self locationServicesStateChanged])
  {
    v11 = [NSNumber numberWithBool:[(FMDRequestAckLost *)self locationServicesStateChanged]];
    [requestBody setObject:v11 forKeyedSubscript:@"locationsServicesChanged"];
  }

  cmdStatusCode = [(FMDRequestAckLost *)self cmdStatusCode];
  if (cmdStatusCode == qword_100312AD8)
  {
    v13 = +[MCProfileConnection sharedConnection];
    localizedDescriptionOfCurrentPasscodeConstraints = [v13 localizedDescriptionOfCurrentPasscodeConstraints];
    [requestBody setObject:localizedDescriptionOfCurrentPasscodeConstraints forKeyedSubscript:@"errorMsg"];

    v15 = +[FMDSystemConfig sharedInstance];
    currentPasscodeConstraintStr = [v15 currentPasscodeConstraintStr];
    [requestBody setObject:currentPasscodeConstraintStr forKeyedSubscript:@"passcodeConstraint"];
  }

  lostCommand = [(FMDRequestAckLost *)self lostCommand];
  [requestBody setObject:lostCommand forKeyedSubscript:@"cmdContext"];

  return requestBody;
}

- (BOOL)canReplace:(id)replace
{
  replaceCopy = replace;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = replaceCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      lostCommand = [(FMDRequestAckLost *)self lostCommand];
      v7 = [lostCommand objectForKeyedSubscript:@"id"];
      lostCommand2 = [v5 lostCommand];
      v9 = [lostCommand2 objectForKeyedSubscript:@"id"];
      v10 = [v7 isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (FMDServiceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end