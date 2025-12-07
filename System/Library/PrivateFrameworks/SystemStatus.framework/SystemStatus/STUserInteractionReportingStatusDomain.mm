@interface STUserInteractionReportingStatusDomain
- (void)reportUserInteraction:(id)interaction;
@end

@implementation STUserInteractionReportingStatusDomain

- (void)reportUserInteraction:(id)interaction
{
  v10 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  if ([(STStatusDomain *)self isInvalidated])
  {
    serverHandle = STSystemStatusLogObservation();
    if (os_log_type_enabled(serverHandle, OS_LOG_TYPE_FAULT))
    {
      statusDomainName = [objc_opt_class() statusDomainName];
      v7 = STSystemStatusDescriptionForDomain(statusDomainName);
      v8 = 138543362;
      v9 = v7;
      _os_log_fault_impl(&dword_1DA9C2000, serverHandle, OS_LOG_TYPE_FAULT, "%{public}@ domain attempted to report user interaction after being invalidated", &v8, 0xCu);
    }
  }

  else
  {
    serverHandle = [(STStatusDomain *)self serverHandle];
    -[NSObject reportUserInteraction:forClient:domain:](serverHandle, "reportUserInteraction:forClient:domain:", interactionCopy, self, [objc_opt_class() statusDomainName]);
  }
}

@end