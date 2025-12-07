@interface HMMTRStorage
+ (BOOL)checkAndUpdateExpiryOfCertificate:(id)certificate keyPair:(id)pair newCertificate:(id *)newCertificate;
+ (BOOL)didUpdateMatterItems:(id)items oldStorage:(id)storage;
+ (BOOL)isMatterKey:(id)key;
+ (BOOL)isMemoryStorageKey:(id)key;
+ (BOOL)isPluginAccessoryNodeKey:(id)key;
+ (BOOL)isPluginKey:(id)key;
+ (BOOL)shouldIgnoreWritesForKey:(id)key;
+ (id)accessoryNodeIDFromPluginKey:(id)key;
+ (id)chipPluginStorageAccessoryNodeSpecificKeys;
+ (id)chipPluginStorageKeys;
+ (id)generateIPK;
+ (id)ignoredMatterStorageKeys;
+ (id)keyByStrippingNodeIdFromKey:(id)key;
+ (id)logCategory;
+ (id)matterItemsFromDictionary:(id)dictionary;
+ (id)matterStorageKeys;
+ (id)memoryStorageKeys;
+ (id)nodeIdFromPluginKey:(id)key;
+ (id)removeRecordsForUnpairedNodesInDict:(id)dict pairedNodes:(id)nodes;
+ (id)shortDescription;
+ (unsigned)knownFabricInStorage:(id)storage fabricID:(id)d keyPair:(id)pair controllerNodeID:(id *)iD rootCertificate:(id *)certificate;
- (BOOL)_removeAllDataSourceData;
- (BOOL)_syncSetDataSourceDictionary:(id)dictionary;
- (BOOL)_syncSetDataSourceValue:(id)value forKey:(id)key;
- (BOOL)_syncSetDataSourceValuesWithError:(id *)error block:(id)block;
- (BOOL)isResidentDevice;
- (BOOL)isStagedForNode:(id)node;
- (BOOL)localStorageMode;
- (BOOL)removeValueForKey:(id)key;
- (BOOL)removeValueForKey:(id)key systemCommissionerFabric:(BOOL)fabric;
- (BOOL)replaceAllKeysAndSyncWithBlock:(id)block systemCommissionerFabric:(BOOL)fabric;
- (BOOL)setStorageData:(id)data forKey:(id)key;
- (BOOL)setValueForKey:(id)key removingKeys:(id)keys systemCommissionerFabric:(BOOL)fabric block:(id)block;
- (BOOL)setValueForKey:(id)key value:(id)value;
- (BOOL)setValueForKey:(id)key value:(id)value systemCommissionerFabric:(BOOL)fabric;
- (BOOL)syncDataSourceDictionary:(id)dictionary forFabric:(id)fabric;
- (BOOL)threadCredentialManagementEnabledForSystemCommissionerFabricNode:(id)node;
- (BOOL)wedSupportedForSystemCommissionerFabricNode:(id)node;
- (HMMTRStorage)initWithQueue:(id)queue dataSource:(id)source systemCommissionerFabric:(BOOL)fabric fabricUUID:(id)d sharedAdmin:(BOOL)admin;
- (HMMTRStorageDataSource)dataSource;
- (NSSet)pairedNodeIDs;
- (id)_preferencesValueForKey:(id)key;
- (id)categoryForNode:(id)node;
- (id)categoryForSystemCommissionerFabricNode:(id)node;
- (id)configNumberForNode:(id)node;
- (id)deviceNameForSystemCommissionerFabricNode:(id)node;
- (id)extendedMACAddressForSystemCommissionerFabricNode:(id)node;
- (id)fabricIndexForNode:(id)node;
- (id)ipkForTargetFabricUUID:(id)d forPairing:(BOOL)pairing;
- (id)logIdentifier;
- (id)operationalCertificate;
- (id)pairedNodeIDsFromStoredStringValue:(id)value;
- (id)pairedNodeIDsOnSystemCommissionerFabric:(BOOL)fabric;
- (id)productIDForNode:(id)node;
- (id)productIDForSystemCommissionerFabricNode:(id)node;
- (id)rootCertificate;
- (id)serialNumberForSystemCommissionerFabricNode:(id)node;
- (id)setupPayloadForSystemCommissionerFabricNode:(id)node;
- (id)storageDataForKey:(id)key;
- (id)storedStringValueFromPairedNodeIDs:(id)ds;
- (id)systemCommissionerFabricNodeIDForUuid:(id)uuid;
- (id)threadCredentialManagementEndpointForSystemCommissionerFabricNode:(id)node;
- (id)threadCredentialManagementNodesAndEndpointsForSystemCommissioner;
- (id)topologyForNode:(id)node;
- (id)uuidForSystemCommissionerFabricNode:(id)node;
- (id)valueForKey:(id)key;
- (id)valueForKey:(id)key systemCommissionerFabric:(BOOL)fabric;
- (id)vendorIDForNode:(id)node;
- (id)vendorIDForSystemCommissionerFabricNode:(id)node;
- (void)_removeSystemCommissionerFabricNodeIDForUuid:(id)uuid;
- (void)_setPreferencesValueForKey:(id)key value:(id)value;
- (void)_syncToRemoteStorage;
- (void)addPairedNodeID:(id)d;
- (void)addPairedNodeID:(id)d toSystemCommissionerFabric:(BOOL)fabric;
- (void)clearStaleItems;
- (void)endLocalStorageModeByPersistingAppleFabricData;
- (void)endLocalStorageModeBySyncingToRemote:(BOOL)remote;
- (void)removeAndSyncAllKeysNotIncludedInActiveNodeIDs:(id)ds;
- (void)removePairedNodeID:(id)d;
- (void)removePairedNodeID:(id)d fromSystemCommissionerFabric:(BOOL)fabric;
- (void)removeRecordsForNode:(id)node systemCommissionerFabric:(BOOL)fabric;
- (void)removeRecordsForNodeIDs:(id)ds systemCommissionerFabric:(BOOL)fabric;
- (void)removeRecordsForSystemCommissionerFabricNode:(id)node;
- (void)setCategory:(id)category forNode:(id)node;
- (void)setCategory:(id)category forSystemCommissionerFabricNode:(id)node;
- (void)setConfigNumber:(id)number forNode:(id)node;
- (void)setDeviceName:(id)name forSystemCommissionerFabricNode:(id)node;
- (void)setExtendedMACAddress:(id)address forSystemCommissionerFabricNode:(id)node;
- (void)setFabricID:(id)d forNode:(id)node;
- (void)setLocalStorageMode:(BOOL)mode;
- (void)setOperationalCertificate:(id)certificate;
- (void)setPairedNodeIDs:(id)ds;
- (void)setPairedNodeIDs:(id)ds forSystemCommissionerFabric:(BOOL)fabric;
- (void)setProductID:(id)d forNode:(id)node;
- (void)setProductID:(id)d forSystemCommissionerFabricNode:(id)node;
- (void)setRootCertificate:(id)certificate;
- (void)setSerialNumber:(id)number forSystemCommissionerFabricNode:(id)node;
- (void)setSetupPayload:(id)payload forSystemCommissionerFabricNode:(id)node;
- (void)setStaged:(BOOL)staged forNode:(id)node;
- (void)setSystemCommissionerFabricNodeID:(id)d forUuid:(id)uuid;
- (void)setThreadCredentialManagementEnabled:(BOOL)enabled forSystemCommissionerFabricNode:(id)node;
- (void)setThreadCredentialManagementEndpoint:(id)endpoint forSystemCommissionerFabricNode:(id)node;
- (void)setTopology:(id)topology forNode:(id)node;
- (void)setUuid:(id)uuid forSystemCommissionerFabricNode:(id)node;
- (void)setVendorID:(id)d forNode:(id)node;
- (void)setVendorID:(id)d forSystemCommissionerFabricNode:(id)node;
- (void)setWEDSupported:(BOOL)supported forSystemCommissionerFabricNode:(id)node;
- (void)startLocalStorageMode;
@end

@implementation HMMTRStorage

- (void)removeRecordsForSystemCommissionerFabricNode:(id)node
{
  v30 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v8;
    v28 = 2112;
    v29 = nodeCopy;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Deleting records from storage for System Commissioner Fabric NodeID: %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMMTRStorage *)selfCopy removePairedNodeID:nodeCopy fromSystemCommissionerFabric:1];
  v9 = [HMMTRStorage formatKeyForNodeId:nodeCopy key:@"HMD.MTRPlugin.VendorID."];
  [(HMMTRStorage *)selfCopy removeValueForKey:v9 systemCommissionerFabric:1];

  v10 = [HMMTRStorage formatKeyForNodeId:nodeCopy key:@"HMD.MTRPlugin.Topology."];
  [(HMMTRStorage *)selfCopy removeValueForKey:v10 systemCommissionerFabric:1];

  v11 = [HMMTRStorage formatKeyForNodeId:nodeCopy key:@"HMD.MTRPlugin.FabricIndex."];
  [(HMMTRStorage *)selfCopy removeValueForKey:v11 systemCommissionerFabric:1];

  v12 = [HMMTRStorage formatKeyForNodeId:nodeCopy key:@"HMD.MTRPlugin.ProductID."];
  [(HMMTRStorage *)selfCopy removeValueForKey:v12 systemCommissionerFabric:1];

  v13 = [HMMTRStorage formatKeyForNodeId:nodeCopy key:@"HMD.MTRPlugin.Category."];
  [(HMMTRStorage *)selfCopy removeValueForKey:v13 systemCommissionerFabric:1];

  v14 = [HMMTRStorage formatKeyForNodeId:nodeCopy key:@"HMD.MTRPlugin.ConfigNumber."];
  [(HMMTRStorage *)selfCopy removeValueForKey:v14 systemCommissionerFabric:1];

  v15 = [HMMTRStorage formatKeyForNodeId:nodeCopy key:@"HMD.MTRPlugin.Staged."];
  [(HMMTRStorage *)selfCopy removeValueForKey:v15 systemCommissionerFabric:1];

  v16 = [(HMMTRStorage *)selfCopy uuidForSystemCommissionerFabricNode:nodeCopy];
  if (v16)
  {
    [(HMMTRStorage *)selfCopy _removeSystemCommissionerFabricNodeIDForUuid:v16];
  }

  v17 = [HMMTRStorage formatKeyForNodeId:nodeCopy key:@"HMD.MTRPlugin.MTS.UUID."];
  [(HMMTRStorage *)selfCopy removeValueForKey:v17 systemCommissionerFabric:1];

  v18 = [HMMTRStorage formatKeyForNodeId:nodeCopy key:@"HMD.MTRPlugin.MTS.SerialNumber."];
  [(HMMTRStorage *)selfCopy removeValueForKey:v18 systemCommissionerFabric:1];

  v19 = [HMMTRStorage formatKeyForNodeId:nodeCopy key:@"HMD.MTRPlugin.MTS.DeviceName."];
  [(HMMTRStorage *)selfCopy removeValueForKey:v19 systemCommissionerFabric:1];

  v20 = [HMMTRStorage formatKeyForNodeId:nodeCopy key:@"HMD.MTRPlugin.MTS.SetupPayload."];
  [(HMMTRStorage *)selfCopy removeValueForKey:v20 systemCommissionerFabric:1];

  v21 = [HMMTRStorage formatKeyForNodeId:nodeCopy key:@"HMD.MTRPlugin.MTS.SetupPayloadString."];
  [(HMMTRStorage *)selfCopy removeValueForKey:v21 systemCommissionerFabric:1];

  v22 = [HMMTRStorage formatKeyForNodeId:nodeCopy key:@"HMD.MTRPlugin.MTS.WEDSupported."];
  [(HMMTRStorage *)selfCopy removeValueForKey:v22 systemCommissionerFabric:1];

  v23 = [HMMTRStorage formatKeyForNodeId:nodeCopy key:@"HMD.MTRPlugin.MTS.ExtendedMACAddress."];
  [(HMMTRStorage *)selfCopy removeValueForKey:v23 systemCommissionerFabric:1];

  v24 = [HMMTRStorage formatKeyForNodeId:nodeCopy key:@"HMD.MTRPlugin.MTS.TCM.ep"];
  [(HMMTRStorage *)selfCopy removeValueForKey:v24 systemCommissionerFabric:1];

  v25 = [HMMTRStorage formatKeyForNodeId:nodeCopy key:@"HMD.MTRPlugin.MTS.TCM.on"];
  [(HMMTRStorage *)selfCopy removeValueForKey:v25 systemCommissionerFabric:1];
}

- (id)threadCredentialManagementNodesAndEndpointsForSystemCommissioner
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(HMMTRStorage *)self pairedNodeIDsOnSystemCommissionerFabric:1, 0];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(HMMTRStorage *)self threadCredentialManagementEndpointForSystemCommissionerFabricNode:v9];
        if (v10 && [(HMMTRStorage *)self threadCredentialManagementEnabledForSystemCommissionerFabricNode:v9])
        {
          [v3 setObject:v10 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)threadCredentialManagementEnabledForSystemCommissionerFabricNode:(id)node
{
  v4 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.MTS.TCM.on"];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (void)setThreadCredentialManagementEnabled:(BOOL)enabled forSystemCommissionerFabricNode:(id)node
{
  enabledCopy = enabled;
  v7 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.MTS.TCM.on"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  [(HMMTRStorage *)self setValueForKey:v7 value:v6 systemCommissionerFabric:1];
}

- (id)threadCredentialManagementEndpointForSystemCommissionerFabricNode:(id)node
{
  v4 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.MTS.TCM.ep"];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)setThreadCredentialManagementEndpoint:(id)endpoint forSystemCommissionerFabricNode:(id)node
{
  endpointCopy = endpoint;
  v7 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.MTS.TCM.ep"];
  [(HMMTRStorage *)self setValueForKey:v7 value:endpointCopy systemCommissionerFabric:1];
}

- (id)extendedMACAddressForSystemCommissionerFabricNode:(id)node
{
  v4 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.MTS.ExtendedMACAddress."];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)setExtendedMACAddress:(id)address forSystemCommissionerFabricNode:(id)node
{
  addressCopy = address;
  v7 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.MTS.ExtendedMACAddress."];
  [(HMMTRStorage *)self setValueForKey:v7 value:addressCopy systemCommissionerFabric:1];
}

- (BOOL)wedSupportedForSystemCommissionerFabricNode:(id)node
{
  v4 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.MTS.WEDSupported."];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 isEqual:&unk_283EE7BC0] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)setWEDSupported:(BOOL)supported forSystemCommissionerFabricNode:(id)node
{
  supportedCopy = supported;
  v7 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.MTS.WEDSupported."];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:supportedCopy];
  [(HMMTRStorage *)self setValueForKey:v7 value:v6 systemCommissionerFabric:1];
}

- (id)categoryForSystemCommissionerFabricNode:(id)node
{
  v4 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.Category."];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];

  return v5;
}

- (void)setCategory:(id)category forSystemCommissionerFabricNode:(id)node
{
  categoryCopy = category;
  v7 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.Category."];
  [(HMMTRStorage *)self setValueForKey:v7 value:categoryCopy systemCommissionerFabric:1];
}

- (id)productIDForSystemCommissionerFabricNode:(id)node
{
  v4 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.ProductID."];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];

  return v5;
}

- (void)setProductID:(id)d forSystemCommissionerFabricNode:(id)node
{
  dCopy = d;
  v7 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.ProductID."];
  [(HMMTRStorage *)self setValueForKey:v7 value:dCopy systemCommissionerFabric:1];
}

- (id)vendorIDForSystemCommissionerFabricNode:(id)node
{
  v4 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.VendorID."];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];

  return v5;
}

- (void)setVendorID:(id)d forSystemCommissionerFabricNode:(id)node
{
  dCopy = d;
  v7 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.VendorID."];
  [(HMMTRStorage *)self setValueForKey:v7 value:dCopy systemCommissionerFabric:1];
}

- (id)setupPayloadForSystemCommissionerFabricNode:(id)node
{
  nodeCopy = node;
  v5 = [HMMTRStorage formatKeyForNodeId:nodeCopy key:@"HMD.MTRPlugin.MTS.SetupPayload."];
  v6 = [(HMMTRStorage *)self valueForKey:v5 systemCommissionerFabric:1];
  if (v6)
  {
    [(HMMTRStorage *)self removeValueForKey:v5 systemCommissionerFabric:1];
  }

  v7 = [HMMTRStorage formatKeyForNodeId:nodeCopy key:@"HMD.MTRPlugin.MTS.SetupPayloadString."];

  v8 = [(HMMTRStorage *)self valueForKey:v7 systemCommissionerFabric:1];
  if (!v8)
  {
    v8 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      [(HMMTRStorage *)self setValueForKey:v7 value:v10 systemCommissionerFabric:1];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)setSetupPayload:(id)payload forSystemCommissionerFabricNode:(id)node
{
  payloadCopy = payload;
  v7 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.MTS.SetupPayloadString."];
  [(HMMTRStorage *)self setValueForKey:v7 value:payloadCopy systemCommissionerFabric:1];
}

- (id)deviceNameForSystemCommissionerFabricNode:(id)node
{
  v4 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.MTS.DeviceName."];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];

  return v5;
}

- (void)setDeviceName:(id)name forSystemCommissionerFabricNode:(id)node
{
  nameCopy = name;
  v7 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.MTS.DeviceName."];
  [(HMMTRStorage *)self setValueForKey:v7 value:nameCopy systemCommissionerFabric:1];
}

- (id)serialNumberForSystemCommissionerFabricNode:(id)node
{
  v4 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.MTS.SerialNumber."];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];

  return v5;
}

- (void)setSerialNumber:(id)number forSystemCommissionerFabricNode:(id)node
{
  numberCopy = number;
  v7 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.MTS.SerialNumber."];
  [(HMMTRStorage *)self setValueForKey:v7 value:numberCopy systemCommissionerFabric:1];
}

- (void)_removeSystemCommissionerFabricNodeIDForUuid:(id)uuid
{
  uUIDString = [uuid UUIDString];
  v4 = [@"HMD.MTRPlugin.MTS.NodeIDForUUID." stringByAppendingString:uUIDString];
  [(HMMTRStorage *)self removeValueForKey:v4 systemCommissionerFabric:1];
}

- (id)systemCommissionerFabricNodeIDForUuid:(id)uuid
{
  uUIDString = [uuid UUIDString];
  v5 = [@"HMD.MTRPlugin.MTS.NodeIDForUUID." stringByAppendingString:uUIDString];
  v6 = [(HMMTRStorage *)self valueForKey:v5 systemCommissionerFabric:1];

  return v6;
}

- (void)setSystemCommissionerFabricNodeID:(id)d forUuid:(id)uuid
{
  dCopy = d;
  uUIDString = [uuid UUIDString];
  v7 = [@"HMD.MTRPlugin.MTS.NodeIDForUUID." stringByAppendingString:uUIDString];
  [(HMMTRStorage *)self setValueForKey:v7 value:dCopy systemCommissionerFabric:1];
}

- (id)uuidForSystemCommissionerFabricNode:(id)node
{
  v4 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.MTS.UUID."];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];

  return v5;
}

- (void)setUuid:(id)uuid forSystemCommissionerFabricNode:(id)node
{
  uuidCopy = uuid;
  v7 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.MTS.UUID."];
  [(HMMTRStorage *)self setValueForKey:v7 value:uuidCopy systemCommissionerFabric:1];
}

- (void)removeAndSyncAllKeysNotIncludedInActiveNodeIDs:(id)ds
{
  v16 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = dsCopy;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing all keys not included in active node IDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HMMTRStorage_Records__removeAndSyncAllKeysNotIncludedInActiveNodeIDs___block_invoke;
  v10[3] = &unk_2786ED840;
  v10[4] = selfCopy;
  v11 = dsCopy;
  v9 = dsCopy;
  [(HMMTRStorage *)selfCopy replaceAllKeysAndSyncWithBlock:v10 systemCommissionerFabric:[(HMMTRStorage *)selfCopy isSystemCommissionerFabric:v10[0]]];
}

id __72__HMMTRStorage_Records__removeAndSyncAllKeysNotIncludedInActiveNodeIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [HMMTRStorage accessoryNodeIDFromPluginKey:v5];
  if (v7)
  {
    if (![*(a1 + 40) containsObject:v7])
    {
      v8 = 0;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (![v5 isEqual:@"HMD.MTRPlugin.PairedNodeIDs"])
  {
LABEL_16:
    v8 = v6;
    goto LABEL_20;
  }

  v9 = [*(a1 + 32) pairedNodeIDsFromStoredStringValue:v6];
  v10 = [v9 mutableCopy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [v10 copy];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v12)
  {

LABEL_18:
    v18 = v6;
    goto LABEL_19;
  }

  v13 = v12;
  v20 = v6;
  v14 = 0;
  v15 = *v22;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v22 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v21 + 1) + 8 * i);
      if (([*(a1 + 40) containsObject:v17] & 1) == 0)
      {
        [v10 removeObject:v17];
        v14 = 1;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v13);

  v6 = v20;
  if ((v14 & 1) == 0)
  {
    goto LABEL_18;
  }

  v18 = [*(a1 + 32) storedStringValueFromPairedNodeIDs:v10];
LABEL_19:
  v8 = v18;

LABEL_20:

  return v8;
}

- (void)removeRecordsForNodeIDs:(id)ds systemCommissionerFabric:(BOOL)fabric
{
  fabricCopy = fabric;
  v38 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v35 = v9;
    v36 = 2112;
    v37 = dsCopy;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Deleting records from storage for node IDs: %@", buf, 0x16u);
  }

  v24 = selfCopy;
  objc_autoreleasePoolPop(v6);
  array = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = dsCopy;
  v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [HMMTRStorage formatKeyForNodeId:v15 key:@"HMD.MTRPlugin.VendorID."];
        [array addObject:v16];

        v17 = [HMMTRStorage formatKeyForNodeId:v15 key:@"HMD.MTRPlugin.Topology."];
        [array addObject:v17];

        v18 = [HMMTRStorage formatKeyForNodeId:v15 key:@"HMD.MTRPlugin.FabricIndex."];
        [array addObject:v18];

        v19 = [HMMTRStorage formatKeyForNodeId:v15 key:@"HMD.MTRPlugin.ProductID."];
        [array addObject:v19];

        v20 = [HMMTRStorage formatKeyForNodeId:v15 key:@"HMD.MTRPlugin.Category."];
        [array addObject:v20];

        v21 = [HMMTRStorage formatKeyForNodeId:v15 key:@"HMD.MTRPlugin.ConfigNumber."];
        [array addObject:v21];

        v22 = [HMMTRStorage formatKeyForNodeId:v15 key:@"HMD.MTRPlugin.Staged."];
        [array addObject:v22];
      }

      v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __74__HMMTRStorage_Records__removeRecordsForNodeIDs_systemCommissionerFabric___block_invoke;
  v27[3] = &unk_2786ED818;
  v27[4] = v24;
  v28 = obj;
  v23 = obj;
  [(HMMTRStorage *)v24 setValueForKey:@"HMD.MTRPlugin.PairedNodeIDs" removingKeys:array systemCommissionerFabric:fabricCopy block:v27];
}

id __74__HMMTRStorage_Records__removeRecordsForNodeIDs_systemCommissionerFabric___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) pairedNodeIDsFromStoredStringValue:a2];
  v4 = [v3 mutableCopy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 removeObject:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [*(a1 + 32) storedStringValueFromPairedNodeIDs:v4];

  return v10;
}

- (void)removeRecordsForNode:(id)node systemCommissionerFabric:(BOOL)fabric
{
  fabricCopy = fabric;
  v10 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v6 = MEMORY[0x277CBEA60];
  nodeCopy2 = node;
  v8 = [v6 arrayWithObjects:&nodeCopy count:1];

  [(HMMTRStorage *)self removeRecordsForNodeIDs:v8 systemCommissionerFabric:fabricCopy, nodeCopy, v10];
}

- (id)operationalCertificate
{
  v2 = [(HMMTRStorage *)self valueForKey:@"HMD.MTRPlugin.OperationalCert" systemCommissionerFabric:0];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v2 options:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOperationalCertificate:(id)certificate
{
  v4 = [certificate base64EncodedStringWithOptions:0];
  [(HMMTRStorage *)self setValueForKey:@"HMD.MTRPlugin.OperationalCert" value:v4 systemCommissionerFabric:0];
}

- (id)rootCertificate
{
  v2 = [(HMMTRStorage *)self valueForKey:@"HMD.MTRPlugin.RootCert" systemCommissionerFabric:0];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v2 options:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRootCertificate:(id)certificate
{
  v4 = [certificate base64EncodedStringWithOptions:0];
  [(HMMTRStorage *)self setValueForKey:@"HMD.MTRPlugin.RootCert" value:v4 systemCommissionerFabric:0];
}

- (id)topologyForNode:(id)node
{
  v4 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.Topology."];
  v5 = [(HMMTRStorage *)self valueForKey:v4];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v5 options:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setTopology:(id)topology forNode:(id)node
{
  topologyCopy = topology;
  v8 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.Topology."];
  v7 = [topologyCopy base64EncodedStringWithOptions:0];

  [(HMMTRStorage *)self setValueForKey:v8 value:v7];
}

- (id)fabricIndexForNode:(id)node
{
  v4 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.FabricIndex."];
  v5 = [(HMMTRStorage *)self valueForKey:v4];

  return v5;
}

- (void)setFabricID:(id)d forNode:(id)node
{
  dCopy = d;
  v7 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.FabricIndex."];
  [(HMMTRStorage *)self setValueForKey:v7 value:dCopy];
}

- (id)configNumberForNode:(id)node
{
  v4 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.ConfigNumber."];
  v5 = [(HMMTRStorage *)self valueForKey:v4];

  return v5;
}

- (void)setConfigNumber:(id)number forNode:(id)node
{
  numberCopy = number;
  v7 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.ConfigNumber."];
  [(HMMTRStorage *)self setValueForKey:v7 value:numberCopy];
}

- (id)categoryForNode:(id)node
{
  v4 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.Category."];
  v5 = [(HMMTRStorage *)self valueForKey:v4];

  return v5;
}

- (void)setCategory:(id)category forNode:(id)node
{
  categoryCopy = category;
  v7 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.Category."];
  [(HMMTRStorage *)self setValueForKey:v7 value:categoryCopy];
}

- (id)productIDForNode:(id)node
{
  v4 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.ProductID."];
  v5 = [(HMMTRStorage *)self valueForKey:v4];

  return v5;
}

- (void)setProductID:(id)d forNode:(id)node
{
  dCopy = d;
  v7 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.ProductID."];
  [(HMMTRStorage *)self setValueForKey:v7 value:dCopy];
}

- (id)vendorIDForNode:(id)node
{
  v4 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.VendorID."];
  v5 = [(HMMTRStorage *)self valueForKey:v4];

  return v5;
}

- (void)setVendorID:(id)d forNode:(id)node
{
  dCopy = d;
  v7 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.VendorID."];
  [(HMMTRStorage *)self setValueForKey:v7 value:dCopy];
}

- (BOOL)isStagedForNode:(id)node
{
  v4 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.Staged."];
  v5 = [(HMMTRStorage *)self valueForKey:v4];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setStaged:(BOOL)staged forNode:(id)node
{
  stagedCopy = staged;
  v7 = [HMMTRStorage formatKeyForNodeId:node key:@"HMD.MTRPlugin.Staged."];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:stagedCopy];
  [(HMMTRStorage *)self setValueForKey:v7 value:v6];
}

- (void)removePairedNodeID:(id)d fromSystemCommissionerFabric:(BOOL)fabric
{
  fabricCopy = fabric;
  dCopy = d;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__HMMTRStorage_Records__removePairedNodeID_fromSystemCommissionerFabric___block_invoke;
  v8[3] = &unk_2786ED818;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  [(HMMTRStorage *)self setValueForKey:@"HMD.MTRPlugin.PairedNodeIDs" removingKeys:0 systemCommissionerFabric:fabricCopy block:v8];
}

id __73__HMMTRStorage_Records__removePairedNodeID_fromSystemCommissionerFabric___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) pairedNodeIDsFromStoredStringValue:a2];
  v4 = [v3 mutableCopy];

  [v4 removeObject:*(a1 + 40)];
  v5 = [*(a1 + 32) storedStringValueFromPairedNodeIDs:v4];

  return v5;
}

- (void)addPairedNodeID:(id)d toSystemCommissionerFabric:(BOOL)fabric
{
  fabricCopy = fabric;
  dCopy = d;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__HMMTRStorage_Records__addPairedNodeID_toSystemCommissionerFabric___block_invoke;
  v8[3] = &unk_2786ED818;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  [(HMMTRStorage *)self setValueForKey:@"HMD.MTRPlugin.PairedNodeIDs" removingKeys:0 systemCommissionerFabric:fabricCopy block:v8];
}

id __68__HMMTRStorage_Records__addPairedNodeID_toSystemCommissionerFabric___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) pairedNodeIDsFromStoredStringValue:a2];
  v4 = [v3 mutableCopy];

  [v4 addObject:*(a1 + 40)];
  v5 = [*(a1 + 32) storedStringValueFromPairedNodeIDs:v4];

  return v5;
}

- (id)storedStringValueFromPairedNodeIDs:(id)ds
{
  v15 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = [HMMTRUtilities encodeObject:dsCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 base64EncodedStringWithOptions:0];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_FAULT, "%{public}@Failed to encode NodeID set", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

- (void)setPairedNodeIDs:(id)ds forSystemCommissionerFabric:(BOOL)fabric
{
  fabricCopy = fabric;
  v14 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (dsCopy)
  {
    v7 = [(HMMTRStorage *)self storedStringValueFromPairedNodeIDs:dsCopy];
    if (v7)
    {
      [(HMMTRStorage *)self setValueForKey:@"HMD.MTRPlugin.PairedNodeIDs" value:v7 systemCommissionerFabric:fabricCopy];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_FAULT, "%{public}@Invalid value for pairedNodeID set", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (id)pairedNodeIDsFromStoredStringValue:(id)value
{
  v30 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (valueCopy)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:valueCopy options:0];
    if (v5)
    {
      v6 = MEMORY[0x277CCAAC8];
      v7 = MEMORY[0x277CBEB98];
      v25[0] = objc_opt_class();
      v25[1] = objc_opt_class();
      v25[2] = objc_opt_class();
      v25[3] = objc_opt_class();
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
      v9 = [v7 setWithArray:v8];
      v24 = 0;
      v10 = [v6 unarchivedObjectOfClasses:v9 fromData:v5 error:&v24];
      v11 = v24;

      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v19 = objc_autoreleasePoolPush();
        selfCopy = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v27 = v22;
          v28 = 2112;
          v29 = v11;
          _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_FAULT, "%{public}@Failed to load NodeID set with Error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        v12 = [MEMORY[0x277CBEB98] set];
      }

      v13 = v12;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        fabricID = [(HMMTRStorage *)selfCopy2 fabricID];
        *buf = 138543618;
        v27 = v17;
        v28 = 2112;
        v29 = fabricID;
        _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@No paired NodeIDs set for fabricMapping index:%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v13 = [MEMORY[0x277CBEB98] set];
    }
  }

  else
  {
    v13 = [MEMORY[0x277CBEB98] set];
  }

  return v13;
}

- (id)pairedNodeIDsOnSystemCommissionerFabric:(BOOL)fabric
{
  v4 = [(HMMTRStorage *)self valueForKey:@"HMD.MTRPlugin.PairedNodeIDs" systemCommissionerFabric:fabric];
  v5 = [(HMMTRStorage *)self pairedNodeIDsFromStoredStringValue:v4];

  return v5;
}

- (void)removePairedNodeID:(id)d
{
  dCopy = d;
  [(HMMTRStorage *)self removePairedNodeID:dCopy fromSystemCommissionerFabric:[(HMMTRStorage *)self isSystemCommissionerFabric]];
}

- (void)addPairedNodeID:(id)d
{
  dCopy = d;
  [(HMMTRStorage *)self addPairedNodeID:dCopy toSystemCommissionerFabric:[(HMMTRStorage *)self isSystemCommissionerFabric]];
}

- (void)setPairedNodeIDs:(id)ds
{
  dsCopy = ds;
  [(HMMTRStorage *)self setPairedNodeIDs:dsCopy forSystemCommissionerFabric:[(HMMTRStorage *)self isSystemCommissionerFabric]];
}

- (NSSet)pairedNodeIDs
{
  isSystemCommissionerFabric = [(HMMTRStorage *)self isSystemCommissionerFabric];

  return [(HMMTRStorage *)self pairedNodeIDsOnSystemCommissionerFabric:isSystemCommissionerFabric];
}

+ (id)accessoryNodeIDFromPluginKey:(id)key
{
  keyCopy = key;
  if ([self isPluginAccessoryNodeKey:keyCopy])
  {
    v5 = [HMMTRStorage nodeIdFromPluginKey:keyCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)nodeIdFromPluginKey:(id)key
{
  v24 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([self isPluginKey:keyCopy])
  {
    v5 = keyCopy;
    v22 = 0;
    v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\D+(\\d+)$" options:0 error:&v22];
    v7 = v22;
    v8 = [v6 matchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
    if ([v8 count] < 2)
    {
      firstObject = [v8 firstObject];
      v15 = firstObject;
      if (firstObject)
      {
        v16 = MEMORY[0x277CCAC80];
        v17 = [firstObject rangeAtIndex:1];
        v19 = [v5 substringWithRange:{v17, v18}];
        v20 = [v16 scannerWithString:v19];

        *buf = 0;
        v13 = 0;
        if ([v20 scanUnsignedLongLong:buf])
        {
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*buf];
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v12;
        _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@More than 1 match found, ignoring input", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)keyByStrippingNodeIdFromKey:(id)key
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v19 = 0;
  v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(.*\\D)\\d+$" options:0 error:&v19];
  v6 = v19;
  v7 = [v5 matchesInString:keyCopy options:0 range:{0, objc_msgSend(keyCopy, "length")}];
  if ([v7 count] < 2)
  {
    firstObject = [v7 firstObject];
    v14 = firstObject;
    if (firstObject)
    {
      v15 = [firstObject rangeAtIndex:1];
      v17 = [keyCopy substringWithRange:{v15, v16}];
    }

    else
    {
      v17 = keyCopy;
    }

    v12 = v17;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@More than 1 match found, ignoring input", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = keyCopy;
  }

  return v12;
}

+ (id)matterItemsFromDictionary:(id)dictionary
{
  v20 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = +[HMMTRStorage chipPluginStorageKeys];
        v11 = [HMMTRStorage keyByStrippingNodeIdFromKey:v9];
        if ([v10 containsObject:v11])
        {
        }

        else
        {
          v12 = [HMMTRStorage isMatterKey:v9];

          if (v12)
          {
            continue;
          }

          v10 = [dictionaryCopy objectForKeyedSubscript:v9];
          [v14 setObject:v10 forKeyedSubscript:v9];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v14;
}

+ (BOOL)isMemoryStorageKey:(id)key
{
  v27 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = +[HMMTRStorage memoryStorageKeys];
  if ([v4 containsObject:keyCopy])
  {
    v5 = 1;
    goto LABEL_21;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([keyCopy hasPrefix:*(*(&v22 + 1) + 8 * i)])
        {
          v5 = 1;
          goto LABEL_20;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
  v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^f/[0-9a-fA-F]+/s/" options:0 error:&v21];
  v6 = v21;
  v12 = [v11 matchesInString:keyCopy options:0 range:{0, objc_msgSend(keyCopy, "length")}];
  if ([v12 count] == 1)
  {
    goto LABEL_12;
  }

  v20 = v6;
  v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^f/[0-9a-fA-F]+/n$" options:0 error:&v20];
  v14 = v20;

  v15 = [v13 matchesInString:keyCopy options:0 range:{0, objc_msgSend(keyCopy, "length")}];

  if ([v15 count] == 1)
  {
    v5 = 1;
    v12 = v15;
  }

  else
  {
    v19 = v14;
    v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^f/[0-9a-fA-F]+/o$" options:0 error:&v19];
    v6 = v19;

    v12 = [v11 matchesInString:keyCopy options:0 range:{0, objc_msgSend(keyCopy, "length")}];

    if ([v12 count] == 1)
    {
LABEL_12:
      v5 = 1;
      goto LABEL_19;
    }

    v18 = v6;
    v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^f/[0-9a-fA-F]+/i$" options:0 error:&v18];
    v14 = v18;

    v16 = [v13 matchesInString:keyCopy options:0 range:{0, objc_msgSend(keyCopy, "length")}];

    v5 = [v16 count] == 1;
    v12 = v16;
  }

  v11 = v13;
  v6 = v14;
LABEL_19:

LABEL_20:
LABEL_21:

  return v5;
}

+ (BOOL)shouldIgnoreWritesForKey:(id)key
{
  keyCopy = key;
  v4 = +[HMMTRStorage ignoredMatterStorageKeys];
  v5 = [v4 containsObject:keyCopy];

  return v5;
}

+ (BOOL)isPluginAccessoryNodeKey:(id)key
{
  keyCopy = key;
  v4 = +[HMMTRStorage chipPluginStorageAccessoryNodeSpecificKeys];
  v5 = [HMMTRStorage keyByStrippingNodeIdFromKey:keyCopy];

  LOBYTE(keyCopy) = [v4 containsObject:v5];
  return keyCopy;
}

+ (BOOL)isPluginKey:(id)key
{
  keyCopy = key;
  v4 = +[HMMTRStorage chipPluginStorageKeys];
  v5 = [HMMTRStorage keyByStrippingNodeIdFromKey:keyCopy];

  LOBYTE(keyCopy) = [v4 containsObject:v5];
  return keyCopy;
}

+ (BOOL)isMatterKey:(id)key
{
  v19 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = +[HMMTRStorage matterStorageKeys];
  if ([v4 containsObject:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([keyCopy hasPrefix:*(*(&v14 + 1) + 8 * i)])
          {
            v5 = 1;
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
    v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^f/[0-9a-fA-F]+/s/" options:0 error:&v13];
    v11 = [v6 matchesInString:keyCopy options:0 range:{0, objc_msgSend(keyCopy, "length")}];
    v5 = [v11 count] == 1;

LABEL_13:
  }

  return v5;
}

+ (id)memoryStorageKeys
{
  if (memoryStorageKeys_onceToken != -1)
  {
    dispatch_once(&memoryStorageKeys_onceToken, &__block_literal_global_120);
  }

  v3 = memoryStorageKeys_storageKeys;

  return v3;
}

void __42__HMMTRStorage_Records__memoryStorageKeys__block_invoke()
{
  v0 = memoryStorageKeys_storageKeys;
  memoryStorageKeys_storageKeys = &unk_283EE91E0;
}

+ (id)ignoredMatterStorageKeys
{
  if (ignoredMatterStorageKeys_onceToken != -1)
  {
    dispatch_once(&ignoredMatterStorageKeys_onceToken, &__block_literal_global_109);
  }

  v3 = ignoredMatterStorageKeys_storageKeys;

  return v3;
}

void __49__HMMTRStorage_Records__ignoredMatterStorageKeys__block_invoke()
{
  v0 = ignoredMatterStorageKeys_storageKeys;
  ignoredMatterStorageKeys_storageKeys = &unk_283EE91C8;
}

+ (id)matterStorageKeys
{
  if (matterStorageKeys_onceToken != -1)
  {
    dispatch_once(&matterStorageKeys_onceToken, &__block_literal_global_86);
  }

  v3 = matterStorageKeys_storageKeys;

  return v3;
}

void __42__HMMTRStorage_Records__matterStorageKeys__block_invoke()
{
  v0 = matterStorageKeys_storageKeys;
  matterStorageKeys_storageKeys = &unk_283EE91B0;
}

+ (id)chipPluginStorageAccessoryNodeSpecificKeys
{
  if (chipPluginStorageAccessoryNodeSpecificKeys_onceToken != -1)
  {
    dispatch_once(&chipPluginStorageAccessoryNodeSpecificKeys_onceToken, &__block_literal_global_81);
  }

  v3 = chipPluginStorageAccessoryNodeSpecificKeys_storageKeys;

  return v3;
}

void __67__HMMTRStorage_Records__chipPluginStorageAccessoryNodeSpecificKeys__block_invoke()
{
  v0 = chipPluginStorageAccessoryNodeSpecificKeys_storageKeys;
  chipPluginStorageAccessoryNodeSpecificKeys_storageKeys = &unk_283EE9198;
}

+ (id)chipPluginStorageKeys
{
  if (chipPluginStorageKeys_onceToken != -1)
  {
    dispatch_once(&chipPluginStorageKeys_onceToken, &__block_literal_global_610);
  }

  v3 = chipPluginStorageKeys_storageKeys;

  return v3;
}

void __46__HMMTRStorage_Records__chipPluginStorageKeys__block_invoke()
{
  v0 = chipPluginStorageKeys_storageKeys;
  chipPluginStorageKeys_storageKeys = &unk_283EE9180;
}

+ (id)removeRecordsForUnpairedNodesInDict:(id)dict pairedNodes:(id)nodes
{
  v21 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  nodesCopy = nodes;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:dictCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = dictCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [HMMTRStorage nodeIdFromPluginKey:v13, v16];
        if (v14 && ([nodesCopy containsObject:v14] & 1) == 0)
        {
          [v7 setObject:0 forKeyedSubscript:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

- (HMMTRStorageDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)_syncToRemoteStorage
{
  selfCopy = self;
  v121 = *MEMORY[0x277D85DE8];
  if (![(HMMTRStorage *)self storageSyncInProgress])
  {
    if (![(HMMTRStorage *)selfCopy storageSyncPending])
    {
      return;
    }

    [(HMMTRStorage *)selfCopy setStorageSyncInProgress:1];
    if ([(HMMTRStorage *)selfCopy isSystemCommissionerFabric])
    {
      localStorage = [(HMMTRStorage *)selfCopy localStorage];
      v8 = [(HMMTRStorage *)selfCopy pairedNodeIDsOnSystemCommissionerFabric:1];
      v9 = [HMMTRStorage removeRecordsForUnpairedNodesInDict:localStorage pairedNodes:v8];

      v92 = v9;
      v10 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v9];
      [(HMMTRStorage *)selfCopy setLocalStorage:v10];

      v11 = objc_autoreleasePoolPush();
      v93 = selfCopy;
      v12 = selfCopy;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [(HMMTRStorage *)v12 pairedNodeIDsOnSystemCommissionerFabric:1];
        *buf = 138543618;
        v114 = v14;
        v115 = 2112;
        v116 = v15;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Currently paired nodes on System commissioner fabric %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      array = [MEMORY[0x277CBEB18] array];
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      obj = [(HMMTRStorage *)v12 localStorageWithoutUpdates];
      v16 = [obj countByEnumeratingWithState:&v108 objects:v120 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v109;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v109 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v108 + 1) + 8 * i);
            localStorage2 = [(HMMTRStorage *)v12 localStorage];
            v22 = [localStorage2 objectForKey:v20];

            if (v22)
            {
              localStorage3 = [(HMMTRStorage *)v12 localStorage];
              v24 = [localStorage3 objectForKeyedSubscript:v20];
              localStorageWithoutUpdates = [(HMMTRStorage *)v12 localStorageWithoutUpdates];
              v26 = [localStorageWithoutUpdates objectForKeyedSubscript:v20];
              v27 = [v24 isEqual:v26];

              if (v27)
              {
                localStorage4 = [(HMMTRStorage *)v12 localStorage];
                [localStorage4 removeObjectForKey:v20];
              }
            }

            else
            {
              [array addObject:v20];
            }
          }

          v17 = [obj countByEnumeratingWithState:&v108 objects:v120 count:16];
        }

        while (v17);
      }

      v107 = 0u;
      v105 = 0u;
      v106 = 0u;
      v104 = 0u;
      v29 = array;
      v30 = [v29 countByEnumeratingWithState:&v104 objects:v119 count:16];
      v95 = v29;
      if (v30)
      {
        v31 = v30;
        v32 = *v105;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v105 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v104 + 1) + 8 * j);
            systemCommissionerKeyValueStore = [(HMMTRStorage *)v12 systemCommissionerKeyValueStore];
            v103 = 0;
            v36 = [systemCommissionerKeyValueStore removeStoredValueForKey:v34 error:&v103];
            v37 = v103;

            if ((v36 & 1) == 0)
            {
              v38 = objc_autoreleasePoolPush();
              v39 = v12;
              v40 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v41 = HMFGetLogIdentifier();
                *buf = 138543874;
                v114 = v41;
                v115 = 2112;
                v116 = v34;
                v117 = 2112;
                v118 = v37;
                _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove %@ from System Commissioner storage with error %@", buf, 0x20u);

                v29 = v95;
              }

              objc_autoreleasePoolPop(v38);
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v104 objects:v119 count:16];
        }

        while (v31);
      }

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      obja = [(HMMTRStorage *)v12 localStorage];
      v42 = [obja countByEnumeratingWithState:&v99 objects:v112 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v100;
        do
        {
          for (k = 0; k != v43; ++k)
          {
            if (*v100 != v44)
            {
              objc_enumerationMutation(obja);
            }

            v46 = *(*(&v99 + 1) + 8 * k);
            systemCommissionerKeyValueStore2 = [(HMMTRStorage *)v12 systemCommissionerKeyValueStore];
            localStorage5 = [(HMMTRStorage *)v12 localStorage];
            v49 = [localStorage5 objectForKeyedSubscript:v46];
            v98 = 0;
            v50 = [systemCommissionerKeyValueStore2 setStoredValue:v49 forKey:v46 error:&v98];
            v51 = v98;

            if ((v50 & 1) == 0)
            {
              v52 = objc_autoreleasePoolPush();
              v53 = v12;
              v54 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v55 = HMFGetLogIdentifier();
                *buf = 138543874;
                v114 = v55;
                v115 = 2112;
                v116 = v46;
                v117 = 2112;
                v118 = v51;
                _os_log_impl(&dword_22AEAE000, v54, OS_LOG_TYPE_ERROR, "%{public}@Failed to write to System Commissioner storage for key %@ with error %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v52);
            }
          }

          v43 = [obja countByEnumeratingWithState:&v99 objects:v112 count:16];
        }

        while (v43);
      }

      v56 = objc_autoreleasePoolPush();
      v57 = v12;
      v58 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v59 = HMFGetLogIdentifier();
        v60 = MEMORY[0x277CCABB0];
        localStorage6 = [(HMMTRStorage *)v57 localStorage];
        v62 = [v60 numberWithUnsignedInteger:{objc_msgSend(localStorage6, "count")}];
        v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v95, "count")}];
        *buf = 138543874;
        v114 = v59;
        v115 = 2112;
        v116 = v62;
        v117 = 2112;
        v118 = v63;
        _os_log_impl(&dword_22AEAE000, v58, OS_LOG_TYPE_INFO, "%{public}@Updated %@ and removed %@ key-value pairs while sync'ing from local storage with remote System Commissioner Fabric storage", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v56);
      systemCommissionerKeyValueStore3 = [(HMMTRStorage *)v57 systemCommissionerKeyValueStore];
      v65 = objc_opt_respondsToSelector();

      selfCopy = v93;
      if (v65)
      {
        v66 = objc_autoreleasePoolPush();
        v67 = v57;
        v68 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          v69 = HMFGetLogIdentifier();
          systemCommissionerKeyValueStore4 = [(HMMTRStorage *)v67 systemCommissionerKeyValueStore];
          storedValuesByKey = [systemCommissionerKeyValueStore4 storedValuesByKey];
          *buf = 138543618;
          v114 = v69;
          v115 = 2112;
          v116 = storedValuesByKey;
          _os_log_impl(&dword_22AEAE000, v68, OS_LOG_TYPE_INFO, "%{public}@System Commissioner storage contains %@", buf, 0x16u);

          selfCopy = v93;
        }

        objc_autoreleasePoolPop(v66);
      }
    }

    else
    {
      dataSource = [(HMMTRStorage *)selfCopy dataSource];
      fabricUUID = [(HMMTRStorage *)selfCopy fabricUUID];
      v74 = [dataSource storageDataSourceForFabricUUID:fabricUUID];
      [(HMMTRStorage *)selfCopy setFabricDataSource:v74];

      fabricDataSource = [(HMMTRStorage *)selfCopy fabricDataSource];

      if (!fabricDataSource)
      {
        v87 = objc_autoreleasePoolPush();
        v88 = selfCopy;
        v89 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
        {
          v90 = HMFGetLogIdentifier();
          fabricUUID2 = [(HMMTRStorage *)v88 fabricUUID];
          *buf = 138543618;
          v114 = v90;
          v115 = 2112;
          v116 = fabricUUID2;
          _os_log_impl(&dword_22AEAE000, v89, OS_LOG_TYPE_INFO, "%{public}@Remote storage is not yet available for fabric %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v87);
        v86 = v88;
        goto LABEL_54;
      }

      localStorage7 = [(HMMTRStorage *)selfCopy localStorage];
      v77 = [localStorage7 copy];
      [(HMMTRStorage *)selfCopy _syncSetDataSourceDictionary:v77];

      v78 = objc_autoreleasePoolPush();
      v79 = selfCopy;
      v80 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        v81 = HMFGetLogIdentifier();
        v82 = MEMORY[0x277CCABB0];
        localStorage8 = [(HMMTRStorage *)v79 localStorage];
        v84 = [v82 numberWithUnsignedInteger:{objc_msgSend(localStorage8, "count")}];
        *buf = 138543618;
        v114 = v81;
        v115 = 2112;
        v116 = v84;
        _os_log_impl(&dword_22AEAE000, v80, OS_LOG_TYPE_INFO, "%{public}@Synced %@ key-value pairs from local storage to remote Apple Home storage", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v78);
    }

    localStorage9 = [(HMMTRStorage *)selfCopy localStorage];
    [localStorage9 removeAllObjects];

    [(HMMTRStorage *)selfCopy setStorageSyncPending:0];
    v86 = selfCopy;
LABEL_54:
    [(HMMTRStorage *)v86 setStorageSyncInProgress:0];
    return;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = selfCopy;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v114 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Attempting to sync to remote storage when another sync is already in progress; ignoring", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
}

- (void)endLocalStorageModeByPersistingAppleFabricData
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(HMMTRStorage *)self isLocalStorageMode])
  {
    if ([(HMMTRStorage *)self isSystemCommissionerFabric])
    {
      v3 = objc_autoreleasePoolPush();
      selfCopy = self;
      v5 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v6;
        _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_ERROR, "%{public}@Cannot persist Apple Fabric data while in System Commissioner Fabric", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v3);
    }

    else
    {
      localStorage = [(HMMTRStorage *)self localStorage];
      v8 = [localStorage mutableCopy];
      [(HMMTRStorage *)self setAppleFabricLocalStorage:v8];

      v9 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Discarding Local Storage, but keeping Apple Home keys", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      localStorage2 = [(HMMTRStorage *)selfCopy2 localStorage];
      [localStorage2 removeAllObjects];

      [(HMMTRStorage *)selfCopy2 setStorageSyncPending:0];
      [(HMMTRStorage *)selfCopy2 setLocalStorageMode:0];
    }
  }
}

- (void)endLocalStorageModeBySyncingToRemote:(BOOL)remote
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(HMMTRStorage *)self isLocalStorageMode])
  {
    if (remote)
    {
      [(HMMTRStorage *)self setStorageSyncPending:1];
      [(HMMTRStorage *)self _syncToRemoteStorage];
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      selfCopy = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Discarding Local Storage", &v10, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      localStorage = [(HMMTRStorage *)selfCopy localStorage];
      [localStorage removeAllObjects];

      [(HMMTRStorage *)selfCopy setStorageSyncPending:0];
    }

    if (![(HMMTRStorage *)self isSystemCommissionerFabric])
    {
      [(HMMTRStorage *)self setAppleFabricLocalStorage:0];
    }

    [(HMMTRStorage *)self setLocalStorageMode:0];
  }
}

- (void)startLocalStorageMode
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Attempting to start local storage mode", &v28, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  if (![(HMMTRStorage *)selfCopy isSystemCommissionerFabric])
  {
    if (![(HMMTRStorage *)selfCopy isSharedAdmin])
    {
      fabricUUID = [(HMMTRStorage *)selfCopy fabricUUID];

      if (fabricUUID)
      {
        dataSource = [(HMMTRStorage *)selfCopy dataSource];
        fabricUUID2 = [(HMMTRStorage *)selfCopy fabricUUID];
        v18 = [dataSource storageDataSourceForFabricUUID:fabricUUID2];
        [(HMMTRStorage *)selfCopy setFabricDataSource:v18];

        fabricDataSource = [(HMMTRStorage *)selfCopy fabricDataSource];
        keyValueStore = [fabricDataSource keyValueStore];

LABEL_12:
        appleFabricLocalStorage = [(HMMTRStorage *)selfCopy appleFabricLocalStorage];

        if (appleFabricLocalStorage)
        {
          [(HMMTRStorage *)selfCopy appleFabricLocalStorage];
        }

        else
        {
          [MEMORY[0x277CBEB38] dictionaryWithDictionary:keyValueStore];
        }
        v14 = ;
        [(HMMTRStorage *)selfCopy setLocalStorage:v14];
        goto LABEL_16;
      }

      [(HMMTRStorage *)selfCopy setFabricDataSource:0];
    }

    keyValueStore = [MEMORY[0x277CBEAC0] dictionary];
    goto LABEL_12;
  }

  systemCommissionerKeyValueStore = [(HMMTRStorage *)selfCopy systemCommissionerKeyValueStore];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = MEMORY[0x277CBEB38];
    systemCommissionerKeyValueStore2 = [(HMMTRStorage *)selfCopy systemCommissionerKeyValueStore];
    storedValuesByKey = [systemCommissionerKeyValueStore2 storedValuesByKey];
    v12 = [v9 dictionaryWithDictionary:storedValuesByKey];
    [(HMMTRStorage *)selfCopy setLocalStorage:v12];
  }

  keyValueStore = [(HMMTRStorage *)selfCopy localStorage];
  v14 = [keyValueStore copy];
  [(HMMTRStorage *)selfCopy setLocalStorageWithoutUpdates:v14];
LABEL_16:

  [(HMMTRStorage *)selfCopy setLocalStorageMode:1];
  [(HMMTRStorage *)selfCopy setStorageSyncPending:0];
  v21 = objc_autoreleasePoolPush();
  v22 = selfCopy;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v25 = MEMORY[0x277CCABB0];
    localStorage = [(HMMTRStorage *)v22 localStorage];
    v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(localStorage, "count")}];
    v28 = 138543618;
    v29 = v24;
    v30 = 2112;
    v31 = v27;
    _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Local storage initiated with %@ keys", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
}

- (void)setLocalStorageMode:(BOOL)mode
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    [(HMMTRStorage *)selfCopy isLocalStorageMode];
    v9 = HMFBooleanToString();
    v10 = HMFBooleanToString();
    v11 = 138543874;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Changing local storage mode from %@ to %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  selfCopy->_localStorageMode = mode;
  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (BOOL)localStorageMode
{
  os_unfair_lock_lock_with_options();
  localStorageMode = self->_localStorageMode;
  os_unfair_lock_unlock(&self->_lock);
  return localStorageMode;
}

- (id)logIdentifier
{
  fabricID = [(HMMTRStorage *)self fabricID];
  stringValue = [fabricID stringValue];

  return stringValue;
}

- (BOOL)replaceAllKeysAndSyncWithBlock:(id)block systemCommissionerFabric:(BOOL)fabric
{
  fabricCopy = fabric;
  v64 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = blockCopy;
  if (fabricCopy)
  {
    systemCommissionerKeyValueStore = [(HMMTRStorage *)self systemCommissionerKeyValueStore];
    storedValuesByKey = [systemCommissionerKeyValueStore storedValuesByKey];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v10 = storedValuesByKey;
    v11 = [v10 countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = *v54;
      v44 = 1;
      *&v12 = 138543874;
      v43 = v12;
      v45 = *v54;
      v46 = v7;
      do
      {
        v15 = 0;
        v47 = v13;
        do
        {
          if (*v54 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v53 + 1) + 8 * v15);
          v17 = [v10 objectForKeyedSubscript:{v16, v43}];
          v18 = (v7)[2](v7, v16, v17);
          if (([v17 isEqual:v18] & 1) == 0)
          {
            if ([(HMMTRStorage *)self isLocalStorageMode])
            {
              localStorage = [(HMMTRStorage *)self localStorage];
              [localStorage setObject:v18 forKeyedSubscript:v16];
            }

            v20 = v10;
            systemCommissionerKeyValueStore2 = [(HMMTRStorage *)self systemCommissionerKeyValueStore];
            v22 = systemCommissionerKeyValueStore2;
            if (v18)
            {
              v52 = 0;
              v23 = [systemCommissionerKeyValueStore2 setStoredValue:v18 forKey:v16 error:&v52];
              v24 = v52;
            }

            else
            {
              v51 = 0;
              v23 = [systemCommissionerKeyValueStore2 removeStoredValueForKey:v16 error:&v51];
              v24 = v51;
            }

            v25 = v24;

            if (v23)
            {
              v26 = objc_autoreleasePoolPush();
              selfCopy = self;
              v28 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                v29 = HMFGetLogIdentifier();
                *buf = 138543618;
                v58 = v29;
                v59 = 2112;
                v60 = v16;
                _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_INFO, "%{public}@%@ removed from keychain store", buf, 0x16u);
              }
            }

            else
            {
              v26 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v28 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v31 = HMFGetLogIdentifier();
                *buf = v43;
                v58 = v31;
                v59 = 2112;
                v60 = v16;
                v61 = 2112;
                v62 = v25;
                _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to update key %@ from System Commissioner storage with error %@", buf, 0x20u);
              }

              v44 = 0;
            }

            v14 = v45;

            objc_autoreleasePoolPop(v26);
            v10 = v20;
            v7 = v46;
            v13 = v47;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v10 countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v13);
    }

    else
    {
      v44 = 1;
    }

    v37 = v44;
  }

  else
  {
    v50 = 0;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __72__HMMTRStorage_replaceAllKeysAndSyncWithBlock_systemCommissionerFabric___block_invoke;
    v48[3] = &unk_2786F0E80;
    v48[4] = self;
    v49 = blockCopy;
    v32 = [(HMMTRStorage *)self _syncSetDataSourceValuesWithError:&v50 block:v48];
    v10 = v50;
    if (v32)
    {

      v33 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543362;
        v58 = v36;
        _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_INFO, "%{public}@Successfully updated key-value store", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
      v37 = 1;
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543618;
        v58 = v41;
        v59 = 2112;
        v60 = v10;
        _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to update key-value store with error %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
      v37 = 0;
    }
  }

  return v37 & 1;
}

uint64_t __72__HMMTRStorage_replaceAllKeysAndSyncWithBlock_systemCommissionerFabric___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v17 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:v12];
        v14 = (*(*(a1 + 40) + 16))();
        if (([v13 isEqual:v14] & 1) == 0)
        {
          if ([*(a1 + 32) isLocalStorageMode])
          {
            v15 = [*(a1 + 32) localStorage];
            [v15 setObject:v14 forKeyedSubscript:v12];
          }

          [v5 setObject:v14 forKeyedSubscript:v12];
          if (!v14)
          {
            [v17 addObject:v12];
          }

          v9 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)removeValueForKey:(id)key systemCommissionerFabric:(BOOL)fabric
{
  fabricCopy = fabric;
  v26 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([(HMMTRStorage *)self isLocalStorageMode])
  {
    localStorage = [(HMMTRStorage *)self localStorage];
    [localStorage removeObjectForKey:keyCopy];

    v8 = 1;
    goto LABEL_15;
  }

  if (fabricCopy)
  {
    systemCommissionerKeyValueStore = [(HMMTRStorage *)self systemCommissionerKeyValueStore];
    v21 = 0;
    v8 = [systemCommissionerKeyValueStore removeStoredValueForKey:keyCopy error:&v21];
    v10 = v21;

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (v8)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v23 = v15;
        v24 = 2112;
        v25 = keyCopy;
        v16 = "%{public}@Removal of %@ requested from keychain store";
        v17 = v14;
        v18 = OS_LOG_TYPE_INFO;
LABEL_13:
        _os_log_impl(&dword_22AEAE000, v17, v18, v16, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v10;
      v16 = "%{public}@Failed to remove key from System Commissioner storage with error %@";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
      goto LABEL_13;
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_15;
  }

  if ([(HMMTRStorage *)self isResidentDevice]&& [HMMTRStorage isMemoryStorageKey:keyCopy])
  {
    inMemoryStorage = [(HMMTRStorage *)self inMemoryStorage];
    [inMemoryStorage removeObjectForKey:keyCopy];
  }

  v8 = [(HMMTRStorage *)self _syncSetDataSourceValue:0 forKey:keyCopy];
LABEL_15:

  return v8;
}

- (BOOL)setValueForKey:(id)key removingKeys:(id)keys systemCommissionerFabric:(BOOL)fabric block:(id)block
{
  fabricCopy = fabric;
  v90 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  keysCopy = keys;
  blockCopy = block;
  if ([HMMTRStorage shouldIgnoreWritesForKey:keyCopy])
  {
LABEL_5:
    v18 = 1;
    goto LABEL_6;
  }

  if ([(HMMTRStorage *)self isLocalStorageMode])
  {
    localStorage = [(HMMTRStorage *)self localStorage];
    v14 = [localStorage objectForKeyedSubscript:keyCopy];
    v15 = blockCopy[2](blockCopy, v14);
    localStorage2 = [(HMMTRStorage *)self localStorage];
    [localStorage2 setObject:v15 forKeyedSubscript:keyCopy];

    if (keysCopy)
    {
      localStorage3 = [(HMMTRStorage *)self localStorage];
      [localStorage3 removeObjectsForKeys:keysCopy];
    }

    goto LABEL_5;
  }

  if (fabricCopy)
  {
    systemCommissionerKeyValueStore = [(HMMTRStorage *)self systemCommissionerKeyValueStore];
    v21 = [systemCommissionerKeyValueStore storedValueForKey:keyCopy];
    v22 = blockCopy[2](blockCopy, v21);

    systemCommissionerKeyValueStore2 = [(HMMTRStorage *)self systemCommissionerKeyValueStore];
    v80 = 0;
    v62 = v22;
    LOBYTE(v21) = [systemCommissionerKeyValueStore2 setStoredValue:v22 forKey:keyCopy error:&v80];
    v24 = v80;

    v67 = v21;
    if ((v21 & 1) == 0)
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        v82 = v28;
        v83 = 2112;
        v84 = v24;
        _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to write to System Commissioner storage with error %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
    }

    v61 = v24;
    v64 = keyCopy;
    v65 = blockCopy;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v63 = keysCopy;
    obj = keysCopy;
    v29 = [obj countByEnumeratingWithState:&v76 objects:v89 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v77;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v77 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v76 + 1) + 8 * i);
          systemCommissionerKeyValueStore3 = [(HMMTRStorage *)self systemCommissionerKeyValueStore];
          v75 = 0;
          v35 = [systemCommissionerKeyValueStore3 removeStoredValueForKey:v33 error:&v75];
          v36 = v75;

          v37 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v39 = HMFGetOSLogHandle();
          v40 = v39;
          if (v35)
          {
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              v41 = HMFGetLogIdentifier();
              *buf = 138543618;
              v82 = v41;
              v83 = 2112;
              v84 = v33;
              _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_INFO, "%{public}@Removal of %@ requested from keychain store", buf, 0x16u);
            }
          }

          else
          {
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v42 = HMFGetLogIdentifier();
              *buf = 138543874;
              v82 = v42;
              v83 = 2112;
              v84 = v33;
              v85 = 2112;
              v86 = v36;
              _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove key %@ from System Commissioner storage with error %@", buf, 0x20u);
            }

            v67 = 0;
          }

          objc_autoreleasePoolPop(v37);
        }

        v30 = [obj countByEnumeratingWithState:&v76 objects:v89 count:16];
      }

      while (v30);
    }

    keysCopy = v63;
    keyCopy = v64;
    blockCopy = v65;
    v18 = v67;
  }

  else
  {
    dataSource = [(HMMTRStorage *)self dataSource];
    if (dataSource)
    {
      if ([(HMMTRStorage *)self isResidentDevice]&& [HMMTRStorage isMemoryStorageKey:keyCopy])
      {
        inMemoryStorage = [(HMMTRStorage *)self inMemoryStorage];
        v45 = [inMemoryStorage objectForKeyedSubscript:keyCopy];
        v46 = blockCopy[2](blockCopy, v45);
        inMemoryStorage2 = [(HMMTRStorage *)self inMemoryStorage];
        [inMemoryStorage2 setObject:v46 forKeyedSubscript:keyCopy];

        if (keysCopy)
        {
          inMemoryStorage3 = [(HMMTRStorage *)self inMemoryStorage];
          [inMemoryStorage3 removeObjectsForKeys:keysCopy];
        }

        v18 = 1;
      }

      else
      {
        v74 = 0;
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __75__HMMTRStorage_setValueForKey_removingKeys_systemCommissionerFabric_block___block_invoke;
        v70[3] = &unk_2786F0E58;
        v66 = blockCopy;
        v73 = blockCopy;
        v49 = keyCopy;
        v71 = v49;
        v50 = keysCopy;
        v72 = v50;
        v51 = [(HMMTRStorage *)self _syncSetDataSourceValuesWithError:&v74 block:v70];
        v52 = v74;
        v68 = v51;
        if (v51)
        {

          v53 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            v56 = HMFGetLogIdentifier();
            *buf = 138543874;
            v82 = v56;
            v83 = 2112;
            v84 = v49;
            v85 = 2112;
            v86 = v50;
            _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_INFO, "%{public}@Successfully updated key-value store for added key = %@, removed keys %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v53);
        }

        else
        {
          v57 = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v59 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v60 = HMFGetLogIdentifier();
            *buf = 138544130;
            v82 = v60;
            v83 = 2112;
            v84 = v49;
            v85 = 2112;
            v86 = v50;
            v87 = 2112;
            v88 = v52;
            _os_log_impl(&dword_22AEAE000, v59, OS_LOG_TYPE_ERROR, "%{public}@Failed to update key-value store for added key = %@, removed keys = %@ with error %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v57);
        }

        blockCopy = v66;
        v18 = v68;
      }
    }

    else
    {
      v18 = 0;
    }
  }

LABEL_6:

  return v18 & 1;
}

uint64_t __75__HMMTRStorage_setValueForKey_removingKeys_systemCommissionerFabric_block___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 copy];
  v8 = a1[6];
  v9 = [v5 objectForKeyedSubscript:a1[4]];
  v10 = (*(v8 + 16))(v8, v9);

  if (!v10)
  {
    [v6 addObject:a1[4]];
  }

  [v5 setObject:v10 forKeyedSubscript:a1[4]];
  if (a1[5])
  {
    [v5 removeObjectsForKeys:?];
    [v6 addObjectsFromArray:a1[5]];
  }

  v11 = HMFEqualObjects();

  return v11 ^ 1u;
}

- (BOOL)setValueForKey:(id)key value:(id)value systemCommissionerFabric:(BOOL)fabric
{
  fabricCopy = fabric;
  valueCopy = value;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__HMMTRStorage_setValueForKey_value_systemCommissionerFabric___block_invoke;
  v11[3] = &unk_2786F0E30;
  v12 = valueCopy;
  v9 = valueCopy;
  LOBYTE(fabricCopy) = [(HMMTRStorage *)self setValueForKey:key removingKeys:0 systemCommissionerFabric:fabricCopy block:v11];

  return fabricCopy;
}

- (id)valueForKey:(id)key systemCommissionerFabric:(BOOL)fabric
{
  fabricCopy = fabric;
  v24 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([HMMTRStorage shouldIgnoreWritesForKey:keyCopy])
  {
LABEL_2:
    v7 = 0;
    goto LABEL_16;
  }

  if ([(HMMTRStorage *)self isLocalStorageMode]&& [(HMMTRStorage *)self isSystemCommissionerFabric]== fabricCopy)
  {
    localStorage = [(HMMTRStorage *)self localStorage];
    v9 = [localStorage valueForKey:keyCopy];
  }

  else if (fabricCopy)
  {
    localStorage = [(HMMTRStorage *)self systemCommissionerKeyValueStore];
    v9 = [localStorage storedValueForKey:keyCopy];
  }

  else
  {
    fabricID = [(HMMTRStorage *)self fabricID];

    if (!fabricID)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        fabricUUID = [(HMMTRStorage *)selfCopy fabricUUID];
        v20 = 138543618;
        v21 = v18;
        v22 = 2112;
        v23 = fabricUUID;
        _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@Not reading because fabricID is not yet defined for target fabric %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      goto LABEL_2;
    }

    inMemoryStorage = [(HMMTRStorage *)self inMemoryStorage];
    localStorage = [inMemoryStorage objectForKeyedSubscript:keyCopy];

    if (![(HMMTRStorage *)self isResidentDevice]|| !localStorage || ![HMMTRStorage isMemoryStorageKey:keyCopy])
    {
      fabricDataSource = [(HMMTRStorage *)self fabricDataSource];
      keyValueStore = [fabricDataSource keyValueStore];
      v7 = [keyValueStore objectForKeyedSubscript:keyCopy];

      goto LABEL_15;
    }

    v9 = localStorage;
  }

  v7 = v9;
LABEL_15:

LABEL_16:

  return v7;
}

- (BOOL)removeValueForKey:(id)key
{
  keyCopy = key;
  LOBYTE(self) = [(HMMTRStorage *)self removeValueForKey:keyCopy systemCommissionerFabric:[(HMMTRStorage *)self isSystemCommissionerFabric]];

  return self;
}

- (BOOL)setValueForKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  LOBYTE(self) = [(HMMTRStorage *)self setValueForKey:keyCopy value:valueCopy systemCommissionerFabric:[(HMMTRStorage *)self isSystemCommissionerFabric]];

  return self;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  v5 = [(HMMTRStorage *)self valueForKey:keyCopy systemCommissionerFabric:[(HMMTRStorage *)self isSystemCommissionerFabric]];

  return v5;
}

- (BOOL)setStorageData:(id)data forKey:(id)key
{
  keyCopy = key;
  v7 = [data base64EncodedStringWithOptions:0];
  LOBYTE(self) = [(HMMTRStorage *)self setValueForKey:keyCopy value:v7];

  return self;
}

- (id)storageDataForKey:(id)key
{
  v3 = [(HMMTRStorage *)self valueForKey:key];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v3 options:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)ipkForTargetFabricUUID:(id)d forPairing:(BOOL)pairing
{
  pairingCopy = pairing;
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy || (-[HMMTRStorage dataSource](self, "dataSource"), v7 = objc_claimAutoreleasedReturnValue(), [v7 storageDataSourceForFabricUUID:dCopy], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v15;
      v28 = 2112;
      v29 = dCopy;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Fabric data source not available; failed to get ipk for fabric %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v8 = 0;
LABEL_9:
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    v19 = v18;
    if (pairingCopy)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v20;
        v28 = 2112;
        v29 = dCopy;
        _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Generating new IPK for fabric %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v21 = +[HMMTRStorage generateIPK];
      if (v21)
      {
        v11 = v21;
        goto LABEL_20;
      }

      v16 = objc_autoreleasePoolPush();
      v24 = selfCopy2;
      v19 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v22 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v22;
      v28 = 2112;
      v29 = dCopy;
      v23 = "%{public}@FATAL Error: Failed to generate IPK for fabric %@";
    }

    else
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

        objc_autoreleasePoolPop(v16);
        v11 = 0;
        goto LABEL_20;
      }

      v22 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v22;
      v28 = 2112;
      v29 = dCopy;
      v23 = "%{public}@IPK missing for fabric %@";
    }

    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, v23, &v26, 0x16u);

    goto LABEL_19;
  }

  keyValueStore = [v8 keyValueStore];
  v10 = [keyValueStore objectForKeyedSubscript:@"IPK"];

  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v10 options:0];

  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_20:

  return v11;
}

- (BOOL)syncDataSourceDictionary:(id)dictionary forFabric:(id)fabric
{
  v30 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  fabricCopy = fabric;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    allKeys = [dictionaryCopy allKeys];
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = allKeys;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Queueing sync set data source value for keys: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v29 = 1;
  v13 = objc_alloc_init(MEMORY[0x277D0F780]);
  objc_initWeak(&location, v13);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __51__HMMTRStorage_syncDataSourceDictionary_forFabric___block_invoke;
  v21 = &unk_2786F0E08;
  objc_copyWeak(&v26, &location);
  v22 = selfCopy;
  v14 = dictionaryCopy;
  v23 = v14;
  v15 = fabricCopy;
  v24 = v15;
  v25 = buf;
  [v13 addExecutionBlock:&v18];
  v16 = [(HMMTRStorage *)selfCopy keyValueStoreUpdateQueue:v18];
  [v16 addOperation:v13];

  [v13 waitUntilFinished];
  LOBYTE(v16) = *(*&buf[8] + 24);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
  return v16 & 1;
}

void __51__HMMTRStorage_syncDataSourceDictionary_forFabric___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [*(a1 + 40) allKeys];
    *buf = 138543618;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Setting data source value for keys: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [*(a1 + 48) fabricID];

  if (v8)
  {
    v9 = [*(a1 + 32) dataSource];
    v10 = [*(a1 + 48) targetFabricUUID];
    v11 = [v9 storageDataSourceForFabricUUID:v10];

    if (v11)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __51__HMMTRStorage_syncDataSourceDictionary_forFabric___block_invoke_123;
      v21[3] = &unk_2786F0DB8;
      v22 = *(a1 + 40);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __51__HMMTRStorage_syncDataSourceDictionary_forFabric___block_invoke_2;
      v18[3] = &unk_2786F0D68;
      v12 = *(a1 + 56);
      v18[4] = *(a1 + 32);
      v20 = v12;
      v19 = WeakRetained;
      [v11 updateKeyValueStoreWithBlock:v21 completion:v18];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [*(a1 + 48) fabricID];
        *buf = 138543618;
        v24 = v16;
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@Fabric data source for fabric ID %@ is not available yet; cannot update storage", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      [WeakRetained finish];
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    [WeakRetained finish];
  }
}

void __51__HMMTRStorage_syncDataSourceDictionary_forFabric___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to update key-value store with error %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully updated key-value store", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  [*(a1 + 40) finish];
}

- (BOOL)_syncSetDataSourceDictionary:(id)dictionary
{
  v21 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    allKeys = [dictionaryCopy allKeys];
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = allKeys;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Queueing sync set data source value for keys: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v20 = 1;
  v10 = objc_alloc_init(MEMORY[0x277D0F780]);
  objc_initWeak(&location, v10);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__HMMTRStorage__syncSetDataSourceDictionary___block_invoke;
  v14[3] = &unk_2786F0DE0;
  objc_copyWeak(&v17, &location);
  v14[4] = selfCopy;
  v11 = dictionaryCopy;
  v15 = v11;
  v16 = buf;
  [v10 addExecutionBlock:v14];
  keyValueStoreUpdateQueue = [(HMMTRStorage *)selfCopy keyValueStoreUpdateQueue];
  [keyValueStoreUpdateQueue addOperation:v10];

  [v10 waitUntilFinished];
  LOBYTE(keyValueStoreUpdateQueue) = *(*&buf[8] + 24);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
  return keyValueStoreUpdateQueue & 1;
}

void __45__HMMTRStorage__syncSetDataSourceDictionary___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [*(a1 + 40) allKeys];
    *buf = 138543618;
    v27 = v6;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Setting data source value for keys: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [*(a1 + 32) fabricID];

  if (!v8)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_12:
    [WeakRetained finish];
    goto LABEL_13;
  }

  v9 = [*(a1 + 32) fabricDataSource];

  if (!v9)
  {
    v10 = [*(a1 + 32) dataSource];
    v11 = [*(a1 + 32) fabricUUID];
    v12 = [v10 storageDataSourceForFabricUUID:v11];
    [*(a1 + 32) setFabricDataSource:v12];
  }

  v13 = [*(a1 + 32) fabricDataSource];

  if (!v13)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 32) fabricID];
      *buf = 138543618;
      v27 = v19;
      v28 = 2112;
      v29 = v20;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Fabric data source for fabric ID %@ is not available yet; cannot update storage", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_12;
  }

  v14 = [*(a1 + 32) fabricDataSource];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __45__HMMTRStorage__syncSetDataSourceDictionary___block_invoke_122;
  v24[3] = &unk_2786F0DB8;
  v25 = *(a1 + 40);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __45__HMMTRStorage__syncSetDataSourceDictionary___block_invoke_2;
  v21[3] = &unk_2786F0D68;
  v15 = *(a1 + 48);
  v21[4] = *(a1 + 32);
  v23 = v15;
  v22 = WeakRetained;
  [v14 updateKeyValueStoreWithBlock:v24 completion:v21];

LABEL_13:
}

void __45__HMMTRStorage__syncSetDataSourceDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to update key-value store with error %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully updated key-value store", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  [*(a1 + 40) finish];
}

- (BOOL)_removeAllDataSourceData
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Queueing remove all data source data", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x2020000000;
  v20 = 1;
  v7 = objc_alloc_init(MEMORY[0x277D0F780]);
  objc_initWeak(&location, v7);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __40__HMMTRStorage__removeAllDataSourceData__block_invoke;
  v13 = &unk_2786F0D90;
  objc_copyWeak(&v16, &location);
  v14 = selfCopy;
  p_buf = &buf;
  [v7 addExecutionBlock:&v10];
  v8 = [(HMMTRStorage *)selfCopy keyValueStoreUpdateQueue:v10];
  [v8 addOperation:v7];

  [v7 waitUntilFinished];
  LOBYTE(v8) = *(*(&buf + 1) + 24);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
  return v8 & 1;
}

void __40__HMMTRStorage__removeAllDataSourceData__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Removing all data source data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [*(a1 + 32) fabricID];

  if (!v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v19;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Expecting fabric ID to be present when data source is removed", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v8 = [*(a1 + 32) fabricDataSource];

  if (!v8)
  {
    v9 = [*(a1 + 32) dataSource];
    v10 = [*(a1 + 32) fabricUUID];
    v11 = [v9 storageDataSourceForFabricUUID:v10];
    [*(a1 + 32) setFabricDataSource:v11];
  }

  v12 = [*(a1 + 32) fabricDataSource];

  if (!v12)
  {
    v16 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [*(a1 + 32) fabricID];
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = v23;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, "%{public}@Fabric data source for fabric ID %@ is not available yet; cannot remove data from storage", buf, 0x16u);
    }

LABEL_14:
    objc_autoreleasePoolPop(v16);
    [WeakRetained finish];
    goto LABEL_15;
  }

  v13 = [*(a1 + 32) fabricDataSource];
  v14 = [MEMORY[0x277CBEAC0] dictionary];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __40__HMMTRStorage__removeAllDataSourceData__block_invoke_121;
  v24[3] = &unk_2786F0D68;
  v15 = *(a1 + 40);
  v24[4] = *(a1 + 32);
  v26 = v15;
  v25 = WeakRetained;
  [v13 updateKeyValueStore:v14 completion:v24];

LABEL_15:
}

void __40__HMMTRStorage__removeAllDataSourceData__block_invoke_121(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove key-value store: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully removed all keys from key-value store", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  [*(a1 + 40) finish];
}

- (BOOL)_syncSetDataSourceValuesWithError:(id *)error block:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Queueing sync set data source values", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__12349;
  v24 = __Block_byref_object_dispose__12350;
  v25 = 0;
  v11 = objc_alloc_init(MEMORY[0x277D0F780]);
  objc_initWeak(&location, v11);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__HMMTRStorage__syncSetDataSourceValuesWithError_block___block_invoke;
  v16[3] = &unk_2786F0D40;
  objc_copyWeak(&v19, &location);
  v16[4] = selfCopy;
  v12 = blockCopy;
  v17 = v12;
  p_buf = &buf;
  [v11 addExecutionBlock:v16];
  keyValueStoreUpdateQueue = [(HMMTRStorage *)selfCopy keyValueStoreUpdateQueue];
  [keyValueStoreUpdateQueue addOperation:v11];

  [v11 waitUntilFinished];
  if (error)
  {
    *error = *(*(&buf + 1) + 40);
  }

  v14 = *(*(&buf + 1) + 40) == 0;

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
  return v14;
}

void __56__HMMTRStorage__syncSetDataSourceValuesWithError_block___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Setting data source values", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [*(a1 + 32) fabricUUID];

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = [*(a1 + 32) fabricDataSource];

  if (!v8)
  {
    v9 = [*(a1 + 32) dataSource];
    v10 = [*(a1 + 32) fabricUUID];
    v11 = [v9 storageDataSourceForFabricUUID:v10];
    [*(a1 + 32) setFabricDataSource:v11];
  }

  v12 = [*(a1 + 32) fabricDataSource];

  if (!v12)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [*(a1 + 32) fabricID];
      *buf = 138543618;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Fabric data source for fabric ID %@ is not available yet", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
LABEL_11:
    [WeakRetained finish];
    goto LABEL_12;
  }

  v13 = [*(a1 + 32) fabricDataSource];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __56__HMMTRStorage__syncSetDataSourceValuesWithError_block___block_invoke_118;
  v20[3] = &unk_2786F0D18;
  v14 = *(a1 + 40);
  v22 = *(a1 + 48);
  v21 = WeakRetained;
  [v13 updateKeyValueStoreWithBlock:v14 completion:v20];

LABEL_12:
}

void __56__HMMTRStorage__syncSetDataSourceValuesWithError_block___block_invoke_118(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) finish];
}

- (BOOL)_syncSetDataSourceValue:(id)value forKey:(id)key
{
  v35 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v11;
    v31 = 2112;
    v32 = keyCopy;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Queueing sync set data source values for key: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v28 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __47__HMMTRStorage__syncSetDataSourceValue_forKey___block_invoke;
  v25[3] = &unk_2786F0CF0;
  v25[4] = selfCopy;
  v12 = keyCopy;
  v26 = v12;
  v13 = valueCopy;
  v27 = v13;
  v14 = [(HMMTRStorage *)selfCopy _syncSetDataSourceValuesWithError:&v28 block:v25];
  v15 = v28;
  if (v14)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v19;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Successfully updated key-value store for key = %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  else
  {

    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v30 = v23;
      v31 = 2112;
      v32 = v12;
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to update key-value store for key = %@ with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
  }

  return v14;
}

uint64_t __47__HMMTRStorage__syncSetDataSourceValue_forKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v20 = 138543618;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Setting data source value for key: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v13 = HMFEqualObjects();
  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *(a1 + 40);
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Skipping write for key %@ as new value is same as existing", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  else
  {
    [v5 setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
    if (!*(a1 + 48))
    {
      [v6 addObject:*(a1 + 40)];
    }
  }

  return v13 ^ 1u;
}

- (void)clearStaleItems
{
  workQueue = [(HMMTRStorage *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMMTRStorage_clearStaleItems__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __31__HMMTRStorage_clearStaleItems__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) fabricDataSource];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) fabricDataSource];
    v5 = [v4 keyValueStore];

    if (v5)
    {
      v6 = [*(a1 + 32) fabricDataSource];
      v7 = [v6 keyValueStore];
      v8 = [v7 valueForKey:@"HMD.MTRPlugin.MTS.SystemCommissionerFabricIndex"];

      if (v8)
      {
        v9 = objc_autoreleasePoolPush();
        v10 = *(a1 + 32);
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          *buf = 138543362;
          v24 = v12;
          _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Storage for Apple Home fabric contains System Commissioner Fabric ID. Cleaning it up", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v9);
        [*(a1 + 32) _syncSetDataSourceValue:0 forKey:@"HMD.MTRPlugin.MTS.SystemCommissionerFabricIndex"];
        v13 = [*(a1 + 32) systemCommissionerKeyValueStore];
        v14 = [v13 storedValueForKey:@"HMD.MTRPlugin.MTS.SystemCommissionerFabricIndex"];

        if (!v14)
        {
          v15 = [*(a1 + 32) systemCommissionerKeyValueStore];
          v22 = 0;
          v16 = [v15 setStoredValue:v8 forKey:@"HMD.MTRPlugin.MTS.SystemCommissionerFabricIndex" error:&v22];
          v17 = v22;

          if ((v16 & 1) == 0)
          {
            v18 = objc_autoreleasePoolPush();
            v19 = *(a1 + 32);
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = HMFGetLogIdentifier();
              *buf = 138543618;
              v24 = v21;
              v25 = 2112;
              v26 = v17;
              _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to write to System Commissioner fabric ID with error %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v18);
          }
        }
      }
    }
  }
}

- (void)_setPreferencesValueForKey:(id)key value:(id)value
{
  v16 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = keyCopy;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Setting preferences value for key: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  CFPreferencesSetAppValue(keyCopy, valueCopy, *MEMORY[0x277CBF028]);
}

- (id)_preferencesValueForKey:(id)key
{
  v3 = CFPreferencesCopyAppValue(key, *MEMORY[0x277CBF028]);

  return v3;
}

- (BOOL)isResidentDevice
{
  dataSource = [(HMMTRStorage *)self dataSource];
  currentFabricUUID = [dataSource currentFabricUUID];
  v4 = currentFabricUUID != 0;

  return v4;
}

- (HMMTRStorage)initWithQueue:(id)queue dataSource:(id)source systemCommissionerFabric:(BOOL)fabric fabricUUID:(id)d sharedAdmin:(BOOL)admin
{
  queueCopy = queue;
  sourceCopy = source;
  dCopy = d;
  v30.receiver = self;
  v30.super_class = HMMTRStorage;
  v16 = [(HMMTRStorage *)&v30 init];
  if (v16)
  {
    v17 = objc_alloc_init(MEMORY[0x277CCABD8]);
    keyValueStoreUpdateQueue = v16->_keyValueStoreUpdateQueue;
    v16->_keyValueStoreUpdateQueue = v17;

    [(NSOperationQueue *)v16->_keyValueStoreUpdateQueue setMaxConcurrentOperationCount:1];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    localStorage = v16->_localStorage;
    v16->_localStorage = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    inMemoryStorage = v16->_inMemoryStorage;
    v16->_inMemoryStorage = dictionary2;

    v23 = objc_alloc_init(MEMORY[0x277CD55A8]);
    systemCommissionerKeyValueStore = v16->_systemCommissionerKeyValueStore;
    v16->_systemCommissionerKeyValueStore = v23;

    objc_storeStrong(&v16->_workQueue, queue);
    v16->_sharedAdmin = admin;
    objc_storeWeak(&v16->_dataSource, sourceCopy);
    v16->_systemCommissionerFabric = fabric;
    objc_storeStrong(&v16->_fabricUUID, d);
    if (dCopy)
    {
      v25 = [sourceCopy fabricIDFromFabricUUID:dCopy];
      fabricID = v16->_fabricID;
      v16->_fabricID = v25;

      v27 = [sourceCopy storageDataSourceForFabricUUID:dCopy];
      fabricDataSource = v16->_fabricDataSource;
      v16->_fabricDataSource = v27;
    }
  }

  return v16;
}

+ (BOOL)didUpdateMatterItems:(id)items oldStorage:(id)storage
{
  v35 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  storageCopy = storage;
  if (isFeatureMatterLocalFabricConfigEnabled(storageCopy, v7))
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    allKeys = [itemsCopy allKeys];
    v10 = [allKeys countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          if (![HMMTRStorage isPluginKey:v14]&& ![HMMTRStorage isMatterKey:v14])
          {
            v15 = [itemsCopy objectForKeyedSubscript:v14];
            v16 = [storageCopy objectForKeyedSubscript:v14];
            if (![v15 isEqual:v16])
            {
LABEL_24:
              NSLog(&cfstr_StorageKeyHasC.isa, v14);
              LOBYTE(v8) = 1;
              goto LABEL_25;
            }
          }
        }

        v11 = [allKeys countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = MEMORY[0x277CBEB58];
    allKeys2 = [itemsCopy allKeys];
    allKeys = [v17 setWithArray:allKeys2];

    v19 = MEMORY[0x277CBEB58];
    allKeys3 = [storageCopy allKeys];
    v21 = [v19 setWithArray:allKeys3];

    [v21 minusSet:allKeys];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = v21;
    v8 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v8)
    {
      v22 = *v26;
      while (2)
      {
        for (j = 0; j != v8; ++j)
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v14 = *(*(&v25 + 1) + 8 * j);
          if (![HMMTRStorage isPluginKey:v14])
          {
            v15 = v16;
            goto LABEL_24;
          }
        }

        v8 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v15 = v16;
LABEL_25:
  }

  return v8;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t68_12373 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t68_12373, &__block_literal_global_149);
  }

  v3 = logCategory__hmf_once_v69_12374;

  return v3;
}

uint64_t __27__HMMTRStorage_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v69_12374;
  logCategory__hmf_once_v69_12374 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)generateIPK
{
  v5 = *MEMORY[0x277D85DE8];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x10uLL, bytes))
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:16];
  }

  return v2;
}

+ (BOOL)checkAndUpdateExpiryOfCertificate:(id)certificate keyPair:(id)pair newCertificate:(id *)newCertificate
{
  v64 = *MEMORY[0x277D85DE8];
  certificateCopy = certificate;
  pairCopy = pair;
  if ([MEMORY[0x277CD5230] keypair:pairCopy matchesCertificate:certificateCopy])
  {
    v10 = [MEMORY[0x277CD5230] convertX509Certificate:certificateCopy];
    v11 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v10];
    v12 = v11;
    if (v11)
    {
      notAfter = [v11 notAfter];
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      v15 = [notAfter isEqualToDate:distantFuture];

      if (v15)
      {
        v16 = v12;
        v17 = objc_autoreleasePoolPush();
        selfCopy = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          notAfter2 = [v12 notAfter];
          [MEMORY[0x277CBEAA8] distantFuture];
          v23 = v22 = v10;
          *buf = 138543874;
          v59 = v20;
          v60 = 2112;
          v61 = notAfter2;
          v62 = 2112;
          v63 = v23;
          _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Certificate expires in distant future. No update needed %@ vs %@", buf, 0x20u);

          v10 = v22;
        }

        objc_autoreleasePoolPop(v17);
        v24 = 0;
        v12 = v16;
      }

      else
      {
        v55 = v10;
        v33 = objc_alloc(MEMORY[0x277CCA970]);
        notBefore = [v12 notBefore];
        distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
        newCertificateCopy = newCertificate;
        v36 = [v33 initWithStartDate:notBefore endDate:distantFuture2];

        v37 = MEMORY[0x277CD5230];
        issuer = [v12 issuer];
        rootCACertificateID = [issuer rootCACertificateID];
        v54 = v12;
        issuer2 = [v12 issuer];
        fabricID = [issuer2 fabricID];
        v57 = 0;
        v42 = [v37 createRootCertificate:pairCopy issuerID:rootCACertificateID fabricID:fabricID validityPeriod:v36 error:&v57];
        v53 = v57;
        v43 = v42;
        *newCertificateCopy = v42;

        v44 = *newCertificateCopy;
        v24 = *newCertificateCopy != 0;
        v45 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v47 = HMFGetOSLogHandle();
        v48 = v47;
        if (v44)
        {
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            v49 = HMFGetLogIdentifier();
            *buf = 138543618;
            v59 = v49;
            v60 = 2112;
            v61 = v36;
            _os_log_impl(&dword_22AEAE000, v48, OS_LOG_TYPE_INFO, "%{public}@Successfully re-created certificate with new validity %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v45);
          [MEMORY[0x277CD5230] printX509Certificate:*newCertificateCopy];
          v50 = v53;
        }

        else
        {
          v50 = v53;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v51 = HMFGetLogIdentifier();
            *buf = 138543874;
            v59 = v51;
            v60 = 2112;
            v61 = v36;
            v62 = 2112;
            v63 = v53;
            _os_log_impl(&dword_22AEAE000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failed to re-create certificate with new validity %@ due to error %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v45);
        }

        v12 = v54;
        v10 = v55;
      }
    }

    else
    {
      [MEMORY[0x277CD5230] printX509Certificate:certificateCopy];
      v29 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v59 = v32;
        _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_ERROR, "%{public}@Couldn't extract certificate info", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      v24 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CD5230] printX509Certificate:certificateCopy];
    v25 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v28;
      v60 = 2112;
      v61 = pairCopy;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, "%{public}@Certificate doesn't match key pair %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v24 = 0;
  }

  return v24;
}

+ (unsigned)knownFabricInStorage:(id)storage fabricID:(id)d keyPair:(id)pair controllerNodeID:(id *)iD rootCertificate:(id *)certificate
{
  v86 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  dCopy = d;
  pairCopy = pair;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  allKeys = [storageCopy allKeys];
  v11 = [allKeys countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (!v11)
  {
    goto LABEL_53;
  }

  v12 = v11;
  v13 = *v76;
  v66 = storageCopy;
  v71 = allKeys;
  v73 = *v76;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v76 != v13)
      {
        objc_enumerationMutation(allKeys);
      }

      v15 = *(*(&v75 + 1) + 8 * i);
      if ([v15 hasPrefix:@"f/"] && objc_msgSend(v15, "hasSuffix:", @"/r") && objc_msgSend(v15, "length") >= 5)
      {
        v16 = [v15 substringWithRange:{2, objc_msgSend(v15, "length") - 4}];
        if ([v16 length])
        {
          v17 = 0;
          do
          {
            v18 = [v16 characterAtIndex:v17];
            if ((v18 - 58) <= 0xFFF5u && (v18 - 65 > 0x25 || ((1 << (v18 - 65)) & 0x3F0000003FLL) == 0))
            {
              goto LABEL_38;
            }
          }

          while (++v17 < [v16 length]);
        }

        v74 = 0;
        v19 = [MEMORY[0x277CCAC80] scannerWithString:v16];
        v20 = [v19 scanHexInt:&v74];

        if ((v20 & 1) == 0)
        {
          _HMFPreconditionFailure();
        }

        v21 = [storageCopy objectForKeyedSubscript:v15];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;

        if (!v23 || (v24 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v23 options:0]) == 0)
        {
          v37 = objc_autoreleasePoolPush();
          selfCopy = self;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = HMFGetLogIdentifier();
            *buf = 138543618;
            v80 = v40;
            v81 = 1024;
            *v82 = v74;
            _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@f/%x/r isn't base64 encoded", buf, 0x12u);
          }

          objc_autoreleasePoolPop(v37);
          allKeys = v71;
LABEL_38:

          v13 = v73;
          continue;
        }

        v25 = v24;
        v70 = [MEMORY[0x277CD5230] convertMatterCertificate:v24];
        if ([MEMORY[0x277CD5230] keypair:pairCopy matchesCertificate:?])
        {
          v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"f/%x/n", v74];
          v26 = [storageCopy objectForKeyedSubscript:?];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          v28 = v27;

          v67 = v28;
          if (v28 && (v29 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v28 options:0]) != 0)
          {
            v62 = v29;
            v65 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v29];
            subject = [v65 subject];
            fabricID = [subject fabricID];

            v63 = fabricID;
            v61 = [fabricID isEqual:dCopy];
            if (v61)
            {
              if (iD)
              {
                subject2 = [v65 subject];
                nodeID = [subject2 nodeID];

                context = objc_autoreleasePoolPush();
                selfCopy2 = self;
                v34 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                {
                  v35 = HMFGetLogIdentifier();
                  *buf = 138544130;
                  v80 = v35;
                  v81 = 2112;
                  *v82 = dCopy;
                  *&v82[8] = 1024;
                  *&v82[10] = v74;
                  v83 = 2112;
                  v84 = nodeID;
                  _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Retrieved root cert for fabric ID %@ with fabric index 0x%x. Controller node ID is %@.", buf, 0x26u);
                }

                objc_autoreleasePoolPop(context);
                v36 = nodeID;
                *iD = v36;

                allKeys = v71;
              }

              if (certificate)
              {
                *certificate = v70;
              }

              v58 = v74;
            }

            else
            {
              v50 = objc_autoreleasePoolPush();
              selfCopy3 = self;
              v52 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                HMFGetLogIdentifier();
                v53 = contexta = v50;
                *buf = 138544130;
                v80 = v53;
                v81 = 1024;
                *v82 = v74;
                *&v82[4] = 2112;
                *&v82[6] = v63;
                v83 = 2112;
                v84 = dCopy;
                _os_log_impl(&dword_22AEAE000, v52, OS_LOG_TYPE_DEBUG, "%{public}@f/%x/n fabric ID %@ doesn't match fabric ID %@", buf, 0x26u);

                v50 = contexta;
              }

              objc_autoreleasePoolPop(v50);
              allKeys = v71;
            }

            v45 = v61 ^ 1;
          }

          else
          {
            v46 = objc_autoreleasePoolPush();
            selfCopy4 = self;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v49 = HMFGetLogIdentifier();
              *buf = 138543874;
              v80 = v49;
              v81 = 1024;
              *v82 = v74;
              *&v82[4] = 1024;
              *&v82[6] = v74;
              _os_log_impl(&dword_22AEAE000, v48, OS_LOG_TYPE_ERROR, "%{public}@f/%x/r doesn't have matching f/%x/n", buf, 0x18u);
            }

            objc_autoreleasePoolPop(v46);
            v45 = 1;
            storageCopy = v66;
            allKeys = v71;
          }
        }

        else
        {
          v41 = objc_autoreleasePoolPush();
          selfCopy5 = self;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543874;
            v80 = v44;
            v81 = 1024;
            *v82 = v74;
            *&v82[4] = 2112;
            *&v82[6] = pairCopy;
            _os_log_impl(&dword_22AEAE000, v43, OS_LOG_TYPE_DEBUG, "%{public}@f/%x/r doesn't match system commissioner keypair %@", buf, 0x1Cu);
          }

          objc_autoreleasePoolPop(v41);
          v45 = 1;
          storageCopy = v66;
          allKeys = v71;
        }

        v13 = v73;
        if ((v45 & 1) == 0)
        {
          goto LABEL_54;
        }
      }
    }

    v12 = [allKeys countByEnumeratingWithState:&v75 objects:v85 count:16];
  }

  while (v12);
LABEL_53:
  v58 = 0;
LABEL_54:

  return v58;
}

@end