@interface HMDResidentSelectionStatusKit
+ (id)logCategory;
- (HMDPreferredResidentsList)preferredResidentsList;
- (HMDResidentDevice)elector;
- (HMDResidentDeviceManagerContext)context;
- (HMDResidentSelectionStatusKit)initWithWithContext:(id)context residentStatusList:(id)list;
- (id)logIdentifier;
- (id)residentStatusWithValidPreferredResidentsListIn:(id)in;
- (id)selectionInfoWithLatestTimestampIn:(id)in;
- (id)sortResidentStatuses:(id)statuses;
- (void)_parseResidentStatus:(id)status;
@end

@implementation HMDResidentSelectionStatusKit

- (HMDResidentDeviceManagerContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (id)logIdentifier
{
  context = [(HMDResidentSelectionStatusKit *)self context];
  home = [context home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)_parseResidentStatus:(id)status
{
  v35 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __54__HMDResidentSelectionStatusKit__parseResidentStatus___block_invoke;
  v26 = &unk_278678108;
  selfCopy = self;
  v8 = dictionary;
  v28 = v8;
  v9 = v5;
  v29 = v9;
  v10 = v6;
  v30 = v10;
  [statusCopy hmf_enumerateWithAutoreleasePoolUsingBlock:&v23];
  v11 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v14;
    v33 = 2112;
    v34 = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Wired residents are: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = objc_msgSend_copy(v9, v23, v24, v25, v26, selfCopy);
  [(HMDResidentSelectionStatusKit *)selfCopy2 setWiredResidents:v15];

  v16 = objc_autoreleasePoolPush();
  v17 = selfCopy2;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    shortDescription = [v10 shortDescription];
    *buf = 138543618;
    v32 = v19;
    v33 = 2112;
    v34 = shortDescription;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Residents with reachable accessories are: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = objc_msgSend_copy(v10);
  [(HMDResidentSelectionStatusKit *)v17 setResidentsWithReachableAccessories:v21];

  v22 = objc_msgSend_copy(v8);
  [(HMDResidentSelectionStatusKit *)v17 setResidentIDSIdentifierToLocationMap:v22];
}

void __54__HMDResidentSelectionStatusKit__parseResidentStatus___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v3 idsIdentifier];
  v6 = [v4 residentDeviceWithIDSIdentifier:v5];

  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "location")}];
    v8 = *(a1 + 40);
    v9 = [v3 idsIdentifier];
    [v8 setObject:v7 forKeyedSubscript:v9];

    if ([v3 networkConnectionType] == 1)
    {
      [*(a1 + 48) addObject:v6];
    }

    if ([v3 hasReachableAccessories])
    {
      [*(a1 + 56) addObject:v6];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v13;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Found status from an unknown resident on StatusKit: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (id)selectionInfoWithLatestTimestampIn:(id)in
{
  v18 = *MEMORY[0x277D85DE8];
  inCopy = in;
  allObjects = [inCopy allObjects];
  v6 = [allObjects sortedArrayUsingComparator:&__block_literal_global_3_106315];
  firstObject = [v6 firstObject];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = firstObject;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Latest selection info on StatusKit is from status: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  selectionInfo = [firstObject selectionInfo];

  return selectionInfo;
}

uint64_t __68__HMDResidentSelectionStatusKit_selectionInfoWithLatestTimestampIn___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 selectionInfo];
  v7 = [v5 selectionInfo];
  v8 = v7;
  if (v6 | v7)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v6 && v7)
  {
    v11 = [v7 selectionTimestamp];
    v12 = [v6 selectionTimestamp];
    v10 = [v11 compare:v12];
  }

  if (!v10)
  {
    v13 = [v4 idsIdentifier];
    v14 = [v13 UUIDString];
    v15 = [v5 idsIdentifier];
    v16 = [v15 UUIDString];
    v10 = [v14 compare:v16];
  }

  return v10;
}

uint64_t __74__HMDResidentSelectionStatusKit_comparatorForPreferredResidentsListSource__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 swVersion];
  v7 = [v4 swVersion];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [v4 idsIdentifier];
    v10 = [v9 UUIDString];
    v11 = [v5 idsIdentifier];
    v12 = [v11 UUIDString];
    v8 = [v10 compare:v12];
  }

  return v8;
}

- (id)sortResidentStatuses:(id)statuses
{
  allObjects = [statuses allObjects];
  comparatorForPreferredResidentsListSource = [(HMDResidentSelectionStatusKit *)self comparatorForPreferredResidentsListSource];
  v6 = [allObjects sortedArrayUsingComparator:comparatorForPreferredResidentsListSource];

  return v6;
}

- (HMDResidentDevice)elector
{
  v20 = *MEMORY[0x277D85DE8];
  sortedResidentStatuses = [(HMDResidentSelectionStatusKit *)self sortedResidentStatuses];
  firstObject = [sortedResidentStatuses firstObject];

  v5 = MEMORY[0x277CBEB98];
  context = [(HMDResidentSelectionStatusKit *)self context];
  availableResidentDevices = [context availableResidentDevices];
  v8 = [v5 setWithArray:availableResidentDevices];
  v9 = [firstObject matchingDeviceFromResidentDevices:v8];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    shortDescription = [v9 shortDescription];
    v16 = 138543618;
    v17 = v13;
    v18 = 2112;
    v19 = shortDescription;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Elector is: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v10);

  return v9;
}

- (id)residentStatusWithValidPreferredResidentsListIn:(id)in
{
  v16 = *MEMORY[0x277D85DE8];
  inCopy = in;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__HMDResidentSelectionStatusKit_residentStatusWithValidPreferredResidentsListIn___block_invoke;
  v11[3] = &unk_2786780C0;
  v11[4] = self;
  v5 = [inCopy na_firstObjectPassingTest:v11];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Preferred source for residents list: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);

  return v5;
}

BOOL __81__HMDResidentSelectionStatusKit_residentStatusWithValidPreferredResidentsListIn___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 preferredResidentsList];
  v5 = [v4 residentIDSIdentifiers];
  v6 = [v5 count];

  if (!v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Preferred residents list is missing in: %@. Moving to next one.", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  return v6 != 0;
}

- (HMDPreferredResidentsList)preferredResidentsList
{
  sourceForPreferredResidentsList = [(HMDResidentSelectionStatusKit *)self sourceForPreferredResidentsList];
  preferredResidentsList = [sourceForPreferredResidentsList preferredResidentsList];

  return preferredResidentsList;
}

- (HMDResidentSelectionStatusKit)initWithWithContext:(id)context residentStatusList:(id)list
{
  contextCopy = context;
  listCopy = list;
  v20.receiver = self;
  v20.super_class = HMDResidentSelectionStatusKit;
  v8 = [(HMDResidentSelectionStatusKit *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_context, contextCopy);
    queue = [contextCopy queue];
    queue = v9->_queue;
    v9->_queue = queue;

    objc_storeStrong(&v9->_residentStatusList, list);
    v12 = [(HMDResidentSelectionStatusKit *)v9 sortResidentStatuses:listCopy];
    sortedResidentStatuses = v9->_sortedResidentStatuses;
    v9->_sortedResidentStatuses = v12;
    v14 = v12;

    v15 = [(HMDResidentSelectionStatusKit *)v9 residentStatusWithValidPreferredResidentsListIn:v14];
    sourceForPreferredResidentsList = v9->_sourceForPreferredResidentsList;
    v9->_sourceForPreferredResidentsList = v15;

    v17 = [(HMDResidentSelectionStatusKit *)v9 selectionInfoWithLatestTimestampIn:listCopy];
    selectionInfo = v9->_selectionInfo;
    v9->_selectionInfo = v17;

    [(HMDResidentSelectionStatusKit *)v9 _parseResidentStatus:listCopy];
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_106332 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_106332, &__block_literal_global_10_106333);
  }

  v3 = logCategory__hmf_once_v8_106334;

  return v3;
}

void __44__HMDResidentSelectionStatusKit_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v8_106334;
  logCategory__hmf_once_v8_106334 = v0;
}

@end