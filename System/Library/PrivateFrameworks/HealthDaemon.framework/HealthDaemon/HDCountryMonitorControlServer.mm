@interface HDCountryMonitorControlServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
+ (id)requiredEntitlements;
- (void)remote_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:(id)completion;
@end

@implementation HDCountryMonitorControlServer

- (void)remote_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:(id)completion
{
  completionCopy = completion;
  OTAFeatureAvailabilityManager = self->_OTAFeatureAvailabilityManager;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__HDCountryMonitorControlServer_remote_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke;
  v8[3] = &unk_2786130B0;
  v8[4] = self;
  [(HDOTAFeatureAvailabilityManager *)OTAFeatureAvailabilityManager downloadWithCompletion:v8];
  countryMonitor = self->_countryMonitor;
  if (countryMonitor)
  {
    [(HDPeriodicCountryMonitor *)countryMonitor fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:completionCopy];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Country monitoring not available"];
    (*(completionCopy + 2))(completionCopy, 0, 0, v7);
  }
}

void __99__HDCountryMonitorControlServer_remote_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = HKLogInfrastructure();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543618;
      v8 = objc_opt_class();
      v9 = 2114;
      v10 = v4;
      v6 = v8;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Error performing immediate download: %{public}@", &v7, 0x16u);
    }
  }
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  delegateCopy = delegate;
  clientCopy = client;
  configurationCopy = configuration;
  dCopy = d;
  profile = [clientCopy profile];
  periodicCountryMonitor = [profile periodicCountryMonitor];

  v16 = [(HDStandardTaskServer *)[HDCountryMonitorControlServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
  countryMonitor = v16->_countryMonitor;
  v16->_countryMonitor = periodicCountryMonitor;
  v18 = periodicCountryMonitor;

  profile2 = [clientCopy profile];

  daemon = [profile2 daemon];
  oTAFeatureAvailabilityManager = [daemon OTAFeatureAvailabilityManager];
  OTAFeatureAvailabilityManager = v16->_OTAFeatureAvailabilityManager;
  v16->_OTAFeatureAvailabilityManager = oTAFeatureAvailabilityManager;

  return v16;
}

+ (id)requiredEntitlements
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end