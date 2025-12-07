@interface HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchRecordsInfo
- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchRecordsInfo)initWithActivity:(id)activity options:(id)options promise:(id)promise database:(id)database useAnonymousRequests:(BOOL)requests zoneID:(id)d recordID:(id)iD desiredKeys:(id)self0;
@end

@implementation HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchRecordsInfo

- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchRecordsInfo)initWithActivity:(id)activity options:(id)options promise:(id)promise database:(id)database useAnonymousRequests:(BOOL)requests zoneID:(id)d recordID:(id)iD desiredKeys:(id)self0
{
  requestsCopy = requests;
  dCopy = d;
  iDCopy = iD;
  keysCopy = keys;
  promiseCopy = promise;
  optionsCopy = options;
  activityCopy = activity;
  container = [database container];
  v29.receiver = self;
  v29.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchRecordsInfo;
  v22 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)&v29 initWithActivity:activityCopy options:optionsCopy container:container useAnonymousRequests:requestsCopy promise:promiseCopy];

  if (v22)
  {
    objc_storeStrong(&v22->_zoneID, d);
    objc_storeStrong(&v22->_recordID, iD);
    objc_storeStrong(&v22->_desiredKeys, keys);
    v23 = [MEMORY[0x277CBEB58] set];
    records = v22->_records;
    v22->_records = v23;

    v25 = v22;
  }

  return v22;
}

@end