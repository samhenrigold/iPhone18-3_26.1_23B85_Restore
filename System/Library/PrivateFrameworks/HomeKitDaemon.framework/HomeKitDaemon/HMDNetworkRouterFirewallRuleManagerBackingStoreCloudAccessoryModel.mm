@interface HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel
+ (NSUUID)namespaceID;
+ (id)hmbProperties;
+ (id)logCategory;
+ (id)modelIDForRecordID:(id)d;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel)initWithCloudZoneID:(id)d recordID:(id)iD networkDeclarationsData:(id)data;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel)initWithCloudZoneID:(id)d recordID:(id)iD networkDeclarationsData:(id)data pairedMetadataData:(id)metadataData;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel)initWithModelID:(id)d parentModelID:(id)iD networkDeclarationsData:(id)data pairedMetadataData:(id)metadataData;
@end

@implementation HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel

- (HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel)initWithCloudZoneID:(id)d recordID:(id)iD networkDeclarationsData:(id)data
{
  dataCopy = data;
  iDCopy = iD;
  dCopy = d;
  v11 = [objc_opt_class() modelIDForRecordID:iDCopy];

  modelID = [dCopy modelID];

  v13 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel *)self initWithModelID:v11 parentModelID:modelID networkDeclarationsData:dataCopy];
  return v13;
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel)initWithCloudZoneID:(id)d recordID:(id)iD networkDeclarationsData:(id)data pairedMetadataData:(id)metadataData
{
  metadataDataCopy = metadataData;
  dataCopy = data;
  iDCopy = iD;
  dCopy = d;
  v14 = [objc_opt_class() modelIDForRecordID:iDCopy];

  modelID = [dCopy modelID];

  v16 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel *)self initWithModelID:v14 parentModelID:modelID networkDeclarationsData:dataCopy pairedMetadataData:metadataDataCopy];
  return v16;
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel)initWithModelID:(id)d parentModelID:(id)iD networkDeclarationsData:(id)data pairedMetadataData:(id)metadataData
{
  dataCopy = data;
  metadataDataCopy = metadataData;
  v16.receiver = self;
  v16.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel;
  v12 = [(HMBModel *)&v16 initWithModelID:d parentModelID:iD];
  v13 = v12;
  if (v12)
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel *)v12 setNetworkDeclarationsData:dataCopy];
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel *)v13 setPairedMetadataData:metadataDataCopy];
    v14 = v13;
  }

  return v13;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_206810 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_206810, &__block_literal_global_7_206811);
  }

  v3 = hmbProperties_properties_206812;

  return v3;
}

void __83__HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel_hmbProperties__block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"networkDeclarationsData";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v4[1] = @"pairedMetadataData";
  v5[0] = v0;
  v1 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = hmbProperties_properties_206812;
  hmbProperties_properties_206812 = v2;
}

+ (id)modelIDForRecordID:(id)d
{
  v25[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  recordName = [dCopy recordName];
  v25[0] = recordName;
  zoneID = [dCopy zoneID];
  zoneName = [zoneID zoneName];
  v25[1] = zoneName;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];

  data = [MEMORY[0x277CBEB28] data];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v20 + 1) + 8 * i) dataUsingEncoding:{4, v20}];
        [data appendData:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v16 = MEMORY[0x277CCAD78];
  namespaceID = [self namespaceID];
  v18 = [v16 hmf_UUIDWithNamespace:namespaceID data:data];

  return v18;
}

+ (NSUUID)namespaceID
{
  if (namespaceID_onceToken != -1)
  {
    dispatch_once(&namespaceID_onceToken, &__block_literal_global_2_206826);
  }

  v3 = namespaceID_namespaceID;

  return v3;
}

void __81__HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel_namespaceID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"da9f7191-31bc-4567-9424-89b86310c2e7"];
  v1 = namespaceID_namespaceID;
  namespaceID_namespaceID = v0;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_206831 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_206831, &__block_literal_global_206832);
  }

  v3 = logCategory__hmf_once_v1_206833;

  return v3;
}

void __81__HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_206833;
  logCategory__hmf_once_v1_206833 = v0;
}

@end