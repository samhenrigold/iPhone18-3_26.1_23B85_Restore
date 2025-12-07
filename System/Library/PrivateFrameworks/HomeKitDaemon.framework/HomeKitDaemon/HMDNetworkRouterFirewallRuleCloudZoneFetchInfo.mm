@interface HMDNetworkRouterFirewallRuleCloudZoneFetchInfo
+ (id)logCategory;
- (HMDNetworkRouterFirewallRuleCloudZoneFetchInfo)initWithOptions:(id)options changeToken:(id)token promise:(id)promise database:(id)database useAnonymousRequests:(BOOL)requests interestedRecordIDs:(id)ds mirrorInput:(id)input;
- (void)finishWithError:(id)error;
@end

@implementation HMDNetworkRouterFirewallRuleCloudZoneFetchInfo

- (void)finishWithError:(id)error
{
  errorCopy = error;
  mirrorInput = [(HMDNetworkRouterFirewallRuleCloudZoneFetchInfo *)self mirrorInput];
  [mirrorInput abort];

  v6.receiver = self;
  v6.super_class = HMDNetworkRouterFirewallRuleCloudZoneFetchInfo;
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)&v6 finishWithError:errorCopy];
}

- (HMDNetworkRouterFirewallRuleCloudZoneFetchInfo)initWithOptions:(id)options changeToken:(id)token promise:(id)promise database:(id)database useAnonymousRequests:(BOOL)requests interestedRecordIDs:(id)ds mirrorInput:(id)input
{
  requestsCopy = requests;
  tokenCopy = token;
  dsCopy = ds;
  inputCopy = input;
  v16 = MEMORY[0x277D0F770];
  databaseCopy = database;
  promiseCopy = promise;
  optionsCopy = options;
  v20 = [v16 alloc];
  label = [optionsCopy label];
  v22 = [v20 initWithName:label];

  container = [databaseCopy container];

  v30.receiver = self;
  v30.super_class = HMDNetworkRouterFirewallRuleCloudZoneFetchInfo;
  v24 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)&v30 initWithActivity:v22 options:optionsCopy container:container useAnonymousRequests:requestsCopy promise:promiseCopy];

  if (v24)
  {
    objc_storeStrong(&v24->_changeToken, token);
    objc_storeStrong(&v24->_originalChangeToken, token);
    objc_storeStrong(&v24->_interestedRecordIDs, ds);
    objc_storeStrong(&v24->_mirrorInput, input);
    v25 = v24;
  }

  return v24;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_213062 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_213062, &__block_literal_global_213063);
  }

  v3 = logCategory__hmf_once_v1_213064;

  return v3;
}

void __61__HMDNetworkRouterFirewallRuleCloudZoneFetchInfo_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_213064;
  logCategory__hmf_once_v1_213064 = v0;
}

@end